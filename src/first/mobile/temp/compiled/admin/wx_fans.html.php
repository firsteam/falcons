<?php if ($this->_var['full_page']): ?>

<!-- $Id: users_list.htm 17053 2010-03-15 06:50:26Z sxc_shop $ -->

<?php echo $this->fetch('pageheader.htm'); ?>

<?php echo $this->smarty_insert_scripts(array('files'=>'../js/utils.js,listtable.js')); ?>



<div class="form-div">

  <form action="javascript:searchUser()" name="searchForm">

	关键字：<input type="text" name="keyword" /> 

	选择公众号：

	<select name="from_id">

		<option value="0">所有</option>

		<?php $_from = $this->_var['list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['item']):
?>

		<option value="<?php echo $this->_var['item']['id']; ?>"><?php echo $this->_var['item']['title']; ?></option>

		<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>

	</select>

	<input type="submit" value="<?php echo $this->_var['lang']['button_search']; ?>" />

  </form>

</div>

<form method="POST" action="" name="listForm" onsubmit="return confirm_bath()">

<!-- start users list -->

<form method="get" action="weixin.php?act=fans">

<div class="list-div" id="listDiv">

<?php endif; ?>

<table width="100%" cellspacing="1" cellpadding="3" id="list-table">

  <tr>

    <th>粉丝ID</th>

    <th>昵称</th>

	<th>性别</th>

	<th>地区</th>

	<th>纬度/经度/精度</th>

	<th>是否关注</th>

	<th>是否绑定</th>

	<th>会员名称</th>

	<th>时间</th>

	<th>留言信息</th>

	<th>来自</th>

  </tr>

	<?php $_from = $this->_var['user_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['item']):
?>

  <tr>

	<td><?php echo $this->_var['item']['fake_id']; ?></td>

	<td><?php echo $this->_var['item']['nickname']; ?></td>

	<td>

	<?php if ($this->_var['item']['sex'] == 1): ?>男<?php endif; ?>

	<?php if ($this->_var['item']['sex'] == 2): ?>女<?php endif; ?>

	<?php if ($this->_var['item']['sex'] == 0): ?>未知<?php endif; ?>

	</td>

	<td>

	<?php echo $this->_var['item']['country']; ?> <?php echo $this->_var['item']['province']; ?> <?php echo $this->_var['item']['city']; ?>

	</td>

	<td>

	<?php echo $this->_var['item']['Latitude']; ?> <?php echo $this->_var['item']['Longitude']; ?> <?php echo $this->_var['item']['Precision']; ?>

	</td>

	<td><?php if ($this->_var['item']['isfollow'] == 1): ?>已关注<?php else: ?>未关注<?php endif; ?></td>

	<td><?php if ($this->_var['item']['ecuid'] > 0): ?><a href="users.php?act=edit&id=<?php echo $this->_var['item']['ecuid']; ?>">已绑定</a><?php else: ?>未绑定<?php endif; ?></td>

	<td><?php echo $this->_var['item']['user_name']; ?></td>

	<td><?php echo $this->_var['item']['createymd']; ?></td>

	<td><a href="weixin.php?act=fansmsg&fake_id=<?php echo $this->_var['item']['fake_id']; ?>">查看</a>|<a href="weixin.php?act=fans&fake_id=<?php echo $this->_var['item']['fake_id']; ?>">删除</a></td>

	<td><?php echo $this->_var['from'][$this->_var['item']['from_id']]; ?></td>

  </tr>

	<?php endforeach; else: ?>

  <tr><td class="no-records" colspan="8"><?php echo $this->_var['lang']['no_records']; ?></td></tr>

  <?php endif; unset($_from); ?><?php $this->pop_vars();; ?>

  <tr>

		<td colspan="2">

      <input type="hidden" name="act" value="fans" /></td>

      <td align="right" nowrap="true" colspan="6">

      <?php echo $this->fetch('page.htm'); ?>

      </td>

  </tr>

  </table>

<!-- end users list -->

<?php if ($this->_var['full_page']): ?>

</div>

</form>

<script type="text/javascript" language="JavaScript">

<!--

listTable.recordCount = <?php echo $this->_var['record_count']; ?>;

listTable.pageCount = <?php echo $this->_var['page_count']; ?>;



<?php $_from = $this->_var['filter']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>

listTable.filter.<?php echo $this->_var['key']; ?> = '<?php echo $this->_var['item']; ?>';

<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>





onload = function()

{

    document.forms['searchForm'].elements['keyword'].focus();

    // 开始检查订单

    startCheckOrder();

}



/**

 * 搜索用户

 */

function searchUser()

{

    listTable.filter['keywords'] = Utils.trim(document.forms['searchForm'].elements['keyword'].value);

	listTable.filter['from_id'] = Utils.trim(document.forms['searchForm'].elements['from_id'].value);

    listTable.filter['page'] = 1;

    listTable.loadList();

}



function confirm_bath()

{

  userItems = document.getElementsByName('checkboxes[]');



  cfm = '<?php echo $this->_var['lang']['list_remove_confirm']; ?>';



  for (i=0; userItems[i]; i++)

  {

    if (userItems[i].checked && userItems[i].notice == 1)

    {

      cfm = '<?php echo $this->_var['lang']['list_still_accounts']; ?>' + '<?php echo $this->_var['lang']['list_remove_confirm']; ?>';

      break;

    }

  }



  return confirm(cfm);

}

//-->

</script>



<?php echo $this->fetch('pagefooter.htm'); ?>

<?php endif; ?>