<?php if ($this->_var['goods']['goods_id']): ?>
<li>
<a href="<?php echo $this->_var['goods']['url']; ?>" class="item">
<div class="pic_box">
<img src="<?php echo $this->_var['goods']['goods_thumb']; ?>">
</div>
<div class="title_box">
<?php echo $this->_var['goods']['goods_name']; ?>
</div>
<div class="active_box">
<?php if ($this->_var['goods']['is_best'] == 1): ?>
<span class="active_tag bg_orange">精品</span>
<?php endif; ?>
<?php if ($this->_var['goods']['is_new'] == 1): ?>
<span class="active_tag bg_green">新品</span>
<?php endif; ?>
<?php if ($this->_var['goods']['is_hot'] == 1): ?>
<span class="active_tag bg_highlight">热卖</span>
<?php endif; ?>
</div>
<div class="price_box">
<span class="new_price">
<i><?php if ($this->_var['goods']['promote_price']): ?><?php echo $this->_var['goods']['promote_price']; ?><?php else: ?><?php echo $this->_var['goods']['shop_price']; ?><?php endif; ?></i>
</span>
<?php if ($this->_var['goods']['promote_price']): ?>
<span class="price_tag">促销价</span>
<?php endif; ?>
</div>
<div class="comment_box">
评论<?php echo $this->_var['goods']['wap_pingjia']; ?>条
| <span class="percentage">已售<?php echo $this->_var['goods']['wap_count']; ?></span>
</div></a>
<!--
列表页面加减号
<a class="btn-down" onclick="goods_cut(<?php echo $this->_var['goods']['goods_id']; ?>);">-</a>
<input class="txt-prodcount"  id="number_<?php echo $this->_var['goods']['goods_id']; ?>" type="text" onblur="changePrice();" value="1" onfocus="if(value=='1') {value=''}" size="4" maxlength="5"  />
<a class="btn-up" onclick="goods_add(<?php echo $this->_var['goods']['goods_id']; ?>);">+</a> -->

<span class="bug_car" onClick="addToCart(<?php echo $this->_var['goods']['goods_id']; ?>)">
<i class="icon-shop_cart"></i>
</span>
</li>
<?php endif; ?>
	
