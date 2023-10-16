<!-- Start Navbar -->
<nav
    id="topnav"
    class="defaultscroll is-sticky"
>
    <div class="container">
        <!-- Logo container-->
        <a
            class="logo"
            href="{"?a=home"|encurl}"
        >
            <span class="inline-block dark:hidden">
                <img
                    src="assets/images/logo.svg"
                    class="l-dark"
                    height="80px"
                    width="100px"
                    alt=""
                >
                <img
                    src="assets/images/logo.svg"
                    class="l-light"
                    height="80px"
                    width="130px"
                    alt=""
                >
            </span>
            <img
                src="assets/images/logo.svg"
                height="24"
                class="hidden dark:inline-block"
                alt=""
            >
        </a>

        <!-- End Logo container-->
        <div class="menu-extras">
            <div class="menu-item">
                <!-- Mobile menu toggle-->
                <a
                    class="navbar-toggle"
                    id="isToggle"
                    onclick="toggleMenu()"
                >
                    <div class="lines">
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                </a>
                <!-- End mobile menu toggle-->
            </div>
        </div>
        <!--Login button Start-->
        <ul class="buy-button list-none mb-0">
            <li class="inline mb-0">
                <div class="border mt-1 mb-1 p-2 rounded-lg shadow-lg">
                    <div id="google_translate_element"></div>
                </div>
            </li>
        </ul>
        <!--Login button End-->

        <div id="navigation">
            <!-- Navigation Menu-->
            <ul class="navigation-menu nav-light">
                <li>
                    <a
                        href="{"?a=home"|encurl}"
                        class="sub-menu-item"
                    >
                        Home
                    </a>
                </li>

                <li>

                    <a
                        href="{"?a=about"|encurl}"
                        class="sub-menu-item"
                    >
                        About Us
                    </a>
                </li>

                <li>
                    <a
                        href="{"?a=faq"|encurl}"
                        class="sub-menu-item"
                    >
                        F.A.Q.
                    </a>
                </li>

                <li>
                    <a
                        href="{"?a=support"|encurl}"
                        class="sub-menu-item"
                    >
                        Contact Us
                    </a>
                </li>

                <li>
                    <a
                        href="{"?a=partnership"|encurl}"
                        class="sub-menu-item"
                    >
                       Partnership
                    </a>
                </li>

                {if $userinfo.logged != 1}

                    <li>
                        <a
                            href="{"?a=signup"|encurl}"
                            class="sub-menu-item"
                        >
                            Register
                        </a>
                    </li>

                    <li>
                        <a
                            href="{"?a=login"|encurl}"
                            class="sub-menu-item"
                        >
                            Login
                        </a>
                    </li>
                {else}
                    <li>
                        <a
                            href="{"?a=account"|encurl}"
                            class="sub-menu-item"
                        >
                            Dashboard
                        </a>
                    </li>
                {/if}
            </ul>
            <!--end navigation menu-->
        </div>
        <!--end navigation-->
    </div>
    <!--end container-->
</nav>
<!--end header-->
<!-- End Navbar -->
