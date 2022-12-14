<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="User_ForgotPassword" %>

<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from codingeek.io/html/zarxio/signin.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 13 Feb 2021 12:48:56 GMT -->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>KG Fitness</title>
     <!-- favicon -->
     <link rel=icon href=assets/img/top.png sizes="20x20" >
    <!-- animate -->
    <link rel="stylesheet" href="assets/css/animate.css">
    <!-- bootstrap -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <!-- magnific popup -->
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <!-- Slick -->
    <link rel="stylesheet" href="assets/css/slick.css" />
    <link rel="stylesheet" href="assets/css/slick-theme.css" />
    <!-- nice select -->
    <link rel="stylesheet" href="assets/css/nice-select.css"> 
    <!-- owl carousel -->
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <!-- fontawesome -->
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <!-- flaticon -->
    <link rel="stylesheet" href="assets/css/flaticon.css">
    <!-- hamburgers -->
    <link rel="stylesheet" href="assets/css/hamburgers.min.css">
    <!-- Main Stylesheet -->
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- responsive Stylesheet -->
    <link rel="stylesheet" href="assets/css/responsive.css">
    <!--Codingeek -->
    <link rel="stylesheet" href="../../../codingeek.net/codingeek-js/codingeek.html">  
</head>
<body>

    <!-- preloader area start -->
    <div class="preloader" id="preloader">
        <div class="preloader-inner">
            <img src="assets/img/loader.gif" alt="">
            <%--<div class="spinner">
                <div class="dot1"></div>
                <div class="dot2"></div>
            </div>--%>
        </div>
    </div>
    <!-- preloader area end -->

     <!-- signin area start -->
    <div class="sign-area">
        <div class="container-fluid no-gutter">
            <div class="row no-gutter">
                <div class="col-xl-6 col-md-6">
                    <div class="sign-content signup-content text-center h-100">
                       <div class="thumb">
                            <img src="assets/img/kg.png" alt="">
                        </div>
                        <h3>Forgot Password!</h3>
                         <p>Enter your email address and we'll send you an email to reset your password</p>
                        
                        <%--<a class="btn btn-primary btn-lg btn-block"><i class="fa fa-facebook-square"></i> Login via facebook</a>--%>
                        <form id="Form1" runat="server">
                            <div class="form-group text-left">
                                <label for="email">Email Address <i class="fa fa-smile-o" aria-hidden="true"></i></label>
                                <%--<input type="email" class="form-control" id="email" placeholder="xyz@gmail.com">--%>
                                 <asp:TextBox ID="txt_email" class="form-control" placeholder="xyz@gmail.com" runat="server"></asp:TextBox>
                            </div>


                            <%--<a class="btn btn-success btn-lg btn-block">Login</a>--%>
                        <asp:Button ID="btn_forgot" class="btn btn-success btn-lg btn-block" runat="server" 
                                Text="Forgot Password" onclick="btn_forgot_Click" />


                            <p>By joining, you agree to the <a href="#">Terms</a> and <a href="#">Privacy Policy</a>.</p>

                        <asp:Label ID="Label1" class="card-text" runat="server" Text=""></asp:Label>
                        </form>
                    </div>
                </div>
                <div class="col-xl-4 col-md-6">
                    <div class="sign-slider">
                        <div class="thumb">
                            <img class="w-100" src="assets/img/signin/01.jpg" alt="">
                        </div>
                        <div class="thumb">
                            <img class="w-100" src="assets/img/signin/02.jpg" alt="">
                        </div>
                        <div class="thumb">
                            <img class="w-100" src="assets/img/signin/03.jpg" alt="">
                        </div>
                        <div class="thumb">
                            <img class="w-100" src="assets/img/signin/04.jpg" alt="">
                        </div>
                        <div class="thumb">
                            <img class="w-100" src="assets/img/signin/05.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- signin area end -->

    <!-- brand-area start -->
    <div class="brand-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="brand-slider">
                        <div class="brant-item">
                            <img src="assets/img/brand/brand1.png" alt="brand">
                        </div>
                        <div class="brant-item">
                            <img src="assets/img/brand/brand2.png" alt="brand">
                        </div>
                        <div class="brant-item">
                            <img src="assets/img/brand/brand3.png" alt="brand">
                        </div>
                        <div class="brant-item">
                            <img src="assets/img/brand/brand4.png" alt="brand">
                        </div>
                        <div class="brant-item">
                            <img src="assets/img/brand/brand5.png" alt="brand">
                        </div>
                        <div class="brant-item">
                            <img src="assets/img/brand/brand1.png" alt="brand">
                        </div>
                        <div class="brant-item">
                            <img src="assets/img/brand/brand2.png" alt="brand">
                        </div>
                        <div class="brant-item">
                            <img src="assets/img/brand/brand3.png" alt="brand">
                        </div>
                        <div class="brant-item">
                            <img src="assets/img/brand/brand4.png" alt="brand">
                        </div>
                        <div class="brant-item">
                            <img src="assets/img/brand/brand5.png" alt="brand">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- brand-area end -->
    
    <!-- footer area start -->
    <footer class="footer-area footer-style-2 footer-bg padding-top-100">
        <div class="footer-top padding-top-60 padding-bottom-0">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="footer-widget widget">
                            <div class="subscribe-form subscribe-form-style2">
                                <%--<div class="input-group margin-top-15 margin-bottom-100">
                                    <input type="text" class="form-control" placeholder="Enter your email address">
                                    <span class="input-group-btn">
                                        <button class="btn btn-default submit-btn" type="button">Subscribe</button>
                                    </span>
                                </div>--%>
                            </div>
                        </div>
                    </div>
                </div>
               <div class="row">
                    <div class="col-lg-5 col-12">
                        <div class="footer-widget widget widget_nav_menu">
                            <%--<ul>
                                <li><a href="#">Home</a></li>
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">Service</a></li>
                                <li><a href="#">Classes</a></li>
                            </ul>--%>
                        </div>
                    </div>
                    <div class="col-lg-2 col-12">
                        <div class="footer-widget widget">
                            <div class="about_us_widget">
                                <a href="UHome.aspx" class="footer-logo"> 
                                    <img src="assets/img/logo1.png" alt="footer logo">
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5 col-12">
                        <div class="footer-widget widget widget_nav_menu">
                            <%--<ul>
                                <li><a href="#">Trainer</a></li>
                                <li><a href="#">Shop</a></li>
                                <li><a href="#">Blog</a></li>
                                <li><a href="#">Contact Us</a></li>
                            </ul>--%>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="copyright-area-inner">
                            ©All rights reserved. Powered by <a href="https://codingeek.net/" target="_blank">VIRAL JARIWALA & JAY GOR</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- footer area end -->

    <!-- back to top area start -->
    <div class="back-to-top">
        <span class="back-top"><i class="fa fa-angle-up"></i></span>
    </div>
    <!-- back to top area end -->

    <!-- jquery -->
    <script src="assets/js/jquery-2.2.4.min.js"></script>
    <!-- popper -->
    <script src="assets/js/popper.min.js"></script>
    <!-- bootstrap -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- magnific popup -->
    <script src="assets/js/jquery.magnific-popup.js"></script>
    <!-- wow -->
    <script src="assets/js/wow.min.js"></script>
    <!-- nice select -->
    <script src="assets/js/nice-select.js"></script>
    <!-- counter up -->
    <script src="assets/js/counter-up.js"></script>
    <!-- owl carousel -->
    <script src="assets/js/owl.carousel.min.js"></script>
    <!-- Slick -->
    <script src="assets/js/slick.min.js"></script>
    <!-- Slick Animation -->
    <script src="assets/js/slick-animation.js"></script>
    <!-- waypoint -->
    <script src="assets/js/waypoints.min.js"></script>
    <!-- counterup -->
    <script src="assets/js/jquery.counterup.min.js"></script>
    <!-- imageloaded -->
    <script src="assets/js/imagesloaded.pkgd.min.js"></script>
    <!-- isotope -->
    <script src="assets/js/isotope.pkgd.min.js"></script>
        <!-- rProgressbar -->
    <script src="assets/js/jQuery.rProgressbar.min.js"></script>
    <!-- main js -->
    <script src="assets/js/main.js"></script>
    <script src="assets/js/script.js"></script>
    <!-- codingeek -->
    <script src="codingeek-link.js"></script>
    <script src="../../../codingeek.net/codingeek-js/codingeek-2.html"></script>
</body>

<!-- Mirrored from codingeek.io/html/zarxio/signin.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 13 Feb 2021 12:49:11 GMT -->
</html>