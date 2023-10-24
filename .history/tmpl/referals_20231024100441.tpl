{include file="header.tpl"}

<div class="partners">
  <h3 class="main-title">Referrals</h3>
  <div class="referral-group">
      <div class="refers">
          <div class="referral-links">
              <div class="oh">
                  <div class="referral-left">
                      <span class="left-icon">
                          <i class="fas fa-link"></i>
                      </span>
                      <h6>Referral Link:</h6>
                      <div class="copy-button">
                          <a href="#0" class="custom-button" id="copy">Copy Link</a>
                      </div>
                      <input type="text" id="copyLinks" readonly value="https://syscoglobalfinance.com/?ref={$userinfo.username}">
                  </div>
              </div>
          </div>
      </div>
  </div>
  <div class="row mb-30-none">
    <div class="col-lg-6">
      <div class="earn-item mb-30">
        <div class="earn-thumb">
          <img
            src="./assets/images/dashboard/earn/08.png"
            alt="dashboard-earn"
          >
        </div>
        <div class="earn-content">
          <h6 class="title">Number of referrals</h6>
          <div class="click-number">
            {$total_ref}
          </div>
        </div>
      </div>
    </div>
    <div class="col-lg-6">
      <div class="earn-item mb-30">
        <div class="earn-thumb">
          <img
            src="./assets/images/dashboard/earn/08.png"
            alt="dashboard-earn"
          >
        </div>
        <div class="earn-content">
          <h6 class="title">Number of Active referrals</h6>
          <div class="click-number">
            {$active_ref}
          </div>
        </div>
      </div>
    </div>
    <div class="col-lg-6">
      <div class="earn-item mb-30">
        <div class="earn-thumb">
          <img
            src="./assets/images/dashboard/earn/08.png"
            alt="dashboard-earn"
          >
        </div>
        <div class="earn-content">
          <h6 class="title">Total referral commission</h6>
          <div class="click-number">
            {$currency_sign}{$commissions}
          </div>
        </div>
      </div>
    </div>
    {if $upline.email != ""}
    <div class="col-lg-6">
      <div class="earn-item mb-30">
        <div class="earn-thumb">
          <img
            src="./assets/images/dashboard/earn/08.png"
            alt="dashboard-earn"
          >
        </div>
        <div class="earn-content">
          <h6 class="title">Your upline</h6>
          <div class="click-number">
            {$upline.name}
          </div>
        </div>
      </div>
    </div>
    {/if}
  </div>
</div>


{if $settings.show_refstat}

  <h3>Referral ins/signups</h3><br>

    <table class="transaction-table">
      <thead>
          <tr>
              <th>DATE AND TIME</th>
              <th>Ins</th>
              <th>Signups</th>
          </tr>
      </thead>
      <tbody>
        {if $show_refstat}
          {section name=s loop=$refstat}
            <tr>
              <td>
                <i class="far fa-calendar"></i>{$refstat[s].date}
              </td>
              <td>
                {$refstat[s].income}
              </td>
              <td>
                {$refstat[s].reg}
              </td>
            </tr>
          {/section}
        {else}
          <tr>
            <td>
              No statistics found for this period.
            </td>
          </tr>
        {/if}


      </tbody>
    </table>


  <table
    width=300
    celspacing=1
    cellpadding=1
    border=0
  >
    <tr>
      <td class=inheader>Date</td>
      <td class=inheader>Ins</td>
      <td class=inheader>Signups</td>
    </tr>
    {if $show_refstat}
      {section name=s loop=$refstat}
        <tr>
          <td
            class=item
            align=center
          ><b>{$refstat[s].date}</b></td>
          <td
            class=item
            align=right
          >{$refstat[s].income}</td>
          <td
            class=item
            align=right
          >{$refstat[s].reg}</td>
        </tr>
      {/section}
    {else}
      <tr>
        <td
          class=item
          align=center
          colspan=3
        >No statistics found for this period.</td>
      </tr>
    {/if}
  </table><br>
{/if}


{if $settings.show_referals}
{if $show_referals}
<h3>Your referrals:</h3>
<table cellspacing=1 cellpadding=1 border=0>
<tr>
 <td class=inheader>Nickname</td>
 <td class=inheader>E-mail</td>
 <td class=inheader>Status</td>
</tr>
{section name=s loop=$referals}
<tr>
 <td class=item><b>{$referals[s].username}</b></td>
 <td class=item><a href=mailto:{$referals[s].email}>{$referals[s].email}</a></td>
 <td class=item>{if $referals[s].q_deposits > 0}Deposited{else}No deposit yet{/if}</td>
</tr>
{if $referals[s].ref_stats}
<tr>
 <td colspan=3>
  User referrals:
  {section name=l loop=$referals[s].ref_stats}
   <nobr>{$referals[s].ref_stats[l].cnt_active} active of {$referals[s].ref_stats[l].cnt} on level {$referals[s].ref_stats[l].level}{if !$smarty.section.l.last};{/if}</nobr>
  {/section}
 </td>
</tr>
{/if}
{if $referals[s].came_from}
<tr><td colspan=3>
<a href="{$referals[s].came_from}" target=_blank>[User came from]</a>
</td></tr>
{/if}
{/section}
<tr>
 <td colspan=3>&nbsp;</td>
</tr>
<tr>
 <td colspan=3><b>2-10 level referrals:</b> {$cnt_other}</td>
</tr>
<tr>
 <td colspan=3><b>2-10 level active referrals:</b> {$cnt_other_active}</td>
</tr>
</table>
{/if}
{/if}


{include file="footer.tpl"}
