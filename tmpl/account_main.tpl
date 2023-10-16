{include file="header.tpl"}

{literal}
<script>
	function copyText() {
	  // Get the text field
	  var copyText = document.getElementById("refLink");
	
	  // Select the text field
	  copyText.select();
	  copyText.setSelectionRange(0, 99999); // For mobile devices
	
	  // Copy the text inside the text field
	  navigator.clipboard.writeText(copyText.value);
	  
	  // Alert the copied text
	  alert("Copied the text: " + copyText.value);
	}
	</script>
{/literal}

{literal}
  <style>
    .widget-stat .media {
      padding: 0px 0;
      align-items: center;
    }

    .widget-stat .media>span {
      height: 85px;
      width: 85px;
      border-radius: 50px;
      padding: 10px 12px;
      font-size: 32px;
      display: flex;
      justify-content: center;
      align-items: center;
      color: #464a53;
    }

    @media only screen and (max-width: 1400px) {
      .widget-stat .media>span {
        height: 70px;
        width: 70px;
        min-width: 70px;
      }
    }

    .widget-stat .media .media-body p {
      font-weight: 500;
      font-size: 16px;
      line-height: 1.5;
    }

    @media only screen and (max-width: 1400px) {
      .widget-stat .media .media-body p {
        font-size: 14px;
      }
    }

    [data-theme-version="dark"] .widget-stat .media .media-body p {
      color: #c4c9d5;
    }

    .widget-stat .media .media-body small,
    .widget-stat .media .media-body .small,
    .widget-stat .media .media-body .small {
      font-size: 75%;
    }

    .widget-stat .media .media-body h3,
    .widget-stat .media .media-body .h3 {
      font-size: 30px;
      font-weight: 600;
      margin: 0;
      line-height: 1.2;
    }

    .widget-stat .media .media-body h4,
    .widget-stat .media .media-body .h4 {
      font-size: 24px;
      display: inline-block;
      vertical-align: middle;
    }

    .widget-stat .media .media-body span {
      margin-left: 5px;
    }

    .widget-stat[class*="bg-"] .media>span {
      background-color: rgba(255, 255, 255, 0.25);
      color: #fff;
    }

    .widget-stat[class*="bg-"] .progress {
      background-color: rgba(255, 255, 255, 0.25) !important;
    }

    [direction="rtl"] .widget-stat .media .media-body span {
      margin-left: 0;
      margin-right: 10px;
    }
  </style>
{/literal}
{* User Name *}
<div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
  <div class="widget-stat card">
    <div class="card-body p-4">
      <div class="media ai-icon">
        <span class="me-3 bgl-primary text-primary">
          <!-- <i class="ti-user"></i> -->
          <svg width="50px" height="50px" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" fill="#000000"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <title></title> <g id="Complete"> <g id="user"> <g> <path d="M20,21V19a4,4,0,0,0-4-4H8a4,4,0,0,0-4,4v2" fill="none" stroke="#6418C3" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"></path> <circle cx="12" cy="7" fill="none" r="4" stroke="#6418C3" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"></circle> </g> </g> </g> </g></svg>
        </span>
        <div class="media-body">
          <p class="mb-1">User:</p>
          <h4 class="mb-0">{$userinfo.username}</h4>
          <!--<span class="badge badge-primary">+3.5%</span>-->
        </div>
      </div>
    </div>
  </div>
</div>
{* User Name *}

{* account Balance *}
<div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
  <div class="widget-stat card">
    <div class="card-body p-4">
      <div class="media ai-icon">

        <span class="me-3 bgl-primary text-primary">
          <!-- <i class="ti-user"></i> -->
          <svg fill="#6418C3" width="50px" height="50px" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <g data-name="14. Briefcase" id="_14._Briefcase"> <path d="M29,4H22V3a3,3,0,0,0-3-3H13a3,3,0,0,0-3,3V4H3A3,3,0,0,0,0,7v8a1,1,0,0,0,.74,1L1,16v9a3,3,0,0,0,3,3H8a10,10,0,0,0,16,0h4a3,3,0,0,0,3-3V16l.26-.06A1,1,0,0,0,32,15V7A3,3,0,0,0,29,4ZM12,3a1,1,0,0,1,1-1h6a1,1,0,0,1,1,1V4H12ZM2,7A1,1,0,0,1,3,6H29a1,1,0,0,1,1,1v7.23l-6.12,1.63a10,10,0,0,0-15.76,0L2,14.23ZM4,26a1,1,0,0,1-1-1V16.57l4,1.06A9.91,9.91,0,0,0,6.84,26Zm12,4a8,8,0,1,1,8-8A8,8,0,0,1,16,30Zm13-5a1,1,0,0,1-1,1H25.16A9.91,9.91,0,0,0,25,17.63l4-1.06Z"></path> <path d="M16,19h2a1,1,0,0,0,0-2H17a1,1,0,0,0-2,0v.18A3,3,0,0,0,16,23a1,1,0,0,1,0,2H14a1,1,0,0,0,0,2h1a1,1,0,0,0,2,0v-.18A3,3,0,0,0,16,21a1,1,0,0,1,0-2Z"></path> </g> </g></svg>

        </span>
        <div class="media-body">
          <p class="mb-1">Account Balance:</p>

          <h4 class="mb-0">{$currency_sign}{$ab_formated.total}</h4>
          <!--<span class="badge badge-primary">+3.5%</span>-->
        </div>
      </div>
    </div>
  </div>
