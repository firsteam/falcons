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
  <link rel="stylesheet" href="themesmobile/68ecshopcom_mobile/css/loginxin.css">
<script type="text/javascript" src="themesmobile/68ecshopcom_mobile/js/jquery.js"></script>
<?php echo $this->smarty_insert_scripts(array('files'=>'jquery.json.js,transport.js')); ?>
    <?php echo $this->smarty_insert_scripts(array('files'=>'common.js,utils.js,user.js')); ?>
</head>
<body>
<div class="tab_nav">
        <div class="header">
          <div class="h-left"><a class="sb-back" href="javascript:history.back(-1)" title="返回"></a></div>
          <div class="h-mid"><?php if ($this->_var['action'] == 'login'): ?>会员登录<?php endif; ?>
                <?php if ($this->_var['action'] == 'register'): ?>用户注册<?php endif; ?>
                <?php if ($this->_var['action'] == 'get_password'): ?>找回密码<?php endif; ?>
                <?php if ($this->_var['action'] == 'get_passwd_question'): ?>找回密码<?php endif; ?>
                <?php if ($this->_var['action'] == 'reset_password'): ?>找回密码<?php endif; ?>	
                <?php if ($this->_var['action'] == 'qpassword_name'): ?>找回密码<?php endif; ?></div>

        </div>
      </div>
  
  <?php if ($this->_var['action'] == 'login'): ?>
  <div class="layout">
    <div class="nl-content">
      <div class="nl-frame-container">
        <div class="ng-form-area ">
          <form action="user.php" method="post" class="c-form login-form">
            <div class="shake-area" >
            <dl style=" border-bottom:1px solid #ccc">
            <dt>账户</dt><dd><input type="text"  name="username"  placeholder="请输入用户名/邮箱" value=""/></dd>
            </dl>
              <dl> 
            <dt>登录密码</dt> <dd><input type="password"   name="password" placeholder="请输入密码" class="c-form-txt-normal"/></dd>
            </dl>
            </div>
            <?php if ($this->_var['enabled_captcha']): ?>
            <div class="enter-area" id="img_code_area" >
              <img class="code-img" src="captcha.php?is_login=1&<?php echo $this->_var['rand']; ?>" alt="<?php echo $this->_var['lang']['comment_captcha']; ?>"  title="<?php echo $this->_var['lang']['captcha_tip']; ?>" onClick="this.src='captcha.php?is_login=1&'+Math.random()"  style="width:40%!important;height:30px"/>
              <input type="text" name="captcha" placeholder="验证码" class="enter_item" style="width:48%"/>
            </div>
            <?php endif; ?>
            
            <input class="button orange" type="submit" onclick="member_login()" value="立即登录">
            <input type="hidden" name="act" value="act_login">
            <input type="hidden" name="back_act" value="<?php echo $this->_var['back_act']; ?>">
            <div class="ng-foot">
              <div class="ng-cookie-area" >
                <label >
                  <input type="checkbox" name="remember" value="1" checked="" >&nbsp;自动登录</label>
              </div>
              <div class="ng-link-area" >
                <span >
                  <a href="user.php?act=register" >免费注册</a>
                </span>
                 <span class="user_line"></span>
                   <span >
                  <a href="user.php?act=get_password" >忘记密码？</a>
                </span>
              </div>
              <div class="third-area ">
                <div class="third-area-a">用以下方式互联登录</div>
                <a class="ta-qq" href="" target="_blank" title="QQ"></a>
                <a class="ta-weibo" href="" target="_blank" title="weibo"></a>
                <a class="ta-alipay" href="" target="_blank" title="alipay"></a>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>

  </div>
  <?php endif; ?>
  
  <?php if ($this->_var['action'] == 'register'): ?>
