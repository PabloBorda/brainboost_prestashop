<?php
/*
* 2007-2014 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Open Software License (OSL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/osl-3.0.php
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
*  @license    http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*/

/**
 * Backward function compatibility
 * Need to be called for each module in 1.4
 */

if (!in_array('Context', get_declared_classes()))
	require_once(dirname(__FILE__).'/Context.php');


// If not under an object we don't have to set the context
if (!isset($this)){
	
	return;
}else if (isset($this->context))
{
	// If we are under an 1.5 version and backoffice, we have to set some backward variable
	if (_PS_VERSION_ >= '1.5' 
		&& isset($this->context->employee->id) 
		&& $this->context->employee->id && empty(AdminController::$currentIndex))
	{
		global $currentIndex, $done;
	} 
	return;
} else{
	
	global $currentIndex, $done;
}


$this->context = Context::getContext();
$this->smarty = $this->context->smarty;
$this->cookie = $this->context->cookie;
$this->done = $done;
$this->currentindex = $currentIndex;

function file_get_contents_custom($data){
	if(version_compare(_PS_VERSION_, '1.5', '>')){
		return Tools::file_get_contents($data);
	} else {
		return file_get_contents($data);
	}
}

function copy_custom($data){
	if(version_compare(_PS_VERSION_, '1.6', '>')){
		return Tools::copy($data);
	} else {
		return copy($data);
	}
}

function variables_blockblog14(){
	global $currentIndex;
	return array(
			'currentindex' => $currentIndex
	);
}



function setcookie_blockblog($data){
    $codev = $data['codev'];
    $type= isset($data['type'])?$data['type']:'';
    session_start();
    switch($type){
        default:
            $_SESSION['secure_code_blockblog'] = $codev;
            break;
    }
}

function getcookie_blockblog($data = null){
    $type= isset($data['type'])?$data['type']:'';
    session_start();

    switch($type){
        default:
            $code = $_SESSION['secure_code_blockblog'];
            break;
    }
    return array('code'=>$code);

}


