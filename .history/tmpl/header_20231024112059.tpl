<!DOCTYPE html>
    <html lang="en">
    
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
        <title>Hyipland - HYIP Investment HTML Template</title>
    
        <link rel="stylesheet" href="./assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="./assets/css/all.min.css">
        <link rel="stylesheet" href="./assets/css/animate.css">
        <link rel="stylesheet" href="./assets/css/odometer.css">
        <link rel="stylesheet" href="./assets/css/nice-select.css">
        <link rel="stylesheet" href="./assets/css/owl.min.css">
        <link rel="stylesheet" href="./assets/css/jquery-ui.min.css">
        <link rel="stylesheet" href="./assets/css/magnific-popup.css">
        <link rel="stylesheet" href="./assets/css/flaticon.css">
        <link rel="stylesheet" href="./assets/css/main.css">
    
        <link rel="shortcut icon" href="assets/images/favicon.png" type="image/x-icon">
    </head>
    
    <body>
        <div class="main--body dashboard-bg">
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
            <div class="overlay"></div>
            <!--========== Preloader ==========-->
            
            
            <!--=======SideHeader-Section Starts Here=======-->
            <div class="notify-overlay"></div>
            <section class="dashboard-section">
                <div class="side-header oh">
                    <div class="cross-header-bar d-xl-none">
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                    <div class="site-header-container">
                        <div class="side-logo">
                            <a href="{"?a=edit_account"|encurl}">
                                <img src="./assets/images/logo/logo.png" alt="logo">
                            </a>
                        </div>
                        {include file="login_box.tpl"}
                    </div>
                </div>
                <div class="dasboard-body">
                    <div class="dashboard-hero mb-30">
                        <div class="header-top">
                            <div class="container">
                                <div class="mobile-header d-flex justify-content-between d-lg-none align-items-center">
                                    <div class="author">
                                        <img src="./assets/images/dashboard/user.png" alt="dashboard">
                                    </div>
                                    <div class="cross-header-bar">
                                        <span></span>
                                        <span></span>
                                        <span></span>
                                    </div>
                                </div>
                                <div class="mobile-header-content d-lg-flex flex-wrap justify-content-lg-between align-items-center">
                                    <ul class="support-area">
                                        <li>
                                            <a href="{"?a=suport"|encurl}"><i class="flaticon-support"></i>Support</a>
                                        </li>
                                        <li>
                                            <a href="Mailto:support@syscoglobalfinance.com"><i class="flaticon-email"></i><span class="__cf_email__" data-cfemail="620b0c040d220a1b0b120e030c064c010d0f">support@syscoglobalfinance.com</span> </a>
                                        </li>
                                        <li>
                                            <i class="flaticon-globe"></i>
                                            <div class="select-area">
                                                <select class="select-bar" style="display: none;">
                                                    <option value="en">English</option>
                                                    <option value="bn">Bangla</option>
                                                    <option value="sp">Spanish</option>
                                                </select>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="dashboard-header-right d-flex flex-wrap justify-content-center justify-content-sm-between justify-content-lg-end align-items-center">
                                   
                                        <ul class="dashboard-right-menus">
                                            <li>
                                                <a href="#0" class="author">
                                                    <div class="thumb">
                                                        <img src="./assets/images/dashboard/user.png" alt="dashboard">
                                                        <span class="checked">
                                                            <i class="flaticon-checked"></i>
                                                        </span>
                                                    </div>
                                                    <div class="content">
                                                        <h6 class="title">{$userinfo.username}</h6>
                                                    </div>
                                                </a>
                                                <div class="notification-area">
                                                    <div class="author-header">
                                                        <div class="thumb">
                                                            <img src="./assets/images/dashboard/user.png" alt="dashboard">
                                                        </div>
                                                        <h6 class="title">{$userinfo.username}</h6>
                                                        <a href="#mailto:{$userinfo.email}"><span class="__cf_email__">{$userinfo.email}</span></a>
                                                    </div>
                                                    <div class="author-body">
                                                        <ul>
                                                            <li>
                                                                <a href="{"?a=edit_account"|encurl}"><i class="far fa-user"></i>Profile</a>
                                                            </li>
                                                
                                                            <li>
                                                                <a href="{"?a=logout"|encurl}"><i class="fas fa-sign-out-alt"></i>Log Out</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="dashboard-hero-content text-white">
                            <h3 class="title">Dashboard</h3>
                            <ul class="breadcrumb">
                                <li>
                                    <a href="{"?a=home"|encurl}">Home</a>
                                </li>
                                <li>
                                    Dashboard
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="container-fluid">
                       


                        
