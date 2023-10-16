{include file="header.tpl"}


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

  <h3>Make a Deposit:</h3>
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


        <form method=post name="spendform">
    <input type=hidden name=a value=deposit>
    {if $qplans > 1} Select a plan:<br>{/if}
    
    <div class="row">            
        {section name=plans loop=$plans}
        <div class="col-xl-4 col-lg-12 col-sm-12">
            <div class="card">
                    <div class="card-header border-0 pb-0">
                          
                        
                    {if $qplans > 1}
                        <div class="form-check">
                        <input class="form-check-input" type="radio" name=h_id value='{$plans[plans].id}'
                        {if (($smarty.section.plans.first == 1) && ($frm.h_id eq '')) || ($frm.h_id == $plans[plans].id)} checked{/if}>
                  
                          <label class="form-check-label">
                           {$plans[plans].name}
                        </label>
                    </div>
                    {else}
                      <input type=hidden name=h_id value='{$plans[plans].id}'>
                    {/if}
        
                    
                    </div>
                    <div class="card-body pb-0">
                      {section name=options loop=$plans[plans].plans}
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item d-flex px-0 justify-content-between">
                                <strong>Plan</strong>
                                <span class="mb-0">{$plans[plans].plans[options].name|escape:html}</span>
                            </li>
                            
                            <li class="list-group-item d-flex px-0 justify-content-between">
                                <strong>Spent Amount ({$currency_sign})</strong>
                                <span class="mb-0">{$plans[plans].plans[options].deposit}</span>
                            </li>
                            <li class="list-group-item d-flex px-0 justify-content-between">
                                <strong>{$plans[plans].period} Profit (%)</strong>
                                <span class="mb-0">{$plans[plans].plans[options].percent}</span>
                            </li>

                            <li class="list-group-item d-flex px-0 justify-content-between">
                              <strong>Duration</strong>
                              <span class="mb-0">{$plans[plans].plans[options].description}</span>
                          </li>
                            
                            <li class="list-group-item d-flex px-0 justify-content-between">
                                <strong>Referral Bonus</strong>
                                <span class="mb-0">10% on First Deposit</span>
                            </li>
                         
                        </ul>
                      {/section}
                  </div>
        
              </div>
        </div>
          <script>
            cps[{$plans[plans].id}] = {$plans[plans].compound_percents_json};
          </script>
        {/section}
    </div>

    <div class="row"> 
    
    <div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6" hieght="100px">
        <div class="widget-stat card">
            <div class="card-body p-4">
                <div class="media ai-icon">
                    <span class="me-3 bgl-primary text-primary">
                        <!-- <i class="ti-user"></i> -->
                        <svg id="icon-customers" xmlns="http://www.w3.org/2000/svg" width="30"
                            height="30" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                            stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                            class="feather feather-user">
                            <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                            <circle cx="12" cy="7" r="4"></circle>
                        </svg>
                    </span>
                    <div class="media-body">
                        <p class="mb-1">Your account balance ({$currency_sign}):</p>
                        <h4 class="mb-0">{$currency_sign}{$ab_formated.total}</h4>
                        <small>
                            {section name=p loop=$ps}
                              {if $ps[p].balance > 0}{$currency_sign}{$ps[p].balance} of {$ps[p].name}
                                {if $hold[p].amount > 0} /
                                {$currency_sign}{$hold[p].amount} on hold{/if}<br>
                              {/if}
                            {/section}
                         </small>
                        <!--<span class="badge badge-primary">+3.5%</span>-->
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6" hieght="100px">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Amount to Spend ({$currency_sign}):</h4>
            </div>
            <div class="card-body">
                <div class="basic-form">
                        <div class="mb-3">
                            <input type="text" name=amount value='{$min_deposit}' class="form-control input-default "
                                placeholder="Amount to Deposit">
                        </div>
                        
                </div>
            </div>
        </div>
    </div>
    
    <div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
        <div class="card border-0 pb-0">
            <div class="card-header border-0 pb-0">
                <h4 class="card-title">Payment Method</h4>
            </div>
            <div class="card-body">
                <div id="DZ_W_Todo4" class="widget-media">
                    <ul class="timeline">
                    {section name=p loop=$ps}
                      {if $ps[p].balance > 0 and $ps[p].status == 1}
                        <li>
                            <div class="timeline-panel">
                                <div class="form-check custom-checkbox mb-3 check-xs">
                                    <input type="radio" name=type value="account_{$ps[p].id}" class="form-check-input"
                                        id="account_{$ps[p].id}">
                                    <label class="form-check-label" for="account_{$ps[p].id}">Spend funds from the Account Balance {$ps[p].name}</label>
                                </div>
                            </div>
                        </li>
                      {/if}
                    {/section}
                    
                    
              
                    {section name=p loop=$ps}
                      {if $ps[p].status}
                        <li>
                          <div class="timeline-panel">

                            <div class="form-check">
                              <input
                                class="form-check-input"
                                type="radio"
                                name=type
                                value="process_{$ps[p].id}"
                                {if $smarty.section.p.index == 0}checked{/if}
                                id="process_{$ps[p].id}"
                              >

                              <label
                                class="form-check-label"
                                for="process_{$ps[p].id}"
                              >Spend funds from {$ps[p].name}</label>
                            </div>

                          </div>
                        </li>
                      {/if}

                    {/section}
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="col-12 mb-3">
      <div class="card border-0 pb-0 d-flex justify-content-end">
        <input type=submit value="Spend" class="btn btn-primary">
      </div>
    </div>
  
    
    </div>
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

{include file="footer.tpl"}