<?php /* Smarty version 3.1.27, created on 2017-09-22 14:32:23
         compiled from "/var/www/hdr.dev/public/manager/templates/default/element/tv/renders/input/checkbox.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:52586269359c51ef781b7c4_89935430%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c09f6e0e0351d5c612fe18f23f40737e61fa6e23' => 
    array (
      0 => '/var/www/hdr.dev/public/manager/templates/default/element/tv/renders/input/checkbox.tpl',
      1 => 1505887903,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '52586269359c51ef781b7c4_89935430',
  'variables' => 
  array (
    'tv' => 0,
    'params' => 0,
    'opts' => 0,
    'k' => 0,
    'item' => 0,
    'cbdefaults' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_59c51ef78a4e21_53070402',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_59c51ef78a4e21_53070402')) {
function content_59c51ef78a4e21_53070402 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '52586269359c51ef781b7c4_89935430';
?>
<div id="tv<?php echo $_smarty_tpl->tpl_vars['tv']->value->id;?>
-cb"></div>

<?php echo '<script'; ?>
 type="text/javascript">
// <![CDATA[

Ext.onReady(function() {
    var fld = MODx.load({
    
        xtype: 'checkboxgroup'
        ,id: 'tv<?php echo $_smarty_tpl->tpl_vars['tv']->value->id;?>
'
        ,vertical: true
        ,columns: <?php if ($_smarty_tpl->tpl_vars['params']->value['columns']) {
echo $_smarty_tpl->tpl_vars['params']->value['columns'];
} else { ?>1<?php }?>
        ,renderTo: 'tv<?php echo $_smarty_tpl->tpl_vars['tv']->value->id;?>
-cb'
        ,name: 'tv-<?php echo $_smarty_tpl->tpl_vars['tv']->value->id;?>
'
        ,width: '99%'
        ,allowBlank: <?php if ($_smarty_tpl->tpl_vars['params']->value['allowBlank'] == 1 || $_smarty_tpl->tpl_vars['params']->value['allowBlank'] == 'true') {?>true<?php } else { ?>false<?php }?>
        ,hideMode: 'offsets'
        ,msgTarget: 'under'

        ,items: [<?php
$_from = $_smarty_tpl->tpl_vars['opts']->value;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$_smarty_tpl->tpl_vars['item'] = new Smarty_Variable;
$_smarty_tpl->tpl_vars['item']->_loop = false;
$_smarty_tpl->tpl_vars['k'] = new Smarty_Variable;
$_smarty_tpl->tpl_vars['__foreach_cbs'] = new Smarty_Variable(array('total' => $_smarty_tpl->_count($_from), 'iteration' => 0));
foreach ($_from as $_smarty_tpl->tpl_vars['k']->value => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
$_smarty_tpl->tpl_vars['__foreach_cbs']->value['iteration']++;
$_smarty_tpl->tpl_vars['__foreach_cbs']->value['last'] = $_smarty_tpl->tpl_vars['__foreach_cbs']->value['iteration'] == $_smarty_tpl->tpl_vars['__foreach_cbs']->value['total'];
$foreach_item_Sav = $_smarty_tpl->tpl_vars['item'];
?>
        {
            name: 'tv<?php echo $_smarty_tpl->tpl_vars['tv']->value->id;?>
[]'
            ,id: 'tv<?php echo $_smarty_tpl->tpl_vars['tv']->value->id;?>
-<?php echo $_smarty_tpl->tpl_vars['k']->value;?>
'
            ,boxLabel: '<?php echo strtr($_smarty_tpl->tpl_vars['item']->value['text'], array("\\" => "\\\\", "'" => "\\'", "\"" => "\\\"", "\r" => "\\r", "\n" => "\\n", "</" => "<\/" ));?>
'
            ,checked: <?php if ($_smarty_tpl->tpl_vars['item']->value['checked']) {?>true<?php } else { ?>false<?php }?>
            ,inputValue: <?php echo $_smarty_tpl->tpl_vars['item']->value['value'];?>

            ,value: <?php echo $_smarty_tpl->tpl_vars['item']->value['value'];?>

        }<?php if (!(isset($_smarty_tpl->tpl_vars['__foreach_cbs']->value['last']) ? $_smarty_tpl->tpl_vars['__foreach_cbs']->value['last'] : null)) {?>,<?php }?>
        <?php
$_smarty_tpl->tpl_vars['item'] = $foreach_item_Sav;
}
?>]
    });
    <?php
$_from = $_smarty_tpl->tpl_vars['opts']->value;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$_smarty_tpl->tpl_vars['item'] = new Smarty_Variable;
$_smarty_tpl->tpl_vars['item']->_loop = false;
$_smarty_tpl->tpl_vars['k'] = new Smarty_Variable;
$_smarty_tpl->tpl_vars['__foreach_cbs'] = new Smarty_Variable(array('total' => $_smarty_tpl->_count($_from), 'iteration' => 0));
foreach ($_from as $_smarty_tpl->tpl_vars['k']->value => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
$_smarty_tpl->tpl_vars['__foreach_cbs']->value['iteration']++;
$_smarty_tpl->tpl_vars['__foreach_cbs']->value['last'] = $_smarty_tpl->tpl_vars['__foreach_cbs']->value['iteration'] == $_smarty_tpl->tpl_vars['__foreach_cbs']->value['total'];
$foreach_item_Sav = $_smarty_tpl->tpl_vars['item'];
?>
    Ext.getCmp('tv<?php echo $_smarty_tpl->tpl_vars['tv']->value->id;?>
-<?php echo $_smarty_tpl->tpl_vars['k']->value;?>
').on('check',MODx.fireResourceFormChange);
    <?php
$_smarty_tpl->tpl_vars['item'] = $foreach_item_Sav;
}
?>

    Ext.get('tvdef<?php echo $_smarty_tpl->tpl_vars['tv']->value->id;?>
').dom.value = "<?php echo $_smarty_tpl->tpl_vars['cbdefaults']->value;?>
";
    Ext.getCmp('modx-panel-resource').getForm().add(fld);
});
// ]]>
<?php echo '</script'; ?>
>
<?php }
}
?>