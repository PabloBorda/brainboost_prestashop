{*
/**
 * StorePrestaModules SPM LLC.
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the EULA
 * that is bundled with this package in the file LICENSE.txt.
 *
 /*
 *
 * @author    StorePrestaModules SPM
 * @category content_management
 * @package blockblog
 * @copyright Copyright StorePrestaModules SPM
 * @license   StorePrestaModules SPM
 */
*}

{extends file="helpers/form/form.tpl"}
{block name="field"}
	{if $input.type == 'cms_pages'}

				<div class="col-lg-9">
					<div class="panel col-lg-7">


                        <table width="50%" cellspacing="0" cellpadding="0" class="table">
                            <tr>
                                <th>{l s='Shop' mod='blockblog'}</th>
                            </tr>
                            {assign var=i value=0}
                            {foreach $input.values as $_shop}
                            <tr>
                                <td>

                                    <img src="../img/admin/lv2_{if count($input.values)-1 == $i}f{else}b{/if}.png" alt="{$_shop['name']|escape:'htmlall':'UTF-8'}" style="vertical-align:middle;">
                                    <label class="child">
                                        <input type="checkbox" class="input_shop" {if $_shop['id_shop']|in_array:$input.selected_data}checked="checked"{/if} value="{$_shop['id_shop']|escape:'htmlall':'UTF-8'}" name="cat_shop_association[]">
                                        {$_shop['name']|escape:'htmlall':'UTF-8'}
                                    </label>
                                </td>
                            </tr>
                                {assign var=i value=$i++}
                            {/foreach}
                        </table>



					</div>
					{if isset($input.desc) && !empty($input.desc)}
						<p class="help-block">
							{$input.desc|escape:'htmlall':'UTF-8'}
						</p>
					{/if}
				</div>
    {elseif $input.type == 'item_date'}

        <div class="row">
            <div class="input-group col-lg-4">
                <input id="{if isset($input.id)}{$input.id|escape:'htmlall':'UTF-8'}{else}{$input.name|escape:'htmlall':'UTF-8'}{/if}"
                       type="text" data-hex="true"
                       {if isset($input.class)}class="{$input.class}"
                       {else}class="item_datepicker"{/if} name="time_add" value="{$input.time_add|escape:'html':'UTF-8'}" />
                <span class="input-group-addon"><i class="icon-calendar-empty"></i></span>
            </div>
        </div>

    {literal}

        <script type="text/javascript">
            $('document').ready( function() {

                var dateObj = new Date();
                var hours = dateObj.getHours();
                var mins = dateObj.getMinutes();
                var secs = dateObj.getSeconds();
                if (hours < 10) { hours = "0" + hours; }
                if (mins < 10) { mins = "0" + mins; }
                if (secs < 10) { secs = "0" + secs; }
                var time = " "+hours+":"+mins+":"+secs;

                if ($(".item_datepicker").length > 0)
                    $(".item_datepicker").datepicker({prevText: '',nextText: '',dateFormat: 'yy-mm-dd'+time});

            });
        </script>
    {/literal}

	{else}
		{$smarty.block.parent}
	{/if}
{/block}
