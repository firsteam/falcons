<?php echo $this->fetch('pageheader.htm'); ?>

<?php echo $this->smarty_insert_scripts(array('files'=>'../js/utils.js,listtable.js')); ?>

<!-- 通用信息 -->

<div class="list-div" id="listDiv">

<form name="theForm" method="post" action="weixin.php?act=addconfig">

  <table width="100%" cellpadding="3" cellspacing="1">

  <tbody>

  <tr>

    <td class="label">名称:</td>

	<td><input type="text " name="title" size="50" value="<?php echo $this->_var['config']['title']; ?>"></td>

  </tr>

 <tr>

    <td class="label">Token:</td>

	<td><input type="text " name="token" size="20" value="<?php echo $this->_var['config']['token']; ?>"></td>

  </tr>

  <tr>

    <td class="label">AppId :</td>

    <td><input type="text " name="appid" size="20" value="<?php echo $this->_var['config']['appid']; ?>"></td>

  </tr>

 <tr>

    <td class="label">AppSecret :</td>

    <td><input type="text " name="appsecret" size="32" value="<?php echo $this->_var['config']['appsecret']; ?>"></td>

  </tr>

  <tr>

    <td colspan="2" align="center">

      <input type="submit" value="<?php echo $this->_var['lang']['button_submit']; ?>" class="button" />

    <input type="reset" value="<?php echo $this->_var['lang']['button_reset']; ?>" class="button" />

	<input type="hidden" value="<?php echo $this->_var['config']['id']; ?>" name="id" />

    </td>

  </tr>

</tbody></table>

</form>

<table width="100%" cellspacing="1" cellpadding="2" id="list-table">

  <tr>

	<th>名称</th>

	<th>TOKEN</th>

    <th>APPID</th>

	<th>appsecret</th>

	<th>接口地址</th>

	<th>操作</th>

  </tr>

	<?php $_from = $this->_var['list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['item']):
?>

  <tr>

	<td><?php echo $this->_var['item']['title']; ?></td>

	<td><?php echo $this->_var['item']['token']; ?></td>

	<td><?php echo $this->_var['item']['appid']; ?></td>

	<td><?php echo $this->_var['item']['appsecret']; ?></td>

	<td><?php echo $this->_var['baseurl']; ?>weixin?id=<?php echo $this->_var['item']['id']; ?></td>

	<td>

		<a href="weixin.php?act=addconfig&id=<?php echo $this->_var['item']['id']; ?>">修改</a>|<a href="weixin.php?act=addconfig&up=1&id=<?php echo $this->_var['item']['id']; ?>">更新菜单</a>|<a href="weixin.php?act=addconfig&up=2&id=<?php echo $this->_var['item']['id']; ?>">删除</a>

	</td>

  </tr>

	<?php endforeach; else: ?>

  <tr><td class="no-records" colspan="7"><?php echo $this->_var['lang']['no_records']; ?></td></tr>

  <?php endif; unset($_from); ?><?php $this->pop_vars();; ?>

  </table>

</div>



<?php echo $this->fetch('pagefooter.htm'); ?>