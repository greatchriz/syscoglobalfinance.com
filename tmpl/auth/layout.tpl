<!DOCTYPE html>
<html
    lang="en"
    class="light scroll-smooth"
    dir="ltr"
>

    <!-- Mirrored from shreethemes.in/techwind/layouts/auth-login.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 02 May 2023 16:51:59 GMT -->

    <head>
        <meta charset="UTF-8" />
        <title>Puinvestment - WE trade it you earn it</title>
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
        />
      
        <meta
            http-equiv="X-UA-Compatible"
            content="IE=edge"
        />

        <!-- favicon -->
        <link
            rel="shortcut icon"
            href="assets/images/favicon.ico"
        />

        <!-- Css -->
        <link
            href="assets/libs/tobii/css/tobii.min.css"
            rel="stylesheet"
        >
        <link
            href="assets/libs/tiny-slider/tiny-slider.css"
            rel="stylesheet"
        >
        <link
            href="assets/libs/swiper/css/swiper.min.css"
            rel="stylesheet"
        >
        <!-- Main Css -->
        <link
            href="assets/libs/%40iconscout/unicons/css/line.css"
            type="text/css"
            rel="stylesheet"
        />
        <link
            rel="stylesheet"
            href="assets/css/icons.css"
        />
        <link
            rel="stylesheet"
            href="assets/css/tailwind.css"
        />

    </head>
    <body class="font-nunito text-base text-black dark:text-white dark:bg-slate-900">
        <!-- Loader Start -->
        <!-- <div id="preloader">
                <div id="status">
                    <div class="spinner">
                        <div class="double-bounce1"></div>
                        <div class="double-bounce2"></div>
                    </div>
                </div>
            </div> -->
        <!-- Loader End -->

        <section
            class="md:h-screen py-36 flex items-center bg-[url('../../assets/images/cta.html')] bg-no-repeat bg-center bg-cover"
        >
            <div class="absolute inset-0 bg-gradient-to-b from-transparent to-black"></div>
            <div class="container">
                <div class="flex justify-center">
                    <div
                        class="max-w-[400px] w-full m-auto p-6 bg-white dark:bg-slate-900 shadow-md dark:shadow-gray-800 rounded-md">
                        <a href="?a=home"><img
                                src="assets/images/logo.svg"
                                height="100px"
                                width="250px"
                                class="mx-auto"
                                alt=""
                            ></a>




                        {block name=section}{/block}




                    </div>
                </div>
            </div>
        </section>
        <!--end section -->

        <div class="fixed bottom-3 end-3">
            <a
                href="#"
                class="back-button btn btn-icon bg-indigo-600 hover:bg-indigo-700 border-indigo-600 hover:border-indigo-700 text-white rounded-full"
            ><i
                    data-feather="arrow-left"
                    class="h-4 w-4"
                ></i></a>
        </div>

        <!-- Switcher -->
        <div class="fixed top-[30%] -right-2 z-50">
            <span class="relative inline-block rotate-90">
                <input
                    type="checkbox"
                    class="checkbox opacity-0 absolute"
                    id="chk"
                />
                <label
                    class="label bg-slate-900 dark:bg-white shadow dark:shadow-gray-800 cursor-pointer rounded-full flex justify-between items-center p-1 w-14 h-8"
                    for="chk"
                >
                    <i class="uil uil-moon text-[20px] text-yellow-500"></i>
                    <i class="uil uil-sun text-[20px] text-yellow-500"></i>
                    <span
                        class="ball bg-white dark:bg-slate-900 rounded-full absolute top-[2px] left-[2px] w-7 h-7"></span>
                </label>
            </span>
        </div>
        <!-- Switcher -->

        <!-- LTR & RTL Mode Code -->
        <div class="fixed top-[40%] -right-3 z-50">
            <a
                href="#"
                id="switchRtl"
            >
                <span
                    class="py-1 px-3 relative inline-block rounded-t-md -rotate-90 bg-white dark:bg-slate-900 shadow-md dark:shadow dark:shadow-gray-800 font-bold rtl:block ltr:hidden"
                >LTR</span>
                <span
                    class="py-1 px-3 relative inline-block rounded-t-md -rotate-90 bg-white dark:bg-slate-900 shadow-md dark:shadow dark:shadow-gray-800 font-bold ltr:block rtl:hidden"
                >RTL</span>
            </a>
        </div>
        <!-- LTR & RTL Mode Code -->

        {literal}
            <script type="text/javascript">
                function togglePassword() {
                    var x = document.getElementById("LoginPassword");
                    if (x.type === "password") {
                        x.type = "text";
                        } else {
                        x.type = "password";
                    }
                }

                function togglePassword2() {
                    var x = document.getElementById("password2");
                    if (x.type === "password") {
                        x.type = "text";
                        } else {
                        x.type = "password";
                    }
                }

            </script>
        {/literal}
        <!-- JAVASCRIPTS -->
        <script src="assets/libs/feather-icons/feather.min.js"></script>
        <script src="assets/js/plugins.init.js"></script>
        <script src="assets/js/app.js"></script>
        <!-- JAVASCRIPTS -->
    </body>

    <!-- Mirrored from shreethemes.in/techwind/layouts/auth-login.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 02 May 2023 16:51:59 GMT -->

</html>
