{extends file="layout.tpl"}


{block name=section}
{* include file sections/about/hero.tpl and pass page and image variables *}

    {include file="sections/about/hero.tpl" pagenamee="About Us" image="https://puinvestment.org/images/banner/about.png"}

    <!-- Start Section-->
    <section class="relative md:py-24 py-16">
        {include file="sections/about/testimonials.tpl"}

    </section>


{/block}
