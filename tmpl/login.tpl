{extends file="auth/layout.tpl"}



{block name=section}

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
    <div class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded relative" role="alert">
        <strong class="font-bold">Login error!</strong>
        <span class="block sm:inline">Your login or password or turing image code is wrong. Please check this information.</span>
        {* <span class="absolute top-0 bottom-0 right-0 px-4 py-3">
          <svg class="fill-current h-6 w-6 text-red-500" role="button" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><title>Close</title><path d="M14.348 14.849a1.2 1.2 0 0 1-1.697 0L10 11.819l-2.651 3.029a1.2 1.2 0 1 1-1.697-1.697l2.758-3.15-2.759-3.152a1.2 1.2 0 1 1 1.697-1.697L10 8.183l2.651-3.031a1.2 1.2 0 1 1 1.697 1.697l-2.758 3.152 2.758 3.15a1.2 1.2 0 0 1 0 1.698z"/></svg>
        </span> *}
      </div>
    
{/if}



<h5 class="my-6 text-xl font-semibold">Login</h5>

<form class="ltr:text-left rtl:text-right" method=post name=mainform onsubmit="return checkform()">
    <input type=hidden name=a value='do_login'>
    <input type=hidden name=follow value='{$frm.follow}'>
    <input type=hidden name=follow_id value='{$frm.follow_id}'>
    <div class="grid grid-cols-1">
        <div class="mb-4">
            <label
                class="font-semibold"
                for="LoginEmail"
            >Username:</label>
            <input
                name=username 
                id="LoginEmail"
                type="text"
                class="form-input mt-3"
                placeholder="Johndoe11"
            >
        </div>

        <div class="mb-4">
            <label
                class="font-semibold"
                for="LoginPassword"
            >Password:</label>
            <input
                name=password 
                id="LoginPassword"
                type="password"
                class="form-input mt-3"
                placeholder="Password:"
            >
        </div>

        <div class="flex justify-between mb-4">
            <label
                for="RememberMe"
                class="inline-flex items-center"
            >
                <input
                    type="checkbox"
                    class="form-checkbox border dark:border-gray-700 rounded text-indigo-600"
                >
                <span class="text-slate-400 ms-2">Remember me</span>
            </label>
            <p class="text-slate-400 mb-0"><a

            href="{"?a=forgot_password"|encurl}"
                    class="text-slate-400"
                >Forgot password ?</a></p>
        </div>

        <div class="mb-4">
            <input
                type="submit"
                class="btn bg-indigo-600 hover:bg-indigo-700 border-indigo-600 hover:border-indigo-700 text-white rounded-md w-full"
                value="Login"
            >
        </div>

        <div class="text-center">
            <span class="text-slate-400 me-2">Don't have an account ?</span> <a
                href="?a=signup"
                class="text-black dark:text-white font-bold inline-block"
            >Sign Up</a>
        </div>
    </div>
</form>


{/block}