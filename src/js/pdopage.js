const queryString = require('query-string')

if (typeof(pdoPage) == 'undefined') {
    pdoPage = {callbacks: {}, keys: {}, configs: {}}
}

pdoPage.Reached = false

pdoPage.initialize = config => {
	config.all = config.more + '-all'

    if (pdoPage.keys[config['pageVarKey']] == undefined) {
        var tkey = config['pageVarKey'];
        var tparams = pdoPage.Hash.get();
        var tpage = tparams[tkey] == undefined ? 1 : tparams[tkey];
        pdoPage.keys[tkey] = Number(tpage);
        pdoPage.configs[tkey] = config;
    }
    var $this = this;
    switch (config['mode']) {
        case 'default':
            $(document).on('click', config['link'], function (e) {
                e.preventDefault();
                var href = $(this).prop('href');
                var key = config['pageVarKey'];
                var match = href.match(new RegExp(key + '=(\\d+)'));
                var page = !match ? 1 : match[1];
                if (pdoPage.keys[key] != page) {
                    if (config.history) {
                        if (page == 1) {
                            pdoPage.Hash.remove(key);
                        } else {
                            pdoPage.Hash.add(key, page);
                        }
                    }
                    $this.loadPage(href, config);
                }
            });

            if (config.history) {
                $(window).on('popstate', function (e) {
                    if (e.originalEvent.state && e.originalEvent.state['pdoPage']) {
                        $this.loadPage(e.originalEvent.state['pdoPage'], config);
                    }
                });

                history.replaceState({pdoPage: window.location.href}, '');
            }
            break;

        case 'scroll':
        case 'button':
            if (config.history) {
                if (typeof(jQuery().sticky) == 'undefined') {
                    $.getScript(config['assetsUrl'] + 'js/lib/jquery.sticky.min.js', function () {
                        pdoPage.initialize(config);
                    });
                    return;
                }
                pdoPage.stickyPagination(config);
            }
            else {
                $(config.pagination).hide();
            }

            var key = config['pageVarKey'];

            if (config['mode'] == 'button') {
                // Add more button
                $(config['rows']).after(config['moreTpl']);
                var has_results = false;
                $(config['link']).each(function () {
                    var href = $(this).prop('href');
                    var match = href.match(new RegExp(key + '=(\\d+)'));
                    var page = !match ? 1 : match[1];
                    if (page > pdoPage.keys[key]) {
                        has_results = true;
                        return false;
                    }
                });
                if (!has_results) {
                    $(config['more']).hide();
                }

                $(document).on('click', config.more, e => {
                    e.preventDefault()
                    pdoPage.addPage(config)
                })

                $(document).on('click', config.all, e => {
                    e.preventDefault()
                    pdoPage.showAll(config)
                })
            }
            else {
                // Scroll pagination
                var wrapper = $(config['wrapper']);
                var $window = $(window);
                $window.on('scroll', function () {
                    if (!pdoPage.Reached && $window.scrollTop() > wrapper.height() - $window.height()) {
                        pdoPage.Reached = true;
                        pdoPage.addPage(config);
                    }
                });
            }
            break;
    }
};

pdoPage.addPage = config => {
    let key = config['pageVarKey']
    let current = pdoPage.keys[key] || 1

    $(config['link']).each(function () {
        let href = $(this).prop('href')
        let match = href.match(new RegExp(key + '=(\\d+)'))
        let page = !match ? 1 : Number(match[1])

        if (page > current) {
            if (config.history) {
                if (page == 1) {
                    pdoPage.Hash.remove(key)
                } else {
                    pdoPage.Hash.add(key, page)
                }
            }
            pdoPage.loadPage(href, config, 'append')
            return false
        }
    })
}

pdoPage.showAll = config => {
    let params = queryString.parse(location.search)
    params.page = 0
    params = queryString.stringify(params)

    pdoPage.loadPage(location.pathname + '?' + params, config)
}

pdoPage.loadPage = (href, config, mode) => {
    let wrapper = $(config['wrapper'])
    let rows = $(config['rows'])
    let pagination = $(config['pagination'])
    let key = config['pageVarKey']
    let match = href.match(new RegExp(key + '=(\\d+)'))
    let page = !match ? 1 : Number(match[1])

    if (!mode) {
        mode = 'replace';
    }

    if (pdoPage.keys[key] == page) {
        return;
    }
    if (pdoPage.callbacks['before'] && typeof(pdoPage.callbacks['before']) == 'function') {
        pdoPage.callbacks['before'].apply(this, [config]);
    }
    else {
        if (config['mode'] != 'scroll') {
            wrapper.css({opacity: .3});
        }
        wrapper.addClass('loading');
    }

    let params = pdoPage.Hash.get();
    for (let i in params) {
        if (params.hasOwnProperty(i) && pdoPage.keys[i] && i != key) {
            delete(params[i]);
        }
    }
    params[key] = pdoPage.keys[key] = page;
    params['pageId'] = config['pageId'];
    params['hash'] = config['hash'];

	if(params.page === 0) {
		params.limit = 99999 // омерзительно
	}

    $.post(config['connectorUrl'], params, response => {
        if (response && response['total']) {
            wrapper.find(pagination).html(response['pagination']);
            
            if (config['mode'] == 'button') {
                if (response['pages'] == response['page']) {
                    $(config['more']).hide();
                    $(config['all']).hide();
                }
                else {
                    $(config['more']).show();
                    $(config['all']).show();
                }
            }
            else if (config['mode'] == 'scroll') {
                pdoPage.Reached = false;
            }

            if (mode == 'append') {
                wrapper.find(rows).append(response['output']);
            }
            else {
                wrapper.find(rows).html(response['output']);
            }

            if (pdoPage.callbacks['after'] && typeof(pdoPage.callbacks['after']) == 'function') {
                pdoPage.callbacks['after'].apply(this, [config, response]);
            }
            else {
                wrapper.removeClass('loading');
                if (config['mode'] != 'scroll') {
                    wrapper.css({opacity: 1});
                    if (config['mode'] == 'default') {
                        $('html, body').animate({scrollTop: wrapper.position().top - 50 || 0}, 0);
                    }
                }
            }
            pdoPage.updateTitle(config, response);
            $(document).trigger('pdopage_load', [config, response]);
        }
    }, 'json');
};

