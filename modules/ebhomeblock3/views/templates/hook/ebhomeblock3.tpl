{*
*  * 2007-2014 PrestaShop
*  ************************************************************************************************************
*  * DISCLAIMER
*  ************************************************************************************************************
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2014 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*  ************************************************************************************************************
*  * ELATION ADVANCE TOUCH THEME
*  * (d) elation3ase theme development
*  * (c) 2015 Elation Base, LLC
*  * (i) elationbase.com | elationbase@gmail.com
*  * See theme's licence agreement at the theme root folder (licence.txt)
*  ************************************************************************************************************
*  * (i) Do not edit this file if you wish to upgrade PrestaShop or this Theme to newer versions in the future. 
*  ************************************************************************************************************
*}




<section data-type="background" data-speed="2" class="pages eb-home-block" id="eb-home-block-3" style="
	{if isset($background_option) && $background_option == 0}
		{if isset($banner_img)}
			background: url({$banner_img|escape:'htmlall':'UTF-8'}) 50% 0 repeat fixed; min-height: 1000px;
		{/if}
	{else}
		{if isset($background_color)}
			background:{$background_color|escape:'htmlall':'UTF-8'}
		{/if};
	{/if}
"> 
	<div class="eb-home-block-content">
		<p>{$banner_desc|escape:'quotes'}</p>
		{if isset($background_link) && $background_link == 1}
			<a href="{$banner_url|escape:'htmlall':'UTF-8'}" class="btn">{$banner_txt|escape:'htmlall':'UTF-8'}</a>
		{/if}
	</div>
</section>
{if isset($background_height) && $background_height == 1}
<script>
	$(function() {
		var winWidth = $(window).width(),
			winHight = $(window).height(),
			blockHeight = winHight,
			pHeight = $("#eb-home-block-3 .eb-home-block-content").height();
		$("#eb-home-block-3").css("min-height", blockHeight);
		if ( blockHeight > pHeight ) {
			$("#eb-home-block-3 .eb-home-block-content").css("padding-top", ( (blockHeight /2) - (pHeight /2) ));
		};
	});
</script>
{else}
<script>
	$(function() {
		var winWidth = $(window).width(),
			winHight = $(window).height(),
			blockHeight = winHight / 2,
			pHeight = $("#eb-home-block-3 .eb-home-block-content").height();
		$("#eb-home-block-3").css("min-height", blockHeight);
		if ( blockHeight > pHeight ) {
			$("#eb-home-block-3 .eb-home-block-content").css("padding-top", (blockHeight - pHeight) /2);
		};
	});
</script>
{/if}