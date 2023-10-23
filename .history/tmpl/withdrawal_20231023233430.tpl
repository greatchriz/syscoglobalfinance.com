{include file="header.tpl"}

<div class="deposit">
  <h3 class="main-title">Withdraw Funds</h3>

 

{if $say eq 'processed'}
{if $batch eq ''}Withdrawal request has been successfully saved.{else} Withdrawal has been processed. Batch id: {$batch}{/if}
<br><br>
{/if}

{if $fatals}
  {if $fatal == 'times_limit' || $fatals.times_limit}
  <div class="msg">You can withdraw {$settings.limit_withdraw_period_times} per {$settings.limit_withdraw_period_date} only.</div>
  {/if}

{else}
{if $say eq 'ec_forbidden' || $errors.ec_forbidden}
Sorry, withdraw for this processing is temproary forbidden.<br><br>
{/if}
{if $say eq 'on_hold' || $errors.on_hold}
Sorry, this amount on hold now.<br><br>
{/if}
{if $say eq 'zero' || $errors.zero}
Sorry, you can't request a withdraw smaller than {$currency_sign}0.00 only<br><br>
{/if}
{if $say eq 'less_min' || $errors.less_min}
Sorry, you can request not less than {$currency_sign}{*$settings.min_withdrawal_amount*}{$fees.amount_min}<br><br>
{/if}
{if $say eq 'greater_max' || $errors.greater_max}
Sorry, you can request not greater than {$currency_sign}{*$settings.max_withdrawal_amount*}{$fees.amount_max}<br><br>
{/if}
{if $say eq 'daily_limit' || $errors.daily_limit}
Sorry, you have exceeded a daily limit<br><br>
{/if}
{if $say eq 'not_enought' || $errors.not_enought}
Sorry, you have requested the amount larger than the one on your balance.<br><br>
{/if}
{if $say eq 'invalid_transaction_code' || $errors.invalid_transaction_code}
You have entered the invalid transaction code.<br><br>
{/if}
{if $say eq 'invalid_tfa_code' || $errors.invalid_tfa_code}
You have entered invalid 2FA code.<br><br>
{/if}
{if $say eq 'no_deposits' || $errors.no_deposits}
You have not done any deposits yet. Withdrawal function will be available after a deposit.
<br><br>
{/if}
{if $say eq 'no_active_deposits' || $errors.no_active_deposits}
You must have active deposit to withdraw.
{/if}
{if $say eq 'no_account' || $errors.no_account}
Please, provide your aacount to withdraw funds to first <a href="{"?a=edit_account"|encurl}">here</a>.
{/if}
{if $errors.demo}
Withdraw is not available for demo account.
{/if}
{if $errors.turing_image}Invalid turing image<br><br>{/if}


{if $preview}

  {* preview withdrawal form *}
   <!-- Choose Payment  System -->
    <div class="deposit-system pt-0">
      <div class="row pb-30">
        <div class="col-12">
          <div class="earn-item mb-30">

            <form method=post>
              <input
                type=hidden
                name=a
                value=withdraw
              >
              <input
                type=hidden
                name=action
                value=withdraw
              >
              <input
                type=hidden
                name=amount
                value={$amount}
              >
              <input
                type=hidden
                name=ec
                value={$ec}
              >
              <input
                type=hidden
                name=comment
                value="{$comment|escape:html}"
              >

              <table
                cellspacing=0
                cellpadding=2
                border=0
                class="form deposit_confirm"
              >
                <tr>
                  <th>Payment System:</th>
                  <td>{$currency}</td>
                </tr>
                <tr>
                  <th>Account:</th>
                  <td>{$account}</td>
                </tr>
                <tr>
                  <th>Debit Amount:</th>
                  <td>{$currency_sign}{$amount}</td>
                </tr>
                <tr>
                  <th>Withdrawal Fee:</th>
                  <td>
                    {if $fees.fee > 0}
                      {$fees.percent}% + {$currency_sign}{$fees.add_amount} (min. {$currency_sign}{$fees.fee_min} max.
                      {if $fees.fee_max}{$currency_sign}{$fees.fee_max}{else}no{/if})
                    {else}
                      We have no fee for this operation.
                    {/if}
                  </td>
                </tr>

                {if $converted}
                  <tr>
                    <th>Credit Amount:</th>
                    <td>{$currency_sign}{$converted.amount}</td>
                  </tr>
                  <tr>
                    <th>{$converted.fiat} Amount:</th>
                    <td>{$to_withdraw}</td>
                  </tr>
                {else}
                  <tr>
                    <th>Credit Amount:</th>
                    <td>{$currency_sign}{$to_withdraw}</td>
                  </tr>
                {/if}
                {if $comment}
                  <tr>
                    <th>Note:</th>
                    <td>{$comment|escape:html}</td>
                  </tr>
                {/if}
                {if $settings.use_transaction_code && $userinfo.transaction_code}
                  <tr>
                    <th>Transaction Code:</th>
                    <td><input
                        type="password"
                        name="transaction_code"
                        class=inpts
                        size=15
                      ></td>
                  </tr>
                {/if}
                {include file="captcha.tpl" action="withdrawal"}
                {if $userinfo.tfa_settings.withdraw}
                  <tr>
                    <th>2FA Code:</th>
                    <td><input
                        type="text"
                        name="tfa_code"
                        class=inpts
                        size=15
                      > <input
                        type="hidden"
                        name="tfa_time"
                        id="tfa_time"
                      ></td>
                  </tr>
                  {literal}
                    <script language=javascript>
                      document.getElementById('tfa_time').value = (new Date()).getTime();
                    </script>
                  {/literal}
                {/if}
                <tr>
                  <td colspan=2><input
                      type=submit
                      value="Confirm"
                      class=sbmt
                    ></td>
                </tr>
              </table>
            </form>
          </div>
        </div>
      </div>
    </div>




  {* preview withdrawal form end *}


