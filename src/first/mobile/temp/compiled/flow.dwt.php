<!DOCTYPE html >
<html>
<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width">
  <title><?php echo $this->_var['page_title']; ?></title>
  <meta name="Keywords" content="<?php echo $this->_var['keywords']; ?>" />
  <meta name="Description" content="<?php echo $this->_var['description']; ?>" />
  <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=0"/>
  <link rel="stylesheet" href="themesmobile/68ecshopcom_mobile/css/public.css">
  <link rel="stylesheet" href="themesmobile/68ecshopcom_mobile/css/flow.css">
  <script type="text/javascript" src="themesmobile/68ecshopcom_mobile/js/jquery.js"></script>
  <script type="text/javascript" src="themesmobile/68ecshopcom_mobile/js/ecsmart.js"></script>
  <?php echo $this->smarty_insert_scripts(array('files'=>'jquery.json.js,transport.js')); ?>
  <?php echo $this->smarty_insert_scripts(array('files'=>'common.js,utils.js,shopping_flow.js')); ?>
</head>
<body style="background: rgb(235, 236, 237);">
  <div class="tab_nav">
    <div class="header">
      <div class="h-left">
        <a class="sb-back" href="javascript:history.back(-1)" title="返回"></a>
      </div>
      <div class="h-mid">
        <?php if ($this->_var['step'] == 'cart'): ?>购物车<?php elseif ($this->_var['step'] == 'login'): ?>登录<?php elseif ($this->_var['step'] == 'consignee'): ?>填写收货地址<?php elseif ($this->_var['step'] == 'checkout'): ?>确认订单<?php elseif ($this->_var['step'] == 'done'): ?>提交订单<?php endif; ?>
      </div>
    </div>
  </div>

  <div class="screen-wrap fullscreen login">
    <?php if ($this->_var['step'] == 'cart'): ?>
<?php if ($this->_var['goods_list']): ?>
    <div class="page-shopping" >

      <div>
        <form id="formCart" name="formCart" method="post" action="flow.php">
          <?php $_from = $this->_var['goods_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');$this->_foreach['name'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['name']['total'] > 0):
    foreach ($_from AS $this->_var['goods']):
        $this->_foreach['name']['iteration']++;
?>
          <div class="item-list">
            <div class="item">

              <div class="inner">
                <div style="width:60%; float:left; height:98px;">
                  <div class="check-wrapper">
                   <span  class="cart-checkbox checked" >
                      <input type="checkbox" autocomplete="off" name="sel_cartgoods[]" value="<?php echo $this->_var['goods']['rec_id']; ?>" id="sel_cartgoods_<?php echo $this->_var['goods']['rec_id']; ?>" checked=checked  style="display:none;"></span>                   
                  </div>
                  <div  class="pic">
                    <a href="goods.php?id=<?php echo $this->_var['goods']['goods_id']; ?>">
                      <img src="<?php echo $this->_var['goods']['goods_thumb']; ?>" ></a>
                  </div>
                  <div class="name">
                    <span>
                       <?php if ($this->_var['goods']['parent_id'] > 0): ?>
                  <span style="color:#FF0000">（<?php echo $this->_var['lang']['accessories']; ?>）</span>
                  <?php endif; ?>
                  <?php if ($this->_var['goods']['is_gift'] > 0): ?>
                  <span style="color:#FF0000">（<?php echo $this->_var['lang']['largess']; ?>）</span>
                  <?php endif; ?>
                  
                  <?php echo $this->_var['goods']['goods_name']; ?> <?php if ($this->_var['goods']['goods_attr']): ?><?php echo $this->_var['goods']['goods_attr']; ?><?php endif; ?>
                    </span>
                  </div>
                  <div class="attr">
                    <span><?php if ($this->_var['goods']['goods_attr']): ?><?php echo $this->_var['goods']['goods_attr']; ?><?php endif; ?></span>
                  </div>

                  <div class="num">
                  
                      <?php if ($this->_var['goods']['goods_id'] > 0 && $this->_var['goods']['is_gift'] == 0 && $this->_var['goods']['parent_id'] == 0): ?>  <div class="xm-input-number">
                      
                      <a href="javascript:;" onclick="minus_num(<?php echo $this->_var['goods']['rec_id']; ?>,<?php echo $this->_var['goods']['goods_id']; ?>);" id="jiannum<?php echo $this->_var['goods']['rec_id']; ?>"  class="input-sub <?php if ($this->_var['goods']['goods_number'] < 2): ?><?php else: ?>active<?php endif; ?> "></a>
                      <input type="text" onKeyDown='if(event.keyCode == 13) event.returnValue = false' name="goods_number[<?php echo $this->_var['goods']['rec_id']; ?>]" id="goods_number_<?php echo $this->_var['goods']['rec_id']; ?>" value="<?php echo $this->_var['goods']['goods_number']; ?>" class="input-num"  onblur="change_price(<?php echo $this->_var['goods']['rec_id']; ?>,<?php echo $this->_var['goods']['goods_id']; ?>)"/>
                      <input type="hidden" id="hidden_<?php echo $this->_var['goods']['rec_id']; ?>" value="<?php echo $this->_var['goods']['goods_number']; ?>">
                      <a href="javascript:;" onclick='javascript:add_num(<?php echo $this->_var['goods']['rec_id']; ?>,<?php echo $this->_var['goods']['goods_id']; ?>)' class="input-add active"></a> </div>
                      <?php else: ?>
      x<?php echo $this->_var['goods']['goods_number']; ?>
        <?php endif; ?>
                   
                  </div>
                </div>
                <div style=" position:absolute; right:0px; top:20px; width:100px; height:98px;">
                  <div class="price">
                    <span class="mar_price"><?php echo $this->_var['goods']['market_price']; ?></span>
                    <br>
                    <span><?php echo $this->_var['goods']['goods_price']; ?></span>
                   </div>
                  <div class="delete">
                    <a href="javascript:if (confirm('<?php echo $this->_var['lang']['drop_goods_confirm']; ?>')) location.href='flow.php?step=drop_goods&amp;id=<?php echo $this->_var['goods']['rec_id']; ?>'; ">
                      <div class="icon-shanchu"></div>
                    </a>
                  </div>
                </div>
                <div style="height:0px; line-height:0px; clear:both;"></div>
              </div>
              <div class="append"></div>
            </div>
          </div>
          <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
          <input type="hidden" name="step" value="update_cart">

          <div class="bottom-panel" >
            <div class="quanxuan">
              <div class="check-wrapper">
                <span  class="cart-checkbox checked" onclick="return chkAll_onclick()"></span><span class="cart-checktext">全选</span>
              </div>
            </div>
            <div class="info">
              <span class="hot" id="cart_amount_desc"><em>总计：</em><?php echo $this->_var['shopping_money']; ?></span>
              <br>
              <span class="hot_text">不含运费</span>
            </div>
            <div class="right">
              
              <input type="button" href="javascript:void();"  onclick="return selcart_submit();" class="xm-button " value="去结算"></div>
          </div>
        </form>
      </div>
    </div>
    
    <script type="text/javascript" charset="utf-8">
   
    $(".inner .cart-checkbox").click(function(){
  if($(this).hasClass('checked')){
    $(this).removeClass('checked');
    $(this).find('input').attr('checked',false);
  }
  else
  {
    $(this).addClass('checked');
    $(this).find('input').attr('checked',true);
  }

        
if($(".inner .cart-checkbox")==true)
{
$('.quanxuan .cart-checkbox').addClass('checked');
}
else
{
$('.quanxuan .cart-checkbox').removeClass('checked');
}

  var is_checked = true;
            $('.inner .cart-checkbox').each(function(){
        if(!$(this).hasClass('checked'))
          {
            is_checked = false;
            return false;
          }
               });
        if(is_checked){
        $('.quanxuan .cart-checkbox').addClass('checked'); 
        }else
        {
        $('.quanxuan .cart-checkbox').removeClass('checked'); 
        }
      select_cart_goods();
         
});

   
  function chkAll_onclick() 
  {
    var is_checked = false;
    if($('.quanxuan .cart-checkbox').hasClass('checked')){
      $('.quanxuan .cart-checkbox').removeClass('checked');
      $('.inner .cart-checkbox').removeClass('checked');
      is_checked = false;
    }   
    else{
      $('.quanxuan .cart-checkbox').addClass('checked');
      $('.inner .cart-checkbox').addClass('checked');
      is_checked = true;
    }
    for (var i=0;i<document.formCart.elements.length;i++)
    {
    var e = document.formCart.elements[i];
    e.checked = is_checked;
    }
    select_cart_goods();
  }
  function select_cart_goods()
  {
        var sel_goods = new Array();
        var obj_cartgoods = document.getElementsByName("sel_cartgoods[]");
        var j=0;
        for (i=0;i<obj_cartgoods.length;i++)
        {
      if(obj_cartgoods[i].checked == true)
      { 
        sel_goods[j] = obj_cartgoods[i].value;
        j++;
      }
        }
        Ajax.call('flow.php', 'act=selcart&sel_goods=' + sel_goods, selcartResponse, 'GET', 'JSON');
  }
  function selcartResponse(res)
  {
  if(res.result == '请选择要结算的商品！')
  {
        $('.xm-button').addClass('to_cart');
      $('.xm-button').attr('disable');
  }
  else{
      $('.xm-button').removeClass('to_cart');
      $('.xm-button').removeAttr('disable');
    }
    if (res.err_msg.length > 0)
    {
            alert(res.err_msg);
    }
    else
    {
     
       document.getElementById('cart_amount_desc').innerHTML=res.result;
    }
  }
  function selcart_submit()
  {
        var obj_cartgoods = document.getElementsByName("sel_cartgoods[]");
        var j=0;
        for (i=0;i<obj_cartgoods.length;i++)
        {
      if(obj_cartgoods[i].checked == true)
      { 
        j++;
      }
        }
        if (j>0)
        {
      document.formCart.action='flow.php?step=checkout';
      document.formCart.elements['step'].value='checkout';
      document.formCart.submit();
      return true;
       }
       else
      {   
      alert('请选择要结算的商品！');
      return false;
      }
  }
  </script>
    
    
    <script>
  function add_num(rec_id,goods_id)
   {
    document.getElementById("goods_number_"+rec_id+"").value++;
    if(document.getElementById("goods_number_"+rec_id+"").value > 1)
    {
      document.getElementById("jiannum"+rec_id).className = 'input-sub active';
      }else
      {
      document.getElementById("jiannum"+rec_id).className = 'input-sub';
      }
    var number = document.getElementById("goods_number_"+rec_id+"").value;
    Ajax.call('flow.php', 'step=update_group_cart&rec_id=' + rec_id +'&number=' + number+'&goods_id=' + goods_id, changePriceResponse, 'GET', 'JSON');
   }
  function minus_num(rec_id,goods_id)
  {
    if (document.getElementById("goods_number_"+rec_id+"").value>1)
    {
      document.getElementById("goods_number_"+rec_id+"").value--;
      if(document.getElementById("goods_number_"+rec_id+"").value > 1)
    {
      document.getElementById("jiannum"+rec_id).className = 'input-sub active';
      }else
      {
      document.getElementById("jiannum"+rec_id).className = 'input-sub';
      }
    }
    var number = document.getElementById("goods_number_"+rec_id+"").value;
    Ajax.call('flow.php', 'step=update_group_cart&rec_id=' + rec_id +'&number=' + number+'&goods_id=' + goods_id, changePriceResponse, 'GET', 'JSON');
  }

