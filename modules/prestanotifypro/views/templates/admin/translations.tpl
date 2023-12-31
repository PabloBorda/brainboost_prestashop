{**
* 2007-2014 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
* @author    PrestaShop SA <contact@prestashop.com>
* @copyright 2007-2014 PrestaShop SA
* @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
* International Registered Trademark & Property of PrestaShop SA
*}

<div class="clearfix"></div>
<div class="panel">
	<h3><i class="icon-cogs"></i> Configuration</h3>
	<div id="tab_translation" class="input-group">
		<select id="form-field-2" name="select_translation" class="selectpicker show-menu-arrow" title-icon="icon-flag" title="{l s='Manage translations' mod='prestanotifypro'}">
			{foreach $lang_select as $lang}
				<option href="{$module_trad|escape:'htmlall':'UTF-8'}{$lang@key}&#35;{$module_name|escape:'htmlall':'UTF-8'}" {if !empty($lang.subtitle)}data-subtext="{$lang.subtitle|escape:'htmlall':'UTF-8'}"{/if}>{$lang.title|escape:'htmlall':'UTF-8'}</a></option>
			{/foreach}
		</select>
	</div>
</div>