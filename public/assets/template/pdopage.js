/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, {
/******/ 				configurable: false,
/******/ 				enumerable: true,
/******/ 				get: getter
/******/ 			});
/******/ 		}
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = 196);
/******/ })
/************************************************************************/
/******/ ({

/***/ 196:
/***/ (function(module, exports, __webpack_require__) {

"use strict";


var _typeof = typeof Symbol === "function" && typeof Symbol.iterator === "symbol" ? function (obj) { return typeof obj; } : function (obj) { return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj; };

var queryString = __webpack_require__(197);

if (typeof pdoPage == 'undefined') {
    pdoPage = { callbacks: {}, keys: {}, configs: {} };
}

pdoPage.Reached = false;

pdoPage.initialize = function (config) {
    config.all = config.more + '-all';

    if (pdoPage.keys[config['pageVarKey']] == undefined) {
        var tkey = config['pageVarKey'];
        var tparams = pdoPage.Hash.get();
        var tpage = tparams[tkey] == undefined ? 1 : tparams[tkey];
        pdoPage.keys[tkey] = Number(tpage);
        pdoPage.configs[tkey] = config;
    }
    var $this = undefined;
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

                history.replaceState({ pdoPage: window.location.href }, '');
            }
            break;

        case 'scroll':
        case 'button':
            if (config.history) {
                if (typeof jQuery().sticky == 'undefined') {
                    $.getScript(config['assetsUrl'] + 'js/lib/jquery.sticky.min.js', function () {
                        pdoPage.initialize(config);
                    });
                    return;
                }
                pdoPage.stickyPagination(config);
            } else {
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

                $(document).on('click', config.more, function (e) {
                    e.preventDefault();
                    pdoPage.addPage(config);
                });

                $(document).on('click', config.all, function (e) {
                    e.preventDefault();
                    pdoPage.showAll(config);
                });
            } else {
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

pdoPage.addPage = function (config) {
    var key = config['pageVarKey'];
    var current = pdoPage.keys[key] || 1;

    $(config['link']).each(function () {
        var href = $(this).prop('href');
        var match = href.match(new RegExp(key + '=(\\d+)'));
        var page = !match ? 1 : Number(match[1]);

        if (page > current) {
            if (config.history) {
                if (page == 1) {
                    pdoPage.Hash.remove(key);
                } else {
                    pdoPage.Hash.add(key, page);
                }
            }
            pdoPage.loadPage(href, config, 'append');
            return false;
        }
    });
};

pdoPage.showAll = function (config) {
    var params = queryString.parse(location.search);
    params.page = 0;
    params = queryString.stringify(params);

    pdoPage.loadPage(location.pathname + '?' + params, config);
};

pdoPage.loadPage = function (href, config, mode) {
    var wrapper = $(config['wrapper']);
    var rows = $(config['rows']);
    var pagination = $(config['pagination']);
    var key = config['pageVarKey'];
    var match = href.match(new RegExp(key + '=(\\d+)'));
    var page = !match ? 1 : Number(match[1]);

    if (!mode) {
        mode = 'replace';
    }

    if (pdoPage.keys[key] == page) {
        return;
    }
    if (pdoPage.callbacks['before'] && typeof pdoPage.callbacks['before'] == 'function') {
        pdoPage.callbacks['before'].apply(undefined, [config]);
    } else {
        if (config['mode'] != 'scroll') {
            wrapper.css({ opacity: .3 });
        }
        wrapper.addClass('loading');
    }

    var params = pdoPage.Hash.get();
    for (var i in params) {
        if (params.hasOwnProperty(i) && pdoPage.keys[i] && i != key) {
            delete params[i];
        }
    }
    params[key] = pdoPage.keys[key] = page;
    params['pageId'] = config['pageId'];
    params['hash'] = config['hash'];

    if (params.page === 0) {
        params.limit = 99999; // омерзительно
    }

    $.post(config['connectorUrl'], params, function (response) {
        if (response && response['total']) {
            wrapper.find(pagination).html(response['pagination']);

            if (config['mode'] == 'button') {
                if (response['pages'] == response['page']) {
                    $(config['more']).hide();
                    $(config['all']).hide();
                } else {
                    $(config['more']).show();
                    $(config['all']).show();
                }
            } else if (config['mode'] == 'scroll') {
                pdoPage.Reached = false;
            }

            if (mode == 'append') {
                wrapper.find(rows).append(response['output']);
            } else {
                wrapper.find(rows).html(response['output']);
            }

            if (pdoPage.callbacks['after'] && typeof pdoPage.callbacks['after'] == 'function') {
                pdoPage.callbacks['after'].apply(undefined, [config, response]);
            } else {
                wrapper.removeClass('loading');
                if (config['mode'] != 'scroll') {
                    wrapper.css({ opacity: 1 });
                    if (config['mode'] == 'default') {
                        $('html, body').animate({ scrollTop: wrapper.position().top - 50 || 0 }, 0);
                    }
                }
            }
            pdoPage.updateTitle(config, response);
            $(document).trigger('pdopage_load', [config, response]);
        }
    }, 'json');
};

pdoPage.stickyPagination = function (config) {
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

pdoPage.updateTitle = function (config, response) {
    if (typeof pdoTitle == 'undefined') {
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
    get: function get() {
        var vars = {},
            hash,
            splitter,
            hashes;
        if (!this.oldbrowser()) {
            var pos = window.location.href.indexOf('?');
            hashes = pos != -1 ? decodeURIComponent(window.location.href.substr(pos + 1)).replace('+', ' ') : '';
            splitter = '&';
        } else {
            hashes = decodeURIComponent(window.location.hash.substr(1)).replace('+', ' ');
            splitter = '/';
        }

        if (hashes.length == 0) {
            return vars;
        } else {
            hashes = hashes.split(splitter);
        }

        var matches, key;
        for (var i in hashes) {
            if (hashes.hasOwnProperty(i)) {
                hash = hashes[i].split('=');
                if (typeof hash[1] == 'undefined') {
                    vars['anchor'] = hash[0];
                } else {
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
                        } else {
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
    set: function set(vars) {
        var hash = '';
        for (var i in vars) {
            if (vars.hasOwnProperty(i)) {
                if (_typeof(vars[i]) == 'object') {
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
            window.history.pushState({ pdoPage: document.location.pathname + hash }, '', document.location.pathname + hash);
        } else {
            window.location.hash = hash.substr(1);
        }
    },
    add: function add(key, val) {
        var hash = this.get();
        hash[key] = val;
        this.set(hash);
    },
    remove: function remove(key) {
        var hash = this.get();
        delete hash[key];
        this.set(hash);
    },
    clear: function clear() {
        this.set({});
    },
    oldbrowser: function oldbrowser() {
        return !(window.history && history.pushState);
    }
};

if (typeof jQuery == 'undefined') {
    console.log("You must load jQuery for using ajax mode in pdoPage.");
}

/***/ }),

/***/ 197:
/***/ (function(module, exports, __webpack_require__) {

"use strict";

var strictUriEncode = __webpack_require__(198);
var objectAssign = __webpack_require__(199);
var decodeComponent = __webpack_require__(200);

function encoderForArrayFormat(opts) {
	switch (opts.arrayFormat) {
		case 'index':
			return function (key, value, index) {
				return value === null ? [
					encode(key, opts),
					'[',
					index,
					']'
				].join('') : [
					encode(key, opts),
					'[',
					encode(index, opts),
					']=',
					encode(value, opts)
				].join('');
			};

		case 'bracket':
			return function (key, value) {
				return value === null ? encode(key, opts) : [
					encode(key, opts),
					'[]=',
					encode(value, opts)
				].join('');
			};

		default:
			return function (key, value) {
				return value === null ? encode(key, opts) : [
					encode(key, opts),
					'=',
					encode(value, opts)
				].join('');
			};
	}
}

function parserForArrayFormat(opts) {
	var result;

	switch (opts.arrayFormat) {
		case 'index':
			return function (key, value, accumulator) {
				result = /\[(\d*)\]$/.exec(key);

				key = key.replace(/\[\d*\]$/, '');

				if (!result) {
					accumulator[key] = value;
					return;
				}

				if (accumulator[key] === undefined) {
					accumulator[key] = {};
				}

				accumulator[key][result[1]] = value;
			};

		case 'bracket':
			return function (key, value, accumulator) {
				result = /(\[\])$/.exec(key);
				key = key.replace(/\[\]$/, '');

				if (!result) {
					accumulator[key] = value;
					return;
				} else if (accumulator[key] === undefined) {
					accumulator[key] = [value];
					return;
				}

				accumulator[key] = [].concat(accumulator[key], value);
			};

		default:
			return function (key, value, accumulator) {
				if (accumulator[key] === undefined) {
					accumulator[key] = value;
					return;
				}

				accumulator[key] = [].concat(accumulator[key], value);
			};
	}
}

function encode(value, opts) {
	if (opts.encode) {
		return opts.strict ? strictUriEncode(value) : encodeURIComponent(value);
	}

	return value;
}

function keysSorter(input) {
	if (Array.isArray(input)) {
		return input.sort();
	} else if (typeof input === 'object') {
		return keysSorter(Object.keys(input)).sort(function (a, b) {
			return Number(a) - Number(b);
		}).map(function (key) {
			return input[key];
		});
	}

	return input;
}

exports.extract = function (str) {
	return str.split('?')[1] || '';
};

exports.parse = function (str, opts) {
	opts = objectAssign({arrayFormat: 'none'}, opts);

	var formatter = parserForArrayFormat(opts);

	// Create an object with no prototype
	// https://github.com/sindresorhus/query-string/issues/47
	var ret = Object.create(null);

	if (typeof str !== 'string') {
		return ret;
	}

	str = str.trim().replace(/^(\?|#|&)/, '');

	if (!str) {
		return ret;
	}

	str.split('&').forEach(function (param) {
		var parts = param.replace(/\+/g, ' ').split('=');
		// Firefox (pre 40) decodes `%3D` to `=`
		// https://github.com/sindresorhus/query-string/pull/37
		var key = parts.shift();
		var val = parts.length > 0 ? parts.join('=') : undefined;

		// missing `=` should be `null`:
		// http://w3.org/TR/2012/WD-url-20120524/#collect-url-parameters
		val = val === undefined ? null : decodeComponent(val);

		formatter(decodeComponent(key), val, ret);
	});

	return Object.keys(ret).sort().reduce(function (result, key) {
		var val = ret[key];
		if (Boolean(val) && typeof val === 'object' && !Array.isArray(val)) {
			// Sort object keys, not values
			result[key] = keysSorter(val);
		} else {
			result[key] = val;
		}

		return result;
	}, Object.create(null));
};

exports.stringify = function (obj, opts) {
	var defaults = {
		encode: true,
		strict: true,
		arrayFormat: 'none'
	};

	opts = objectAssign(defaults, opts);

	var formatter = encoderForArrayFormat(opts);

	return obj ? Object.keys(obj).sort().map(function (key) {
		var val = obj[key];

		if (val === undefined) {
			return '';
		}

		if (val === null) {
			return encode(key, opts);
		}

		if (Array.isArray(val)) {
			var result = [];

			val.slice().forEach(function (val2) {
				if (val2 === undefined) {
					return;
				}

				result.push(formatter(key, val2, result.length));
			});

			return result.join('&');
		}

		return encode(key, opts) + '=' + encode(val, opts);
	}).filter(function (x) {
		return x.length > 0;
	}).join('&') : '';
};


/***/ }),

/***/ 198:
/***/ (function(module, exports, __webpack_require__) {

"use strict";

module.exports = function (str) {
	return encodeURIComponent(str).replace(/[!'()*]/g, function (c) {
		return '%' + c.charCodeAt(0).toString(16).toUpperCase();
	});
};


/***/ }),

/***/ 199:
/***/ (function(module, exports, __webpack_require__) {

"use strict";
/*
object-assign
(c) Sindre Sorhus
@license MIT
*/


/* eslint-disable no-unused-vars */
var getOwnPropertySymbols = Object.getOwnPropertySymbols;
var hasOwnProperty = Object.prototype.hasOwnProperty;
var propIsEnumerable = Object.prototype.propertyIsEnumerable;

function toObject(val) {
	if (val === null || val === undefined) {
		throw new TypeError('Object.assign cannot be called with null or undefined');
	}

	return Object(val);
}

function shouldUseNative() {
	try {
		if (!Object.assign) {
			return false;
		}

		// Detect buggy property enumeration order in older V8 versions.

		// https://bugs.chromium.org/p/v8/issues/detail?id=4118
		var test1 = new String('abc');  // eslint-disable-line no-new-wrappers
		test1[5] = 'de';
		if (Object.getOwnPropertyNames(test1)[0] === '5') {
			return false;
		}

		// https://bugs.chromium.org/p/v8/issues/detail?id=3056
		var test2 = {};
		for (var i = 0; i < 10; i++) {
			test2['_' + String.fromCharCode(i)] = i;
		}
		var order2 = Object.getOwnPropertyNames(test2).map(function (n) {
			return test2[n];
		});
		if (order2.join('') !== '0123456789') {
			return false;
		}

		// https://bugs.chromium.org/p/v8/issues/detail?id=3056
		var test3 = {};
		'abcdefghijklmnopqrst'.split('').forEach(function (letter) {
			test3[letter] = letter;
		});
		if (Object.keys(Object.assign({}, test3)).join('') !==
				'abcdefghijklmnopqrst') {
			return false;
		}

		return true;
	} catch (err) {
		// We don't expect any of the above to throw, but better to be safe.
		return false;
	}
}

module.exports = shouldUseNative() ? Object.assign : function (target, source) {
	var from;
	var to = toObject(target);
	var symbols;

	for (var s = 1; s < arguments.length; s++) {
		from = Object(arguments[s]);

		for (var key in from) {
			if (hasOwnProperty.call(from, key)) {
				to[key] = from[key];
			}
		}

		if (getOwnPropertySymbols) {
			symbols = getOwnPropertySymbols(from);
			for (var i = 0; i < symbols.length; i++) {
				if (propIsEnumerable.call(from, symbols[i])) {
					to[symbols[i]] = from[symbols[i]];
				}
			}
		}
	}

	return to;
};


/***/ }),

/***/ 200:
/***/ (function(module, exports, __webpack_require__) {

"use strict";

var token = '%[a-f0-9]{2}';
var singleMatcher = new RegExp(token, 'gi');
var multiMatcher = new RegExp('(' + token + ')+', 'gi');

function decodeComponents(components, split) {
	try {
		// Try to decode the entire string first
		return decodeURIComponent(components.join(''));
	} catch (err) {
		// Do nothing
	}

	if (components.length === 1) {
		return components;
	}

	split = split || 1;

	// Split the array in 2 parts
	var left = components.slice(0, split);
	var right = components.slice(split);

	return Array.prototype.concat.call([], decodeComponents(left), decodeComponents(right));
}

function decode(input) {
	try {
		return decodeURIComponent(input);
	} catch (err) {
		var tokens = input.match(singleMatcher);

		for (var i = 1; i < tokens.length; i++) {
			input = decodeComponents(tokens, i).join('');

			tokens = input.match(singleMatcher);
		}

		return input;
	}
}

function customDecodeURIComponent(input) {
	// Keep track of all the replacements and prefill the map with the `BOM`
	var replaceMap = {
		'%FE%FF': '\uFFFD\uFFFD',
		'%FF%FE': '\uFFFD\uFFFD'
	};

	var match = multiMatcher.exec(input);
	while (match) {
		try {
			// Decode as big chunks as possible
			replaceMap[match[0]] = decodeURIComponent(match[0]);
		} catch (err) {
			var result = decode(match[0]);

			if (result !== match[0]) {
				replaceMap[match[0]] = result;
			}
		}

		match = multiMatcher.exec(input);
	}

	// Add `%C2` at the end of the map to make sure it does not replace the combinator before everything else
	replaceMap['%C2'] = '\uFFFD';

	var entries = Object.keys(replaceMap);

	for (var i = 0; i < entries.length; i++) {
		// Replace all decoded components
		var key = entries[i];
		input = input.replace(new RegExp(key, 'g'), replaceMap[key]);
	}

	return input;
}

module.exports = function (encodedURI) {
	if (typeof encodedURI !== 'string') {
		throw new TypeError('Expected `encodedURI` to be of type `string`, got `' + typeof encodedURI + '`');
	}

	try {
		encodedURI = encodedURI.replace(/\+/g, ' ');

		// Try the built in decoder first
		return decodeURIComponent(encodedURI);
	} catch (err) {
		// Fallback to a more advanced decoder
		return customDecodeURIComponent(encodedURI);
	}
};


/***/ })

/******/ });