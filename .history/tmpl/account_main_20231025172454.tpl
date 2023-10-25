{include file="header.tpl"}

<div class="row justify-content-center mt--85">
    {foreach from=$ps item=p}
    <div class="col-sm-6 col-lg-3">
        <div class="dashboard-item">
            <div class="dashboard-inner">
                <div class="cont">
                    <span class="title">{$p.name}</span>
                    <h5 class="amount">{$currency_sign}{$p.balance}</h5>
                </div>
                <div class="thumb">
                    <img src="./assets/images/dashboard/payment/{$p.id}.svg" alt="dasboard">
                </div>
            </div>
        </div>
    </div>
{/foreach}



  
</div>


{* main container *}
  
    <div class="row pb-30">
        <div class="col-lg-6">
            <div class="total-earning-item">
                <div class="total-earning-heading">
                    <h5 class="title">Total earning </h5>
                    <h4 class="amount cl-1">{$currency_sign}<b>{$ab_formated.earning}</b></h4>
                </div>
                <div class="d-flex flex-wrap justify-content-between">
                    <div class="item">
                        <div class="cont">
                            <h4 class="cl-theme">+.3%</h4>
                            <span class="month">August  Profit</span>
                        </div>
                        <div class="thumb">
                            <img src="./assets/images/dashboard/graph1.png" alt="dashboard">
                        </div>
                    </div>
                    <div class="item">
                        <div class="cont">
                            <h4 class="cl-1">+.12%</h4>
                            <span class="month">Year Profit</span>
                        </div>
                        <div class="thumb">
                            <img src="./assets/images/dashboard/graph2.png" alt="dashboard">
                        </div>
                    </div>
                </div>
                <div class="text-center">
                    <a href="#0" class="normal-button">Explore <i class="fas fa-arrow-right"></i></a>
                </div>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="progress-wrapper mb-30">
                <h5 class="title cl-white">Progress</h5>
                <div class="d-flex flex-wrap m-0-15-20-none">
                    <div class="circle-item">
                        <span class="level">Level(1)</span>
                        <div class="progress1 circle">
                            <strong></strong>
                        </div>
                    </div>
                    <div class="circle-item">
                        <span class="level">ROI Speed</span>
                        <div class="progress2 circle">
                            <strong></strong>
                        </div>
                    </div>
                    <div class="circle-item">
                        <span class="level">ROI Redeemed</span>
                        <div class="progress3 circle">
                            <strong></strong>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-6">
            <div class="earn-item mb-30">
                <div class="earn-thumb">
                    <img src="./assets/images/dashboard/earn/01.png" alt="dashboard-earn">
                </div>
                <div class="earn-content">
                    <h6 class="title">Active deposits in the amount of</h6>
                    <ul class="mb--5">
                        <li>
                            <div class="icon">
                                <img src="./assets/images/dashboard/earn/usd.png" alt="dashboard-earn">
                            </div>
                            <div class="cont">
                                <span class="cl-1">{$currency_sign}<b>{$ab_formated.active_deposit}</b></span>
                                <span class="cl-4">USD</span>
                            </div>
                        </li>
                       
                    </ul>
                </div>
            </div>
        </div>
   
        {if $last_deposit}

            <div class="col-lg-6">
                <div class="earn-item small-thumbs mb-30">
                    <div class="earn-thumb">
                        <img
                            src="./assets/images/dashboard/earn/07.png"
                            alt="dashboard-earn"
                        >
                    </div>
                    <div class="earn-content">
                        <h6 class="title">Last Deposit</h6>
                        <ul class="mb--5">
                            <li>
                                <div class="icon">
                                    <img
                                        src="./assets/images/dashboard/earn/usd.png"
                                        alt="dashboard-earn"
                                    >
                                </div>
                                <div class="cont">
                                    <span class="cl-1">{$currency_sign}<b>{$last_deposit|default:"n/a"}</b> &nbsp;
                                        <small>{$last_deposit_date|default:"n/a"}</small>
                                    </span>
                                    <span class="cl-4">USD</span>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        {/if}

        {if $ab_formated.deposit != 0}
            <div class="col-lg-6">
                <div class="earn-item small-thumbs mb-30">
                    <div class="earn-thumb">
                        <img
                            src="./assets/images/dashboard/earn/07.png"
                            alt="dashboard-earn"
                        >
                    </div>
                    <div class="earn-content">
                        <h6 class="title">Total Deposit</h6>
                        <ul class="mb--5">
                            <li>
                                <div class="icon">
                                    <img
                                        src="./assets/images/dashboard/earn/usd.png"
                                        alt="dashboard-earn"
                                    >
                                </div>
                                <div class="cont">
                                    <span class="cl-1">
                                        {$currency_sign}<b>{$ab_formated.deposit}</b>
                                    </span>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        {/if}

        {if $last_withdrawal}
            <div class="col-lg-6">
                <div class="earn-item small-thumbs mb-30">
                    <div class="earn-thumb">
                        <img
                            src="./assets/images/dashboard/earn/07.png"
                            alt="dashboard-earn"
                        >
                    </div>
                    <div class="earn-content">
                        <h6 class="title">Last Withdrawal</h6>
                        <ul class="mb--5">
                            <li>
                                <div class="icon">
                                    <img
                                        src="./assets/images/dashboard/earn/usd.png"
                                        alt="dashboard-earn"
                                    >
                                </div>
                                <div class="cont">
                                    <span class="cl-1">
                                        {$currency_sign}<b>{$last_withdrawal|default:"n/a"}</b> &nbsp;
            <small>{$last_withdrawal_date|default:"n/a"}</small>
                                    </span>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        {/if}

        {if $ab_formated.withdrawal > 0}
            <div class="col-lg-6">
                <div class="earn-item small-thumbs mb-30">
                    <div class="earn-thumb">
                        <img
                            src="./assets/images/dashboard/earn/07.png"
                            alt="dashboard-earn"
                        >
                    </div>
                    <div class="earn-content">
                        <h6 class="title">Withdrew Total</h6>
                        <ul class="mb--5">
                            <li>
                                <div class="icon">
                                    <img
                                        src="./assets/images/dashboard/earn/usd.png"
                                        alt="dashboard-earn"
                                    >
                                </div>
                                <div class="cont">
                                    <span class="cl-1">
                                        {$currency_sign}<b>{$ab_formated.withdrawal}</b>
                                    </span>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        {/if}



     
    </div>
{* main container end *}
{include file="footer.tpl"}
