<?php if ($this->_var['orders']): ?>
<div class="order_list">
     
      <?php $_from = $this->_var['orders']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['item']):
?>
       <div id="OrderList" class="ord_list">
       <a href="user.php?act=order_detail&order_id=<?php echo $this->_var['item']['order_id']; ?>" class="lnk" >
       <h2><img src="themesmobile/68ecshopcom_mobile/images/dianpu.png">状态：<span><?php echo $this->_var['item']['order_status']; ?></span></h2>
       <h3>订单编号：<?php echo $this->_var['item']['order_sn']; ?></h3>
       <?php $_from = $this->_var['item']['goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'list');if (count($_from)):
    foreach ($_from AS $this->_var['list']):
?>
       <dl class="dingdan">
       <dt><img src="<?php echo $this->_var['list']['goods_thumb']; ?>"></dt>
       <dd><p><?php echo sub_str($this->_var['list']['goods_name'],60); ?></p><span><?php echo $this->_var['list']['goods_price']; ?>&nbsp;x&nbsp;<?php echo $this->_var['list']['goods_number']; ?></span></dd>
       </dl>
       <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        </a>
        
        <ul>
         <li>总价<strong>：<?php echo $this->_var['item']['total_fee']; ?></strong> </li>
         <li><?php echo $this->_var['item']['handler']; ?></li>
        </ul>
        
        </div>
        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
      
<div style="background:#FFF;">
<?php echo $this->fetch('library/pages.lbi'); ?> 
</div>
</div>
<?php else: ?>
<div id="list_0_0" class="alertText font12"><?php echo $this->_var['lang']['order_empty']; ?></div>
<?php endif; ?> 

<script type="text/javascript">
<?php $_from = $this->_var['lang']['merge_order_js']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
</script>