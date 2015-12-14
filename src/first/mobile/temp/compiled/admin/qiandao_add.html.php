<?php echo $this->fetch('pageheader.htm'); ?>

<?php echo $this->smarty_insert_scripts(array('files'=>'../js/utils.js,listtable.js')); ?>

<script type="text/javascript" src="../js/calendar.php"></script>

<link href="../js/calendar/calendar.css" rel="stylesheet" type="text/css" />

<div id="tabbody-div">

<form name="theForm" method="post" action="weixin.php?act=qiandao">

  <table width="100%" cellpadding="3" cellspacing="1">

  <tbody>

  <tr>

    <td class="label">赠送积分:</td>

    <td><input type="text" name="num" value="<?php echo $this->_var['sign']['num']; ?>"></td>

  </tr>

  <tr>

    <td class="label">累加积分:</td>

    <td><input type="text" name="addnum" value="<?php echo $this->_var['sign']['addnum']; ?>">(连续签到次数*累加积分+赠送积分=实际积分)</td>

  </tr>

  <tr>

    <td class="label">最大积分:</td>

    <td><input type="text" name="bignum" value="<?php echo $this->_var['sign']['bignum']; ?>">(连续签到可以达到的单次最大赠送积分，不包括基础赠送积分)</td>

  </tr>

  <tr>

    <td class="label">开启时间:</td>

    <td><input type="text" name="startymd" size="25" id="startymd" value="<?php echo $this->_var['sign']['startymd']; ?>"><input name="selbtn1" type="button" id="selbtn1" onclick="return showCalendar('startymd', '%Y-%m-%d ', false, false, 'selbtn1');" value="选择" class="button"/></td>

  </tr>

  <tr>

    <td class="label">结束时间:</td>

    <td><input type="text" name="endymd" size="25" id="endymd" value="<?php echo $this->_var['sign']['endymd']; ?>"><input name="selbtn2" type="button" id="selbtn2" onclick="return showCalendar('endymd', '%Y-%m-%d ', false, false, 'selbtn2');" value="选择" class="button"/></td>

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



<?php echo $this->fetch('pagefooter.htm'); ?>