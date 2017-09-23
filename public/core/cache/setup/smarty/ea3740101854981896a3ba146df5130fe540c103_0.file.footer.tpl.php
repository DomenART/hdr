<?php /* Smarty version 3.1.27, created on 2017-09-20 06:14:53
         compiled from "/var/www/hdr.dev/public/setup/templates/footer.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:91621545459c2075d05af42_73142256%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ea3740101854981896a3ba146df5130fe540c103' => 
    array (
      0 => '/var/www/hdr.dev/public/setup/templates/footer.tpl',
      1 => 1505887903,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '91621545459c2075d05af42_73142256',
  'variables' => 
  array (
    '_lang' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_59c2075d060980_92929332',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_59c2075d060980_92929332')) {
function content_59c2075d060980_92929332 ($_smarty_tpl) {
if (!is_callable('smarty_modifier_replace')) require_once '/var/www/hdr.dev/public/core/model/smarty/plugins/modifier.replace.php';

$_smarty_tpl->properties['nocache_hash'] = '91621545459c2075d05af42_73142256';
?>
        </div>
        <!-- end content -->
        <div class="clear">&nbsp;</div>
    </div>
</div>

<!-- start footer -->
<div id="footer">
    <div id="footer-inner">
    <div class="container_12">
        <p><?php ob_start();
echo date('Y');
$_tmp1=ob_get_clean();
echo smarty_modifier_replace($_smarty_tpl->tpl_vars['_lang']->value['modx_footer1'],'[[+current_year]]',$_tmp1);?>
</p>
        <p><?php echo $_smarty_tpl->tpl_vars['_lang']->value['modx_footer2'];?>
</p>
    </div>
    </div>
</div>

<div class="post_body">

</div>
<!-- end footer -->
</body>
</html><?php }
}
?>