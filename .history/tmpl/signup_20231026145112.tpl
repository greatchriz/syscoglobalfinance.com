{include file="auth_header.tpl"}


{if $deny_registration}
  We are closed for new registrations now.
{elseif $settings.use_referal_program && $settings.force_upline && !$referer && !$settings.get_rand_ref}
  You do not have a upline. Our system require a upline for each user.
{else}
  {literal}

    <script language=javascript>
      function checkform() {
        if (document.regform.fullname.value == '') {
          alert("Please enter your full name!");
          document.regform.fullname.focus();
          return false;
        }
      {/literal}
      {if $settings.use_user_location == 1}
        {literal}
          if (document.regform.address.value == '') {
            alert("Please enter your address!");
            document.regform.address.focus();
            return false;
          }
          if (document.regform.city.value == '') {
            alert("Please enter your city!");
            document.regform.city.focus();
            return false;
          }
          if (document.regform.state.value == '') {
            alert("Please enter your state!");
            document.regform.state.focus();
            return false;
          }
          if (document.regform.zip.value == '') {
            alert("Please enter your ZIP!");
            document.regform.zip.focus();
            return false;
          }
          if (document.regform.country.options[document.regform.country.selectedIndex].text == '--SELECT--') {
            alert("Please choose your country!");
            document.regform.country.focus();
            return false;
          }
        {/literal}
      {/if}
      {literal}
        if (document.regform.username.value == '') {
          alert("Please enter your username!");
          document.regform.username.focus();
          return false;
        }
        if (!document.regform.username.value.match(/^[A-Za-z0-9_\-]+$/)) {
          alert("For username you should use English letters and digits only!");
          document.regform.username.focus();
          return false;
        }
        if (document.regform.password.value == '') {
          alert("Please enter your password!");
          document.regform.password.focus();
          return false;
        }
        if (document.regform.password.value != document.regform.password2.value) {
          alert("Please check your password!");
          document.regform.password2.focus();
          return false;
        }
      {/literal}
      {if $settings.use_transaction_code}
        {literal}
          if (document.regform.transaction_code.value == '') {
            alert("Please enter your transaction code!");
            document.regform.transaction_code.focus();
            return false;
          }
          if (document.regform.transaction_code.value != document.regform.transaction_code2.value) {
            alert("Please check your transaction code!");
            document.regform.transaction_code2.focus();
            return false;
          }
        {/literal}
      {/if}
      {literal}
        if (document.regform.email.value == '') {
          alert("Please enter your e-mail address!");
          document.regform.email.focus();
          return false;
        }
        if (document.regform.email.value != document.regform.email1.value) {
          alert("Please retype your e-mail!");
          document.regform.email.focus();
          return false;
        }

        for (i in document.regform.elements) {
          f = document.regform.elements[i];
          if (f.name && f.name.match(/^pay_account/)) {
            if (f.value == '') continue;
            var notice = f.getAttribute('data-validate-notice');
            var invalid = 0;
            if (f.getAttribute('data-validate') == 'regexp') {
              var re = new RegExp(f.getAttribute('data-validate-regexp'));
              if (!f.value.match(re)) {
                invalid = 1;
              }
            } else if (f.getAttribute('data-validate') == 'email') {
              var re = /^[^\@]+\@[^\@]+\.\w{2,4}$/;
              if (!f.value.match(re)) {
                invalid = 1;
              }
            }
            if (invalid) {
              alert('Invalid account format. Expected ' + notice);
              f.focus();
              return false;
            }
          }
        }

        if (document.regform.agree.checked == false) {
          alert("You have to agree with the Terms and Conditions!");
          return false;
        }

        return true;
      }

      function IsNumeric(sText) {
        var ValidChars = "0123456789";
        var IsNumber = true;
        var Char;
        if (sText == '') return false;
        for (i = 0; i < sText.length && IsNumber == true; i++) {
          Char = sText.charAt(i);
          if (ValidChars.indexOf(Char) == -1) {
            IsNumber = false;
          }
        }
        return IsNumber;
      }
    </script>
  {/literal}

  {if $errors}
    <ul style="color:red">
      {section name=e loop=$errors}
        {if $errors[e] eq 'full_name'}
          <li>Please enter your full name!
          {/if}
          {if $errors[e] eq 'address'}
          <li>Please enter your address!
          {/if}
          {if $errors[e] eq 'city'}
          <li>Please enter your city!
          {/if}
          {if $errors[e] eq 'state'}
          <li>Please enter your state!
          {/if}
          {if $errors[e] eq 'zip'}
          <li>Please enter your zip!
          {/if}
          {if $errors[e] eq 'country'}
          <li>Please choose your country!
          {/if}
          {if $errors[e] eq 'username'}
          <li>Please enter valid username! It should contains English letters and digits only.
          {/if}
          {if $errors[e] eq 'username_exists'}
          <li>Sorry, such user already exists! Please try another username.
          {/if}
          {if $errors[e] eq 'email_exists'}
          <li>Sorry, such email already exists! Please try another email.
          {/if}
          {if $errors[e] eq 'password'}
          <li>Please enter a password!
          {/if}
          {if $errors[e] eq 'password_confirm'}
          <li>Please check your password!
          {/if}
          {if $errors[e] eq 'password_too_small'}
          <li>The password you provided is too small, please enter at least {$settings.min_user_password_length} characters!
          {/if}
          {if $errors[e] eq 'transaction_code'}
          <li>Please enter the Transaction Code!
          {/if}
          {if $errors[e] eq 'transaction_code_confirm'}
          <li>Please check your Transaction Code!
          {/if}
          {if $errors[e] eq 'transaction_code_too_small'}
          <li>The Transaction Code you provided is too small, please enter at least {$settings.min_user_password_length}
            characters!
          {/if}
          {if $errors[e] eq 'transaction_code_vs_password'}
          <li>The Transaction Code should differ from the Password!
          {/if}
          {if $errors[e] eq 'email'}
          <li>Please enter your e-mail!
          {/if}
          {if $errors[e] eq 'email2'}
          <li>Please check your email!
          {/if}
          {if $errors[e] eq 'agree'}
          <li>You have to agree with the Terms and Conditions!
          {/if}
          {if $errors[e] eq 'turing_image'}
          <li>Enter the verification code as it is shown in the corresponding box.
          {/if}
          {if $errors[e] eq 'no_upline'}
          <li>The system requires an upline to register. {if $settings.get_rand_ref}You have to be agreed to random one or found
            a referral link in the net.{/if}
          {/if}
          {if $errors[e] eq 'ip_exists_in_database'}
          <li>Your IP already exists in our database. Sorry, but registration impossible.
          {/if}

          {if $errors[e] eq 'invalid_account_format'}
            {foreach from=$account_errors item=err}
            <li>{$err}
            {/foreach}
          {/if}

          <br>
        {/section}
    </ul>
  {/if}


  <div class="account-wrapper">
    <div class="account-body">
        <h4 class="title mb-20">Welcome To Syscoglobalfinance.com</h4>
      <form
        method=post
        onsubmit="return checkform()"
        name="regform"
        class="account-form"
      >
        <input
          type=hidden
          name=a
          value="signup"
        >
        <input
          type=hidden
          name=action
          value="signup"
        >

        <div class="form-group">
          <label for="sign-up">Your Fullname </label>
          <input
            type="text"
            placeholder="Enter Your Fullname "
            id="sign-up"
            name=fullname
            value='{$frm.fullname|escape:"quotes"}'
          >
        </div>


        {if $settings.use_user_location}
          <tr>
            <td>Your Address:</td>
            <td><input
                type=text
                name=address
                value='{$frm.address|escape:"quotes"}'
                class=inpts
                size=30
              ></td>
          </tr>
          <tr>
            <td>Your City:</td>
            <td><input
                type=text
                name=city
                value='{$frm.city|escape:"quotes"}'
                class=inpts
                size=30
              ></td>
          </tr>
          <tr>
            <td>Your State:</td>
            <td><input
                type=text
                name=state
                value='{$frm.state|escape:"quotes"}'
                class=inpts
                size=30
              ></td>
          </tr>
          <tr>
            <td>Your Zip:</td>
            <td><input
                type=text
                name=zip
                value='{$frm.zip|escape:"quotes"}'
                class=inpts
                size=30
              ></td>
          </tr>
          <tr>
            <td>Your Country:</td>
            <td>
              <select
                name=country
                class=inpts
              >
                <option value="">--SELECT--</option>
                {section name=c loop=$countries}
                  <option {if $countries[c].name eq $frm.country}selected{/if}>{$countries[c].name|escape:"quotes"}</option>
                {/section}
              </select>
            </td>
          </tr>
        {/if}

        <div class="form-group">
          <label for="sign-up">Your Username </label>
          <input
            type="text"
            placeholder="Enter Your Username "
            id="sign-up"
            name=username
              value='{$frm.username|escape:"quotes"}'
          >
        </div>

        <div class="form-group">
          <label for="sign-up">Your Password </label>
          <input
            type="password"
            placeholder="Enter Your Password "
            id="sign-up"
            name=password
            value='{$frm.password|escape:"quotes"}'
            >
        </div>

        <div class="form-group">
          <label for="sign-up">Retype Password </label>
          <input
            type="password"
            placeholder="Retype Your Password "
            id="sign-up"
            name=password2
            value='{$frm.password2|escape:"quotes"}'
            >
        </div>
        
      
        {* {if $settings.use_transaction_code}
          <tr>
            <td>Define Transaction Code:</td>
            <td><input
                type=password
                name=transaction_code
                value='{$frm.transaction_code|escape:"quotes"}'
                class=inpts
                size=30
              ></td>
          </tr>
          <tr>
            <td>Retype Transaction Code:</td>
            <td><input
                type=password
                name=transaction_code2
                value='{$frm.transaction_code2|escape:"quotes"}'
                class=inpts
                size=30
              ></td>
          </tr>
        {/if}
        {foreach from=$pay_accounts item=ps}
          <tr>
            <td>Your {$ps.name} Account:</td>
            <td><input
                type=text
                class=inpts
                size=30
                name=pay_account[{$ps.id}]
                value="{$ps.account|escape:html}"
                data-validate="{$ps.validate.func}"
                data-validate-{$ps.validate.func}="{$ps.validate[$ps.validate.func]}"
                data-validate-notice="{$ps.validate.notification|escape:html}"
                placeholder="{$ps.validate.placeholder|escape:html}"
              ></td>
          </tr>
        {/foreach}
        {foreach item=p from=$mpay_accounts}
          {foreach item=ps from=$p.accounts}
            <tr>
              <td>Your {$p.name} {$ps.name}:</td>
              <td><input
                  type=text
                  class=inpts
                  size=30
                  name="pay_account[{$p.id}][{$ps.name|escape:html}]"
                  value="{$ps.value|escape:html}"
                ></td>
            </tr>
          {/foreach}
        {/foreach} *}

        <div class="form-group">
          <label for="sign-up">Your E-mail Address </label>
          <input
            type="text"
            placeholder="Enter Your E-mail Address "
            id="sign-up"
            name=email
              value='{$frm.email|escape:"quotes"}'
            >
        </div>

        <div class="form-group">
          <label for="sign-up">Retype E-mail Address </label>
          <input
            type="text"
            placeholder="Retype Your E-mail Address "
            id="sign-up"
            name=email1
            value='{$frm.email1|escape:"quotes"}'
            >
        </div>

        {* <tr>
          <td>Secret question:</td>
          <td><input
              type=text
              name=sq
              value='{$frm.sq|escape:"quotes"}'
              class=inpts
              size=30
            ></td>
        </tr>
        <tr>
          <td>Secret answer:</td>
          <td><input
              type=text
              name=sa
              value='{$frm.sa|escape:"quotes"}'
              class=inpts
              size=30
            ></td>
        </tr> *}
        <div class="check_box_group">
          <input
            type="checkbox"
            class="fz-sm"
            id="time_zone"
            name=agree
            value=1
            {if $frm.agree}checked{/if}
          >
          <label for="time_zone"> I agree with <a href="{"?a=rules"|encurl}">Terms and conditions</a></label>
        </div>

        <div class="form-group text-center">
          <button
            type="submit"
            class="mt-2 mb-30"
          >Register</button>
          <div class="section-header">
            <span
              class="cate"
              style="color: #576288"
            >Already have an account? <a href="?a=login">Login</a></span>
          </div>
        </div>

      
        

      </form>
    </div>
  </div>
{/if}
{include file="auth_footer.tpl"}
