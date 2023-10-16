{include file="header.tpl"}

<h3>Ask for withdrawal:</h3><br>

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

<form method=post>
<input type=hidden name=a value=withdraw>
<input type=hidden name=action value=withdraw>
<input type=hidden name=amount value={$amount}>
<input type=hidden name=ec value={$ec}>
<input type=hidden name=comment value="{$comment|escape:html}">
<div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
    <div class="card">
<div class="card-body">
<table cellspacing=0 cellpadding=2 border=0 class="form deposit_confirm">
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
{* old
<tr>
 <th>Withdrawal Fee:</th>
 <td>
{if $settings.withdrawal_fee > 0 || $settings.withdrawal_fee_min > 0}
  {if $settings.withdrawal_fee > 0}{$settings.withdrawal_fee}%{/if} 
  {if $settings.withdrawal_fee_min > 0}min. {$currency_sign}{$settings.withdrawal_fee_min}{/if}
{else}
We have no fee for this operation.
{/if}
</td>
</tr>
*}
<tr>
 <th>Withdrawal Fee:</th>
 <td>
{if $fees.fee > 0}
  {$fees.percent}% + {$currency_sign}{$fees.add_amount} (min. {$currency_sign}{$fees.fee_min} max. {if $fees.fee_max}{$currency_sign}{$fees.fee_max}{else}no{/if})
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

{*
<tr>
 <td colspan=2>You are withdrawing <b>{$currency_sign}{$amount}</b> of {$currency}. 
{if $settings.withdrawal_fee > 0 || $settings.withdrawal_fee_min > 0} Our fee is 
{if $settings.withdrawal_fee > 0}<b>{$settings.withdrawal_fee}%</b>{/if}
{if $settings.withdrawal_fee > 0 && $settings.withdrawal_fee_min > 0} or {/if}
{if $settings.withdrawal_fee_min > 0} <b>{$currency_sign}{$settings.withdrawal_fee_min}</b>{if $settings.withdrawal_fee > 0} as a minimum{/if}{/if}
.
{else}
We have no fee for this operation. 
{/if}
</td>
</tr>
<tr>
 <td colspan=2>Actually you will acquire the total of <b>{$currency_sign}{$to_withdraw}</b> on your {$currency} account {if $account}{$account}{/if}.</td>
</tr>
*}
{if $comment}
<tr>
 <th>Note:</th>
 <td>{$comment|escape:html}</td>
</tr>
{/if}
{if $settings.use_transaction_code && $userinfo.transaction_code}
<tr>
 <th>Transaction Code:</th>
 <td><input type="password" name="transaction_code" class=inpts size=15></td>
</tr>
{/if}
{include file="captcha.tpl" action="withdrawal"}
{if $userinfo.tfa_settings.withdraw}
<tr>
 <th>2FA Code:</th>
 <td><input type="text" name="tfa_code" class=inpts size=15> <input type="hidden" name="tfa_time" id="tfa_time"></td>
</tr>
{literal}
<script language=javascript>
document.getElementById('tfa_time').value = (new Date()).getTime();
</script>
{/literal}
{/if}
<tr>
 <td colspan=2><input type=submit value="Confirm" class=sbmt></td>
</tr></table>
</div>
</div>
</div>
</form>


{else}


<form method=post>
<input type=hidden name=a value=withdraw>
<input type=hidden name=action value=preview>
<input type=hidden name=say value="">

{*
<table cellspacing=0 cellpadding=2 border=0>
<tr>
 <td>Account Balance:</td>
 <td>{$currency_sign}<b>{$ab_formated.total}</b></td>
</tr>
<tr><td>&nbsp;</td>
 <td> <small>
{section name=p loop=$ps}
   {if $ps[p].balance > 0}{$currency_sign}{$ps[p].balance} of {$ps[p].name}{if $hold[p].amount > 0} / {$currency_sign}{$hold[p].amount} on hold{/if}<br>{/if}
{/section}
 </td>
</tr>
<tr>
 <td>Pending Withdrawals: </td>
 <td>{$currency_sign}<b>{if $ab_formated.withdraw_pending != 0}{$ab_formated.withdraw_pending}{else}0.00{/if}</b></td>
</tr>

{foreach item=ps from=$pay_accounts}
<tr>
 <td>Your {$ps.name|escape:html} Account:</td>
 <td>{if $ps.account != ''}{$ps.account|escape:html}{else}<a href="{"?a=edit_account"|encurl}"><i>not set</i></a>{/if}</td>
</tr>
{/foreach}
{foreach item=p from=$mpay_accounts}
<tr>
 <td>Your {$p.name|escape:html} Account:</td>
 <td>
{foreach item=ps from=$p.accounts}
 {$ps.name|escape:html}: {if $ps.value != ''}{$ps.value|escape:html}{else}<a href="{"?a=edit_account"|encurl}"><i>not set</i></a>{/if}<br>
{/foreach}
 </td>
</tr>
{/foreach}
</table>
*}

