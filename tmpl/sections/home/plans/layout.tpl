<!-- Start -->
<section class="relative md:py-24 py-16 bg-gray-50 dark:bg-slate-800">
    <div class="container">
        <div class="grid grid-cols-1 pb-8 text-center">
            <h3 class="mb-6 md:text-3xl text-2xl md:leading-normal leading-normal font-semibold">Our Investment Plans

            </h3>

            <p class="text-slate-400 max-w-xl mx-auto">Choose the perfect plan that suits your investment goals and earn
                great returns with us.
            </p>
        </div>
        <!--end grid-->
        <div class="grid grid-cols-1">
            <div class="relative z-2 transition-all duration-500 ease-in-out sm:-mt-[200px] -mt-[140px] m-0">
                <div class="grid lg:grid-cols-3 md:grid-cols-2 grid-cols-1 gap-[30px]">
                    {include file="sections/home/plans/plan.tpl" planName="RUBY PLAN" dailyRate="2.1" planDuration="8 days" minimumAmount="
                    $50" maximumAmount="
                    $3,999"}

                    {include file="sections/home/plans/plan.tpl" planName="EMERALD PLAN" dailyRate="2.6" planDuration="7 days" minimumAmount="
                    $4,000" maximumAmount="$9,999"}

                    {include file="sections/home/plans/plan.tpl" planName="DIAMOND PLAN" dailyRate="3.2" planDuration="6 days" minimumAmount="
                    $10,000" maximumAmount="$1,000,000"}

                </div>
                <!--end grid-->
            </div>
        </div>
        <!--end grid-->
    </div>
    <!--end container-->

    <div class="container md:mt-24 mt-16">
        <div class="grid grid-cols-1 text-center">
            <h3 class="mb-4 md:text-3xl md:leading-normal text-2xl leading-normal font-semibold">Referral Program</h3>

            <p class="text-slate-400 max-w-xl mx-auto">Our referral program is designed to reward our clients for spreading the word about Puinvestment. When you refer someone to us and they become a client, you'll receive a 10% of their first Investment capital.</p>
        
            <div class="mt-6">
                <a href="/?a=login" class="btn bg-indigo-600 hover:bg-indigo-700 border-indigo-600 hover:border-indigo-700 text-white rounded-md mt-4"><i class="uil uil-phone"></i> Referral Link</a>
            </div>
        </div><!--end grid-->
    </div><!--end container-->
</section>
<!--end section-->
<!-- End -->
