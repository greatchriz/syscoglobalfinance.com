{include file="auth_header.tpl"}

{literal}
<script language=javascript>
function checkform() {
  if (document.mainform.username.value=='') {
    alert("Please type your username!");
    document.mainform.username.focus();
    return false;
  }
  if (document.mainform.password.value=='') {
    alert("Please type your password!");
    document.mainform.password.focus();
    return false;
  }
  return true;
}
</script>
{/literal}


{if $frm.say eq 'invalid_login'}
<p class="text-danger">
  Your Username or Password or turing image code is wrong. Please check this information.
</p>
{/if}


<div class="account-wrapper">
  <div class="account-body">
      <h4 class="title mb-20">Welcome To Syscoglobalfinance.com</h4>
        <form method=post name=mainform onsubmit="return checkform()" class="account-form">
        <input type=hidden name=a value='do_login'>
        <input type=hidden name=follow value='{$frm.follow}'>
        <input type=hidden name=follow_id value='{$frm.follow_id}'>
          <div class="form-group">
              <label for="sign-up">Your Username </label>
              <input type="text" placeholder="Enter Your Username " id="sign-up" name=username value='{$frm.username|escape:"html"}'>
          </div>
          <div class="form-group">
              <label for="pass">Password</label>
              <input type="password" placeholder="Enter Your Password" id="pass" name="password">
              <span class="sign-in-recovery">Forgot your password? <a href="{"?a=forgot_password"|encurl}">recover password</a></span>
          </div>
          <div class="form-group text-center">
            <button
              type="submit"
              class="mt-2 mb-30"
            >Login</button>
            <div class="section-header">
              <span
                class="cate"
                style="color: #576288"
              >Don't have an account yet? <a href="?a=signup">Sign Up</a></span>
            </div>
          </div>
      </form>
  </div>
</div>

{include file="auth_footer.tpl"}
