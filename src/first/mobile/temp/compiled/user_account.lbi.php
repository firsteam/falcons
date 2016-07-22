 
<script type="text/javascript">
		<?php $_from = $this->_var['lang']['account_js']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
			var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
		<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
	</script>
<div class="Funds">
 <?php if ($this->_var['action'] == "account_detail"): ?>
		<?php $_from = $this->_var['account_log']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['item']):
?>
        	<ul>
		<li><strong><?php echo $this->_var['lang']['process_time']; ?></strong><span><?php echo $this->_var['item']['change_time']; ?></span></li>
        <li><strong><?php echo $this->_var['lang']['surplus_pro_type']; ?></strong><span><?php echo $this->_var['item']['type']; ?></span></li>
        <li><strong><?php echo $this->_var['lang']['money']; ?></strong><span style=" color:#F60"><?php echo $this->_var['item']['amount']; ?></span></li>
        <li><strong><?php echo $this->_var['lang']['change_desc']; ?></strong><span><?php echo $this->_var['item']['short_change_desc']; ?></span></li>
        </ul>
		<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
	
	
	<?php endif; ?>
	<div class="funds_dot"><?php echo $this->_var['lang']['current_surplus']; ?><font style=" color:#F30"><?php echo $this->_var['surplus_amount']; ?></font></div>
 </div>

<script type="text/javascript">
<?php $_from = $this->_var['lang']['account_js']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
</script>