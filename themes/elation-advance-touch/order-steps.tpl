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
*  * (c) 2014 Elation Base, LLC
*  * (i) elationbase.com | elationbase@gmail.com
*  * See theme's licence agreement at the theme root folder (licence.txt)
*  ************************************************************************************************************
*  * (i) Do not edit this file if you wish to upgrade PrestaShop or this Theme to newer versions in the future. 
*  ************************************************************************************************************
*}


{* Assign a value to 'current_step' to display current style *}
{capture name="url_back"}
{if isset($back) && $back}back={$back}{/if}
{/capture}

{if !isset($multi_shipping)}
	{assign var='multi_shipping' value='0'}
{/if}

{if !$opc}
<!-- Steps -->
<ul class="step eb-steps clearfix" id="order_step">
	<li class="{if $current_step=='summary'}step_current {elseif $current_step=='login'}step_done_last step_done{else}{if $current_step=='payment' || $current_step=='shipping' || $current_step=='address' || $current_step=='login'}step_done{else}step_todo{/if}{/if} first">
		{if $current_step=='payment' || $current_step=='shipping' || $current_step=='address' || $current_step=='login'}
		<a href="{$link->getPageLink('order', true)}">
			<em>01.</em> {l s='Summary'}
		</a>
		{else}
			<span><em>01.</em> {l s='Summary'}</span>
		{/if}
	</li>
	<li class="{if $current_step=='login'}step_current{elseif $current_step=='address'}step_done step_done_last{else}{if $current_step=='payment' || $current_step=='shipping' || $current_step=='address'}step_done{else}step_todo{/if}{/if} second">
		{if $current_step=='payment' || $current_step=='shipping' || $current_step=='address'}
		<a href="{$link->getPageLink('order', true, NULL, "{$smarty.capture.url_back}&step=1&multi-shipping={$multi_shipping}")|escape:'html':'UTF-8'}">
			<em>02.</em> {l s='Login'}
		</a>
		{else}
			<span><em>02.</em> {l s='Login'}</span>
		{/if}
	</li>
	<li class="{if $current_step=='address'}step_current{elseif $current_step=='shipping'}step_done step_done_last{else}{if $current_step=='payment' || $current_step=='shipping'}step_done{else}step_todo{/if}{/if} third">
		{if $current_step=='payment' || $current_step=='shipping'}
		<a href="{$link->getPageLink('order', true, NULL, "{$smarty.capture.url_back}&step=1&multi-shipping={$multi_shipping}")|escape:'html':'UTF-8'}">
			<em>03.</em> {l s='Address'}
		</a>
		{else}
			<span><em>03.</em> {l s='Address'}</span>
		{/if}
	</li>
	<li class="{if $current_step=='shipping'}step_current{else}{if $current_step=='payment'}step_done step_done_last{else}step_todo{/if}{/if} four">
		{if $current_step=='payment'}
		<a href="{$link->getPageLink('order', true, NULL, "{$smarty.capture.url_back}&step=2&multi-shipping={$multi_shipping}")|escape:'html':'UTF-8'}">
			<em>04.</em> {l s='Shipping'}
		</a>
		{else}
			<span><em>04.</em> {l s='Shipping'}</span>
		{/if}
	</li>
	<li id="step_end" class="{if $current_step=='payment'}step_current{else}step_todo{/if} last">
		<span><em>05.</em> {l s='Payment'}</span>
	</li>
</ul>
<!-- /Steps -->
{/if}
