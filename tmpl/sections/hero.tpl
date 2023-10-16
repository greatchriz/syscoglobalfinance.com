

<section class="relative table w-full py-36 bg-center bg-no-repeat bg-cover" 
    style="background-image: url('{$image}')">
    <div class="absolute inset-0 bg-black opacity-75"></div>
    <div class="container">
        <div class="grid grid-cols-1 pb-8 text-center mt-10">
            <h3 class="md:text-4xl text-3xl md:leading-normal tracking-wide leading-normal font-medium text-white">
                {$pagenamee}</h3>
        </div>
        <!--end grid-->
    </div>
    <!--end container-->

    <div class="absolute text-center z-10 bottom-5 start-0 end-0 mx-3">
        <ul class="breadcrumb tracking-[0.5px] breadcrumb-light mb-0 inline-block">
            <li class="inline breadcrumb-item uppercase text-[13px] font-bold duration-500 ease-in-out text-white/50 hover:text-white">
                <a href="/">Puinvestment</a></li>
            <li class="inline breadcrumb-item uppercase text-[13px] font-bold duration-500 ease-in-out text-white" aria-current="page">{$pagenamee}</li>
        </ul>
    </div>
</section>