</div>
{* account Balance *}

{* Earned Total *}
<div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
  <div class="widget-stat card">
    <div class="card-body p-4">
      <div class="media ai-icon">
        <span class="me-3 bgl-primary text-primary">
          <svg fill="#6418C3" width="50px" height="50px" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" stroke="#6418C3"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <g data-name="1. Money" id="_1._Money"> <path d="M30,9.18V8a3,3,0,0,0-3-3H22.16a18.57,18.57,0,0,1-5.85-1A20.43,20.43,0,0,0,9.84,3H5A3,3,0,0,0,2,6V7.18A3,3,0,0,0,0,10V24a3,3,0,0,0,3,3H9.84a18.41,18.41,0,0,1,5.84.95A20.45,20.45,0,0,0,22.16,29H29a3,3,0,0,0,3-3V12A3,3,0,0,0,30,9.18ZM5,5H9.84a18.57,18.57,0,0,1,5.85,1,20.43,20.43,0,0,0,6.47,1H27a1,1,0,0,1,1,1V9H22.16a18.41,18.41,0,0,1-5.84-.95A20.45,20.45,0,0,0,9.84,7H4V6A1,1,0,0,1,5,5ZM30,26a1,1,0,0,1-1,1H22.16a18.41,18.41,0,0,1-5.84-.95A20.45,20.45,0,0,0,9.84,25H3a1,1,0,0,1-1-1V10A1,1,0,0,1,3,9H9.84a18.41,18.41,0,0,1,5.84.95A20.45,20.45,0,0,0,22.16,11H29a1,1,0,0,1,1,1Z"></path> <path d="M16,15h2a1,1,0,0,0,0-2H17a1,1,0,0,0-2,0v.18A3,3,0,0,0,16,19a1,1,0,0,1,0,2H14a1,1,0,0,0,0,2h1a1,1,0,0,0,2,0v-.18A3,3,0,0,0,16,17a1,1,0,0,1,0-2Z"></path> <path d="M8,16H6a1,1,0,0,0,0,2H8a1,1,0,0,0,0-2Z"></path> <path d="M26,18H24a1,1,0,0,0,0,2h2a1,1,0,0,0,0-2Z"></path> </g> </g></svg>
        </span>
        <div class="media-body">
          <p class="mb-1">Earned Total:</p>
          <h4 class="mb-0">{$currency_sign}{$ab_formated.earning}</h4>
          <!--<span class="badge badge-primary">+3.5%</span>-->
        </div>
      </div>
    </div>
  </div>
</div>
{* Earned Total *}

