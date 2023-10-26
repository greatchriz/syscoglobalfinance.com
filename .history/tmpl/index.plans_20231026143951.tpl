<section
  class="offer-section padding-top padding-bottom pb-max-md-0"
  id="plan"
>
  <div
    class="ball-group-1"
    data-paroller-factor="-0.30"
    data-paroller-factor-lg="0.60"
    data-paroller-type="foreground"
    data-paroller-direction="horizontal"
  >
    <img
      src="./assets/images/balls/ball-group1.png"
      alt="balls"
    >
  </div>
  <div
    class="ball-group-2"
    data-paroller-factor="0.30"
    data-paroller-factor-lg="-0.30"
    data-paroller-type="foreground"
    data-paroller-direction="horizontal"
  >
    <img
      src="./assets/images/balls/ball-group2.png"
      alt="balls"
    >
  </div>
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-lg-8 col-xl-7">
        <div class="section-header">
          <span class="cate">INVESTMENT OFFER</span>
          <h2 class="title">OUR INVESTMENT PLANS</h2>
          <p>
            Sysco Global Finance provides a straightforward and transparent mechanism to attract investments and make more profits.
          </p>
        </div>
      </div>
    </div>
    <div class="offer-wrapper">
      {literal}
        <script language="javascript">
          function openCalculator(id) {
            w = 225;
            h = 400;
            t = (screen.height - h - 30) / 2;
            l = (screen.width - w - 30) / 2;
            window.open('?a=calendar&type=' + id, 'calculator' + id, "top=" + t + ",left=" + l + ",width=" + w +
              ",height=" +
              h + ",resizable=1,scrollbars=0");
          }
        </script>
      {/literal}

      {foreach from=$index_plans item=p}
        {if !$p.closed}
         

          <div class="section-header">
            <span class="cate"> {if $p.dsc != ''}<a href="{"?a=show_package_info&id=`$p.id`"|encurl}">{/if}<b>{$p.name|escape:html}</b></a></span>
          </div>

         
          {if $p.plans}

            {foreach from=$p.plans item=o}

          <div class="offer-item">
            <div class="offer-header">
              <h3 class="title">{$o.percent|string_format:"%.2f"}%</h3>
              <span><b>R.O.I</b></span>
            </div>
            <div class="offer-body">
              <span class="bal-shape"></span>
              <div class="item first">
                <div class="item-thumb">
                  <img
                    src="./assets/images/offer/offer1.png"
                    alt="offer"
                  >
                </div>
                <div class="item-content">
                  <h5 class="title">Deposit</h5>
                  <h5 class="subtitle"><span class="min">${$o.min_deposit}</span><span class="to">to</span><span class="max">${$o.max_deposit}</span></h5>
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
            <div class="offer-footer">
              <a
                href="{'?a=signup'|encurl}"
                class="custom-button"
              >invest now</a>
            </div>
          </div>
          {/foreach}
          {/if}

          {if $userinfo.logged}
            <br>
            <form method=post>
              <input
                type=hidden
                name=a
                value=deposit
              >
              <input
                type=submit
                value="Make deposit"
                class=sbmt
              >
              <input
                type=hidden
                name=h_id
                value={$p.id}
              >
            </form>
            <br><br>
          {/if}
        {/if}
      {/foreach}
    </div>
  </div>
</section>
<!--=======Offer-Section Ends Here=======-->