<div class="col-12">
    <div class="card">
        <div class="card-body">
            <ul class="list-group list-group-flush">
                <li class="list-group-item d-flex px-0 justify-content-between">
                    <strong>Account Balance:</strong>
                    <span class="mb-0"><b style="color:green">{$currency_sign}<b>{$ab_formated.total}</b></span>
                </li>

                <li class="list-group-item d-flex px-0 justify-content-between">
                    <strong>Pending Withdraw:</strong>
                    {if $ab_formated.withdraw_pending != 0}
                    <span class="mb-0">
                        <b style="color:red">{$currency_sign}{$ab_formated.withdraw_pending|amount_format}</b>
                    </span>
                    {else}
                    <span class="mb-0">You have No Pending Withdrawal</span>
                    {/if}
                </li>

            </ul>

        </div>
    </div>
</div>

<div class="row">
    
    {foreach from=$ps item=p}
    <div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
    
            <div class="card">
                <div class="card-header border-0 pb-0">
                    
                    
                    {if $p.available > 0}
                        {if $p.status > 0 || $p.available > 0}
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="ec" value="{$p.id}"
                                {if $frm.ec == $p.id}checked{/if}>
                          
                                
                            </div>
                        {/if}
                    {/if}
                    
                    <h2 class="card-title"><img src="images/{$p.id}.gif" width=50 height=50 align=absmiddle> {$p.name|escape:html}</h2>
                </div>
                
                <div class="card-body pb-0">
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item d-flex px-0 justify-content-between">
                            <strong>Available Balance:</strong>
                            <span class="mb-0"><b style="color:green">{$currency_sign}{$p.available}</b></span>
                        </li>
                        
                        {if $have_hold}
                            <li class="list-group-item d-flex px-0 justify-content-between">
                                <strong>On Hold Balance:</strong>
                                <span class="mb-0"><b style="color:green">{$currency_sign}{$p.hold}</b></span>
                            </li>
                        {/if}
                        
                        <li class="list-group-item d-flex px-0 justify-content-between">
                            <strong>Pending Withdraw:</strong>
                            <span class="mb-0"><b style="color:red">{$currency_sign}{$p.pending}</b></span>
                        </li>
                        
                        <li class="list-group-item d-flex px-0 justify-content-between">
                            <strong>Wallet Address:</strong>
                            <span class="mb-0">{if $p.account != ''}{$p.account|escape:html}{else}<a href="{"?a=edit_account"|encurl}" class="btn btn-primary">Add Address</a>{/if}</span>
                        </li>
                    </ul>
                </div>
            </div>
   
        
    
</div>
{/foreach}
</div>




{if $have_available}
<div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">

    <div class="card">

        <div class="card-body">
            <div class="basic-form">
                <div class="row">
                    <div class="mb-3 col-md-6">
                        <label class="form-label">Withdrawal ({$currency_sign})</label>
                        <input 
                            type="text" 
                            class="form-control" 
                            placeholder="{$frm.amount|amount_format|default:"10.00"}"
                            name=amount
                        >
                    </div>
                    <div class="mb-3 col-md-6">
                        <label class="form-label">Comment</label>
                        <textarea name=comment class="form-control" rows="4" id="comment"></textarea>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
    <input
        type=submit
        value="Request"
        class="btn btn-primary"
    />
</div>

{else}
<br><br>
You have no funds to withdraw.
{/if}
</form>

{/if}

{/if}
{include file="footer.tpl"}