{* Active Deposit *}
<div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
  <div class="widget-stat card">
    <div class="card-body p-4">
      <div class="media ai-icon">
        <span class="me-3 bgl-primary text-primary">
          <!-- <i class="ti-user"></i> -->
          <svg fill="#6418C3" width="50px" height="50px" viewBox="-3.2 -3.2 38.40 38.40" xmlns="http://www.w3.org/2000/svg" stroke="#6418C3"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <g data-name="11. Phone" id="_11._Phone"> <path d="M14,6a1,1,0,0,0,0-2H8A1,1,0,0,0,8,6Z"></path> <path d="M21,8.84v-4A4.8,4.8,0,0,0,16.21,0H5.79A4.8,4.8,0,0,0,1,4.79V27.21A4.8,4.8,0,0,0,5.79,32H16.21A4.8,4.8,0,0,0,21,27.21v-.05A10,10,0,0,0,21,8.84ZM16.21,30H5.79A2.79,2.79,0,0,1,3,27.21V4.79A2.79,2.79,0,0,1,5.79,2H16.21A2.79,2.79,0,0,1,19,4.79V8.2A10.2,10.2,0,0,0,17,8a9.92,9.92,0,0,0-7,2.89V10a1,1,0,0,0-2,0V26a1,1,0,0,0,2,0v-.89A9.92,9.92,0,0,0,17,28a10.19,10.19,0,0,0,1.93-.19A2.79,2.79,0,0,1,16.21,30ZM17,26a8,8,0,0,1-7-4.14V14.14A8,8,0,1,1,17,26Z"></path> <path d="M17,15h2a1,1,0,0,0,0-2H18a1,1,0,0,0-2,0v.18A3,3,0,0,0,17,19a1,1,0,0,1,0,2H15a1,1,0,0,0,0,2h1a1,1,0,0,0,2,0v-.18A3,3,0,0,0,17,17a1,1,0,0,1,0-2Z"></path> <path d="M30,5H27.41l.3-.29a1,1,0,1,0-1.42-1.42l-2,2a1,1,0,0,0,0,1.42l2,2a1,1,0,0,0,1.42,0,1,1,0,0,0,0-1.42L27.41,7H30a1,1,0,0,0,0-2Z"></path> </g> </g></svg>
        </span>
        <div class="media-body">
          <p class="mb-1">Active Deposit:</p>
          <h4 class="mb-0">{$currency_sign}{$ab_formated.active_deposit}</h4>
          <!--<span class="badge badge-primary">+3.5%</span>-->
        </div>
      </div>
    </div>
  </div>
</div>
{* Active Deposit *}

{* Referral Link *}
<div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
  <div class="widget-stat card">
    <div class="card-body p-4">
      <div class="media ai-icon">
        <span class="me-3 bgl-primary text-primary">
          <svg fill="#6418C3" width="50px" height="50px" viewBox="-2.4 -2.4 28.80 28.80" xmlns="http://www.w3.org/2000/svg" stroke="#6418C3"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round" stroke="#CCCCCC" stroke-width="0.144"></g><g id="SVGRepo_iconCarrier"><path d="M20,18a1,1,0,0,0,1-1V13a1,1,0,0,0-1-1H13V9.858a4,4,0,1,0-2,0V12H4a1,1,0,0,0-1,1v4a1,1,0,0,0,2,0V14h6v3a1,1,0,0,0,2,0V14h6v3A1,1,0,0,0,20,18ZM12,8a2,2,0,1,1,2-2A2,2,0,0,1,12,8ZM23,21a1,1,0,0,1-1,1H18a1,1,0,0,1,0-2h4A1,1,0,0,1,23,21ZM1,21a1,1,0,0,1,1-1H6a1,1,0,0,1,0,2H2A1,1,0,0,1,1,21Zm13-1a1,1,0,0,1,0,2H10a1,1,0,0,1,0-2Z"></path></g></svg>
        </span>
        <div class="media-body">
          <p class="mb-1 mx-2">Referral Link:</p>
          <div class="input-group mb-3"> <input
              type="text"
              class="form-control mx-2"
              value="{$settings.site_url}/?ref={$userinfo.username}"
              disabled=""
              id="refLink"
            >
            <svg
              width="40px"
              height="40px"
              viewBox="0 0 24 24"
              fill="none"
              xmlns="http://www.w3.org/2000/svg"
              onclick="copyText()"
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
                  d="M17.5 14H19C20.1046 14 21 13.1046 21 12V5C21 3.89543 20.1046 3 19 3H12C10.8954 3 10 3.89543 10 5V6.5M5 10H12C13.1046 10 14 10.8954 14 12V19C14 20.1046 13.1046 21 12 21H5C3.89543 21 3 20.1046 3 19V12C3 10.8954 3.89543 10 5 10Z"
                  stroke="#6418C3"
                  stroke-width="1.5"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                ></path>
              </g>
            </svg>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
{* Referral Link *}

