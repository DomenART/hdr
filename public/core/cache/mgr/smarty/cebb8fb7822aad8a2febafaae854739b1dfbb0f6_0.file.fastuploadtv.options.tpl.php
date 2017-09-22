<?php /* Smarty version 3.1.27, created on 2017-09-21 07:57:49
         compiled from "/var/www/hdr.dev/public/core/components/fastuploadtv/elements/tv/input/tpl/fastuploadtv.options.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:35194651159c370fdee01e3_66956666%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'cebb8fb7822aad8a2febafaae854739b1dfbb0f6' => 
    array (
      0 => '/var/www/hdr.dev/public/core/components/fastuploadtv/elements/tv/input/tpl/fastuploadtv.options.tpl',
      1 => 1505888562,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '35194651159c370fdee01e3_66956666',
  'variables' => 
  array (
    'tv' => 0,
    'params' => 0,
    'k' => 0,
    'v' => 0,
    'tveulex' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_59c370fe0ae6d1_56652393',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_59c370fe0ae6d1_56652393')) {
function content_59c370fe0ae6d1_56652393 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '35194651159c370fdee01e3_66956666';
?>
<div id="tv-input-properties-form<?php echo $_smarty_tpl->tpl_vars['tv']->value;?>
"></div>

<style>
    .fastuploadtvInfo {
        margin-top: 20px;
    }
    .fastuploadtvInfo h4 {
        margin-top: 10px;
    }
    .fastuploadtvInfo ul {
        margin-left:20px;
        font-size:12px;
        margin-top:5px;
        color: #666;
    }
    .fastuploadtvInfo ul li span {
        font-family:mono;
        font-weight:bold;
    }
</style>
<div class="fastuploadtvInfo">
    <?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['options_desc_tpl']->value), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0);
?>

</div>

<?php echo '<script'; ?>
 type="text/javascript">
// <![CDATA[
var params = {
<?php
$_from = $_smarty_tpl->tpl_vars['params']->value;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$_smarty_tpl->tpl_vars['v'] = new Smarty_Variable;
$_smarty_tpl->tpl_vars['v']->_loop = false;
$_smarty_tpl->tpl_vars['k'] = new Smarty_Variable;
$_smarty_tpl->tpl_vars['__foreach_p'] = new Smarty_Variable(array('total' => $_smarty_tpl->_count($_from), 'iteration' => 0));
foreach ($_from as $_smarty_tpl->tpl_vars['k']->value => $_smarty_tpl->tpl_vars['v']->value) {
$_smarty_tpl->tpl_vars['v']->_loop = true;
$_smarty_tpl->tpl_vars['__foreach_p']->value['iteration']++;
$_smarty_tpl->tpl_vars['__foreach_p']->value['last'] = $_smarty_tpl->tpl_vars['__foreach_p']->value['iteration'] == $_smarty_tpl->tpl_vars['__foreach_p']->value['total'];
$foreach_v_Sav = $_smarty_tpl->tpl_vars['v'];
?>
 '<?php echo $_smarty_tpl->tpl_vars['k']->value;?>
': '<?php echo strtr($_smarty_tpl->tpl_vars['v']->value, array("\\" => "\\\\", "'" => "\\'", "\"" => "\\\"", "\r" => "\\r", "\n" => "\\n", "</" => "<\/" ));?>
'<?php if (!(isset($_smarty_tpl->tpl_vars['__foreach_p']->value['last']) ? $_smarty_tpl->tpl_vars['__foreach_p']->value['last'] : null)) {?>,<?php }?>
<?php
$_smarty_tpl->tpl_vars['v'] = $foreach_v_Sav;
}
?>
};
var oc = {'change':{fn:function(){Ext.getCmp('modx-panel-tv').markDirty();},scope:this}};


FastUploadTVLex = <?php echo $_smarty_tpl->tpl_vars['tveulex']->value;?>
;
function __(key){
    return FastUploadTVLex[key];
};


MODx.load({
    xtype: 'panel'
    ,layout: 'form'
    ,autoHeight: true
    ,cls: 'form-with-labels'
    ,border: false
    ,labelAlign: 'top'
    ,items: [{
        xtype: 'textfield',
        fieldLabel: __('fastuploadtv.save_path'),
        name: 'inopt_path',
        id: 'inopt_path<?php echo $_smarty_tpl->tpl_vars['tv']->value;?>
',
        value: params['path'] || '',
        anchors: '98%',
        listeners: oc
    },{
        xtype: MODx.expandHelp ? 'label' : 'hidden'
        ,forId: 'inopt_path<?php echo $_smarty_tpl->tpl_vars['tv']->value;?>
'
        ,html: __('fastuploadtv.save_path_desc')
        ,cls: 'desc-under'
    },{
        xtype: 'textfield',
        fieldLabel: __('fastuploadtv.file_prefix'),
        name: 'inopt_prefix',
        id: 'inopt_prefix<?php echo $_smarty_tpl->tpl_vars['tv']->value;?>
',
        value: params['prefix'] || '',
        anchors: '98%',
        listeners: oc
    },{
        xtype: MODx.expandHelp ? 'label' : 'hidden'
        ,forId: 'inopt_prefix<?php echo $_smarty_tpl->tpl_vars['tv']->value;?>
'
        ,html: __('fastuploadtv.file_prefix_desc')
        ,cls: 'desc-under'
    },{
        xtype: 'textfield',
        fieldLabel: __('fastuploadtv.mime_types'),
        name: 'inopt_MIME',
        id: 'inopt_MIME<?php echo $_smarty_tpl->tpl_vars['tv']->value;?>
',
        value: params['MIME'] || '',
        anchors: '98%',
        listeners: oc
    },{
        xtype: MODx.expandHelp ? 'label' : 'hidden'
        ,forId: 'inopt_MIME<?php echo $_smarty_tpl->tpl_vars['tv']->value;?>
'
        ,html: __('fastuploadtv.mime_types_desc')
        ,cls: 'desc-under'
    },{
        xtype: 'modx-combo-boolean',
        fieldLabel: __('fastuploadtv.show_value'),
        name: 'inopt_showValue',
        id: 'inopt_showValue<?php echo $_smarty_tpl->tpl_vars['tv']->value;?>
',
        value: params['showValue'] || 0,
        anchors: '98%',
        listeners: oc
    },{
        xtype: MODx.expandHelp ? 'label' : 'hidden'
        ,forId: 'inopt_MIME<?php echo $_smarty_tpl->tpl_vars['tv']->value;?>
'
        ,html: __('fastuploadtv.show_value_desc')
        ,cls: 'desc-under'
    },{
        xtype: 'modx-combo-boolean',
        fieldLabel: __('fastuploadtv.show_preview'),
        name: 'inopt_showPreview',
        id: 'inopt_showPreview<?php echo $_smarty_tpl->tpl_vars['tv']->value;?>
',
        value: params['showPreview'] || 0,
        anchors: '98%',
        listeners: oc
    },{
        xtype: MODx.expandHelp ? 'label' : 'hidden'
        ,forId: 'inopt_MIME<?php echo $_smarty_tpl->tpl_vars['tv']->value;?>
'
        ,html: __('fastuploadtv.show_preview_desc')
        ,cls: 'desc-under'
    },{
        xtype: 'modx-combo-boolean',
        fieldLabel: __('fastuploadtv.prefix_filename'),
        name: 'inopt_prefixFilename',
        id: 'inopt_prefixFilename<?php echo $_smarty_tpl->tpl_vars['tv']->value;?>
',
        value: params['prefixFilename'] || 0,
        anchors: '98%',
        listeners: oc
    }]
    ,renderTo: 'tv-input-properties-form<?php echo $_smarty_tpl->tpl_vars['tv']->value;?>
'
});
// ]]>
<?php echo '</script'; ?>
>
<?php }
}
?>