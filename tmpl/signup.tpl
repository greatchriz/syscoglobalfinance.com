{extends file="auth/layout.tpl"}


{block name=section}

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
            alert("Please retupe your e-mail!");
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
  

    <h5 class="my-6 text-xl font-semibold">Signup</h5>
    <form
    method=post
    onsubmit="return checkform()"
    name="regform"
    class="ltr:text-left rtl:text-right"
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

        <div class="grid grid-cols-1">
            <div class="mb-4">
                <label
                    class="font-semibold"
                    for="RegisterName"
                >Your Name:</label>
                <input
                    id="RegisterName"
                    name=fullname
                    type="text"
                    class="form-input mt-3"
                    placeholder="Harry"
                >
            </div>
            <div class="mb-4">
              <label
                  class="font-semibold"
                  for="username"
              >Your Username:</label>
              <input
                  id="username"
                  name=username
                  type="text"
                  class="form-input mt-3"
                  placeholder="Harry"
              >
          </div>

          <div class="mb-4">
            <div class="flex items-center justify-between">
              <label
                class="font-semibold"
                for="LoginPassword"
              >Password: </label>
              <svg
                width="48"
                height="48"
                viewBox="0 0 24 24"
                fill="none"
                xmlns="http://www.w3.org/2000/svg"
                onclick="togglePassword()"
              >
                <g
                  id="SVGRepo_bgCarrier"
                  stroke-width="0"
                ></g>
                <g
                  id="SVGRepo_tracerCarrier"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                ></g>
                <g id="SVGRepo_iconCarrier">
                  <path
                    fill-rule="evenodd"
                    clip-rule="evenodd"
                    d="M9 4C4.58172 4 1 7.58172 1 12C1 16.4183 4.58172 20 9 20H15C19.4183 20 23 16.4183 23 12C23 7.58172 19.4183 4 15 4H9ZM3 12C3 8.68629 5.68629 6 9 6H15C18.3137 6 21 8.68629 21 12C21 15.3137 18.3137 18 15 18H9C5.68629 18 3 15.3137 3 12ZM6 12C6 10.3431 7.34315 9 9 9C10.6569 9 12 10.3431 12 12C12 13.6569 10.6569 15 9 15C7.34315 15 6 13.6569 6 12ZM9 7C6.23858 7 4 9.23858 4 12C4 14.7614 6.23858 17 9 17C11.7614 17 14 14.7614 14 12C14 9.23858 11.7614 7 9 7Z"
                    fill="#3163d8"
                  ></path>
                </g>
              </svg>

            </div>
            <input
              id="LoginPassword"
              name="password"
              type="password"
              class="form-input mt-3"
              placeholder="Password:"
            >
          </div>

          <div class="mb-4">
            <div class="flex items-center justify-between">
              <label
                class="font-semibold"
                for="password2"
              >Retype Password: </label>
              <svg
                width="48"
                height="48"
                viewBox="0 0 24 24"
                fill="none"
                xmlns="http://www.w3.org/2000/svg"
                onclick="togglePassword2()"
              >
                <g
                  id="SVGRepo_bgCarrier"
                  stroke-width="0"
                ></g>
                <g
                  id="SVGRepo_tracerCarrier"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                ></g>
                <g id="SVGRepo_iconCarrier">
                  <path
                    fill-rule="evenodd"
                    clip-rule="evenodd"
                    d="M9 4C4.58172 4 1 7.58172 1 12C1 16.4183 4.58172 20 9 20H15C19.4183 20 23 16.4183 23 12C23 7.58172 19.4183 4 15 4H9ZM3 12C3 8.68629 5.68629 6 9 6H15C18.3137 6 21 8.68629 21 12C21 15.3137 18.3137 18 15 18H9C5.68629 18 3 15.3137 3 12ZM6 12C6 10.3431 7.34315 9 9 9C10.6569 9 12 10.3431 12 12C12 13.6569 10.6569 15 9 15C7.34315 15 6 13.6569 6 12ZM9 7C6.23858 7 4 9.23858 4 12C4 14.7614 6.23858 17 9 17C11.7614 17 14 14.7614 14 12C14 9.23858 11.7614 7 9 7Z"
                    fill="#3163d8"
                  ></path>
                </g>
              </svg>

            </div>
            <input
              id="password2"
              name="password2"
              type="password"
              class="form-input mt-3"
              placeholder="Retype Password:"
            >
          </div>

            <div class="mb-4">
                <label
                    class="font-semibold"
                    for="LoginEmail"
                >Email Address:</label>
                <input
                    id="LoginEmail"
                    name=email
                    type="email"
                    class="form-input mt-3"
                    placeholder="name@example.com"
                >
            </div>

            <div class="mb-4">
                <label
                    class="font-semibold"
                    for="email1"
                >Retype Email </label>
                <input
                    id="email1"
                    name=email1
                    type="email"
                    class="form-input mt-3"
                    placeholder="name@example.com"
                >
            </div>

            <div class="mb-4">
              <label
                class="font-semibold"
                for="sq"
              >Secret question:</label>
              <input
                id="sq"
                name=sq 
                value='{$frm.sq|escape:"quotes"}'
                type="text"
                class="form-input mt-3"
              >
            </div>

            <div class="mb-4">
              <label
                class="font-semibold"
                for="sq"
              >Secret answer:</label>
              <input
                id="sq"
                name=sq 
                value='{$frm.sq|escape:"quotes"}'
                type="text"
                class="form-input mt-3"
              >
            </div>

            <div class="mb-4">
                <div class="flex items-center w-full mb-0">
                    <input
                        class="form-checkbox text-indigo-600 rounded w-4 h-4 me-2 border border-inherit"
                        type="checkbox"
                        value="1"
                        name=agree
                        id="AcceptT&C"
                        {if $frm.agree}checked{/if}
                    >
                    <label
                        class="form-check-label text-slate-400"
                        for="AcceptT&C"
                    >I Accept <a
                        href="{"?a=rules"|encurl}"
                            class="text-indigo-600"
                        >Terms And Condition</a></label>
                </div>
            </div>

            <div class="mb-4">
                <input
                    type="submit"
                    class="btn bg-indigo-600 hover:bg-indigo-700 border-indigo-600 hover:border-indigo-700 text-white rounded-md w-full"
                    value="Register"
                >
            </div>

            <div class="text-center">
                <span class="text-slate-400 me-2">Already have an account ? </span> <a
                    href="?a=login"
                    class="text-black dark:text-white font-bold inline-block"
                >Sign in</a>
            </div>
        </div>
    </form>

    {/if}
{/block}