{* Withdrew Total *}
<div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
  <div class="widget-stat card">
    <div class="card-body p-4">
      <div class="media ai-icon">
        <span class="me-3 bgl-primary text-primary">
          <!-- <i class="ti-user"></i> -->
          <svg fill="#6418C3" width="50px" height="50px" viewBox="-2.4 -2.4 28.80 28.80" xmlns="http://www.w3.org/2000/svg" stroke="#6418C3" stroke-width="0.00024000000000000003"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round" stroke="#CCCCCC" stroke-width="0.048"></g><g id="SVGRepo_iconCarrier"><path d="M12,12a3,3,0,1,0,3,3A3,3,0,0,0,12,12Zm0,4a1,1,0,1,1,1-1A1,1,0,0,1,12,16Zm-.71-6.29a1,1,0,0,0,.33.21.94.94,0,0,0,.76,0,1,1,0,0,0,.33-.21L15,7.46A1,1,0,1,0,13.54,6L13,6.59V3a1,1,0,0,0-2,0V6.59L10.46,6A1,1,0,0,0,9,7.46ZM19,15a1,1,0,1,0-1,1A1,1,0,0,0,19,15Zm1-7H17a1,1,0,0,0,0,2h3a1,1,0,0,1,1,1v8a1,1,0,0,1-1,1H4a1,1,0,0,1-1-1V11a1,1,0,0,1,1-1H7A1,1,0,0,0,7,8H4a3,3,0,0,0-3,3v8a3,3,0,0,0,3,3H20a3,3,0,0,0,3-3V11A3,3,0,0,0,20,8ZM5,15a1,1,0,1,0,1-1A1,1,0,0,0,5,15Z"></path></g></svg>
        </span>
        <div class="media-body">
          <p class="mb-1">Withdrew Total:</p>
          <h4 class="mb-0">{$currency_sign}{$ab_formated.withdrawal}</h4>
          <!--<span class="badge badge-primary">+3.5%</span>-->
        </div>
      </div>
    </div>
  </div>
</div>
{* Withdrew Total *}

{* Pending withdrawal *}
<div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
  <div class="widget-stat card">
    <div class="card-body p-4">
      <div class="media ai-icon">
        <span class="me-3 bgl-primary text-primary">
          <svg fill="#6418C3" width="50px" height="50px" viewBox="-2.4 -2.4 28.80 28.80" xmlns="http://www.w3.org/2000/svg" stroke="#6418C3" stroke-width="0.00024000000000000003"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round" stroke="#CCCCCC" stroke-width="0.048"></g><g id="SVGRepo_iconCarrier"><path d="M12,12a3,3,0,1,0,3,3A3,3,0,0,0,12,12Zm0,4a1,1,0,1,1,1-1A1,1,0,0,1,12,16Zm-.71-6.29a1,1,0,0,0,.33.21.94.94,0,0,0,.76,0,1,1,0,0,0,.33-.21L15,7.46A1,1,0,1,0,13.54,6L13,6.59V3a1,1,0,0,0-2,0V6.59L10.46,6A1,1,0,0,0,9,7.46ZM19,15a1,1,0,1,0-1,1A1,1,0,0,0,19,15Zm1-7H17a1,1,0,0,0,0,2h3a1,1,0,0,1,1,1v8a1,1,0,0,1-1,1H4a1,1,0,0,1-1-1V11a1,1,0,0,1,1-1H7A1,1,0,0,0,7,8H4a3,3,0,0,0-3,3v8a3,3,0,0,0,3,3H20a3,3,0,0,0,3-3V11A3,3,0,0,0,20,8ZM5,15a1,1,0,1,0,1-1A1,1,0,0,0,5,15Z"></path></g></svg>
        </span>
        <div class="media-body">
          <p class="mb-1">Pending Withdrawal:</p>
          <h4 class="mb-0">{$currency_sign}{$ab_formated.withdraw_pending}</h4>
          <!--<span class="badge badge-primary">+3.5%</span>-->
        </div>
      </div>
    </div>
  </div>
</div>
{* Pending withdrawal *}