function change_price(rec_id,goods_id)
{
  var r = /^[1-9]+[0-9]*]*$/;
  var number = document.getElementById("goods_number_"+rec_id+"").value;
  if (!r.test(number))
  {
    alert("您输入的格式不正确！");
    document.getElementById("goods_number_"+rec_id+"").value=document.getElementById("hidden_"+rec_id+"").value;
  }
  else
  {
    Ajax.call('flow.php','step=update_group_cart&rec_id=' + rec_id +'&number=' + number+'&goods_id=' + goods_id, changePriceResponse, 'GET', 'JSON');
  }
}

function changePriceResponse(result)
{
if(result.error == 1)
{
  alert(result.content);
  document.getElementById("goods_number_"+result.rec_id+"").value =result.number;
  document.getElementById("hidden_"+result.rec_id+"").value =result.number;
}
else
{
  document.getElementById("hidden_"+result.rec_id+"").value =result.number;
  document.getElementById('cart_amount_desc').innerHTML = result.cart_amount_desc;//购物车商品总价说明
  show_div_text = "恭喜您！ 商品数量修改成功！ ";

}

}
</script>

<?php if ($this->_var['fittings_list'] || $this->_var['collection_goods']): ?>
<?php if ($this->_var['fittings_list']): ?>
<script type="text/javascript" charset="utf-8">
  function fittings_to_flow(goodsId,parentId)
  {
    var goods        = new Object();
    var spec_arr     = new Array();
    var number       = 1;
    goods.spec     = spec_arr;
    goods.goods_id = goodsId;
    goods.number   = number;
    goods.parent   = parentId;
    Ajax.call('flow.php?step=add_to_cart', 'goods=' +  $.toJSON(goods), fittings_to_flow_response, 'POST', 'JSON');
  }
  function fittings_to_flow_response(result)
  {
    if (result.error > 0)
    {
      // 如果需要缺货登记，跳转
      if (result.error == 2)
      {
        alert(result.message);
      
      }
      else if (result.error == 6)
      {
        openSpeDivflow(result.message, result.goods_id, result.parent);
      }
      else
      {
        alert(result.message);
      }
    }
    else
    {
      location.href = 'flow.php';
    }
  }
  </script>
    <section class="index_floor" style="border-top:1px solid #e1e0e0 ">
      <h2>
        <span></span>
        商品相关配件
      </h2>
      <div class="bd">
        <ul>
          <?php $_from = $this->_var['fittings_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'fittings');$this->_foreach['fittings_list'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['fittings_list']['total'] > 0):
    foreach ($_from AS $this->_var['fittings']):
        $this->_foreach['fittings_list']['iteration']++;
?>
          <li>
            <a href="<?php echo $this->_var['fittings']['url']; ?>">
              <div class="products_kuang">
                <img src="<?php echo $this->_var['fittings']['goods_thumb']; ?>"></div>
              <div class="goods_name"><?php echo $this->_var['fittings']['goods_name']; ?></div>
            </a>
            <div class="price">
              <a href="<?php echo $this->_var['fittings']['url']; ?>">
                <p><?php echo $this->_var['fittings']['fittings_price']; ?></p>
              </a>
              <a href="javascript:fittings_to_flow(<?php echo $this->_var['fittings']['goods_id']; ?>,<?php echo $this->_var['fittings']['parent_id']; ?>)" class="car">
                <img src="themesmobile/68ecshopcom_mobile/images/xin/cutp.png"></a>
            </div>

          </li>
          <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        </ul>
      </div>
    </section>
    <?php endif; ?>
<?php if ($this->_var['collection_goods']): ?>
    <section class="index_floor" style="border-top:1px solid #e1e0e0 ">
      <h2>
        <span></span>
        我的收藏
      </h2>
      <div class="bd">
        <ul>
          <?php $_from = $this->_var['collection_goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');$this->_foreach['goods'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['goods']['total'] > 0):
    foreach ($_from AS $this->_var['goods']):
        $this->_foreach['goods']['iteration']++;
?>
          <li>
            <a href="goods.php?id=<?php echo $this->_var['goods']['goods_id']; ?>">
              <div class="products_kuang">
                <img src="<?php echo $this->_var['goods']['goods_thumb']; ?>"></div>
              <div class="goods_name"><?php echo $this->_var['goods']['goods_name']; ?></div>
            </a>
            <div class="price">
              <a href="goods.php?id=<?php echo $this->_var['goods']['goods_id']; ?>">
                <p><?php echo $this->_var['goods']['shop_price']; ?></p>
              </a>
              <a href="javascript:addToCartflow(<?php echo $this->_var['goods']['goods_id']; ?>)" class="car">
                <img src="themesmobile/68ecshopcom_mobile/images/index_flow.png"></a>
            </div>

          </li>
          <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        </ul>
      </div>
    </section>
    <?php endif; ?>
<?php endif; ?>
  <?php if ($this->_var['favourable_list']): ?>
<section class="index_floor" style="border-top:1px solid #e1e0e0 ">
      <h2>
        <span></span>
        <?php echo $this->_var['lang']['label_favourable']; ?>
      </h2>
       <?php $_from = $this->_var['favourable_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'favourable');if (count($_from)):
    foreach ($_from AS $this->_var['favourable']):
?>
        <form action="flow.php" method="post">
         <div class="huodong_list">
        <dl class="h_title">
        <dt>惠</dt><dd><?php echo $this->_var['favourable']['act_name']; ?></dd>
        </dl>
        <dl class="h_title1">
        <dt><?php echo $this->_var['lang']['favourable_period']; ?></dt><dd><?php echo $this->_var['favourable']['start_time']; ?> --- <?php echo $this->_var['favourable']['end_time']; ?></dd>
        </dl>
        <dl class="h_title1">
        <dt><?php echo $this->_var['lang']['favourable_range']; ?></dt><dd><?php echo $this->_var['lang']['far_ext'][$this->_var['favourable']['act_range']]; ?>&nbsp;<?php echo $this->_var['favourable']['act_range_desc']; ?></dd>
        </dl>
        <dl class="h_title1">
        <dt><?php echo $this->_var['lang']['favourable_amount']; ?></dt><dd><?php echo $this->_var['favourable']['formated_min_amount']; ?> --- <?php echo $this->_var['favourable']['formated_max_amount']; ?></dd>
        </dl>
        <dl class="h_title1">
        <dt><?php echo $this->_var['lang']['favourable_type']; ?></dt><dd> <span class="STYLE1"><?php echo $this->_var['favourable']['act_type_desc']; ?></span>
                <?php if ($this->_var['favourable']['act_type'] == 0): ?>
                <?php $_from = $this->_var['favourable']['gift']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'gift');if (count($_from)):
    foreach ($_from AS $this->_var['gift']):
?><br />
                  <input type="checkbox" value="<?php echo $this->_var['gift']['id']; ?>" name="gift[]" />
                  <a href="goods.php?id=<?php echo $this->_var['gift']['id']; ?>" target="_blank" class="f6"><?php echo $this->_var['gift']['name']; ?></a> [<?php echo $this->_var['gift']['formated_price']; ?>]
                <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
              <?php endif; ?></dd>
        </dl>
        <input type="submit" class="btn_orange"/>  
        <input type="hidden" name="act_id" value="<?php echo $this->_var['favourable']['act_id']; ?>" />
        <input type="hidden" name="step" value="add_favourable" />
         </div>
        </form>
           <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
    </section>
  <?php endif; ?>
    <div style=" height:72px; clear:both"></div>
    <?php else: ?>
    <section id="cart-content">
      <div class="qb_tac" style="padding:50px 0">
        <img src="themesmobile/68ecshopcom_mobile/images/flow/empty_cart.png" width="100" height="95">
        <br>购物车还是空的</div>
      <div class="qb_gap" style="width:60%; margin:0 auto;">
        <a href="./" class="mod_btn btn_strong" >马上逛逛</a>
      </div>
    </section>
    <?php endif; ?>
<?php endif; ?>


<?php if ($this->_var['step'] == 'login'): ?>
    <link rel="stylesheet" href="themesmobile/68ecshopcom_mobile/css/loginxin.css">
    <script>
      $().ready(function(){
          //登录切换
          $("#logRegTab li").bind("click", function () {
              if (this.id == "mob_log") {
                  $("#mob_log").removeClass("currl");
                  $("#acc_log").addClass("currr");
                  $("#phonearea").removeClass("hide");
                  $("#accountarea").addClass("hide");
              } else {
                  $("#acc_log").removeClass("currr");
                  $("#mob_log").addClass("currl");
                  $("#phonearea").addClass("hide");
                  $("#accountarea").removeClass("hide");
              }
        $(".btn_log").css("color","#FFFEFE");
          });
    });
  </script>
    <?php echo $this->smarty_insert_scripts(array('files'=>'user.js')); ?>
    <script type="text/javascript">
        <?php $_from = $this->_var['lang']['flow_login_register']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
          var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>

        
        function checkLoginForm(frm) {
          if (Utils.isEmpty(frm.elements['username'].value)) {
            alert(username_not_null);
            return false;
          }

          if (Utils.isEmpty(frm.elements['password'].value)) {
            alert(password_not_null);
            return false;
          }

          return true;
        }

        function checkSignupForm(frm) {
          if (Utils.isEmpty(frm.elements['username'].value)) {
            alert(username_not_null);
            return false;
          }

          if (Utils.trim(frm.elements['username'].value).match(/^\s*$|^c:\\con\\con$|[%,\'\*\"\s\t\<\>\&\\]/))
          {
            alert(username_invalid);
            return false;
          }

          if (Utils.isEmpty(frm.elements['email'].value)) {
            alert(email_not_null);
            return false;
          }

          if (!Utils.isEmail(frm.elements['email'].value)) {
            alert(email_invalid);
            return false;
          }

          if (Utils.isEmpty(frm.elements['password'].value)) {
            alert(password_not_null);
            return false;
          }

          if (frm.elements['password'].value.length < 6) {
            alert(password_lt_six);
            return false;
          }

          if (frm.elements['password'].value != frm.elements['confirm_password'].value) {
            alert(password_not_same);
            return false;
          }
          return true;
        }
        
        </script>
    <div class="m311 log_reg_box">
      <ul class="tab" id="logRegTab">
        <li id="mob_log" class="curr">
          <span> <font>登录</font>
          </span>
        </li>
        <li id="acc_log" class="curr currr">
          <span> <font>免费注册</font>
          </span>
        </li>
      </ul>

      <div id="logRegTabCon">
        <div class="nl-frame-container" id="phonearea">
          <div class="ng-form-area ">
            <form action="flow.php?step=login" name="loginForm" id="loginForm" onsubmit="return checkLoginForm(this)" method="post" class="c-form login-form">
              <div class="shake-area" >
              <dl style=" border-bottom:1px solid #ccc">
              <dt>账户名</dt><dd><input type="text" name="username"  placeholder="请输入用户名/邮箱" /></dd></dl>
                  <dl> 
            <dt> 登录密码</dt>  <dd><input type="password"  name="password" placeholder="密码" class="c-form-txt-normal"/></dd></dl>
              </div>
              <?php if ($this->_var['enabled_register_captcha']): ?>
              <div class="enter-area" style=" padding-top:15px;">
                <img class="check-code-img" src="captcha.php?is_login=1&<?php echo $this->_var['rand']; ?>" alt="<?php echo $this->_var['lang']['comment_captcha']; ?>"  title="<?php echo $this->_var['lang']['captcha_tip']; ?>" onClick="this.src='captcha.php?is_login=1&'+Math.random()" style="width:45%!important;height:30px"/>
                <input name="captcha" type="text" value="" placeholder="验证码" class="enter_item" style="width:48%!important;"></div>
              <?php endif; ?>
              <input class="button orange" type="submit" onclick="member_login()" value="立即登录">
              <input type="hidden" name="act" value="act_login">
              <input type="hidden" name="back_act" value="<?php echo $this->_var['back_act']; ?>">
              <div class="ng-foot">
                <div class="ng-cookie-area" >
                  <label >
                    <input type="checkbox" name="remember" value="1" checked="" >&nbsp;自动登录</label>
                </div>

                <div class="third-area ">
                  <div class="third-area-a">用以下方式互联登录</div>
            <a class="ta-qq" href="" target="_blank" title="QQ"></a>
                <a class="ta-weibo" href="" target="_blank" title="weibo"></a>
                <a class="ta-alipay" href="" target="_blank" title="alipay"></a>
                </div>
              </div>
              <input name="act" type="hidden" value="signin" />
            </form>
          </div>
        </div>
      </div>

     <div class="layout" id="accountarea">
          <div class="ng_form" id="form-area">
            <form action="flow.php?step=login" name="loginForm" id="loginForm" onsubmit="return checkLoginForm(this)" method="post" >
              <div id="shake_area">
                <dl id="enter_user" >
                  <dt>用户名</dt> <dd> <input type="text" name="username" id="username" placeholder="请输入用户名" class="enter-item "  onblur="is_registered(this.value);"/></dd><span id="username_notice"></span>
                  </dl>
                  
                </div>
              <dl>
                <dt>邮箱地址</dt>
                  <dd><input type="email" name="email" placeholder="邮箱地址" value="" class="enter-item " id="email" onblur="checkEmail(this.value);" /></dd>
                     <span id="email_notice"></span>
                  </dl>
              <dl>
                 <dt>密码</dt>
                  <dd><input type="password" class="enter-item " name="password" id="password1" onblur="check_password(this.value);"  value="" placeholder="密码" /></dd><span id="password_notice"></span>
                  </dl>
              <dl>
                <dt>确认密码</dt>
                  <dd><input type="password" name="confirm_password" id="conform_password" class="enter-item " name="password" id="password1" onblur="check_conform_password(this.value);"  value="" placeholder="确认密码" /></dd><span id="conform_password_notice"></span>
                  </dl>
                
                
                <?php $_from = $this->_var['extend_info_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'field');if (count($_from)):
    foreach ($_from AS $this->_var['field']):
?>
          <?php if ($this->_var['field']['id'] == 6): ?>
          <dl class="wenti" style=" margin-bottom:10px; border:0; margin-top:10px;">
                <select name="sel_question"<?php if ($this->_var['field']['is_need']): ?> required<?php endif; ?> class="enter-item-select" >
                  <?php echo $this->html_options(array('options'=>$this->_var['passwd_questions'],'selected'=>$this->_var['profile']['passwd_question'])); ?>
                </select>
                </dl>
                <div class="field no">
                  <div class="ptxt st">
                    <input type="text "  placeholder="密码问题答案"  name="passwd_answer" value="<?php echo $this->_var['profile']['passwd_answer']; ?>" <?php if ($this->_var['field']['is_need']): ?> required<?php endif; ?> class="enter-item" ></div>
                  <?php if ($this->_var['field']['is_need']): ?>
                  <div class="tips">
                    <span id="conform_password_notice"></span>
                  </div>
                  <?php endif; ?> </div>
                <?php else: ?>
                <div class="enter-area" >
                  <input type="text" name="extend_field<?php echo $this->_var['field']['id']; ?>" value="<?php echo $this->_var['field']['content']; ?>" placeholder="<?php echo $this->_var['field']['reg_field_name']; ?>" id="extend_field_<?php echo $this->_var['field']['id']; ?>"  class="enter-item "/>

                </div>
                <?php endif; ?>
          <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
          

                    <?php if ($this->_var['enabled_register_captcha']): ?>
               <div class="enter-area" id="img_code_area" style=" padding-top:25px;">
                  <img src="captcha.php?<?php echo $this->_var['rand']; ?>" alt="<?php echo $this->_var['lang']['comment_captcha']; ?>" title="<?php echo $this->_var['lang']['captcha_tip']; ?>" onClick="this.src='captcha.php?'+Math.random()" class="code-img" style="width:45%!important;height:30px"/>
                  <input name="captcha" type="text" value="" placeholder="输入验证码" class="enter_item" style="width:48%"></div>
                <?php endif; ?>
              </div>
              <input type="checkbox" style="display:none" name="agreement" value="1" checked="checked" required>
              <input type="submit" class="button orange" value="注 册">
              <input name="act" type="hidden" value="signup" />

            </form>
         
        </div>

      </div>
  <?php endif; ?>

<?php if ($this->_var['step'] == 'consignee'): ?>

   <?php echo $this->smarty_insert_scripts(array('files'=>'region.js')); ?>
  <script type="text/javascript">
          region.isAdmin = false;
          <?php $_from = $this->_var['lang']['flow_js']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
          var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
          <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>

          
          onload = function() {
            if (!document.all)
            {
              document.forms['theForm'].reset();
            }
          }
          
        </script>

  <?php $_from = $this->_var['consignee_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('sn', 'consignee');if (count($_from)):
    foreach ($_from AS $this->_var['sn'] => $this->_var['consignee']):
?>
  <?php if (! $this->_var['consignee']['consignee']): ?>
  <a href="javascript:void(0);" class="textlink fl">新增收货地址+</a>
  <div class="clearfix"></div>
  <?php endif; ?>
     <form action="flow.php" method="post" name="theForm" id="theForm" onsubmit="return checkConsignee(this)">
        <?php echo $this->fetch('library/consignee.lbi'); ?>
     </form>

  <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
  <?php endif; ?>
<?php if ($this->_var['step'] == 'checkout'): ?>
  <form action="flow.php" method="post" name="theForm" id="theForm" onsubmit="return checkOrderForm(this)">
    <script type="text/javascript">
        var flow_no_payment = "<?php echo $this->_var['lang']['flow_no_payment']; ?>";
        var flow_no_shipping = "<?php echo $this->_var['lang']['flow_no_shipping']; ?>";
  </script>
    <section class="content" style="min-height: 294px;">
      <div class="wrap">
        <div class="active" style="min-height: 294px;">
          <div class="content-buy">
            <div class="wrap order-buy">
              <a href="flow.php?step=consignee">
                <section class="address " >
                  <div class="address-info" >
                    收货人:
                    <p class="address-name"><?php echo htmlspecialchars($this->_var['consignee']['consignee']); ?></p>
                    <p class="address-phone"><?php echo $this->_var['consignee']['tel']; ?></p>
                  </div>
                  <div class="address-details">收货地址：<?php echo htmlspecialchars($this->_var['consignee']['region']); ?> <?php echo htmlspecialchars($this->_var['consignee']['address']); ?></div>
                </section>
              </a>
              <section class="order " id="order4">
                <section class="order-info">
                  <div class="order-list">
                 
                <div class="orderInfo " >
                    <h4 class="seller-name">
                      <img src="themesmobile/68ecshopcom_mobile/images/flow/dingdan.png" width="28"> 订单详情
                      <?php if ($this->_var['allow_edit_cart']): ?><a class="modify" href="flow.php">修改</a>  <?php endif; ?>
                      </h4>
                  </div>
                
                  <ul class="order-list-info">
                    <?php $_from = $this->_var['goods_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');if (count($_from)):
    foreach ($_from AS $this->_var['goods']):
?>
                    <li class="item " id="item2">
                      <div class="itemPay list-price-nums" id="itemPay17">
                        <p class="price">￥<?php echo $this->_var['goods']['subtotal']; ?></p>
                        <p class="nums">x<?php echo $this->_var['goods']['goods_number']; ?></p>
                      </div>
                      <div class="itemInfo list-info" id="itemInfo12">
                        <div class="list-img">
                          <a href="goods.php?id=<?php echo $this->_var['goods']['goods_id']; ?>">
                            <?php if ($this->_var['goods']['goods_thumb']): ?><img src="<?php echo $this->_var['goods']['goods_thumb']; ?>"><?php else: ?><img src="themesmobile/68ecshopcom_mobile/images/no_picture.gif"><?php endif; ?></a>
                        </div>
                        <div class="list-cont">
                          <h5 class="goods-title"><?php echo $this->_var['goods']['goods_name']; ?></h5>
                          <p class="godds-specification"><?php echo $this->_var['goods']['goods_attr']; ?></p>
                        </div>
                      </div>
                    </li>
                    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                  </ul>
                  <div class="content ptop0">

                    <div class="panel panel-default info-box">
<!--                      <div class="orderInfo " >
                    <h4 class="seller-name">
                      配送/支付</h4>
                  </div>-->
                      <?php if ($this->_var['total']['real_goods_count'] != 0): ?>
                      <div class="panel-body">

                        <div class="title" id="peisongtitle" style="border-bottom:1px solid #eeeeee;">
                          <span class="i-icon-arrow-down i-icon-arrow-up" id="peisongip"></span>
                          <span class="text ">配送方式</span>
                          <a href="javascript:void(0)" title="<?php echo $this->_var['lang']['modify']; ?><?php echo $this->_var['lang']['goods_list']; ?>" class="link">必选</a> <em class="qxz" id="empeisong">请选择配送方式</em>
                        </div>
                        <ul class="nav nav-list-sidenav" id="peisong68" style="display:block;">
                          <?php $_from = $this->_var['shipping_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'shipping');$this->_foreach['shipping_list'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['shipping_list']['total'] > 0):
    foreach ($_from AS $this->_var['shipping']):
        $this->_foreach['shipping_list']['iteration']++;
?>
                          <li onclick="selectShipping(<?php echo $this->_var['shipping']['shipping_id']; ?>)">
                            <label for="shipping_method_<?php echo $this->_var['shipping']['shipping_id']; ?>">
                              <input name="shipping" type="radio" value="<?php echo $this->_var['shipping']['shipping_id']; ?>" <?php if ($this->_var['order']['shipping_id'] == $this->_var['shipping']['shipping_id']): ?>checked="true"<?php endif; ?> supportCod="<?php echo $this->_var['shipping']['support_cod']; ?>" insure="<?php echo $this->_var['shipping']['insure']; ?>" id="shipping_<?php echo $this->_var['shipping']['shipping_id']; ?>" />
                              <?php echo $this->_var['shipping']['shipping_name']; ?>
                            </label>
                            <?php if ($this->_var['shipping']['shipping_fee'] != 0): ?><?php echo $this->_var['shipping']['format_shipping_fee']; ?><?php else: ?><?php echo $this->_var['lang']['free']; ?><?php endif; ?>
                          </li>
                          <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                          <!--配送保价 <li>
                          <label for="ECS_NEEDINSURE" class="ralabel">
                            <input class="pay-radio" type="checkbox" name="need_insure" value="1" id="ECS_NEEDINSURE" onclick="selectInsure(this.checked)"  <?php if ($this->_var['order']['need_insure']): ?>checked="true"<?php endif; ?>  style="margin-top:6px"/>
                            <?php echo $this->_var['lang']['need_insure']; ?>
                          </label>
                        </li>
                        -->
                      </ul>

                    </div>
                    <?php else: ?>
                    <input type="hidden" name="shipping" value="-1" checked="checked"/>
                    <?php endif; ?>
                
               <?php if ($this->_var['is_exchange_goods'] != 1 || $this->_var['total']['real_goods_count'] != 0): ?>
                    <div class="panel-body">

                      <div class="title" id="zhifutitle" style="border-bottom:1px solid #eeeeee;">
                        <span class="i-icon-arrow-down i-icon-arrow-up" id="zhifuip"></span>
                        <span class="text ">支付方式</span>
                        <a href="javascript:void(0)" title="<?php echo $this->_var['lang']['modify']; ?><?php echo $this->_var['lang']['goods_list']; ?>" class="link">必选</a> <em class="qxz" id="emzhifu">请选择支付方式</em>
                      </div>
                      <ul class="nav nav-list-sidenav" id="zhifu68" style="display:block;">
                        <?php $_from = $this->_var['payment_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'payment');if (count($_from)):
    foreach ($_from AS $this->_var['payment']):
?>
                        <li onclick="selectPayment(<?php echo $this->_var['payment']['pay_id']; ?>)">
                          <label for="payment_method_<?php echo $this->_var['payment']['pay_id']; ?>" >
                            <input type="radio" name="payment" value="<?php echo $this->_var['payment']['pay_id']; ?>" <?php if ($this->_var['order']['pay_id'] == $this->_var['payment']['pay_id']): ?> checked="checked"<?php endif; ?> isCod="<?php echo $this->_var['payment']['is_cod']; ?>" id="payment_<?php echo $this->_var['payment']['pay_id']; ?>" <?php if ($this->_var['cod_disabled'] && $this->_var['payment']['is_cod'] == "1"): ?>disabled="true"<?php endif; ?> class="pay-radio" style="margin-top:6px"/>
                            <?php echo $this->_var['payment']['pay_name']; ?>
                          </label>
                          <?php echo $this->_var['payment']['format_pay_fee']; ?>
                        </li>
                        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                      </ul>

                    </div>
                    <?php else: ?>
                    <input type="radio" name="payment" value="-1" checked="checked" style="display:none"/>
                    <?php endif; ?>
                    <?php if ($this->_var['inv_content_list']): ?>
                    <div class="panel-body">

                      <div class="title" id="fapiaotitle" style="border-bottom:1px solid #eeeeee;">
                        <span class="text">是否开发票</span>
                        <span class="isfapiao fr" > <i class="fl"></i> <ins>否</ins>
                        </span>
                      </div>

                      <ul class="nav nav-list-sidenav" id="fapiao68" style="display:none;">

                        <li>
                          <input type="checkbox" name="need_inv" value="1"  id="ECS_NEEDINV" style="display:none;"/>
                          <?php if ($this->_var['inv_type_list']): ?>
                        
              <?php echo $this->_var['lang']['invoice_type']; ?>
                          <select name="inv_type" disabled="disabled" id="ECS_INVTYPE" onchange="changeNeedInv()">
                            <?php echo $this->html_options(array('options'=>$this->_var['inv_type_list'],'selected'=>$this->_var['order']['inv_type'])); ?>
                          </select><br>
                          <?php endif; ?>
              <?php echo $this->_var['lang']['invoice_title']; ?>
                          <input type="text" name="inv_payee" value="<?php echo $this->_var['order']['inv_payee']; ?>" disabled="disabled" class="txt1" id="ECS_INVPAYEE" onblur="changeNeedInv()"/>
                        </br>
                   
                      <?php echo $this->_var['lang']['invoice_content']; ?>
                      <select name="inv_content" disabled="disabled" id="ECS_INVCONTENT" onchange="changeNeedInv()">
                        <?php echo $this->html_options(array('values'=>$this->_var['inv_content_list'],'output'=>$this->_var['inv_content_list'],'selected'=>$this->_var['order']['inv_content'])); ?>
                      </select>
                    </li>

                  </ul>

                </div>

                <script>
          $('.isfapiao').click(function(){
        if( $(".isfapiao i").attr('class') == 'fr'){
         $(".isfapiao i").removeClass("fr");
         $(".isfapiao i").addClass("fl");
         $(".isfapiao ins").html('否');
        $("#ECS_NEEDINV").attr("checked",false);
      
        document.getElementById("fapiao68").style.display="none";
  var obj        = document.getElementById('ECS_NEEDINV');
  var objType    = document.getElementById('ECS_INVTYPE');
  var objPayee   = document.getElementById('ECS_INVPAYEE');
  var objContent = document.getElementById('ECS_INVCONTENT');
  var needInv    = obj.checked ? 1 : 0;
  var invType    = obj.checked ? (objType != undefined ? objType.value : '') : '';
  var invPayee   = obj.checked ? objPayee.value : '';
  var invContent = obj.checked ? objContent.value : '';
  objType.disabled = objPayee.disabled = objContent.disabled = ! obj.checked;
  if(objType != null)
  {
    objType.disabled = ! obj.checked;
  }

  Ajax.call('flow.php?step=change_needinv', 'need_inv=' + needInv + '&inv_type=' + encodeURIComponent(invType) + '&inv_payee=' + encodeURIComponent(invPayee) + '&inv_content=' + encodeURIComponent(invContent), orderSelectedResponse, 'GET','json');
  
        }
        else{
         $(".isfapiao i").removeClass("fl");
         $(".isfapiao i").addClass("fr");
         $(".isfapiao ins").html('是');
         $("#ECS_NEEDINV").attr("checked",true);
          var obj        = document.getElementById('ECS_NEEDINV');
  var objType    = document.getElementById('ECS_INVTYPE');
  var objPayee   = document.getElementById('ECS_INVPAYEE');
  var objContent = document.getElementById('ECS_INVCONTENT');
  var needInv    = obj.checked ? 1 : 0;
  var invType    = obj.checked ? (objType != undefined ? objType.value : '') : '';
  var invPayee   = obj.checked ? objPayee.value : '';
  var invContent = obj.checked ? objContent.value : '';
  objType.disabled = objPayee.disabled = objContent.disabled = ! obj.checked;
  if(objType != null)
  {
    objType.disabled = ! obj.checked;
  }

  Ajax.call('flow.php?step=change_needinv', 'need_inv=' + needInv + '&inv_type=' + encodeURIComponent(invType) + '&inv_payee=' + encodeURIComponent(invPayee) + '&inv_content=' + encodeURIComponent(invContent), orderSelectedResponse, 'GET','json');
        $("#fapiao68").slideToggle("slow");
        document.getElementById("fapiao68").style.display="block";
      
    }
});
      </script>
                <?php endif; ?>
              </div>

              
              <div class="panel panel-default info-box">
                <div class="orderInfo " >
                    <h4 class="seller-name">
                    <img src="themesmobile/68ecshopcom_mobile/images/flow/hui.png" width="28"> 
                      订单优惠</h4>
                  </div>
                
                <?php if ($this->_var['allow_use_surplus']): ?>
                <div class="panel-body">

                  <div class="title" id="yuetitle" style="border-bottom:1px solid #eeeeee;">
                    <span class="i-icon-arrow-down" id="yueip"></span>
                    <span class="text"><?php echo $this->_var['lang']['use_surplus']; ?></span>
                    <em class="qxz" id="emyue">请选择<?php echo $this->_var['lang']['use_surplus']; ?></em>
                  </div>
                  <ul class="nav nav-list-sidenav" id="yue68" style="display:none;">
                    <li>
                      <input type="text" name="surplus" value="<?php echo empty($this->_var['order']['surplus']) ? '0' : $this->_var['order']['surplus']; ?>" id="ECS_SURPLUS" onblur="changeSurplus(this.value)"<?php if ($this->_var['disable_surplus']): ?> disabled="disabled"<?php endif; ?> class="txt1" style="width:50px;"/>
                      &nbsp;<?php echo $this->_var['lang']['your_surplus']; ?>&nbsp;
                      <span class="price"><?php echo empty($this->_var['your_surplus']) ? '0' : $this->_var['your_surplus']; ?></span>
                      <span id="ECS_SURPLUS_NOTICE"></span>
                    </li>

                  </ul>

                </div>
                <?php endif; ?>
                
                <?php if ($this->_var['allow_use_integral']): ?>
                <div class="panel-body">

                  <div class="title" id="jifentitle" style="border-bottom:1px solid #eeeeee;">
                    <span class="i-icon-arrow-down" id="jifenip"></span>
                    <span class="text"><?php echo $this->_var['lang']['use_integral']; ?></span>
                    <em class="qxz" id="emjifen">请选择<?php echo $this->_var['lang']['use_integral']; ?></em>
                  </div>
                  <ul class="nav nav-list-sidenav" id="jifen68" style="display:none;">
                    <li>
                      <input type="text" name="integral" value="<?php echo empty($this->_var['order']['integral']) ? '0' : $this->_var['order']['integral']; ?>" id="ECS_INTEGRAL" onblur="changeIntegral(this.value)" class="txt1"  style="width:50px;"/>
                      &nbsp;<?php echo $this->_var['lang']['can_use_integral']; ?>
                      <span class="price points"><?php echo empty($this->_var['your_integral']) ? '0' : $this->_var['your_integral']; ?><?php echo $this->_var['points_name']; ?></span>
                      &nbsp;&nbsp;<?php echo $this->_var['lang']['noworder_can_integral']; ?><?php echo $this->_var['order_max_integral']; ?><?php echo $this->_var['points_name']; ?>
                      <span id="ECS_INTEGRAL_NOTICE"></span>
                    </li>
                  </ul>

                </div>
                <?php endif; ?>
                
                <?php if ($this->_var['allow_use_bonus']): ?>
                <div class="panel-body">

                  <div class="title" id="hongbaotitle" style="border-bottom:1px solid #eeeeee;">
                    <span class="i-icon-arrow-down" id="hongbaoip"></span>
                    <span class="text">使用红包</span>
                    <em class="qxz" id="emhongbao">请选择红包</em>
                  </div>
                  <ul class="nav nav-list-sidenav" id="hongbao68" style="display:none;">
                    <li>
                      <?php if ($this->_var['bonus_list']): ?>
                <?php echo $this->_var['lang']['select_bonus']; ?>
                      <select name="bonus" onchange="changeBonus(this.value)" id="ECS_BONUS">
                        <option value="0"<?php if ($this->_var['order']['bonus_id'] == 0): ?> selected="selected"<?php endif; ?>><?php echo $this->_var['lang']['please_select']; ?></option>
                        <?php $_from = $this->_var['bonus_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'bonus');if (count($_from)):
    foreach ($_from AS $this->_var['bonus']):
?>
                        <option value="<?php echo $this->_var['bonus']['bonus_id']; ?>"<?php if ($this->_var['order']['bonus_id'] == $this->_var['bonus']['bonus_id']): ?> selected="selected"<?php endif; ?>><?php echo $this->_var['bonus']['type_name']; ?>[<?php echo $this->_var['bonus']['bonus_money_formated']; ?>]</option>
                        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                      </select>
                      <?php echo $this->_var['lang']['or']; ?><?php echo $this->_var['lang']['enter_bonus_sn']; ?>
            
              <?php endif; ?>
                      <input type="text" name="bonus_sn" value="<?php echo $this->_var['order']['bonus_sn']; ?>" class="txt2" id="bonus-sn"  placeholder="输入红包序列号"/>
                      <input type="button" name="validate_bonus" value="<?php echo $this->_var['lang']['validate_bonus']; ?>" class="btn1" onclick="validateBonus(document.forms['theForm'].elements['bonus_sn'].value)"/>
                    </li>
                  </ul>

                </div>
                <?php endif; ?>
                
                <?php if ($this->_var['card_list']): ?>
                <div class="panel-body">

                  <div class="title" id="hekatitle" style="border-bottom:1px solid #eeeeee;">
                    <span class="i-icon-arrow-down" id="hekaip"></span>
                    <span class="text">使用贺卡</span>
                    <em class="qxz" id="emheka">请选择贺卡</em>
                  </div>
                  <ul class="nav nav-list-sidenav" id="heka68" style="display:none;">
                    <li  onclick="selectCard(0)">
                      <input type="radio" class="radio"  name="card" value="0" <?php if ($this->_var['order']['card_id'] == 0): ?>checked="true"<?php endif; ?>id="card_0"/>
                      <?php echo $this->_var['lang']['no_card']; ?>
                    </li>
                    <?php $_from = $this->_var['card_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'card');if (count($_from)):
    foreach ($_from AS $this->_var['card']):
?>
                    <li onclick="selectCard(<?php echo $this->_var['card']['card_id']; ?>)">
                      <input type="radio" class="radio"  name="card"  id="card_<?php echo $this->_var['card']['card_id']; ?>" value="<?php echo $this->_var['card']['card_id']; ?>" <?php if ($this->_var['order']['card_id'] == $this->_var['card']['card_id']): ?>checked="true"<?php endif; ?> />
                      <label for="card_<?php echo $this->_var['card']['card_id']; ?>"><?php echo $this->_var['card']['card_name']; ?>[<?php echo $this->_var['card']['format_card_fee']; ?>]</label>
                    </li>
                    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> </ul>

                </div>
                <?php endif; ?>
                
                <?php if ($this->_var['pack_list']): ?>
                <div class="panel-body">

                  <div class="title" id="baozhuangtitle" style="border-bottom:1px solid #eeeeee;">
                    <span class="i-icon-arrow-down" id="baozhuangip"></span>
                    <span class="text"><?php echo $this->_var['lang']['goods_package']; ?></span>
                    <em class="qxz" id="embaozhuang">请选择<?php echo $this->_var['lang']['goods_package']; ?></em>
                  </div>
                  <ul class="nav nav-list-sidenav" id="baozhuang68" style="display:none;">
                    <li  onclick="selectPack(0)">
                      <input type="radio" class="radio"  name="pack" value="0" <?php if ($this->_var['order']['pack_id'] == 0): ?>checked="true"<?php endif; ?> id="pack_0" />
                      <?php echo $this->_var['lang']['no_pack']; ?>
                    </li>
                    <?php $_from = $this->_var['pack_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'pack');if (count($_from)):
    foreach ($_from AS $this->_var['pack']):
?>
                    <li  onclick="selectPack(<?php echo $this->_var['pack']['pack_id']; ?>)">
                      <input type="radio" class="radio" name="pack" id="pack_<?php echo $this->_var['pack']['pack_id']; ?>" value="<?php echo $this->_var['pack']['pack_id']; ?>" <?php if ($this->_var['order']['pack_id'] == $this->_var['pack']['pack_id']): ?>checked="true"<?php endif; ?> onclick="selectPack(this)" />
                      <label for="pack_<?php echo $this->_var['pack']['pack_id']; ?>"><?php echo $this->_var['pack']['pack_name']; ?>[<?php echo $this->_var['pack']['format_pack_fee']; ?>]</label>
                    </li>
                    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> </ul>

                </div>
                <?php endif; ?>
                
                <div class="panel-body">

                  <div class="title" id="fuyantitle" style="border-bottom:1px solid #eeeeee;">
                    <span class="i-icon-arrow-down" id="fuyanip"></span>
                    <span class="text">订单附言</span>
                  </div>
                  <ul class="nav nav-list-sidenav" id="fuyan68" style="display:none;">
                    <li>
                      <textarea name="postscript" class="voucher-num" value=""  autocomplete="off" id="postscript"><?php echo htmlspecialchars($this->_var['order']['postscript']); ?></textarea>
                    </li>
                  </ul>

                </div>

              </div>
              
            </div>
            <div class="orderPay "><?php echo $this->fetch('library/order_total.lbi'); ?></div>
          </div>
        </section>
      </section>
<section class="bottom-bar">
<div class="total-price"> 
<div> 
<p class="submitOrder "><input type="submit" class="c-order-btn  J_submit" value="确认"/> </p> <p class="realPay">合计：<strong class="price" id="ECS_ORDERTOTAL_T"><?php echo $this->_var['total']['amount_formated']; ?></strong> </p> 
</div> 
</div> 
</section>

    </div>
  </div>
</div>

</div>

</section>

</form>
<?php endif; ?>


<?php if ($this->_var['step'] == 'done'): ?>

  <div class="content_success " >
    <div class="con-ct   fo-con">
        <h4 class="successtijiao">订单已经提交成功！</h4>
      <ul class="ct-list">
        <li>
          订单号为：
          <em><?php echo $this->_var['order']['order_sn']; ?></em>
        </li>
        <li>
          <?php if ($this->_var['order']['shipping_name']): ?><?php echo $this->_var['lang']['select_shipping']; ?><?php echo $this->_var['lang']['colon']; ?>
          <em><?php echo $this->_var['order']['shipping_name']; ?></em>
          <?php endif; ?>
        </li>
        <li>
          <?php echo $this->_var['lang']['select_payment']; ?><?php echo $this->_var['lang']['colon']; ?>
          <em><?php echo $this->_var['order']['pay_name']; ?></em>
        </li>
        <li>
          <?php echo $this->_var['lang']['order_amount']; ?><?php echo $this->_var['lang']['colon']; ?>
          <em class="price"><?php echo $this->_var['total']['amount_formated']; ?></em>
        </li>
      </ul>

    </div>
    <?php if ($this->_var['pay_online']): ?>
        <?php if ($this->_var['iswei']): ?>
        <?php if ($this->_var['order']['pay_id'] == 4): ?>
    <div class="pay-btn">
      <a href="weixinpay.php?oid=<?php echo $this->_var['order']['order_id']; ?>" class="sub-btn btnRadius">微支付</a>
    </div>
    <?php else: ?>
    <div class="pay-btn">
      <a href="./pay/alipayapi.php?out_trade_no=<?php echo $this->_var['order']['order_sn']; ?>&total_fee=<?php echo $this->_var['total']['amount_formated_wap']; ?>" class="sub-btn btnRadius">去支付宝支付</a>
    </div>
    <?php endif; ?>
    <?php else: ?>
    <div class="pay-btn">
      <a href="./pay/alipayapi.php?out_trade_no=<?php echo $this->_var['order']['order_sn']; ?>&total_fee=<?php echo $this->_var['total']['amount_formated_wap']; ?>" class="sub-btn btnRadius">去支付宝支付</a>
    </div>
    <?php endif; ?>
      <?php endif; ?>
<?php if ($this->_var['virtual_card']): ?>
    <div class="con-ct radius shadow fo-con">
      <ul class="ct-list">
        <?php $_from = $this->_var['virtual_card']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'vgoods');$this->_foreach['virtual_card'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['virtual_card']['total'] > 0):
    foreach ($_from AS $this->_var['vgoods']):
        $this->_foreach['virtual_card']['iteration']++;
?>
          <?php $_from = $this->_var['vgoods']['info']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'card');$this->_foreach['vgoods_info'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['vgoods_info']['total'] > 0):
    foreach ($_from AS $this->_var['card']):
        $this->_foreach['vgoods_info']['iteration']++;
?>
        <li>
          <span class="type"><?php echo $this->_var['vgoods']['goods_name']; ?></span>
          <?php if ($this->_var['card']['card_sn']): ?>
          <span class="id"> <strong><?php echo $this->_var['lang']['card_sn']; ?><?php echo $this->_var['lang']['colon']; ?></strong>
            <?php echo $this->_var['card']['card_sn']; ?></em> 
        </span>
        <?php endif; ?>
            <?php if ($this->_var['card']['card_password']): ?>
        <span class="serial_code">
          <strong><?php echo $this->_var['lang']['card_password']; ?><?php echo $this->_var['lang']['colon']; ?></strong>
          <em><?php echo $this->_var['card']['card_password']; ?></em>
        </span>
        <?php endif; ?>
            <?php if ($this->_var['card']['end_date']): ?>
        <span class="expire_date">
          <strong><?php echo $this->_var['lang']['end_date']; ?><?php echo $this->_var['lang']['colon']; ?></strong>
          <em><?php echo $this->_var['card']['end_date']; ?></em>
        </span>
        <?php endif; ?>
      </li>
      <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
          <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
    </ul>
  </div>
  <div class="con-ct radius shadow fo-con">
    <ul class="ct-list">
      <li><?php echo $this->_var['order_submit_back']; ?></li>
    </ul>
  </div>
<?php endif; ?>
</div>

<?php endif; ?>
<?php if ($this->_var['step'] != 'cart' && $this->_var['step'] != 'checkout'): ?>
<?php echo $this->fetch('library/page_footer.lbi'); ?><?php endif; ?></div>
<script type="text/javascript">
var process_request = "<?php echo $this->_var['lang']['process_request']; ?>";
<?php $_from = $this->_var['lang']['passport_js']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
var username_exist = "<?php echo $this->_var['lang']['username_exist']; ?>";
var compare_no_goods = "<?php echo $this->_var['lang']['compare_no_goods']; ?>";
var btn_buy = "<?php echo $this->_var['lang']['btn_buy']; ?>";
var is_cancel = "<?php echo $this->_var['lang']['is_cancel']; ?>";
var select_spe = "<?php echo $this->_var['lang']['select_spe']; ?>";
</script>

</body>
</html>