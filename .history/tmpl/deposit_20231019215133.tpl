{include file="header.tpl"}


<div class="deposit">
  <h3 class="main-title">Make Deposits</h3>

  {if $fatal}

    {if $fatal == 'one_per_month'}
      You can deposit once a month only.
    {/if}

  {else}



    {if $frm.say eq 'deposit_success'}
      <h3>The deposit has been successfully saved.</h3>
      <br><br>
    {/if}

    {if $frm.say eq 'deposit_saved'}
      <h3>The deposit has been saved. It will become active when the administrator checks statistics.</h3><br><br>
    {/if}

    <br>
    {if $errors}
      {if $errors.less_min}
        Sorry, you can deposit not less than {$currency_sign}{$errors.less_min} with selected processing<br><br>
      {/if}
      {if $errors.greater_max}
        Sorry, you can deposit not greater than {$currency_sign}{$errors.greater_max} with selected processing<br><br>
      {/if}
      {if $errors.ec_forbidden}
        Sorry, deposit with selected processing is temproary forbidden.<br><br>
      {/if}
      {if $errors.cannot_invest_this_plan_anymore}
        Sorry, you cannot invest this plan anymore<br><br>
      {/if}
    {/if}


    <form
      method=post
      name="spendform"
    >
      <input
        type=hidden
        name=a
        value=deposit
      >
      <h4 class="main-subtitle">01. Select a Plan</h4>

      {section name=plans loop=$plans}

        <div class="deposit-wrapper">
            {if $qplans > 1}
                <div class="check_box_group">
                    <input
                        type="checkbox"
                        name=h_id
                        value='{$plans[plans].id}'
                        {if (($smarty.section.plans.first == 1) && ($frm.h_id eq '')) || ($frm.h_id == $plans[plans].id)}
                            checked
                        {/if}
                        id="checkbox"
                    >
                    <label for="checkbox">{$plans[plans].name}</label>
                </div>
            {else}
                <input
                    type=hidden
                    name=h_id
                    value='{$plans[plans].id}'
                >
            {/if}
    
            {section name=options loop=$plans[plans].plans}
    
                <div class="deposit-item">
                    <div
                        class="deposit-inner"
                        id="plan_container"
                    >
                        <div class="deposit-header">
                            <h3 class="title">{$o.percent|string_format:"%.2f"}%</h3>
                            <span><b>R.O.I</b></span>
                        </div>
                        <div class="deposit-body">
                            <div class="item">
                                <div class="item-thumb">
                                    <img
                                        src="./assets/images/offer/offer1.png"
                                        alt="offer"
                                    >
                                </div>
                                <div class="item-content">
                                    <h5 class="title">Deposit</h5>
                                    <h5 class="subtitle"><span class="min">${$o.min_deposit}</span><span class="to">to</span><span
                                            class="max"
                                        >${$o.max_deposit}</span></h5>
                                    </h5>
                                </div>
                            </div>
                            <span class="bal-shape"></span>
                            <div class="item">
                                <div class="item-thumb">
                                    <img
                                        src="./assets/images/offer/offer2.png"
                                        alt="offer"
                                    >
                                </div>
                                <div class="item-content">
                                    <h5 class="title">Terms</h5>
                                    <h5 class="subtitle">{$o.name|escape:html}</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a
                        href="#0"
                        class="select-plan"
                        id="icon"
                    ><i class="fas fa-plus"></i></a>
                </div>
    
            {/section}
    
            {literal}
                <script language=javascript>
                    const icon = document.getElementById('icon');
                    const checkbox = document.getElementById('checkbox');
                    const container = document.getElementById('plan_container');
    
                    icon.addEventListener('click', () => {
                        checkbox.checked = !checkbox.checked;
                        plan_container.classList.toggle('active');
                    });
                </script>
    
            {/literal}
    
    
        </div>
    {/section}

      <table
        cellspacing=0
        cellpadding=2
        border=0
      >
        <tr>
          <td>Your account balance ({$currency_sign}):</td>
          <td align=right>{$currency_sign}{$ab_formated.total}</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align=right>
            <small>
              {section name=p loop=$ps}
                {if $ps[p].balance > 0}{$currency_sign}{$ps[p].balance} of {$ps[p].name}
                  {if $hold[p].amount > 0} /
                  {$currency_sign}{$hold[p].amount} on hold{/if}<br>
                {/if}
              {/section}
            </small>
          </td>
        </tr>
        <tr>
          <td>Amount to Spend ({$currency_sign}):</td>
          <td align=right><input
              type=text
              name=amount
              value='{$min_deposit}'
              class=inpts
              size=15
              style="text-align:right;"
            ></td>
        </tr>
        <tr
          id="coumpond_block"
          style="display:none"
        >
          <td>Compounding(%):</td>
          <td align=right>
            <select
              name="compound"
              class=inpts
              id="compound_percents"
            ></select>
          </td>
        </tr>

        <tr>
          <td colspan=2>
            <table
              cellspacing=0
              cellpadding=2
              border=0
            >
              {section name=p loop=$ps}
                {if $ps[p].balance > 0 and $ps[p].status == 1}
                  <tr>
                    <td><input
                        type=radio
                        name=type
                        value="account_{$ps[p].id}"
                      ></td>
                    <td>Spend funds from the Account Balance {$ps[p].name}</td>
                  </tr>
                {/if}
              {/section}
              {section name=p loop=$ps}
                {if $ps[p].status}
                  <tr>
                    <td><input
                        type=radio
                        name=type
                        value="process_{$ps[p].id}"
                        {if $smarty.section.p.index == 0}checked{/if}
                      ></td>
                    <td>Spend funds from {$ps[p].name}</td>
                  </tr>
                {/if}
              {/section}
            </table>
          </td>
        </tr>
        <tr>
          <td colspan=2><input
              type=submit
              value="Spend"
              class=sbmt
            ></td>
        </tr>
      </table>
    </form>
    {literal}
      <script language=javascript>
        for (i = 0; i < document.spendform.type.length; i++) {
          if ((document.spendform.type[i].value.match(/^process_/))) {
            document.spendform.type[i].checked = true;
            break;
          }
        }
        updateCompound();
      </script>
    {/literal}

  {/if}
</div>


{include file="footer.tpl"}
