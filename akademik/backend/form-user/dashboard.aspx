﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="dashboard.aspx.vb" Inherits="akademik.dashboard" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Plus Admin</title>
    <link rel="stylesheet" href="../../assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../../assets/vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="../../assets/vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="../../assets/vendors/jquery-bar-rating/css-stars.css" />
    <link rel="stylesheet" href="../../assets/vendors/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" href="../../assets/css/demo_1/style.css" />
    <link rel="shortcut icon" href="../../assets/images/favicon.png" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-scroller">
            <!-- partial:partials/_sidebar.html -->
            <nav class="sidebar sidebar-offcanvas" id="sidebar">
                <ul class="nav">
                    <li class="nav-item nav-profile border-bottom">
                        <a href="#" class="nav-link flex-column">
                            <%--<div class="nav-profile-image">
                                <img src="../../assets/images/faces/img-profile.JPG" alt="profile" />
                                <!--change to offline or busy as needed-->
                            </div>--%>
                            <img src="/assets/images/unas.png" alt="profile" width="150px" style="margin-bottom: 10px;" />
                            <h6 style="margin-bottom: 20px;">Sistem Informasi Akademik</h6>
                            <%--<div class="nav-profile-text d-flex ml-0 mb-3 flex-column">
                                <span class="font-weight-semibold mb-1 mt-2 text-center">
                                    <asp:Label ID="lblNamaLengkap" runat="server" Text="Label"></asp:Label>
                                </span>
                                <span class="text-secondary icon-sm text-center">
                                    <asp:Label ID="lblNIM" runat="server" Text="Label"></asp:Label></span>
                            </div>--%>
                        </a>
                    </li>
                    <li class="pt-2 pb-1">
                        <span class="nav-item-head">Menu</span>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="beranda.aspx">
                            <i class="mdi mdi-home-variant menu-icon"></i>
                            <span class="menu-title">Beranda</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="dashboard.aspx">
                            <i class="mdi mdi-compass-outline menu-icon"></i>
                            <span class="menu-title">Dashboard</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="berita.aspx">
                            <i class="mdi mdi-newspaper menu-icon"></i>
                            <span class="menu-title">Berita</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="kalender.aspx">
                            <i class="mdi mdi-calendar-outline menu-icon"></i>
                            <span class="menu-title">Kalender Akademik</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="form.aspx">
                            <i class="mdi mdi-format-list-bulleted menu-icon"></i>
                            <span class="menu-title">Forms</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="profil.aspx">
                            <i class="mdi mdi-account menu-icon"></i>
                            <span class="menu-title">Profil</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="rencanastudi.aspx">
                            <i class="mdi mdi-file-document menu-icon"></i>
                            <span class="menu-title">Rencana Studi</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="hasilstudi.aspx">
                            <i class="mdi mdi-boombox menu-icon"></i>
                            <span class="menu-title">Hasil Studi</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="pembayaran.aspx">
                            <i class="mdi mdi-cash-multiple menu-icon"></i>
                            <span class="menu-title">Pembayaran</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="perkuliahan.aspx">
                            <i class="mdi mdi-book-open-page-variant menu-icon"></i>
                            <span class="menu-title">Perkuliahan</span>
                        </a>
                    </li>
                </ul>
            </nav>
            <!-- partial -->
            <div class="container-fluid page-body-wrapper">
                <!-- partial:partials/_settings-panel.html -->
                <div id="settings-trigger"><i class="mdi mdi-settings"></i></div>
                <div id="theme-settings" class="settings-panel">
                    <i class="settings-close mdi mdi-close"></i>
                    <p class="settings-heading">SIDEBAR SKINS</p>
                    <div class="sidebar-bg-options selected" id="sidebar-default-theme">
                        <div class="img-ss rounded-circle bg-light border mr-3"></div>
                        Default
                    </div>
                    <div class="sidebar-bg-options" id="sidebar-dark-theme">
                        <div class="img-ss rounded-circle bg-dark border mr-3"></div>
                        Dark
                    </div>
                    <p class="settings-heading mt-2">HEADER SKINS</p>
                    <div class="color-tiles mx-0 px-4">
                        <div class="tiles default primary"></div>
                        <div class="tiles success"></div>
                        <div class="tiles warning"></div>
                        <div class="tiles danger"></div>
                        <div class="tiles info"></div>
                        <div class="tiles dark"></div>
                        <div class="tiles light"></div>
                    </div>
                </div>
                <!-- partial -->
                <!-- partial:partials/_navbar.html -->
                <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
                    <div class="navbar-menu-wrapper d-flex align-items-stretch">
                        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
                            <span class="mdi mdi-chevron-double-left"></span>
                        </button>
                        <ul class="navbar-nav navbar-nav-right">
                            <li class="nav-item nav-profile dropdown d-none d-md-block">
                                <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                                    <div class="nav-profile-text">
                                        <asp:Label ID="lblNamaDua" runat="server" Text="Label"></asp:Label>
                                    </div>
                                </a>
                                <div class="dropdown-menu center navbar-dropdown" aria-labelledby="profileDropdown">
                                    <a class="dropdown-item" href="ubah-sandi.aspx">
                                        <i class="mdi mdi mdi-lock-open-outline"></i>Ubah Kata Sandi </a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#" onclick="Logout" id="lnkLogout" runat="server">
                                        <i class="mdi mdi mdi-logout"></i>Keluar </a>
                                </div>
                            </li>
                            <li class="nav-item nav-logout d-none d-lg-block">
                                <a class="nav-link" href="beranda.aspx">
                                    <i class="mdi mdi-home-circle"></i>
                                </a>
                            </li>
                        </ul>
                        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
                            <span class="mdi mdi-menu"></span>
                        </button>
                    </div>
                </nav>
                <!-- partial -->
                <div class="main-panel">
                    <div class="content-wrapper pb-0">
                        <div class="page-header flex-wrap">
                            <div class="header-left">
                                <button class="btn btn-primary mb-2 mb-md-0 mr-2">Create new document </button>
                                <button class="btn btn-outline-primary bg-white mb-2 mb-md-0">Import documents </button>
                            </div>
                            <div class="header-right d-flex flex-wrap mt-2 mt-sm-0">
                                <div class="d-flex align-items-center">
                                    <a href="#">
                                        <p class="m-0 pr-3">Dashboard</p>
                                    </a>
                                    <a class="pl-3 mr-4" href="#">
                                        <p class="m-0">ADE-00234</p>
                                    </a>
                                </div>
                                <button type="button" class="btn btn-primary mt-2 mt-sm-0 btn-icon-text">
                                    <i class="mdi mdi-plus-circle"></i>Add Prodcut
                                </button>
                            </div>
                        </div>
                        <!-- first row starts here -->
                        <div class="row">
                            <div class="col-xl-9 stretch-card grid-margin">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="d-flex justify-content-between flex-wrap">
                                            <div>
                                                <div class="card-title mb-0">Sales Revenue</div>
                                                <h3 class="font-weight-bold mb-0">$32,409</h3>
                                            </div>
                                            <div>
                                                <div class="d-flex flex-wrap pt-2 justify-content-between sales-header-right">
                                                    <div class="d-flex mr-5">
                                                        <button type="button" class="btn btn-social-icon btn-outline-sales">
                                                            <i class="mdi mdi-inbox-arrow-down"></i>
                                                        </button>
                                                        <div class="pl-2">
                                                            <h4 class="mb-0 font-weight-semibold head-count">$8,217 </h4>
                                                            <span class="font-10 font-weight-semibold text-muted">TOTAL SALES</span>
                                                        </div>
                                                    </div>
                                                    <div class="d-flex mr-3 mt-2 mt-sm-0">
                                                        <button type="button" class="btn btn-social-icon btn-outline-sales profit">
                                                            <i class="mdi mdi-cash text-info"></i>
                                                        </button>
                                                        <div class="pl-2">
                                                            <h4 class="mb-0 font-weight-semibold head-count">2,804 </h4>
                                                            <span class="font-10 font-weight-semibold text-muted">TOTAL PROFIT</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="text-muted font-13 mt-2 mt-sm-0">
                                            Your sales monitoring dashboard template. <a class="text-muted font-13" href="#"><u>Learn more</u></a>
                                        </p>
                                        <div class="flot-chart-wrapper">
                                            <div id="flotChart" class="flot-chart">
                                                <canvas class="flot-base"></canvas>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 stretch-card grid-margin">
                                <div class="card card-img">
                                    <div class="card-body d-flex align-items-center">
                                        <div class="text-white">
                                            <h1 class="font-20 font-weight-semibold mb-0">Get premium </h1>
                                            <h1 class="font-20 font-weight-semibold">account!</h1>
                                            <p>to optimize your selling prodcut</p>
                                            <p class="font-10 font-weight-semibold">Enjoy the advantage of premium. </p>
                                            <button class="btn bg-white font-12">Get Premium</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- chart row starts here -->
                        <div class="row">
                            <div class="col-sm-6 stretch-card grid-margin">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="d-flex justify-content-between">
                                            <div class="card-title">
                                                Customers <small class="d-block text-muted">August 01 - August 31</small>
                                            </div>
                                            <div class="d-flex text-muted font-20">
                                                <i class="mdi mdi-printer mouse-pointer"></i>
                                                <i class="mdi mdi-help-circle-outline ml-2 mouse-pointer"></i>
                                            </div>
                                        </div>
                                        <h3 class="font-weight-bold mb-0">2,409 <span class="text-success h5">4,5%<i class="mdi mdi-arrow-up"></i></span>
                                        </h3>
                                        <span class="text-muted font-13">Avg customers/Day</span>
                                        <div class="line-chart-wrapper">
                                            <canvas id="linechart" height="80"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 stretch-card grid-margin">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="d-flex justify-content-between">
                                            <div class="card-title">
                                                Conversions <small class="d-block text-muted">August 01 - August 31</small>
                                            </div>
                                            <div class="d-flex text-muted font-20">
                                                <i class="mdi mdi-printer mouse-pointer"></i>
                                                <i class="mdi mdi-help-circle-outline ml-2 mouse-pointer"></i>
                                            </div>
                                        </div>
                                        <h3 class="font-weight-bold mb-0">0.40% <span class="text-success h5">0.20%<i class="mdi mdi-arrow-up"></i></span>
                                        </h3>
                                        <span class="text-muted font-13">Avg customers/Day</span>
                                        <div class="bar-chart-wrapper">
                                            <canvas id="barchart" height="80"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- image card row starts here -->
                        <div class="row">
                            <div class="col-sm-4 stretch-card grid-margin">
                                <div class="card">
                                    <div class="card-body p-0">
                                        <img class="img-fluid w-100" src="../../assets/images/dashboard/img_1.jpg" alt="" />
                                    </div>
                                    <div class="card-body px-3 text-dark">
                                        <div class="d-flex justify-content-between">
                                            <p class="text-muted font-13 mb-0">ENTIRE APARTMENT</p>
                                            <i class="mdi mdi-heart-outline"></i>
                                        </div>
                                        <h5 class="font-weight-semibold">Cosy Studio flat in London </h5>
                                        <div class="d-flex justify-content-between font-weight-semibold">
                                            <p class="mb-0">
                                                <i class="mdi mdi-star star-color pr-1"></i>4.60 (35)
                                            </p>
                                            <p class="mb-0">$5,267/night</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4 stretch-card grid-margin">
                                <div class="card">
                                    <div class="card-body p-0">
                                        <img class="img-fluid w-100" src="../../assets/images/dashboard/img_2.jpg" alt="" />
                                    </div>
                                    <div class="card-body px-3 text-dark">
                                        <div class="d-flex justify-content-between">
                                            <p class="text-muted font-13 mb-0">ENTIRE APARTMENT</p>
                                            <i class="mdi mdi-heart-outline"></i>
                                        </div>
                                        <h5 class="font-weight-semibold">Victoria Bedsit Studio Ensuite </h5>
                                        <div class="d-flex justify-content-between font-weight-semibold">
                                            <p class="mb-0">
                                                <i class="mdi mdi-star star-color pr-1"></i>4.83 (12)
                                            </p>
                                            <p class="mb-0">$6,144/night</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4 stretch-card grid-margin">
                                <div class="card">
                                    <div class="card-body p-0">
                                        <img class="img-fluid w-100" src="../../assets/images/dashboard/img_3.jpg" alt="" />
                                    </div>
                                    <div class="card-body px-3 text-dark">
                                        <div class="d-flex justify-content-between">
                                            <p class="text-muted font-13 mb-0">ENTIRE APARTMENT</p>
                                            <i class="mdi mdi-heart-outline"></i>
                                        </div>
                                        <h5 class="font-weight-semibold">Fabulous Huge Room</h5>
                                        <div class="d-flex justify-content-between font-weight-semibold">
                                            <p class="mb-0">
                                                <i class="mdi mdi-star star-color pr-1"></i>3.83 (15)
                                            </p>
                                            <p class="mb-0">$5,267/night</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- table row starts here -->
                        <div class="row">
                            <div class="col-xl-4 grid-margin">
                                <div class="card card-stat stretch-card mb-3">
                                    <div class="card-body">
                                        <div class="d-flex justify-content-between">
                                            <div class="text-white">
                                                <h3 class="font-weight-bold mb-0">$168.90</h3>
                                                <h6>This Month</h6>
                                                <div class="badge badge-danger">23%</div>
                                            </div>
                                            <div class="flot-bar-wrapper">
                                                <div id="column-chart" class="flot-chart"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card stretch-card mb-3">
                                    <div class="card-body d-flex flex-wrap justify-content-between">
                                        <div>
                                            <h4 class="font-weight-semibold mb-1 text-black">Member Profit </h4>
                                            <h6 class="text-muted">Average Weekly Profit</h6>
                                        </div>
                                        <h3 class="text-success font-weight-bold">+168.900</h3>
                                    </div>
                                </div>
                                <div class="card stretch-card mb-3">
                                    <div class="card-body d-flex flex-wrap justify-content-between">
                                        <div>
                                            <h4 class="font-weight-semibold mb-1 text-black">Total Profit </h4>
                                            <h6 class="text-muted">Weekly Customer Orders</h6>
                                        </div>
                                        <h3 class="text-success font-weight-bold">+6890.00</h3>
                                    </div>
                                </div>
                                <div class="card mt-3">
                                    <div class="card-body d-flex flex-wrap justify-content-between">
                                        <div>
                                            <h4 class="font-weight-semibold mb-1 text-black">Issue Reports </h4>
                                            <h6 class="text-muted">System bugs and issues</h6>
                                        </div>
                                        <h3 class="text-danger font-weight-bold">-8380.00</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-8 stretch-card grid-margin">
                                <div class="card">
                                    <div class="card-body pb-0">
                                        <h4 class="card-title mb-0">Financial management review</h4>
                                    </div>
                                    <div class="card-body p-0">
                                        <div class="table-responsive">
                                            <table class="table custom-table text-dark">
                                                <thead>
                                                    <tr>
                                                        <th>Name</th>
                                                        <th>Sale Rate</th>
                                                        <th>Actual</th>
                                                        <th>Variance</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <img src="../../assets/images/faces/face2.jpg" class="mr-2" alt="image" />
                                                            Jacob Jensen </td>
                                                        <td>
                                                            <div class="d-flex">
                                                                <span class="pr-2 d-flex align-items-center">85%</span>
                                                                <select id="star-1" name="rating" autocomplete="off">
                                                                    <option value="1">1</option>
                                                                    <option value="2">2</option>
                                                                    <option value="3">3</option>
                                                                    <option value="4">4</option>
                                                                    <option value="5">5</option>
                                                                </select>
                                                            </div>
                                                        </td>
                                                        <td>32,435</td>
                                                        <td>40,234</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <img src="../../assets/images/faces/face3.jpg" class="mr-2" alt="image" />
                                                            Cecelia Bradley </td>
                                                        <td>
                                                            <div class="d-flex">
                                                                <span class="pr-2 d-flex align-items-center">55%</span>
                                                                <select id="star-2" name="rating" autocomplete="off">
                                                                    <option value="1">1</option>
                                                                    <option value="2">2</option>
                                                                    <option value="3">3</option>
                                                                    <option value="4">4</option>
                                                                    <option value="5">5</option>
                                                                </select>
                                                            </div>
                                                        </td>
                                                        <td>4,36780</td>
                                                        <td>765728</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <img src="../../assets/images/faces/face4.jpg" class="mr-2" alt="image" />
                                                            Leah Sherman </td>
                                                        <td>
                                                            <div class="d-flex">
                                                                <span class="pr-2 d-flex align-items-center">23%</span>
                                                                <select id="star-3" name="rating" autocomplete="off">
                                                                    <option value="1">1</option>
                                                                    <option value="2">2</option>
                                                                    <option value="3">3</option>
                                                                    <option value="4">4</option>
                                                                    <option value="5">5</option>
                                                                </select>
                                                            </div>
                                                        </td>
                                                        <td>2300</td>
                                                        <td>22437</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <img src="../../assets/images/faces/face5.jpg" class="mr-2" alt="image" />
                                                            Ina Curry </td>
                                                        <td>
                                                            <div class="d-flex">
                                                                <span class="pr-2 d-flex align-items-center">44%</span>
                                                                <select id="star-4" name="rating" autocomplete="off">
                                                                    <option value="1">1</option>
                                                                    <option value="2">2</option>
                                                                    <option value="3">3</option>
                                                                    <option value="4">4</option>
                                                                    <option value="5">5</option>
                                                                </select>
                                                            </div>
                                                        </td>
                                                        <td>53462</td>
                                                        <td>1,75938</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <img src="../../assets/images/faces/face7.jpg" class="mr-2" alt="image" />
                                                            Lida Fitzgerald </td>
                                                        <td>
                                                            <div class="d-flex">
                                                                <span class="pr-2 d-flex align-items-center">65%</span>
                                                                <select id="star-5" name="rating" autocomplete="off">
                                                                    <option value="1">1</option>
                                                                    <option value="2">2</option>
                                                                    <option value="3">3</option>
                                                                    <option value="4">4</option>
                                                                    <option value="5">5</option>
                                                                </select>
                                                            </div>
                                                        </td>
                                                        <td>67453</td>
                                                        <td>765377</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <img src="../../assets/images/faces/face2.jpg" class="mr-2" alt="image" />
                                                            Stella Johnson </td>
                                                        <td>
                                                            <div class="d-flex">
                                                                <span class="pr-2 d-flex align-items-center">49%</span>
                                                                <select id="star-6" name="rating" autocomplete="off">
                                                                    <option value="1">1</option>
                                                                    <option value="2">2</option>
                                                                    <option value="3">3</option>
                                                                    <option value="4">4</option>
                                                                    <option value="5">5</option>
                                                                </select>
                                                            </div>
                                                        </td>
                                                        <td>43662</td>
                                                        <td>96535</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <img src="../../assets/images/faces/face9.jpg" class="mr-2" alt="image" />
                                                            Maria Ortiz </td>
                                                        <td>
                                                            <div class="d-flex">
                                                                <span class="pr-2 d-flex align-items-center">65%</span>
                                                                <select id="star-7" name="rating" autocomplete="off">
                                                                    <option value="1">1</option>
                                                                    <option value="2">2</option>
                                                                    <option value="3">3</option>
                                                                    <option value="4">4</option>
                                                                    <option value="5">5</option>
                                                                </select>
                                                            </div>
                                                        </td>
                                                        <td>76555</td>
                                                        <td>258546</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <a class="text-black font-13 d-block pt-2 pb-2 pb-lg-0 font-weight-bold pl-4" href="#">Show more</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- doughnut chart row starts -->
                        <div class="row">
                            <div class="col-sm-12 stretch-card grid-margin">
                                <div class="card">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="card border-0">
                                                <div class="card-body">
                                                    <div class="card-title">Channel Sessions</div>
                                                    <div class="d-flex flex-wrap">
                                                        <div class="doughnut-wrapper w-50">
                                                            <canvas id="doughnutChart1" width="100" height="100"></canvas>
                                                        </div>
                                                        <div id="doughnut-chart-legend" class="pl-lg-3 rounded-legend align-self-center flex-grow legend-vertical legend-bottom-left"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="card border-0">
                                                <div class="card-body">
                                                    <div class="card-title">News Sessions</div>
                                                    <div class="d-flex flex-wrap">
                                                        <div class="doughnut-wrapper w-50">
                                                            <canvas id="doughnutChart2" width="100" height="100"></canvas>
                                                        </div>
                                                        <div id="doughnut-chart-legend2" class="pl-lg-3 rounded-legend align-self-center flex-grow legend-vertical legend-bottom-left"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="card border-0">
                                                <div class="card-body">
                                                    <div class="card-title">Device Sessions</div>
                                                    <div class="d-flex flex-wrap">
                                                        <div class="doughnut-wrapper w-50">
                                                            <canvas id="doughnutChart3" width="100" height="100"></canvas>
                                                        </div>
                                                        <div id="doughnut-chart-legend3" class="pl-lg-3 rounded-legend align-self-center flex-grow legend-vertical legend-bottom-left"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- last row starts here -->
                        <div class="row">
                            <div class="col-sm-6 col-xl-4 stretch-card grid-margin">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="card-title mb-2">Upcoming events (3)</div>
                                        <h3 class="mb-3">23 september 2019</h3>
                                        <div class="d-flex border-bottom border-top py-3">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="checkbox" class="form-check-input" checked /></label>
                                            </div>
                                            <div class="pl-2">
                                                <span class="font-12 text-muted">Tue, Mar 5, 9.30am</span>
                                                <p class="m-0 text-black">Hey I attached some new PSD files… </p>
                                            </div>
                                        </div>
                                        <div class="d-flex border-bottom py-3">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="checkbox" class="form-check-input" /></label>
                                            </div>
                                            <div class="pl-2">
                                                <span class="font-12 text-muted">Mon, Mar 11, 4.30 PM</span>
                                                <p class="m-0 text-black">Discuss performance with manager </p>
                                            </div>
                                        </div>
                                        <div class="d-flex border-bottom py-3">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="checkbox" class="form-check-input" /></label>
                                            </div>
                                            <div class="pl-2">
                                                <span class="font-12 text-muted">Tue, Mar 5, 9.30am</span>
                                                <p class="m-0 text-black">Meeting with Alisa</p>
                                            </div>
                                        </div>
                                        <div class="d-flex pt-3">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="checkbox" class="form-check-input" /></label>
                                            </div>
                                            <div class="pl-2">
                                                <span class="font-12 text-muted">Mon, Mar 11, 4.30 PM</span>
                                                <p class="m-0 text-black">Hey I attached some new PSD files… </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-xl-4 stretch-card grid-margin">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="d-flex border-bottom mb-4 pb-2">
                                            <div class="hexagon">
                                                <div class="hex-mid hexagon-warning">
                                                    <i class="mdi mdi-clock-outline"></i>
                                                </div>
                                            </div>
                                            <div class="pl-4">
                                                <h4 class="font-weight-bold text-warning mb-0">12.45 </h4>
                                                <h6 class="text-muted">Schedule Meeting</h6>
                                            </div>
                                        </div>
                                        <div class="d-flex border-bottom mb-4 pb-2">
                                            <div class="hexagon">
                                                <div class="hex-mid hexagon-danger">
                                                    <i class="mdi mdi-account-outline"></i>
                                                </div>
                                            </div>
                                            <div class="pl-4">
                                                <h4 class="font-weight-bold text-danger mb-0">34568</h4>
                                                <h6 class="text-muted">Profile visits</h6>
                                            </div>
                                        </div>
                                        <div class="d-flex border-bottom mb-4 pb-2">
                                            <div class="hexagon">
                                                <div class="hex-mid hexagon-success">
                                                    <i class="mdi mdi-laptop-chromebook"></i>
                                                </div>
                                            </div>
                                            <div class="pl-4">
                                                <h4 class="font-weight-bold text-success mb-0">33.50% </h4>
                                                <h6 class="text-muted">Bounce Rate</h6>
                                            </div>
                                        </div>
                                        <div class="d-flex border-bottom mb-4 pb-2">
                                            <div class="hexagon">
                                                <div class="hex-mid hexagon-info">
                                                    <i class="mdi mdi-clock-outline"></i>
                                                </div>
                                            </div>
                                            <div class="pl-4">
                                                <h4 class="font-weight-bold text-info mb-0">12.45</h4>
                                                <h6 class="text-muted">Schedule Meeting</h6>
                                            </div>
                                        </div>
                                        <div class="d-flex">
                                            <div class="hexagon">
                                                <div class="hex-mid hexagon-primary">
                                                    <i class="mdi mdi-timer-sand"></i>
                                                </div>
                                            </div>
                                            <div class="pl-4">
                                                <h4 class="font-weight-bold text-primary mb-0">12.45 </h4>
                                                <h6 class="text-muted mb-0">Browser Usage</h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-xl-4 stretch-card grid-margin">
                                <div class="card color-card-wrapper">
                                    <div class="card-body">
                                        <img class="img-fluid card-top-img w-100" src="../../assets/images/dashboard/img_5.jpg" alt="" />
                                        <div class="d-flex flex-wrap justify-content-around color-card-outer">
                                            <div class="col-6 p-0 mb-4">
                                                <div class="color-card primary m-auto">
                                                    <i class="mdi mdi-clock-outline"></i>
                                                    <p class="font-weight-semibold mb-0">Delivered</p>
                                                    <span class="small">15 Packages</span>
                                                </div>
                                            </div>
                                            <div class="col-6 p-0 mb-4">
                                                <div class="color-card bg-success m-auto">
                                                    <i class="mdi mdi-tshirt-crew"></i>
                                                    <p class="font-weight-semibold mb-0">Ordered</p>
                                                    <span class="small">72 Items</span>
                                                </div>
                                            </div>
                                            <div class="col-6 p-0">
                                                <div class="color-card bg-info m-auto">
                                                    <i class="mdi mdi-trophy-outline"></i>
                                                    <p class="font-weight-semibold mb-0">Arrived</p>
                                                    <span class="small">34 Upgraded</span>
                                                </div>
                                            </div>
                                            <div class="col-6 p-0">
                                                <div class="color-card bg-danger m-auto">
                                                    <i class="mdi mdi-presentation"></i>
                                                    <p class="font-weight-semibold mb-0">Reported</p>
                                                    <span class="small">72 Support</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- content-wrapper ends -->
                    <!-- partial:partials/_footer.html -->
                    <footer class="footer">
                        <div class="d-sm-flex justify-content-center justify-content-sm-between">
                            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2020 <a href="https://www.bootstrapdash.com/" target="_blank">BootstrapDash</a>. All rights reserved.</span>
                            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="mdi mdi-heart text-danger"></i></span>
                        </div>
                    </footer>
                    <!-- partial -->
                </div>
                <!-- main-panel ends -->
            </div>
            <!-- page-body-wrapper ends -->
        </div>
        <script src="../../assets/vendors/js/vendor.bundle.base.js"></script>
        <!-- endinject -->
        <!-- Plugin js for this page -->
        <script type="text/javascript" src="../../assets/vendors/jquery-bar-rating/jquery.barrating.min.js"></script>
        <script type="text/javascript" src="../../assets/vendors/chart.js/Chart.min.js"></script>
        <script type="text/javascript" src="../../assets/vendors/flot/jquery.flot.js"></script>
        <script type="text/javascript" src="../../assets/vendors/flot/jquery.flot.resize.js"></script>
        <script type="text/javascript" src="../../assets/vendors/flot/jquery.flot.categories.js"></script>
        <script type="text/javascript" src="../../assets/vendors/flot/jquery.flot.fillbetween.js"></script>
        <script type="text/javascript" src="../../assets/vendors/flot/jquery.flot.stack.js"></script>
        <!-- End plugin js for this page -->
        <!-- inject:js -->
        <script type="text/javascript" src="../../assets/js/off-canvas.js"></script>
        <script type="text/javascript" src="../../assets/js/hoverable-collapse.js"></script>
        <script type="text/javascript" src="../../assets/js/misc.js"></script>
        <script type="text/javascript" src="../../assets/js/settings.js"></script>
        <script type="text/javascript" src="../../assets/js/todolist.js"></script>
        <!-- endinject -->
        <!-- Custom js for this page -->
        <script src="../../assets/js/dashboard.js"></script>
    </form>
</body>
</html>
