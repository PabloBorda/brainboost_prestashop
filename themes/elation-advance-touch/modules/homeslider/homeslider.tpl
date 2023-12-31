{*
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
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2014 PrestaShop SA
*  @version  Release: $Revision$
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
{if $page_name =='index'}
    <!-- Module HomeSlider -->
    {if isset($homeslider_slides)}
        <div id="homepage-slider">
            <ul id="homeslider">
                {foreach from=$homeslider_slides item=slide}
                    {if $slide.active}
                        <li class="homeslider-container">
                            <a href="{$slide.url|escape:'html':'UTF-8'}" title="{$slide.legend|escape:'html':'UTF-8'}">
									<div class="homeslider-bgimage" style="background-image:url({$link->getMediaLink("`$smarty.const._MODULE_DIR_`homeslider/images/`$slide.image|escape:'htmlall':'UTF-8'`")}); background-position: center; background-size: cover; display:block; width:100%; height:900px;"></div>
                            </a>
                            {if isset($slide.description) && trim($slide.description) != ''}
                                <div class="homeslider-description">{$slide.description}</div>
                            {/if}
                        </li>
                    {/if}
                {/foreach}
            </ul>
        </div>
        {if isset($homeslider)}
                {if $homeslider_slides|@count > 1}
                    {if $homeslider.loop == 1}
                        {addJsDef homeslider_loop=true}
                    {else}
                        {addJsDef homeslider_loop=false}
                    {/if}
                {else}
                    {addJsDef homeslider_loop=false}
                {/if}
                {addJsDef homeslider_width=$homeslider.width}
                {addJsDef homeslider_speed=$homeslider.speed}
                {addJsDef homeslider_pause=$homeslider.pause}
        {/if}
    {/if}
    <!-- /Module HomeSlider -->
{/if}