Tickets.panel.Authors = function (config) {
    config = config || {};

    Ext.applyIf(config, {
        layout: 'anchor',
        border: false,
        anchor: '100%',
        items: [{
            xtype: 'tickets-grid-authors',
            cls: 'main-wrapper',
        }],
        cls: 'modx23',
    });
    Tickets.panel.Authors.superclass.constructor.call(this, config);
};
Ext.extend(Tickets.panel.Authors, MODx.Panel);
Ext.reg('tickets-panel-authors', Tickets.panel.Authors);