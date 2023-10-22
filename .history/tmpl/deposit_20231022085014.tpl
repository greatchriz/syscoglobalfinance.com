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
      {if $qplans > 1} <h4 class="main-subtitle">01. Select the Plan</h4>
      {/if}

      <div class="deposit-wrapper">

        {section name=plans loop=$plans}
          <div class="deposit-item">
            <div class="deposit-inner">

              {* checkbox for plan *}
              {if $qplans > 1}

                <div class="check_box_group pb-2 ml-4">
                  <input
                    type="radio"
                    name=h_id
                    id="{$plans[plans].id}"
                    value='{$plans[plans].id}'
                    {if (($smarty.section.plans.first == 1) && ($frm.h_id eq '')) || ($frm.h_id == $plans[plans].id)}
                      checked
                    {/if}
                  >
                  <label for="{$plans[plans].id}"><b>{$plans[plans].name}</b></label>
                </div>

              {else}
                <input
                  type=hidden
                  name=h_id
                  value='{$plans[plans].id}'
                >


              {/if}
              {* checkbox for plan end*}

              {* plan info *}
              {section name=options loop=$plans[plans].plans}
                <div class="deposit-header">
                  <h3 class="title">{$plans[plans].plans[options].percent}%</h3>
                  <span><b> R.0.I</b></span>
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
                      <h5 class="subtitle">
                        <span class="min">${$plans[plans].plans[options].min_deposit}</span>
                        <span class="to">to</span>
                        <span class="max">${$plans[plans].plans[options].max_deposit}</span>
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
                      <h5 class="subtitle">{$plans[plans].plans[options].name|escape:html} days</h5>
                    </div>
                  </div>
                </div>
                <a
                  href="#0"
                  class="select-plan"
                ><i class="fas fa-plus"></i></a>

              {/section}

              {* plan info end *}




            </div>
          </div>
        {/section}

      </div>

      <div class="deposit-system">
        <h4 class="main-subtitle">02. Choose Payment System</h4>

        <div class="tab faq-tab">
          <ul class="tab-menu">
            <li id="account-balance-button">Account Balance</li>
            <li
              id="external-wallet-button"
              class="active"
            >External Wallet</li>
          </ul>
        </div>


        <div id="accountBalanceCodeBlock">
          <h4 class="main-subtitle">Account Balance</h4>
          <div class="text-center deposit-method-slider owl-theme owl-carousel">


            {section name=p loop=$ps}
              {if $ps[p].balance > 0 and $ps[p].status == 1}
                <a
                  href="#0"
                  class="deposit-method-item p-3"
                >
                  <input
                    type="radio"
                    id="checkbox-{$ps[p].id}"
                    name=type
                    value="account_{$ps[p].id}"
                    hidden
                  >

                  <div class="thumb p-3">
                    <div class="check">
                      <img
                        src="./assets/images/dashboard/payment/check.png"
                        alt="payment"
                      >
                    </div>
                    <img
                      src="./assets/images/dashboard/payment/{$ps[p].id}.svg"
                      alt="payment"
                    >

                    <span
                      class="cl-1"
                      style="font-size: 12px;font-weight:bold;color: #3b465e; display: inline-block; text-align: start; overflow: hidden; text-overflow: ellipsis; width: 80px;"
                    >
                      {$ps[p].name}</span>
                  </div>

                </a>
              {/if}
            {/section}
          </div>
        </div>

        <div id="externalWalletCodeBlock">
          <h4 class="main-subtitle">External Wallet</h4>

          <div class="text-center deposit-method-slider owl-theme owl-carousel">

            {section name=p loop=$ps}
              {if $ps[p].status} <a
                  href="#0"
                  class="deposit-method-item p-3"
                >
                  <input
                    type="radio"
                    id="checkbox-{$ps[p].id}"
                    name=type
                    value="process_{$ps[p].id}"
                    hidden
                  >
                  <div class="thumb p-3">
                    <div class="check">
                      <img
                        src="./assets/images/dashboard/payment/check.png"
                        alt="payment"
                      >
                    </div>
                    <img
                      src="./assets/images/dashboard/payment/{$ps[p].id}.svg"
                      alt="payment"
                    >
                    <span
                      class="cl-1"
                      style="font-size: 12px;font-weight:bold;color: #3b465e; display: inline-block; text-align: start; overflow: hidden; text-overflow: ellipsis; width: 80px;"
                    >
                      {$ps[p].name}</span>

                  </div>
                </a>

              {/if}
            {/section}
          </div>
        </div>


      </div>

      {literal}

        <script>
          const checkboxes = document.querySelectorAll('.deposit-method-item');

          checkboxes.forEach(depositMethodItem => {
            depositMethodItem.addEventListener('click', () => {
              event.preventDefault();
              const radio = depositMethodItem.querySelector('input[type="radio"]');
              radio.checked = true;

              checkboxes.forEach(depositMethodItem => {
                depositMethodItem.classList.remove('active');
              });
    
              depositMethodItem.classList.add('active');
            });
          });
        </script>
            
        <script>
          document.getElementById("accountBalanceCodeBlock").style.display = "none";
          document.getElementById("externalWalletCodeBlock").style.display = "none";
        
          document.getElementById("account-balance-button").addEventListener("click", function() {
            document.getElementById("accountBalanceCodeBlock").style.display = "block";
            document.getElementById("externalWalletCodeBlock").style.display = "none";
          });
        
          document.getElementById("external-wallet-button").addEventListener("click", function() {
            document.getElementById("accountBalanceCodeBlock").style.display = "none";
            document.getElementById("externalWalletCodeBlock").style.display = "block";
          });
        </script>

      {/literal}

      
      <div class="deposit-system ">
        <h4 class="main-subtitle">03. Enter the amount of Deposit:</h4>
        <div class="form-group">
          <input
            type="text"
            placeholder="Enter your amount"
            class="make-amount"
            name=amount
            value='{$min_deposit}'
          >
        </div>

        <div class="form-group w-25">
          <button
            type="submit"
            class="custom-button border-0"
          >Spend</button>
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
</div>


{include file="footer.tpl"}