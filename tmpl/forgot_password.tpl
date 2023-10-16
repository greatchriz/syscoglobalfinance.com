{extends file="auth/layout.tpl"}

{block name=section}
    {literal}
        <script language=javascript>
            function checkform() {
                if (document.forgotform.email.value == '') {
                    alert("Please type your username or email!");
                    document.forgotform.email.focus();
                    return false;
                }
                return true;
            }
        </script>
    {/literal}

    {if $found_records == 2}
        <p> Your accound was found. Please check your e-mail address and follow confirm URL to reset your password.</p>
    {else}

        {if $found_records == 0}
            <p> No accounts found for provided info. </p>
        {elseif $found_records == 1}
            <p> Request was confirmed. Login and password was sent to your email address. </p>
        {/if}

        <h5 class="my-6 text-xl font-semibold">Reset Your Password</h5>
        <div class="grid grid-cols-1">
            <p class="text-slate-400 mb-6">Please enter your email address. You will receive a link to create a new password via
                email.</p>
            <form
                class="ltr:text-left rtl:text-right"
                method=post
                name=forgotform
                onsubmit="return checkform();"
            >
                <input
                    type=hidden
                    name=a
                    value="forgot_password"
                >
                <input
                    type=hidden
                    name=action
                    value="forgot_password"
                >
                <div class="grid grid-cols-1">
                    <div class="mb-4">
                        <label
                            class="font-semibold"
                            for="LoginEmail"
                        >Email Address:</label>
                        <input
                            name='email'
                            value="{$frm.email|escape:htmlall}"
                            id="LoginEmail"
                            type="email"
                            class="form-input mt-3"
                            placeholder="name@example.com"
                        >
                    </div>

                    <div class="mb-4">
                        <input
                            type="submit"
                            class="btn bg-indigo-600 hover:bg-indigo-700 border-indigo-600 hover:border-indigo-700 text-white rounded-md w-full"
                            value="Forgot"
                        >
                    </div>

                    <div class="text-center">
                        <span class="text-slate-400 me-2">Remember your password ? </span><a
                            href="?a=login"
                            class="text-black dark:text-white font-bold inline-block"
                        >Sign in</a>
                    </div>
                </div>
            </form>
        </div>
    {/if}
{/block}
