<?php /* Smarty version 3.1.27, created on 2017-09-22 11:57:58
         compiled from "/var/www/hdr.dev/public/core/components/migx/elements/tv/migx.inputproperties.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:54236289159c4fac6180b26_81688630%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '43f648c526047e1063327bf64fab7d9db184ade9' => 
    array (
      0 => '/var/www/hdr.dev/public/core/components/migx/elements/tv/migx.inputproperties.tpl',
      1 => 1505888559,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '54236289159c4fac6180b26_81688630',
  'variables' => 
  array (
    'tv' => 0,
    'params' => 0,
    'k' => 0,
    'v' => 0,
    'mig' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_59c4fac62d0094_83745854',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_59c4fac62d0094_83745854')) {
function content_59c4fac62d0094_83745854 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '54236289159c4fac6180b26_81688630';
?>
<div id="tv-input-properties-form<?php echo $_smarty_tpl->tpl_vars['tv']->value;?>
"></div>


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
MODx.load({
    xtype: 'panel'
    ,layout: 'form'
    ,autoHeight: true
    ,labelWidth: 150
    ,border: false
    ,items: [{
        xtype: 'textfield'
        ,fieldLabel: '<?php echo $_smarty_tpl->tpl_vars['mig']->value['configs'];?>
'
        ,description: '<?php echo $_smarty_tpl->tpl_vars['mig']->value['configs_desc'];?>
'
        ,name: 'inopt_configs'
        ,hiddenName: 'inopt_configs'
        ,id: 'inopt_configs<?php echo $_smarty_tpl->tpl_vars['tv']->value;?>
'
        ,value: params['configs']
        ,width: 600
        ,listeners: oc
    },{
        xtype: 'textarea'
        ,fieldLabel: '<?php echo $_smarty_tpl->tpl_vars['mig']->value['tabs'];?>
'
        ,description: '<?php echo $_smarty_tpl->tpl_vars['mig']->value['tabs_desc'];?>
'
        ,name: 'inopt_formtabs'
        ,hiddenName: 'inopt_formtabs'
        ,id: 'inopt_formtabs<?php echo $_smarty_tpl->tpl_vars['tv']->value;?>
'
        ,value: params['formtabs']
        ,width: 600
        ,height: 150
        ,listeners: oc
    },{
        xtype: 'textarea'
        ,fieldLabel: '<?php echo $_smarty_tpl->tpl_vars['mig']->value['columns'];?>
'
        ,description: '<?php echo $_smarty_tpl->tpl_vars['mig']->value['columns_desc'];?>
'
        ,name: 'inopt_columns'
        ,hiddenName: 'inopt_columns'
        ,id: 'inopt_columns<?php echo $_smarty_tpl->tpl_vars['tv']->value;?>
'
        ,value: params['columns']
        ,width: 600
        ,height: 150
        ,listeners: oc
    },{
        xtype: 'textfield'
        ,fieldLabel: '<?php echo $_smarty_tpl->tpl_vars['mig']->value['btntext'];?>
'
        ,description: '<?php echo $_smarty_tpl->tpl_vars['mig']->value['btntext_desc'];?>
'
        ,name: 'inopt_btntext'
        ,hiddenName: 'inopt_btntext'
        ,id: 'inopt_btntext<?php echo $_smarty_tpl->tpl_vars['tv']->value;?>
'
        ,value: params['btntext']
        ,width: 600
        ,listeners: oc
    },{
        xtype: 'textfield'
        ,fieldLabel: '<?php echo $_smarty_tpl->tpl_vars['mig']->value['previewurl'];?>
'
        ,description: '<?php echo $_smarty_tpl->tpl_vars['mig']->value['previewurl_desc'];?>
'
        ,name: 'inopt_previewurl'
        ,hiddenName: 'inopt_previewurl'
        ,id: 'inopt_previewurl<?php echo $_smarty_tpl->tpl_vars['tv']->value;?>
'
        ,value: params['previewurl']
        ,width: 600
        ,listeners: oc
    },{
        xtype: 'textfield'
        ,fieldLabel: '<?php echo $_smarty_tpl->tpl_vars['mig']->value['jsonvarkey'];?>
'
        ,description: '<?php echo $_smarty_tpl->tpl_vars['mig']->value['jsonvarkey_desc'];?>
'
        ,name: 'inopt_jsonvarkey'
        ,hiddenName: 'inopt_jsonvarkey'
        ,id: 'inopt_jsonvarkey<?php echo $_smarty_tpl->tpl_vars['tv']->value;?>
'
        ,value: params['jsonvarkey']
        ,width: 600
        ,listeners: oc
    },{
        xtype: 'combo-boolean'
        ,fieldLabel: '<?php echo $_smarty_tpl->tpl_vars['mig']->value['autoResourceFolders'];?>
'
        ,name: 'inopt_autoResourceFolders'
        ,hiddenName: 'inopt_autoResourceFolders'
        ,id: 'inopt_autoResourceFolders<?php echo $_smarty_tpl->tpl_vars['tv']->value;?>
'
        ,value: params['autoResourceFolders'] == 0 || params['autoResourceFolders'] == 'true' ? true : false
        ,width: 300
        ,listeners: oc
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