pdoPage.stickyPagination = config => {
    var pagination = $(config['pagination']);
    if (pagination.is(':visible')) {
        pagination.sticky({
            wrapperClassName: 'sticky-pagination',
            getWidthFrom: config['wrapper'],
            responsiveWidth: true,
            topSpacing: 2
        });
        $(config['wrapper']).trigger('scroll');
    }
};

pdoPage.updateTitle = (config, response) => {
    if (typeof(pdoTitle) == 'undefined') {
        return;
    }
    var $title = $('title');
    var separator = pdoTitle.separator || ' / ';
    var tpl = pdoTitle.tpl;

    var title = [];
    var items = $title.text().split(separator);
    var pcre = new RegExp('^' + tpl.split(' ')[0] + ' ');
    for (var i = 0; i < items.length; i++) {
        if (i === 1 && response.page && response.page > 1) {
            title.push(tpl.replace('{page}', response.page).replace('{pageCount}', response.pages));
        }
        if (!items[i].match(pcre)) {
            title.push(items[i]);
        }
    }
    $title.text(title.join(separator));
};

pdoPage.Hash = {
    get () {
        var vars = {}, hash, splitter, hashes;
        if (!this.oldbrowser()) {
            var pos = window.location.href.indexOf('?');
            hashes = (pos != -1) ? decodeURIComponent(window.location.href.substr(pos + 1)).replace('+', ' ') : '';
            splitter = '&';
        }
        else {
            hashes = decodeURIComponent(window.location.hash.substr(1)).replace('+', ' ');
            splitter = '/';
        }

        if (hashes.length == 0) {
            return vars;
        }
        else {
            hashes = hashes.split(splitter);
        }

        var matches, key;
        for (var i in hashes) {
            if (hashes.hasOwnProperty(i)) {
                hash = hashes[i].split('=');
                if (typeof hash[1] == 'undefined') {
                    vars['anchor'] = hash[0];
                }
                else {
                    matches = hash[0].match(/\[(.*?|)\]$/);
                    if (matches) {
                        key = hash[0].replace(matches[0], '');
                        if (!vars.hasOwnProperty(key)) {
                            // Array
                            if (matches[1] == '') {
                                vars[key] = [];
                            }
                            // Object
                            else {
                                vars[key] = {};
                            }
                        }
                        if (vars[key] instanceof Array) {
                            vars[key].push(hash[1]);
                        }
                        else {
                            vars[key][matches[1]] = hash[1];
                        }
                    }
                    // String or numeric
                    else {
                        vars[hash[0]] = hash[1];
                    }
                }
            }
        }
        return vars;
    },

    set (vars) {
        var hash = '';
        for (var i in vars) {
            if (vars.hasOwnProperty(i)) {
                if (typeof vars[i] == 'object') {
                    for (var j in vars[i]) {
                        if (vars[i].hasOwnProperty(j)) {
                            // Array
                            if (vars[i] instanceof Array) {
                                hash += '&' + i + '[]=' + vars[i][j];
                            }
                            // Object
                            else {
                                hash += '&' + i + '[' + j + ']=' + vars[i][j];
                            }
                        }
                    }
                }
                // String or numeric
                else {
                    hash += '&' + i + '=' + vars[i];
                }
            }
        }

        if (!this.oldbrowser()) {
            if (hash.length != 0) {
                hash = '?' + hash.substr(1);
            }
            window.history.pushState({pdoPage: document.location.pathname + hash}, '', document.location.pathname + hash);
        }
        else {
            window.location.hash = hash.substr(1);
        }
    },

    add (key, val) {
        var hash = this.get();
        hash[key] = val;
        this.set(hash);
    },

    remove (key) {
        var hash = this.get();
        delete hash[key];
        this.set(hash);
    },

    clear () {
        this.set({});
    },

    oldbrowser () {
        return !(window.history && history.pushState);
    }
};

if (typeof(jQuery) == 'undefined') {
    console.log("You must load jQuery for using ajax mode in pdoPage.");
}
