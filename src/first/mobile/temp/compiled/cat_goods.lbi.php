
<section class="index_floor_lou">
    <div class="floor_body ">
        <h2>
            <em></em><?php echo htmlspecialchars($this->_var['goods_cat']['name']); ?><span class="geng"><a href="search.php?intro=best" >更多 <i></i></a></span>
         </h2>
        <ul>
            <?php $_from = $this->_var['cat_goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods_0_18614100_1443005268');$this->_foreach['name'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['name']['total'] > 0):
    foreach ($_from AS $this->_var['goods_0_18614100_1443005268']):
        $this->_foreach['name']['iteration']++;
?>
            <li>
                <a href="<?php echo $this->_var['goods_0_18614100_1443005268']['url']; ?>" title="<?php echo htmlspecialchars($this->_var['goods_0_18614100_1443005268']['name']); ?>">
                    <div class="products_kuang">
                        <img src="<?php echo $this->_var['option']['static_path']; ?><?php echo $this->_var['goods_0_18614100_1443005268']['thumb']; ?>"></div>
                    <div class="goods_name"><?php echo $this->_var['goods_0_18614100_1443005268']['name']; ?></div>
                    <div class="price">
                        <a href="<?php echo $this->_var['goods_0_18614100_1443005268']['url']; ?>" class="price_pro">
                            <?php if ($this->_var['goods_0_18614100_1443005268']['promote_price']): ?><?php echo $this->_var['goods_0_18614100_1443005268']['promote_price']; ?><?php else: ?><?php echo $this->_var['goods_0_18614100_1443005268']['shop_price']; ?><?php endif; ?>
                        </a>
                        <span class="costprice"><?php echo $this->_var['goods_0_18614100_1443005268']['market_price']; ?></span>
                        <a href="javascript:addToCart(<?php echo $this->_var['goods_0_18614100_1443005268']['id']; ?>)" class="btns">
                            <img src="themesmobile/68ecshopcom_mobile/images/index_flow.png"></a>
                    </div>
                </a>
            </li>
            <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        </ul>
    </div>
</section>