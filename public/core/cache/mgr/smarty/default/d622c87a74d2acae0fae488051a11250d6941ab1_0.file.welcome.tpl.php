<?php /* Smarty version 3.1.27, created on 2017-09-20 06:15:08
         compiled from "/var/www/hdr.dev/public/manager/templates/default/welcome.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:51568907559c2076cbfe267_56441605%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd622c87a74d2acae0fae488051a11250d6941ab1' => 
    array (
      0 => '/var/www/hdr.dev/public/manager/templates/default/welcome.tpl',
      1 => 1505887903,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '51568907559c2076cbfe267_56441605',
  'variables' => 
  array (
    'dashboard' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_59c2076cbff227_07798179',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_59c2076cbff227_07798179')) {
function content_59c2076cbff227_07798179 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '51568907559c2076cbfe267_56441605';
?>
<div id="modx-panel-welcome-div"></div>

<div id="modx-dashboard" class="dashboard">
<?php echo $_smarty_tpl->tpl_vars['dashboard']->value;?>

</div><?php }
}
?>