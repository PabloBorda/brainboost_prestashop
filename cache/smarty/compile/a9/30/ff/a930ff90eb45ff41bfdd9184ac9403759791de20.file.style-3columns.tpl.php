<?php /* Smarty version Smarty-3.1.19, created on 2017-02-28 16:52:25
         compiled from "/home/brainboo/public_html/modules/bestkit_opc/views/templates/front/style-3columns.tpl" */ ?>
<?php /*%%SmartyHeaderCode:133355088858b5aac9116b39-44397546%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a930ff90eb45ff41bfdd9184ac9403759791de20' => 
    array (
      0 => '/home/brainboo/public_html/modules/bestkit_opc/views/templates/front/style-3columns.tpl',
      1 => 1486138161,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '133355088858b5aac9116b39-44397546',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'isLogged' => 0,
    'isGuest' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_58b5aac913c691_65891442',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58b5aac913c691_65891442')) {function content_58b5aac913c691_65891442($_smarty_tpl) {?>
<div id="3column_opc">
    <div class="col-xs-12 col-sm-4">
        <?php if ($_smarty_tpl->tpl_vars['isLogged']->value&&!$_smarty_tpl->tpl_vars['isGuest']->value) {?>
        
            <?php echo $_smarty_tpl->getSubTemplate (Module::getInstanceByName('bestkit_opc')->getTemplatePath('order-address.tpl'), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

        <?php } else { ?>
            <!-- Create account / Guest account / Login block -->
        
            <?php echo $_smarty_tpl->getSubTemplate (Module::getInstanceByName('bestkit_opc')->getTemplatePath('order-opc-new-account.tpl'), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
 
            <!-- END Create account / Guest account / Login block -->
        <?php }?>
    </div>
    <div class="col-xs-12 col-sm-4">
        <!-- Carrier -->
        <?php echo $_smarty_tpl->getSubTemplate (Module::getInstanceByName('bestkit_opc')->getTemplatePath('order-carrier.tpl'), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

        <!-- END Carrier -->

        <!-- Payment -->
        <?php echo $_smarty_tpl->getSubTemplate (Module::getInstanceByName('bestkit_opc')->getTemplatePath('order-payment.tpl'), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

        <!-- END Payment -->
    </div>
    <div class="col-xs-12 col-sm-4">
        <!-- Shopping Cart -->
        <?php echo $_smarty_tpl->getSubTemplate (Module::getInstanceByName('bestkit_opc')->getTemplatePath('shopping-cart.tpl'), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

        <!-- End Shopping Cart -->
    </div>
</div><?php }} ?>
