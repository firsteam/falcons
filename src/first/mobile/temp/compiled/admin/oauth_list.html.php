<?php echo $this->fetch('pageheader.htm'); ?>

<?php echo $this->smarty_insert_scripts(array('files'=>'../js/utils.js,listtable.js')); ?>

<div class="list-div" id="listDiv">

<table width="100%" cellspacing="1" cellpadding="2" id="list-table">

  <tr>

    <th>编号</th>

	<th>菜单地址</th>

    <th>跳转地址</th>

    <th>访问次数</th>

	<th>操作</th>

  </tr>

  <?php $_from = $this->_var['oauth']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['item']):
?>

  <tr>

	<td><?php echo $this->_var['item']['oid']; ?></td>

	<td><?php echo $this->_var['baseurl']; ?>mobile/weixin/oauth.php?id={id}&oid=<?php echo $this->_var['item']['oid']; ?></td>

	<td><?php echo $this->_var['item']['weburl']; ?></td>

	<td><?php echo $this->_var['item']['click']; ?></td>

	<td>

		<a href="weixin.php?act=oauth&oid=<?php echo $this->_var['item']['oid']; ?>&t=add">修改</a>
        <a href="weixin.php?act=oauth&oid=<?php echo $this->_var['item']['oid']; ?>&t=delete">删除</a>

	</td>

  </tr>

	<?php endforeach; else: ?>

  <tr><td class="no-records" colspan="5"><?php echo $this->_var['lang']['no_records']; ?></td></tr>

  <?php endif; unset($_from); ?><?php $this->pop_vars();; ?>

</table>

</div>

<?php echo $this->fetch('pagefooter.htm'); ?>