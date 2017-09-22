<?php /* Smarty version 3.1.27, created on 2017-09-20 06:14:53
         compiled from "/var/www/hdr.dev/public/setup/templates/install.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:61705175059c2075d01fa47_58827129%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '00a56f052c1460b93b18fd5ce37b37b0f2820042' => 
    array (
      0 => '/var/www/hdr.dev/public/setup/templates/install.tpl',
      1 => 1505887903,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '61705175059c2075d01fa47_58827129',
  'variables' => 
  array (
    '_lang' => 0,
    'failed' => 0,
    'results' => 0,
    'result' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_59c2075d057cf7_93466415',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_59c2075d057cf7_93466415')) {
function content_59c2075d057cf7_93466415 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '61705175059c2075d01fa47_58827129';
?>
<?php echo '<script'; ?>
 type="text/javascript" src="assets/js/sections/install.js"><?php echo '</script'; ?>
>
<form id="install" action="?action=install" method="post">
<h2><?php echo $_smarty_tpl->tpl_vars['_lang']->value['install_summary'];?>
</h2>
<?php if ($_smarty_tpl->tpl_vars['failed']->value) {?>
<p><?php echo $_smarty_tpl->tpl_vars['_lang']->value['errors_occurred'];?>
</p>
<?php } else { ?>
<p>
    <?php echo $_smarty_tpl->tpl_vars['_lang']->value['install_success'];?>

    <br />(<a style="font-size: .9em" href="#continuebtn"><?php echo $_smarty_tpl->tpl_vars['_lang']->value['skip_to_bottom'];?>
</a>)
    <br /><br />
    <a href="javascript:void(0);" class="modx-toggle-success"><?php echo $_smarty_tpl->tpl_vars['_lang']->value['toggle_success'];?>
</a> | 
    <a href="javascript:void(0);" class="modx-toggle-warning"><?php echo $_smarty_tpl->tpl_vars['_lang']->value['toggle_warnings'];?>
</a>
    
</p>
<?php }?>
<ul class="checklist">
<?php
$_from = $_smarty_tpl->tpl_vars['results']->value;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$_smarty_tpl->tpl_vars['result'] = new Smarty_Variable;
$_smarty_tpl->tpl_vars['result']->_loop = false;
foreach ($_from as $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
$foreach_result_Sav = $_smarty_tpl->tpl_vars['result'];
?>
<li class="<?php echo $_smarty_tpl->tpl_vars['result']->value['class'];?>
 finalsuccess" <?php if (!$_smarty_tpl->tpl_vars['failed']->value) {?>style="display: none;"<?php }?>><?php echo $_smarty_tpl->tpl_vars['result']->value['msg'];?>
</li>
<?php
$_smarty_tpl->tpl_vars['result'] = $foreach_result_Sav;
}
?>
</ul>

<br />

<a id="continuebtn"></a>

<div class="setup_navbar">
<?php if ($_smarty_tpl->tpl_vars['failed']->value) {?>
    <button type="button" id="modx-next" onclick="MODx.go('install');"><?php echo $_smarty_tpl->tpl_vars['_lang']->value['retry'];?>
</button>
    <button type="button" id="modx-back" onclick="MODx.go('summary');"><?php echo $_smarty_tpl->tpl_vars['_lang']->value['back'];?>
</button>
<?php } else { ?>
    <input type="submit" id="modx-next" name="proceed" value="<?php echo $_smarty_tpl->tpl_vars['_lang']->value['next'];?>
" autofocus="autofocus" />
<?php }?>
</div>
</form><?php }
}
?>