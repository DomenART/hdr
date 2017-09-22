<?php /* Smarty version 3.1.27, created on 2017-09-22 12:27:53
         compiled from "/var/www/hdr.dev/public/core/components/fastuploadtv/elements/tv/input/tpl/fastuploadtv.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:38779687959c501c92d6f97_81968098%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '527c021f60e16f659c0d22742cab5d8fe29c3f7a' => 
    array (
      0 => '/var/www/hdr.dev/public/core/components/fastuploadtv/elements/tv/input/tpl/fastuploadtv.tpl',
      1 => 1505888562,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '38779687959c501c92d6f97_81968098',
  'variables' => 
  array (
    'tv' => 0,
    'assets' => 0,
    'lex' => 0,
    'res_id' => 0,
    'res_alias' => 0,
    'p_id' => 0,
    'p_alias' => 0,
    'tv_id' => 0,
    'ms_id' => 0,
    'MIME_TYPES' => 0,
    'showValue' => 0,
    'showPreview' => 0,
    'prefixFilename' => 0,
    'jsonlex' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_59c501c9344306_64708662',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_59c501c9344306_64708662')) {
function content_59c501c9344306_64708662 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '38779687959c501c92d6f97_81968098';
?>
<div id="fastuploadtv<?php echo $_smarty_tpl->tpl_vars['tv']->value->id;?>
" style="width:100%"></div>
<?php echo '<script'; ?>
 type="text/javascript">
    myTV<?php echo $_smarty_tpl->tpl_vars['tv']->value->id;?>
 = MODx.load({
    
        xtype: 'FastUploadTV',
        renderTo: 'fastuploadtv<?php echo $_smarty_tpl->tpl_vars['tv']->value->id;?>
',
        url: '<?php echo $_smarty_tpl->tpl_vars['assets']->value;?>
connector.php',
        name: 'tv<?php echo $_smarty_tpl->tpl_vars['tv']->value->id;?>
',
        text: '<?php echo $_smarty_tpl->tpl_vars['lex']->value->upload_file;?>
',
        altText: '<?php echo $_smarty_tpl->tpl_vars['lex']->value->replace_file;?>
',
        clearText: '<?php echo $_smarty_tpl->tpl_vars['lex']->value->clear_file;?>
',
        res_id: <?php echo $_smarty_tpl->tpl_vars['res_id']->value;?>
,
        res_alias: '<?php echo $_smarty_tpl->tpl_vars['res_alias']->value;?>
',
        p_id: <?php echo $_smarty_tpl->tpl_vars['p_id']->value;?>
,
        p_alias: '<?php echo $_smarty_tpl->tpl_vars['p_alias']->value;?>
',
        tv_id: <?php echo $_smarty_tpl->tpl_vars['tv_id']->value;?>
,
        ms_id: <?php echo $_smarty_tpl->tpl_vars['ms_id']->value;?>
,
        acceptedMIMEtypes: <?php echo $_smarty_tpl->tpl_vars['MIME_TYPES']->value;?>
,
        showValue: <?php echo $_smarty_tpl->tpl_vars['showValue']->value;?>
,
        showPreview: <?php echo $_smarty_tpl->tpl_vars['showPreview']->value;?>
,
        prefixFilename: <?php echo $_smarty_tpl->tpl_vars['prefixFilename']->value;?>
,
        value: '<?php echo $_smarty_tpl->tpl_vars['tv']->value->value;?>
',
        lex: <?php echo $_smarty_tpl->tpl_vars['jsonlex']->value;?>

    
    });
    
<?php echo '</script'; ?>
><?php }
}
?>