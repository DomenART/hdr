Tickets.panel.Threads = function (config) {
    config = config || {};

    Ext.applyIf(config, {
        layout: 'anchor',
        border: false,
        anchor: '100%',
        items: [{
            xtype: 'tickets-grid-threads',
            cls: 'main-wrapper',
        }],
        cls: 'modx23'
    });
    Tickets.panel.Threads.superclass.constructor.call(this, config);
};
Ext.extend(Tickets.panel.Threads, MODx.Panel);
Ext.reg('tickets-panel-threads', Tickets.panel.Threads);