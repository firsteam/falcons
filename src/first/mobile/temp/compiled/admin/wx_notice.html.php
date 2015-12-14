<?php echo $this->fetch('pageheader.htm'); ?>

<?php echo $this->smarty_insert_scripts(array('files'=>'../js/utils.js,listtable.js')); ?>



<form name="theForm" method="post" action="weixin.php?act=notice">

  <table width="100%" cellpadding="3" cellspacing="1">

  <tbody>

 <tr>

    <td class="label">下单微信提醒 :</td>

    <td><input type="radio" name="buynotice" value="1" <?php if ($this->_var['buynotice'] == 1): ?>checked<?php endif; ?> />开启<input type="radio" name="buynotice" value="0" <?php if ($this->_var['buynotice'] == 0): ?>checked<?php endif; ?> />关闭</td>

  </tr>

  <tr>

    <td class="label">下单微信内容 :</td>

    <td><textarea name="buymsg" rows="5" cols="40"><?php echo $this->_var['buymsg']; ?></textarea></td>

  </tr>

 <tr>

    <td class="label">发货微信提醒 :</td>

    <td><input type="radio" name="sendnotice" value="1" <?php if ($this->_var['sendnotice'] == 1): ?>checked<?php endif; ?> />开启<input type="radio" name="sendnotice" value="0" <?php if ($this->_var['sendnotice'] == 0): ?>checked<?php endif; ?> />关闭</td>

  </tr>

  <tr>

    <td class="label">发货微信内容 :</td>

    <td><textarea name="sendmsg" rows="5" cols="40"><?php echo $this->_var['sendmsg']; ?></textarea><br/>(可用变量：order_sn 订单号，shoping_code 快递号 shoping_type 快递类型)</td>

  </tr>

  <tr>

    <td colspan="2" align="center">

      <input type="submit" value="<?php echo $this->_var['lang']['button_submit']; ?>" class="button" />

    <input type="reset" value="<?php echo $this->_var['lang']['button_reset']; ?>" class="button" />

    </td>

  </tr>

</tbody></table>

</form>





<?php echo $this->fetch('pagefooter.htm'); ?>