{else}

{* mainwithdrawal form *}
  <form method=post>
  <input type=hidden name=a value=withdraw>
  <input type=hidden name=action value=preview>
  <input type=hidden name=say value="">



  {* total account balance and pending withdrawals *}

    <div class="row pb-30">

      <div class="col-xl-6">
        <div class="earn-item mb-30">
          <div class="earn-thumb">
            <img
              src="./assets/images/dashboard/earn/01.png"
              alt="dashboard-earn"
            >
          </div>
          <div class="earn-content">
            <h6 class="title">Balance</h6>
            <ul class="mb--5">
              <li>
                <div class="icon">
                  <img
                    src="./assets/images/dashboard/earn/usd.png"
                    alt="dashboard-earn"
                  >
                </div>
                <div class="cont">
                  <span class="cl-1">{$currency_sign}<b>{$ab_formated.total}</b></span>
                  <span class="cl-4">Account Balance</span>
                </div>
              </li>
              <li>
                <div class="icon">
                  <img
                    src="./assets/images/dashboard/earn/usd.png"
                    alt="dashboard-earn"
                  >
                </div>
                <div class="cont">
                  <span
                    class="cl-1">{$currency_sign}<b>{if $ab_formated.withdraw_pending != 0}{$ab_formated.withdraw_pending|amount_format}{/if}</b></span>
                  <span class="cl-4">Pending Withdrawals</span>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>

    </div>

  {* total account balance and pending withdrawals end *}

  <!-- Choose Payment  System -->
    <div class="deposit-system pt-0">
      <h4 class="main-subtitle">01. Choose Withdrawal Wallet</h4>
        {* available accounts and their balances and pending funds and their wallet addresses each with radio button if there is funds in it*}
        <div class="row pb-30">
          {foreach from=$ps item=p}
            <div class="col-xl-6">
              <div class="earn-item mb-30">
                <div class="earn-thumb">
                  <img
                    src="./assets/images/dashboard/payment/{$p.id}.svg"
                    alt="dashboard-earn"
                  >
                </div>
                <div class="earn-content">
                  <div class="check_box_group pb-2 ml-4">
                    {if $p.available > 0}
                      {if $p.status > 0 || $p.available > 0}
                        <input
                          type="radio"
                          name="ec"
                          id="{$p.id}"
                          value="{$p.id}"
                          {if $frm.ec == $p.id}checked{/if}
                        >
                        <label for="{$p.id}"><b>{$p.name|escape:html}</b></label>

                      {/if}
                      
                    {else}
                      <b>{$p.name|escape:html}</b>
                    {/if}
                  </div>
                  <ul class="mb--5">
                    <li>
                      <div class="icon">
                        <img
                          src="./assets/images/dashboard/earn/usd.png"
                          alt="dashboard-earn"
                        >
                      </div>
                      <div class="cont">
                        <span class="cl-1">{$currency_sign}{$p.available}</span>
                        <span class="cl-4">Available</span>
                      </div>
                    </li>

                    {if $have_hold}
                    <li>
                      <div class="icon">
                        <img
                          src="./assets/images/dashboard/earn/usd.png"
                          alt="dashboard-earn"
                        >
                      </div>
                      <div class="cont">
                        <span class="cl-1">{$currency_sign}{$p.hold}</span>
                        <span class="cl-4">On Hold</span>
                      </div>
                    </li>
                    {/if}

                    <li>
                      <div class="icon">
                        <img
                          src="./assets/images/dashboard/earn/usd.png"
                          alt="dashboard-earn"
                        >
                      </div>
                      <div class="cont">
                        <span class="cl-1">{$currency_sign}{$p.pending}</span>
                        <span class="cl-4">Pending</span>
                      </div>
                    </li>

                    {if $p.account != ''}
                    <li>
                      <div class="icon">
                        <img
                          src="./assets/images/dashboard/earn/usd.png"
                          alt="dashboard-earn"
                        >
                      </div>
                      <div class="cont">
                        <span class="cl-1">{$p.account|escape:html}</span>
                        <span class="cl-4">Wallet Address</span>
                      </div>
                    </li>

                    {else}
                      <li>
                        <a href="{"?a=edit_account"|encurl}" class="custom-button border-0">Add Wallet</a>
                      </li>

                    {/if}
                  </ul>
                </div>
              </div>
            </div>
          {/foreach}

        </div>
        {* available accounts and their balances and pending funds and their wallet addresses end *}
    </div>

  {* amoount to withdraw and comment form *}

  {if $have_available}
    <!--  -->
    <div class="deposit-system">
      <h4 class="main-subtitle">02. Enter the amount of Withdraw</h4>
      <div class="make-deposit">
        <div class="form-group">
          <input
            type="text"
            placeholder="Enter your amount"
            class="make-amount"
            name=amount
            value="{$frm.amount|amount_format|default:"10.00"}"
          >
        </div>
        <div class="form-group">
          <button
            type="submit"
            class="custom-button border-0"
          >Request</button>
        </div>
      </div>
    </div>
  {else}
    <div class="deposit-system">
      <h4 class="main-subtitle">You have no funds to withdraw, Make a deposit to your account!</h4>
    </div>
  {/if}

  
  </form>
{* mainwithdrawal form end *}

{/if}

{/if}
</div>
{include file="footer.tpl"}
