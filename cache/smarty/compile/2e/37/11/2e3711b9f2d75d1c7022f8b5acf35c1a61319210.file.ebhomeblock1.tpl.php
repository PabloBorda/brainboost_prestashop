<?php /* Smarty version Smarty-3.1.19, created on 2017-02-28 16:49:52
         compiled from "/home/brainboo/public_html/modules/ebhomeblock1/views/templates/hook/ebhomeblock1.tpl" */ ?>
<?php /*%%SmartyHeaderCode:101543740958b5aa30d413d6-64585536%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2e3711b9f2d75d1c7022f8b5acf35c1a61319210' => 
    array (
      0 => '/home/brainboo/public_html/modules/ebhomeblock1/views/templates/hook/ebhomeblock1.tpl',
      1 => 1486138160,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '101543740958b5aa30d413d6-64585536',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'background_option' => 0,
    'banner_img' => 0,
    'background_color' => 0,
    'banner_desc' => 0,
    'background_link' => 0,
    'banner_url' => 0,
    'banner_txt' => 0,
    'background_height' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_58b5aa30d8cf37_84614760',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58b5aa30d8cf37_84614760')) {function content_58b5aa30d8cf37_84614760($_smarty_tpl) {?>




<section data-type="background" data-speed="2" class="pages eb-home-block" id="eb-home-block-1" style="
	<?php if (isset($_smarty_tpl->tpl_vars['background_option']->value)&&$_smarty_tpl->tpl_vars['background_option']->value==0) {?>
		<?php if (isset($_smarty_tpl->tpl_vars['banner_img']->value)) {?>
			background: url(<?php echo mb_convert_encoding(htmlspecialchars($_smarty_tpl->tpl_vars['banner_img']->value, ENT_QUOTES, 'UTF-8', true), "HTML-ENTITIES", 'UTF-8');?>
) 50% 0 repeat fixed; min-height: 1000px;
		<?php }?>
	<?php } else { ?>
		<?php if (isset($_smarty_tpl->tpl_vars['background_color']->value)) {?>
			background:<?php echo mb_convert_encoding(htmlspecialchars($_smarty_tpl->tpl_vars['background_color']->value, ENT_QUOTES, 'UTF-8', true), "HTML-ENTITIES", 'UTF-8');?>

		<?php }?>;
	<?php }?>
"> 
	<div class="eb-home-block-content">
		<p><?php echo preg_replace("%(?<!\\\\)'%", "\'",$_smarty_tpl->tpl_vars['banner_desc']->value);?>
</p>
		<?php if (isset($_smarty_tpl->tpl_vars['background_link']->value)&&$_smarty_tpl->tpl_vars['background_link']->value==1) {?>
			<a href="<?php echo mb_convert_encoding(htmlspecialchars($_smarty_tpl->tpl_vars['banner_url']->value, ENT_QUOTES, 'UTF-8', true), "HTML-ENTITIES", 'UTF-8');?>
" class="btn"><?php echo mb_convert_encoding(htmlspecialchars($_smarty_tpl->tpl_vars['banner_txt']->value, ENT_QUOTES, 'UTF-8', true), "HTML-ENTITIES", 'UTF-8');?>
</a>
		<?php }?>
	</div>
</section>
<?php if (isset($_smarty_tpl->tpl_vars['background_height']->value)&&$_smarty_tpl->tpl_vars['background_height']->value==1) {?>
<script>
	$(function() {
		var winWidth = $(window).width(),
			winHight = $(window).height(),
			blockHeight = winHight,
			pHeight = $("#eb-home-block-1 .eb-home-block-content").height();
		$("#eb-home-block-1").css("min-height", blockHeight);
		if ( blockHeight > pHeight ) {
			$("#eb-home-block-1 .eb-home-block-content").css("padding-top", ( (blockHeight /2) - (pHeight /2) ));
		};
	});
</script>
<?php } else { ?>
<script>
	$(function() {
		var winWidth = $(window).width(),
			winHight = $(window).height(),
			blockHeight = winHight / 2,
			pHeight = $("#eb-home-block-1 .eb-home-block-content").height();
		$("#eb-home-block-1").css("min-height", blockHeight);
		if ( blockHeight > pHeight ) {
			$("#eb-home-block-1 .eb-home-block-content").css("padding-top", (blockHeight - pHeight) /2);
		};
	});
</script>
<?php }?><?php }} ?>
