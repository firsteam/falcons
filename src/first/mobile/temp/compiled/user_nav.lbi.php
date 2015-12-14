
<div class="user_com">

<div class="com_top">
<h2><a href="user.php?act=profile">设置</a></h2>
<dl>
<dt><?php if ($this->_var['headimgurl'] != ''): ?><img src="<?php echo $this->_var['headimgurl']; ?>"><?php else: ?><img src="themesmobile/68ecshopcom_mobile/images/user68.jpg"><?php endif; ?>
    <span><?php echo $this->_var['info']['username']; ?></span>
    <dd><?php echo $this->_var['rank_name']; ?></dd>
    </dt>

</dl>
</div>
<div class="uer_topnav">
<ul>
<li class="bain"><a href="user.php?act=order_list" ><span><?php echo $this->_var['order_count']; ?></span>我的订单</a></li>
<li class="bain"><a href="user.php?act=collection_list"><span><?php echo $this->_var['collect_count']; ?></span>我的收藏</a></li>
<li><a href="user.php?act=comment_list"><span><?php echo $this->_var['comment_count']; ?></span>我的评价</a></li>
</ul>
</div>

<div class="Wallet">
<dl><a href="user.php?act=account_detail"><em class="Icon Icon1"></em><dt>我的钱包</dt><dd style="color:#aaaaaa;">查看我的钱包</dd></a></dl>
<ul>
 <?php 
$k = array (
  'name' => 'member_info1',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?>
</ul>
</div>


<div class="Wallet">
<dl><a href="user.php?act=order_list" ><em class="Icon Icon2"></em><dt>全部订单</dt><dd>查看订单</dd></a></dl>
<dl><a href="user.php?act=bonus"><em class="Icon Icon3"></em><dt>我的红包</dt><dd>&nbsp;</dd></a></dl>
<dl><a href="user.php?act=comment_list"><em class="Icon Icon4"></em><dt>我的评价</dt><dd>查看评价</dd></a></dl>
<dl><a href="user.php?act=address_list"><em class="Icon Icon5"></em><dt>地址管理</dt><dd>&nbsp;</dd></a></dl>
</div>
<div class="Wallet">
<dl><a href="user.php?act=collection_list"><em class="Icon Icon9"></em><dt>我的收藏</dt><dd>&nbsp;</dd></a></dl>
<dl><a href="user.php?act=affiliate"><em class="Icon Icon6"></em><dt>我的推荐</dt><dd>&nbsp;</dd></a></dl>
<dl><a href="user.php?act=message_list"><em class="Icon Icon7"></em><dt>我的留言</dt><dd>&nbsp;</dd></a></dl>
</div>
<div class="Wallet">
<dl onClick="window.location.href='user.php?act=logout'"><em class="Icon Icon8"></em><dt>注销登录</dt></dl>
</div>
</div>
