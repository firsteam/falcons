<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <title><?php echo $this->_var['lang']['cp_home']; ?><?php if ($this->_var['ur_here']): ?> - <?php echo $this->_var['ur_here']; ?> <?php endif; ?></title>

    <meta name="robots" content="noindex, nofollow">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link href="styles/general.css" rel="stylesheet" type="text/css" />

    <link href="styles/main.css" rel="stylesheet" type="text/css" />

    <?php echo $this->smarty_insert_scripts(array('files'=>'../js/transport.js,common.js')); ?>

    <script language="JavaScript">

        <!--

        // 这里把JS用到的所有语言都赋值到这里

        <?php $_from = $this->_var['lang']['js_languages']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>

        var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";

        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>

        //-->

    </script>

</head>

<body>



<h1>

    <span class="action-span1"><a href="index.php?act=main"><?php echo $this->_var['lang']['cp_home']; ?></a> </span><span id="search_id" class="action-span1"> - 微信设置</span>

    <div style="clear:both"></div>

</h1>



<?php echo $this->smarty_insert_scripts(array('files'=>'../js/utils.js,selectzone.js,colorselector.js')); ?>

<script type="text/javascript" src="../js/calendar.php?lang=<?php echo $this->_var['cfg_lang']; ?>"></script>

<link href="../js/calendar/calendar.css" rel="stylesheet" type="text/css" />



<?php if ($this->_var['warning']): ?>

<ul style="padding:0; margin: 0; list-style-type:none; color: #CC0000;">

    <li style="border: 1px solid #CC0000; background: #FFFFCC; padding: 10px; margin-bottom: 5px;" ><?php echo $this->_var['warning']; ?></li>

</ul>

<?php endif; ?>



<!-- start goods form -->

<div class="tab-div1">

<!-- tab body -->

<div id="tabbody-div">

<!-- 通用信息 -->

<form name="theForm" method="post" action="weixin.php?act=config">

  <table width="100%" cellpadding="3" cellspacing="1">

  <tbody>

  <tr>

    <td class="label">名称 :</td>

    <td><input type="text " name="title" size="50" value="<?php echo $this->_var['title']; ?>"></td>

  </tr>

  <tr>

    <td class="label">Token:</td>

	<td><input type="text " name="token" size="20" value="<?php echo $this->_var['token']; ?>"></td>

  </tr>

  <tr>

    <td class="label">AppId :</td>

    <td><input type="text " name="appid" size="20" value="<?php echo $this->_var['appid']; ?>"></td>

  </tr>

 <tr>

    <td class="label">AppSecret :</td>

    <td><input type="text " name="appsecret" size="32" value="<?php echo $this->_var['appsecret']; ?>"></td>

  </tr>

 <!-- <tr>

    <td class="label">微信访问路径 :</td>

    <td><input type="text" name="wap_url" size="32" value="<?php echo $this->_var['wap_url']; ?>">可填写 /mobile/,/wap/ 或者为空</td>

  </tr> --><tr>

    <td class="label">绑定赠送红包:</td>

	<td>

	<select name="bonustype">

		<option value="0">请选择赠送红包</option>

		<?php $_from = $this->_var['bonus']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'child');if (count($_from)):
    foreach ($_from AS $this->_var['child']):
?>

		<option value="<?php echo $this->_var['child']['type_id']; ?>" <?php if ($this->_var['bonustype'] == $this->_var['child']['type_id']): ?>selected<?php endif; ?>><?php echo $this->_var['child']['type_name']; ?>-<?php echo $this->_var['child']['type_money']; ?>元</option>

		<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>

    </select>

	</td>

  </tr><tr>

    <td class="label">关注赠送红包:</td>

	<td>

	<select name="bonustype2">

		<option value="0">请选择赠送红包</option>

		<?php $_from = $this->_var['bonus2']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'child');if (count($_from)):
    foreach ($_from AS $this->_var['child']):
?>

		<option value="<?php echo $this->_var['child']['type_id']; ?>" <?php if ($this->_var['bonustype2'] == $this->_var['child']['type_id']): ?>selected<?php endif; ?>><?php echo $this->_var['child']['type_name']; ?>-<?php echo $this->_var['child']['type_money']; ?>元</option>

		<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>

    </select>

	</td>

  </tr>

 <tr>

    <td class="label">绑定回复内容 :</td>

    <td><textarea name="bindmsg" rows="5" cols="40"><?php echo $this->_var['bindmsg']; ?></textarea></td>

  </tr>

 <tr>

    <td class="label">关注回复内容 :</td>

    <td><textarea name="followmsg" rows="5" cols="40"><?php echo $this->_var['followmsg']; ?></textarea></td>

  </tr>

 <tr>

    <td class="label">帮助内容 :</td>

    <td><textarea name="helpmsg" rows="5" cols="40"><?php echo $this->_var['helpmsg']; ?></textarea></td>

  </tr>
  
  <tr>
  	<td class="label">自动回复：</td>
    <td><textarea name="auto_reply" rows="5" cols="40"><?php echo $this->_var['auto_reply']; ?></textarea></td>
  </tr>

  <tr>

    <td colspan="2" align="center">

      <input type="submit" value="<?php echo $this->_var['lang']['button_submit']; ?>" class="button" />

    <input type="reset" value="<?php echo $this->_var['lang']['button_reset']; ?>" class="button" />

    </td>

  </tr>

</tbody></table>

</form>

</div>

</div>

<!-- end goods form -->

<?php echo $this->smarty_insert_scripts(array('files'=>'validator.js,tab.js')); ?>



<script language="JavaScript">

var goodsId = '<?php echo $this->_var['goods']['goods_id']; ?>';

var elements = document.forms['theForm'].elements;

var sz1 = new SelectZone(1, elements['source_select1'], elements['target_select1']);

var sz2 = new SelectZone(2, elements['source_select2'], elements['target_select2'], elements['price2']);

var sz3 = new SelectZone(1, elements['source_select3'], elements['target_select3']);

var marketPriceRate = <?php echo empty($this->_var['cfg']['market_price_rate']) ? '1' : $this->_var['cfg']['market_price_rate']; ?>;

var integralPercent = <?php echo empty($this->_var['cfg']['integral_percent']) ? '0' : $this->_var['cfg']['integral_percent']; ?>;





onload = function()

{



    if (document.forms['theForm'].elements['auto_thumb'])

    {

        handleAutoThumb(document.forms['theForm'].elements['auto_thumb'].checked);

    }



    // 检查新订单

    startCheckOrder();

    

        <?php $_from = $this->_var['user_rank_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['item']):
?>

        set_price_note(<?php echo $this->_var['item']['rank_id']; ?>);

    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>

        

        document.forms['theForm'].reset();

    }



    function setAttrList(result, text_result)

    {

        document.getElementById('tbody-goodsAttr').innerHTML = result.content;

    }





            

</script>

<?php echo $this->fetch('pagefooter.htm'); ?>

