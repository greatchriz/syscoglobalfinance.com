<div
    class="group relative rounded-md overflow-hidden hover:shadow dark:shadow-gray-800 hover:shadow-indigo-600 border-[3px] border-indigo-600 bg-white dark:bg-slate-900 text-center transition-all duration-500 ease-in-out">
    <div class="p-6 py-8 border-b border-gray-100 dark:border-gray-700">
        <h5 class="text-lg font-semibold uppercase">{$planName}</h5>
        <p class="text-slate-400 mt-4">We offers a <b class="text-black dark:text-white">10 %
                </b> Referral Commission </p>
    </div>

    <div class="p-6 hosting-price">


        <div
            id="{$planName}"
            class="mt-6"
        >
          
                <div class="flex justify-center">
                    <span class="text-3xl font-semibold mx-1">{$dailyRate}%</span>
                    <span class="text-sm text-slate-400 font-semibold self-end">/daily</span>
                </div>
  
        </div>

    </div>

    <div class="p-6 border-b border-gray-100 dark:border-gray-700 ltr:text-left rtl:text-right">
        <ul class="list-none">
            <li class="text-slate-400 my-1"><i class="mdi mdi-check me-2 text-emerald-600"></i><b
                    class="text-black dark:text-white"
                >Duration: </b> {$planDuration}</li>
            <li class="text-slate-400 my-1"><i class="mdi mdi-check me-2 text-emerald-600"></i><b
                    class="text-black dark:text-white"
                >Minimum: </b> {$minimumAmount}</li>
            <li class="text-slate-400 my-1"><i class="mdi mdi-check me-2 text-emerald-600"></i><b
                    class="text-black dark:text-white"
                >Maximum: </b> {$maximumAmount}</li>
            <li class="text-slate-400 my-1"><i class="mdi mdi-check me-2 text-amber-400"></i><b
                    class="text-black dark:text-white"
                >24/7
            </b> LIVE CUSTOMER SUPPORT</li>
        </ul>
    </div>

    <div class="p-4">
        <a href="/?a=account" class="btn bg-indigo-600 hover:bg-indigo-700 border-indigo-600 hover:border-indigo-700 text-white rounded-md mt-3">Invest Now <i class="mdi mdi-chevron-right align-middle"></i></a>
    </div>
</div>
<!-- End Price Table -->