{* Last Deposit *}
{if $last_deposit}
  <div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
    <div class="widget-stat card">
      <div class="card-body p-4">
        <div class="media ai-icon">
          <span class="me-3 bgl-primary text-primary">
            <!-- <i class="ti-user"></i> -->
            <svg fill="#6418C3" width="50px" height="50px" viewBox="-3.2 -3.2 38.40 38.40" xmlns="http://www.w3.org/2000/svg" stroke="#6418C3"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <g data-name="11. Phone" id="_11._Phone"> <path d="M14,6a1,1,0,0,0,0-2H8A1,1,0,0,0,8,6Z"></path> <path d="M21,8.84v-4A4.8,4.8,0,0,0,16.21,0H5.79A4.8,4.8,0,0,0,1,4.79V27.21A4.8,4.8,0,0,0,5.79,32H16.21A4.8,4.8,0,0,0,21,27.21v-.05A10,10,0,0,0,21,8.84ZM16.21,30H5.79A2.79,2.79,0,0,1,3,27.21V4.79A2.79,2.79,0,0,1,5.79,2H16.21A2.79,2.79,0,0,1,19,4.79V8.2A10.2,10.2,0,0,0,17,8a9.92,9.92,0,0,0-7,2.89V10a1,1,0,0,0-2,0V26a1,1,0,0,0,2,0v-.89A9.92,9.92,0,0,0,17,28a10.19,10.19,0,0,0,1.93-.19A2.79,2.79,0,0,1,16.21,30ZM17,26a8,8,0,0,1-7-4.14V14.14A8,8,0,1,1,17,26Z"></path> <path d="M17,15h2a1,1,0,0,0,0-2H18a1,1,0,0,0-2,0v.18A3,3,0,0,0,17,19a1,1,0,0,1,0,2H15a1,1,0,0,0,0,2h1a1,1,0,0,0,2,0v-.18A3,3,0,0,0,17,17a1,1,0,0,1,0-2Z"></path> <path d="M30,5H27.41l.3-.29a1,1,0,1,0-1.42-1.42l-2,2a1,1,0,0,0,0,1.42l2,2a1,1,0,0,0,1.42,0,1,1,0,0,0,0-1.42L27.41,7H30a1,1,0,0,0,0-2Z"></path> </g> </g></svg>
          </span>
          <div class="media-body">
            <p class="mb-1">Last Deposit:</p>
            <h4 class="mb-0">{$currency_sign}{$last_deposit|default:"n/a"} <small>{$last_deposit_date|default:"n/a"}</small></h4>
            <!--<span class="badge badge-primary">+3.5%</span>-->
          </div>
        </div>
      </div>
    </div>
  </div>
  {/if}
{* Last Deposit *}

{* Total Deposit *}
{if $ab_formated.deposit != 0}
  <div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
    <div class="widget-stat card">
      <div class="card-body p-4">
        <div class="media ai-icon">
          <span class="me-3 bgl-primary text-primary">
            <svg
              width="50px"
              height="50px"
              viewBox="0 0 1024 1024"
              class="icon"
              version="1.1"
              xmlns="http://www.w3.org/2000/svg"
              fill="#000000"
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
                  d="M200.99 814.55c-23.52-39.54-24.45-87.29-2.48-127.71l214.17-394.27h127.24l119.46 218.25 64.14-35.11-100.24-183.14h35.02v-73.14h-33.39l69.95-146.29H256l76.33 146.29h-39.76v73.14h36.84l-195.2 359.34c-34.39 63.34-32.93 138.11 3.91 200.04s101.86 98.91 173.91 98.91h89.3v-73.14h-89.3c-46-0.01-87.52-23.61-111.04-63.17z m175.68-668.26h202.14l-34.98 73.14H414.84l-38.17-73.14z"
                  fill="#6418C3"
                ></path>
                <path
                  d="M914.29 731.43V548.57H475.44v109.71H402.3v182.86h73.14v109.71H914.29V768h-73.14v-36.57h73.14z m-73.14-109.72v36.57h-36.57v-36.57h36.57z m-292.57 0h182.86v36.57H548.58v-36.57z m-73.14 109.72H658.3V768H475.44v-36.57z m73.14 146.28v-36.57h182.85v36.57H548.58z m292.57 0h-36.57v-36.57h36.57v36.57zM731.44 768v-36.57h36.57V768h-36.57z"
                  fill="#6418C3"
                ></path>
              </g>
            </svg>
          </span>
          <div class="media-body">
            <p class="mb-1">Total Deposit:</p>
            <h4 class="mb-0">{$currency_sign}{$ab_formated.deposit}</h4>
            <!--<span class="badge badge-primary">+3.5%</span>-->
          </div>
        </div>
      </div>
    </div>
  </div>
{/if}
{* Total Deposit *}

