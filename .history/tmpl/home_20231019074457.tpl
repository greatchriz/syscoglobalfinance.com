{include file="header.tpl"}

 <!--=======Banner-Section Starts Here=======-->
    <section class="banner-section" id="home">
        <div class="banner-bg d-lg-none">
            <img src="./assets/images/banner/banner-bg2.jpg" alt="banner">
        </div>
        <div class="banner-bg d-none d-lg-block bg_img" data-background="./assets/images/banner/banner.jpg">
            <div class="chart-1 wow fadeInLeft" data-wow-delay=".5s" data-wow-duration=".7s">
                <img src="./assets/images/banner/chart1.png" alt="banner">
            </div>
            <div class="chart-2 wow fadeInDown" data-wow-delay="1s" data-wow-duration=".7s">
                <img src="./assets/images/banner/chart2.png" alt="banner">
            </div>
            <div class="chart-3 wow fadeInRight" data-wow-delay="1.5s" data-wow-duration=".7s">
                <img src="./assets/images/banner/chart3.png" alt="banner">
            </div>
            <div class="chart-4 wow fadeInUp" data-wow-delay="2s" data-wow-duration=".7s">
                <img src="./assets/images/banner/clock.png" alt="banner">
            </div>
        </div>
        <div class="animation-area d-none d-lg-block">
            <div class="plot">
                <img src="./assets/images/banner/plot.png" alt="banner">
            </div>
            <div class="element-1 wow fadeIn" data-wow-delay="1s">
                <img src="./assets/images/banner/light.png" alt="banner">
            </div>
            <div class="element-2 wow fadeIn" data-wow-delay="1s">
                <img src="./assets/images/banner/coin1.png" alt="banner">
            </div>
            <div class="element-3 wow fadeIn" data-wow-delay="1s">
                <img src="./assets/images/banner/coin2.png" alt="banner">
            </div>
            <div class="element-4 wow fadeIn" data-wow-delay="1s">
                <img src="./assets/images/banner/coin3.png" alt="banner">
            </div>
            <div class="element-5 wow fadeIn" data-wow-delay="1s">
                <img src="./assets/images/banner/coin4.png" alt="banner">
            </div>
            <div class="element-6 wow fadeIn" data-wow-delay="1s">
                <img src="./assets/images/banner/coin5.png" alt="banner">
            </div>
            <div class="element-7 wow fadeIn" data-wow-delay="1s">
                <img src="./assets/images/banner/coin6.png" alt="banner">
            </div>
            <div class="element-8 wow fadeIn" data-wow-delay="1s">
                <img src="./assets/images/banner/sheild.png" alt="banner">
            </div>
            <div class="element-9 wow fadeIn" data-wow-delay="1s">
                <img src="./assets/images/banner/coin7.png" alt="banner">
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-xl-5 col-lg-6 offset-lg-6 offset-xl-7">
                    <div class="banner-content">
                        <h1 class="title">Simply <span>Profitably </span> Conveniently</h1>
                        <p>
                            A Profitable platform for high-margin investment
                        </p>
                        <div class="button-group">
                            <a href="sign-up.html" class="custom-button">Get Started Now!</a>
                            <a href="https://www.youtube.com/watch?v=GT6-H4BRyqQ" class="popup video-button"><i class="flaticon-play"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--=======Banner-Section Ends Here=======-->


{include file="index.plans.tpl"}

<br><br>
All payments are made to your account Daily. <br>
Minimum spend is {$currency_sign}10 and there is no maximum. <br>
You may make an additional spend as many times as you like. <br>
{*All transactions are handled via e-gold. If you don't have an e-gold account, you need to get one.<br>*}
<br><br>

{if $settings.use_referal_program == 1 && $ref_plans}
    Use our referral program and earn up to {$percent}% of referral deposits!<br><br>
    <b>Our first level referral bonuses:</b>
    <table
        cellspacing=0
        cellpadding=2
        border=0
        width=100%
    >
        <tr>
            <td class=inheader>Name</td>
            <td class=inheader>From</td>
            <td class=inheader>To</td>
            <td class=inheader>Commision (%)</td>
        </tr>
        {section name=r loop=$ref_plans}
            <tr>
                <td class=item>{$ref_plans[r].name}</td>
                <td
                    class=item
                    align=center
                >{$ref_plans[r].from_value}</td>
                <td
                    class=item
                    align=center
                >{if $ref_plans[r].to_value == 0}and more{else}{$ref_plans[r].to_value}{/if}</td>
                <td
                    class=item
                    align=right
                >{$ref_plans[r].percent}</td>
            </tr>
        {/section}
    </table>
    <br><br>
    {if $ref_levels}
        Our other levels referral bonuses (not depending on the number of referrals):<br>
        {section name=rl loop=$ref_levels}
            Level {$ref_levels[rl].level}: <b>{$ref_levels[rl].percent}%</b><br>
        {/section}
    {/if}
{/if}



{include file="footer.tpl"}
