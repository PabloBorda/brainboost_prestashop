<?php /* Smarty version Smarty-3.1.19, created on 2017-02-28 16:10:40
         compiled from "/home/brainboo/public_html/modules/ebaddthis/ebaddthis.tpl" */ ?>
<?php /*%%SmartyHeaderCode:151921202858b5a10063b983-10481890%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '774ac2fc09ac089dedbbf0fa3282b2c6637daad2' => 
    array (
      0 => '/home/brainboo/public_html/modules/ebaddthis/ebaddthis.tpl',
      1 => 1486138161,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '151921202858b5a10063b983-10481890',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'pubid' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_58b5a100643014_05543416',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58b5a100643014_05543416')) {function content_58b5a100643014_05543416($_smarty_tpl) {?><!-- AddThis Button BEGIN -->
<div class="addthis_toolbox addthis_floating_style  addthis_32x32_style clearfix">
<a class="addthis_button_facebook at300b"></a>
<a class="addthis_button_twitter at300b"></a>
<a class="addthis_button_google_plusone_share at300b"></a>
<a class="addthis_button_pinterest_share at300b"></a>
<a class="addthis_button_email at300b"></a>
<a class="addthis_button_compact"></a>
</div>
<script type="text/javascript">var addthis_config = { "data_track_addressbar":true };</script>
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=<?php echo $_smarty_tpl->tpl_vars['pubid']->value;?>
"></script>
<!-- AddThis Button END -->
<script>
$(document).ready(function() {
	$(window).scroll(function() {  
		var y 			= $(window).scrollTop();
		var eleTop 	= $('#usefull_link_block').offset().top-120;
		var eleOff 	= $(".addthis_toolbox");
		if (y < (eleTop-100))	eleOff.fadeIn(500); 
		else 					eleOff.fadeOut(500);
	});
});
</script><?php }} ?>