{if $last_withdrawal}
<div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
  <div class="widget-stat card">
    <div class="card-body p-4">
      <div class="media ai-icon">
        <span class="me-3 bgl-primary text-primary">
          <!-- <i class="ti-user"></i> -->
          <svg width="50px" height="50px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path opacity="0.1" fill-rule="evenodd" clip-rule="evenodd" d="M20.4142 9.58579C19.8284 9 18.8856 9 17 9H11C9.11438 9 8.17157 9 7.58579 9.58579C7 10.1716 7 11.1144 7 13V15C7 16.8856 7 17.8284 7.58579 18.4142C8.17157 19 9.11438 19 11 19H17C18.8856 19 19.8284 19 20.4142 18.4142C21 17.8284 21 16.8856 21 15V13C21 11.1144 21 10.1716 20.4142 9.58579ZM14 16C15.1046 16 16 15.1046 16 14C16 12.8954 15.1046 12 14 12C12.8954 12 12 12.8954 12 14C12 15.1046 12.8954 16 14 16Z" fill="#323232"></path> <path d="M7 13C7 11.1144 7 10.1716 7.58579 9.58579C8.17157 9 9.11438 9 11 9H14H17C18.8856 9 19.8284 9 20.4142 9.58579C21 10.1716 21 11.1144 21 13V14V15C21 16.8856 21 17.8284 20.4142 18.4142C19.8284 19 18.8856 19 17 19H14H11C9.11438 19 8.17157 19 7.58579 18.4142C7 17.8284 7 16.8856 7 15V14V13Z" stroke="#323232" stroke-width="2" stroke-linejoin="round"></path> <path d="M7 15V15C5.11438 15 4.17157 15 3.58579 14.4142C3.58579 14.4142 3.58579 14.4142 3.58579 14.4142C3 13.8284 3 12.8856 3 11L3 9C3 7.11438 3 6.17157 3.58579 5.58579C4.17157 5 5.11438 5 7 5L13 5C14.8856 5 15.8284 5 16.4142 5.58579C17 6.17157 17 7.11438 17 9V9" stroke="#323232" stroke-width="2" stroke-linejoin="round"></path> <path d="M16 14C16 15.1046 15.1046 16 14 16C12.8954 16 12 15.1046 12 14C12 12.8954 12.8954 12 14 12C15.1046 12 16 12.8954 16 14Z" stroke="#323232" stroke-width="2"></path> </g></svg>
        </span>
        <div class="media-body">
          <p class="mb-1">Last Withdrawal:</p>
          <h4 class="mb-0">{$currency_sign}{$last_withdrawal|default:"n/a"}
          <small>{$last_withdrawal_date|default:"n/a"}</small></h4>
          <!--<span class="badge badge-primary">+3.5%</span>-->
        </div>
      </div>
    </div>
  </div>
</div>
{/if}

{if $ab_formated.withdrawal > 0}
  <div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
    <div class="widget-stat card">
      <div class="card-body p-4">
        <div class="media ai-icon">
          <span class="me-3 bgl-primary text-primary">
            <span class="me-3 bgl-primary text-primary">
              <svg width="50px" height="50px" viewBox="0 0 1024 1024" class="icon" version="1.1" xmlns="http://www.w3.org/2000/svg" fill="#000000"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"><path d="M200.99 814.55c-23.52-39.54-24.45-87.29-2.48-127.71l214.17-394.27h127.24l119.46 218.25 64.14-35.11-100.24-183.14h35.02v-73.14h-33.39l69.95-146.29H256l76.33 146.29h-39.76v73.14h36.84l-195.2 359.34c-34.39 63.34-32.93 138.11 3.91 200.04s101.86 98.91 173.91 98.91h89.3v-73.14h-89.3c-46-0.01-87.52-23.61-111.04-63.17z m175.68-668.26h202.14l-34.98 73.14H414.84l-38.17-73.14z" fill="#6418C3"></path><path d="M914.29 731.43V548.57H475.44v109.71H402.3v182.86h73.14v109.71H914.29V768h-73.14v-36.57h73.14z m-73.14-109.72v36.57h-36.57v-36.57h36.57z m-292.57 0h182.86v36.57H548.58v-36.57z m-73.14 109.72H658.3V768H475.44v-36.57z m73.14 146.28v-36.57h182.85v36.57H548.58z m292.57 0h-36.57v-36.57h36.57v36.57zM731.44 768v-36.57h36.57V768h-36.57z" fill="#6418C3"></path></g></svg>
            </span>
          </span>
          <div class="media-body">
            <p class="mb-1">Withdrew Total:</p>
            <h4 class="mb-0">{$currency_sign}{$ab_formated.withdrawal}</h4>
            <!--<span class="badge badge-primary">+3.5%</span>-->
          </div>
        </div>
      </div>
    </div>
  </div>
{/if}

{section name=p loop=$ps}
  {if $ps[p].pending_col > 0}
    {$ps[p].pending_col} {$ps[p].name} deposit{if $ps[p].pending_col > 1}s{/if} of
    {$currency_sign}{$ps[p].pending_amount} total pending{/if}
{/section}




{include file="footer.tpl"}
