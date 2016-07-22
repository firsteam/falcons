<?php echo $this->fetch('pageheader.htm'); ?>

<?php echo $this->smarty_insert_scripts(array('files'=>'../js/utils.js,listtable.js')); ?>

<!-- 通用信息 -->

<form name="theForm" method="post" action="weixin.php?act=reg">

  <table width="100%" cellpadding="3" cellspacing="1">

  <tbody>

 <tr>

    <td class="label">注册方式:</td>

    <td>

    <select name="reg_type">

		<option value="1" <?php if ($this->_var['reg_type'] == 1): ?>selected<?php endif; ?>>关注自动注册</option>

		<option value="2" <?php if ($this->_var['reg_type'] == 2): ?>selected<?php endif; ?>>邮箱+密码</option>

		<option value="3" <?php if ($this->_var['reg_type'] == 3): ?>selected<?php endif; ?>>用户名+密码</option>

	</select>

    </td>

  </tr>

  <tr>

    <td class="label">注册引导内容(非自动注册填写) :</td>

    <td><textarea name="reg_notice" rows="5" cols="40"><?php echo $this->_var['reg_notice']; ?></textarea></td>

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