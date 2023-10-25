<!DOCTYPE html>
    <html lang="en">
    
        <head>
            <meta charset="UTF-8">
            <meta
                name="viewport"
                content="width=device-width, initial-scale=1.0"
            >
            <meta
                http-equiv="X-UA-Compatible"
                content="ie=edge"
            >
    
            <title>Sysco Global Finance</title>
    
            <link
                rel="stylesheet"
                href="./assets/css/bootstrap.min.css"
            >
            <link
                rel="stylesheet"
                href="./assets/css/all.min.css"
            >
            <link
                rel="stylesheet"
                href="./assets/css/animate.css"
            >
            <link
                rel="stylesheet"
                href="./assets/css/odometer.css"
            >
            <link
                rel="stylesheet"
                href="./assets/css/nice-select.css"
            >
            <link
                rel="stylesheet"
                href="./assets/css/owl.min.css"
            >
            <link
                rel="stylesheet"
                href="./assets/css/jquery-ui.min.css"
            >
            <link
                rel="stylesheet"
                href="./assets/css/magnific-popup.css"
            >
            <link
                rel="stylesheet"
                href="./assets/css/flaticon.css"
            >
            <link
                rel="stylesheet"
                href="./assets/css/main.css"
            >
    
            <link
                rel="shortcut icon"
                href="assets/images/favicon.png"
                type="image/x-icon"
            >
            {literal}
                <!-- Smartsupp Live Chat script -->
                <script type="text/javascript">
                    var _smartsupp = _smartsupp || {};
                    _smartsupp.key = '3fcf20eb8c1dbbc4a5655a2c28e412d2f5a7109c';
                    window.smartsupp || (function(d) {
                        var s, c, o = smartsupp = function() { o._.push(arguments) };
                        o._ = [];
                        s = d.getElementsByTagName('script')[0];
                        c = d.createElement('script');
                        c.type = 'text/javascript';
                        c.charset = 'utf-8';
                        c.async = true;
                        c.src = 'https://www.smartsuppchat.com/loader.js?';
                        s.parentNode.insertBefore(c, s);
                    })(document);
                </script>

            {/literal}

        </head>
    
        <body>
            <div class="main--body">
                <!--========== Preloader ==========-->
                <div class="loader">
                    <div class="loader-inner">
                        <div class="loader-line-wrap">
                            <div class="loader-line"></div>
                        </div>
                        <div class="loader-line-wrap">
                            <div class="loader-line"></div>
                        </div>
                        <div class="loader-line-wrap">
                            <div class="loader-line"></div>
                        </div>
                        <div class="loader-line-wrap">
                            <div class="loader-line"></div>
                        </div>
                        <div class="loader-line-wrap">
                            <div class="loader-line"></div>
                        </div>
                    </div>
                </div>
                <a
                    href="#0"
                    class="scrollToTop"
                ><i class="fas fa-angle-up"></i></a>
                <div class="overlay"></div>
                <!--========== Preloader ==========-->
    
    
                <!--=======Header-Section Starts Here=======-->
                <header class="header-section bg-white">
                    <div class="header-top">
                        <div class="container">
                            <div class="row align-items-center">
                                <div class="col-6">
                                    <ul class="support-area">
                                        <li>
                                            <a href="#0"><i class="flaticon-support"></i>Support</a>
                                        </li>
                                        <li>
                                            <a href="Mailto:support@syscoglobalfinance.com"><i class="flaticon-email"></i><span
                                                    class="__cf_email__"
                                                    data-cfemail="86efe8e0e9c6eeffeff6eae7e8e2a8e5e9eb"
                                                >support@syscoglobalfinance.com</span> </a>
                                        </li>
                                        
                                    </ul>
                                </div>
                                <div class="col-6">
                                    <ul class="cart-area">
                                        <li>
                                            <i class="flaticon-globe"></i>
                                            <div class="select-area">
                                                <select class="select-bar">
                                                    <option value="en">English</option>
                                                    <option value="bn">Bangla</option>
                                                    <option value="sp">Spanish</option>
                                                </select>
                                            </div>
                                        </li>
                                        {if $userinfo.logged != 1}
    
                                        <li>
                                            <a href="{"?a=login"|encurl}">Log In</a>
                                        </li>
                                        <li>
                                            <a href="{"?a=signup"|encurl}">Sign Up</a>
                                        </li>
                                    {else}
                                        <li>
                                            <a href="{"?a=account"|encurl}">Dashboard</a>
                                        </li>
                                    {/if}
    
    
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="header-bottom">
                        <div class="container">
                            <div class="header-area">
                                <div class="logo">
                                    <a href="{"?a=home"|encurl}">
                                        <img src="./assets/images/logo/logo.svg" height="50px" width="180px" alt="logo">
                                    </a>
                                </div>
                                <ul class="menu">
                                    <li>
                                        <a href="{"?a=home"|encurl}">Home</a>
                                    </li>
                                
                                    <li>
                                        <a href="{"?a=about"|encurl}">About</a>
                                    </li>
                                   
                                    <li>
                                        <a href="{"?a=faq"|encurl}">Faqs</a>
                                    </li>
                                    <li>
                                        <a href="{"?a=support"|encurl}">Contact Us</a>
                                    </li>
                                    <li class="pr-0">
                                        <a
                                            href="{"?a=login"|encurl}"
                                            class="custom-button"
                                        >Join Us</a>
                                    </li>
                                </ul>
                                <div class="header-bar d-lg-none">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </header>
                <!--=======Header-Section Ends Here=======-->
    