<?php if ($this->_var['shop_reg_closed'] == 1): ?>
  <section class="innercontent">
    <div><?php echo $this->_var['lang']['shop_register_closed']; ?></div>
  </section>
  <?php else: ?>
  <form action="user.php" method="post"  name="formUser" onsubmit="return register();">
    <div class="layout">
          <div class="ng_form" id="form-area">
            <form action="user.php" method="post" class="c-form login-form">
                <dl id="enter_user" >
                 <dt>用户名</dt> <dd><input type="text" name="username" id="username" placeholder="请输入用户名" class="enter-item "  onblur="is_registered(this.value);"/></dd><span id="username_notice"></span>
                </dl>
                <dl>
                <dt>邮箱地址</dt>  <dd><input type="email" name="email" placeholder="邮箱地址" value="" class="enter-item " id="email" onblur="checkEmail(this.value);" /></dd><span id="email_notice"></span>
              
                </dl>
                <dl>
                 <dt>密码</dt>  <dd><input type="password" class="enter-item " name="password" id="password1" onblur="check_password(this.value);"  value="" placeholder="密码" /></dd><span id="password_notice"> </span>
                </dl>
                <dl>
                <dt>确认密码</dt>   <dd><input type="password" name="confirm_password" id="conform_password" class="enter-item " name="password" id="password1" onblur="check_conform_password(this.value);"  value="" placeholder="确认密码" /></dd><span id="conform_password_notice"> </span>
                  
                </dl>
                <?php $_from = $this->_var['extend_info_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'field');if (count($_from)):
    foreach ($_from AS $this->_var['field']):
?>
          <?php if ($this->_var['field']['id'] == 6): ?>
          <dl class="wenti" style=" margin-bottom:10px; border:0; margin-top:10px;">
                <select name="sel_question"<?php if ($this->_var['field']['is_need']): ?> required<?php endif; ?> >
                  <?php echo $this->html_options(array('options'=>$this->_var['passwd_questions'],'selected'=>$this->_var['profile']['passwd_question'])); ?>
                </select>
                </dl>
                <div class="field no" style=" border-bottom:1px solid #CCC; padding-bottom:20px; margin-bottom:10px;">
             
                    <input type="text "  placeholder="密码问题答案"  name="passwd_answer" value="<?php echo $this->_var['profile']['passwd_answer']; ?>" <?php if ($this->_var['field']['is_need']): ?> required<?php endif; ?> >
                
                 </div>
                  <?php if ($this->_var['field']['is_need']): ?>
                   <div class="field no">
                  <div class="tips">
                    <span id="conform_password_notice"></span>
                  </div>
                   </div>
                  <?php endif; ?>
                  
                <?php else: ?>
                <dl>
                <dt><?php echo $this->_var['field']['reg_field_name']; ?></dt>  <dd><input type="text" name="extend_field<?php echo $this->_var['field']['id']; ?>" value="<?php echo $this->_var['field']['content']; ?>" placeholder="<?php echo $this->_var['field']['reg_field_name']; ?>" id="extend_field_<?php echo $this->_var['field']['id']; ?>"  class="enter-item "/>
</dd>
                </dl>
                <?php endif; ?>
          <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
          <?php if ($this->_var['enabled_captcha']): ?>
                <div class="enter-area" id="img_code_area" >
                  <img src="captcha.php?<?php echo $this->_var['rand']; ?>" alt="<?php echo $this->_var['lang']['comment_captcha']; ?>" title="<?php echo $this->_var['lang']['captcha_tip']; ?>" onClick="this.src='captcha.php?'+Math.random()" class="code-img" style="width:40%!important;height:30px"/>
                  <input name="captcha" type="text" value="" placeholder="输入验证码" class="enter_item" style="width:48%"></div>
                <?php endif; ?>
           
              <input type="checkbox" style="display:none" name="agreement" value="1" checked="checked" required>
              <input type="submit" class="button orange" value="注 册">
              <input type="hidden" name="act" value="act_register">
              <input type="hidden" name="back_act" value="<?php echo $this->_var['back_act']; ?>">
              <div class="third-area ">
                <div class="third-area-a">
                  <a href="user.php" class="button" >已注册？请登录</a>
                  或者用以下方式互联登录
                </div>
                <a class="ta-qq" href="" target="_blank" title="QQ"></a>
                <a class="ta-weibo" href="" target="_blank" title="weibo"></a>
                <a class="ta-alipay" href="" target="_blank" title="alipay"></a>
              </div>
            </form>
          </div>
    </div>
  </form>
  <?php endif; ?>
 <?php endif; ?>
  
  <?php if ($this->_var['action'] == 'get_password'): ?>
    <?php echo $this->smarty_insert_scripts(array('files'=>'utils.js')); ?>
  <script type="text/javascript">
    <?php $_from = $this->_var['lang']['password_js']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
      var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
    </script>
  <div class="layout">
    <div class="shake-area">
          <form action="user.php" method="post" name="getPassword" onsubmit="return submitPwdInfo();">
            <dl id="shake_area" style="z-index:30; border-bottom:1px solid #CCC">
             <dt>用户名</dt> <dd><input type="text"  name="user_name"  placeholder="请输入用户名" value=""/></dd></dl>
               <dl><dt>邮箱</dt><dd><input type="text" name="email"  placeholder="邮箱" value=""/></dd>
            </dl>
            </div>
            <input type="submit" class="button orange"  value="提 交">
            <input type="hidden" name="act" value="send_pwd_email">
            <div class="ng-form-zhu">
              <div class="tips">填写正确的用户名和注册邮箱地址后会收到包含取回密码链接的邮件。</div>
              <div class="tips">如果您想马上登录，可以使用密码问题来修改密码。</div>
              
              <a href="user.php?act=qpassword_name"><div class="tipss">密码问题找回密码</div></a>

            </div>
          </form>
    
  </div>
  <?php endif; ?>
  
  <?php if ($this->_var['action'] == 'qpassword_name'): ?>
  <div class="layout">
    <div class="nl-content">
          <form action="user.php" method="post">
            <div class="shake-area" id="shake_area" style="z-index:30; padding-top:10px; padding-bottom:10px;">
            <dl><dt>用户名</dt><dd>
              <input type="text"  name="user_name"  placeholder="请输入用户名" value=""/>
              </dd>
              </dl>
            </div>
            <input type="submit" class="button orange" value="提 交">
            <input type="hidden" name="act" value="get_passwd_question"/>
            <div class="ng-form-zhu">
              <div class="tips">如果您忘记了密码问题答案，可以使用注册邮箱来修改密码。</div>
              <a href="user.php?act=get_password"><div class="tipss">注册邮件找回密码</div></a>
            </div>
          </form>
    </div>
  </div>
  <?php endif; ?>


  <?php if ($this->_var['action'] == 'get_passwd_question'): ?>
  <div class="layout">
    <div class="nl-content">
      
      <div>
        <p class="nl-login-intro" >
          <?php echo $this->_var['lang']['passwd_question']; ?><?php echo $this->_var['lang']['colon']; ?>
              <?php echo $this->_var['passwd_question']; ?>
        </p>
      </div>
      <div class="nl-frame-container">
        <div class="ng-form-area show-place"  >
          <form action="user.php" method="post">
            <div class="shake-area" id="shake_area" style="z-index:30;">
              <div class="enter-area" id="enter_user" style="margin-bottom:0.5em">
                <input type="text" class="enter-item first-enter-item" name="passwd_answer"  placeholder="<?php echo $this->_var['lang']['passwd_answer']; ?>" value=""/>
              </div>
              <?php if ($this->_var['enabled_captcha']): ?>
              <div class="enter-area img-code-area" id="img_code_area" >
                <img class="code-img" src="captcha.php?is_login=1&<?php echo $this->_var['rand']; ?>" alt="<?php echo $this->_var['lang']['comment_captcha']; ?>" title="<?php echo $this->_var['lang']['captcha_tip']; ?>" onClick="this.src='captcha.php?is_login=1&'+Math.random()" style="width:48%!important"/>
                <input type="text" name="captcha" placeholder="验证码" class="enter-item code-enter-item" style="width:48%"/>
              </div>
              <?php endif; ?>
            </div>
            <input type="submit" class="button orange"value="<?php echo $this->_var['lang']['submit']; ?>">
            <input type="hidden" name="act" value="check_answer"/>

          </form>
        </div>
      </div>
    </div>
  </div>
  <?php endif; ?>
<?php if ($this->_var['action'] == 'reset_password'): ?>
  <div class="layout">
    <div class="nl-content">
      
      <div></div>

      <div class="nl-frame-container">
        <div class="ng-form-area show-place" >
          <form action="user.php" method="post">
            <div class="shake-area" id="shake_area" style="z-index:30;">
              <input type="password" class="enter-item first-enter-item" name="new_password"  placeholder="<?php echo $this->_var['lang']['new_password']; ?>" value=""/>
              <input type="password" class="enter-item last-enter-item" name="email"  placeholder="<?php echo $this->_var['lang']['confirm_password']; ?>" value=""/>
            </div>
            <input type="submit" class="button orange" value="<?php echo $this->_var['lang']['confirm_submit']; ?>">
            <input type="hidden" name="act" value="act_edit_password">
            <input type="hidden" name="uid" value="<?php echo $this->_var['uid']; ?>">
            <input type="hidden" name="code" value="<?php echo $this->_var['code']; ?>"></form>
        </div>
      </div>
    </div>
  </div>
  <?php endif; ?>
  

<script type="text/javascript">
var process_request = "<?php echo $this->_var['lang']['process_request']; ?>";
<?php $_from = $this->_var['lang']['passport_js']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
var username_exist = "<?php echo $this->_var['lang']['username_exist']; ?>";
</script>
</body>
</html>