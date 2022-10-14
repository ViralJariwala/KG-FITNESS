<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="User_SignUp" %>


<%@ Register TagPrefix="ajaxToolkit" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from codingeek.io/html/zarxio/signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 13 Feb 2021 12:49:11 GMT -->
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>KG Fitness</title>
    <!-- favicon -->
    <link rel="icon" href="assets/img/top.png" sizes="20x20">
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
            <%-- <div class="spinner">
                <div class="dot1"></div>
                <div class="dot2"></div>
            </div>--%>
        </div>
    </div>
    <!-- preloader area end -->

    <%-- <!-- search Popup -->
    <div class="body-overlay" id="body-overlay"></div>
    <div class="search-popup" id="search-popup">
        <form action="http://codingeek.io/html/zarxio/index.html" class="search-form">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Search.....">
            </div>
            <button type="submit" class="submit-btn"><i class="fa fa-search"></i></button>
        </form>
    </div>
    <!--  search Popup -->--%>

    <%--  <!-- navbar start -->
    <div class="zarxio-navbar">
        <nav class="navbar navbar-area navbar-expand-lg black-bg nav-style-02">
            <div class="container nav-container">
                <div class="responsive-mobile-menu">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#billatrail_main_menu" 
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                        <span class="bar1"></span>
                        <span class="bar2"></span>
                        <span class="bar3"></span>
                    </button>
                </div>
                <div class="logo">
                    <a href="index.html"> <img src="assets/img/logo.png" alt="logo"></a>
                </div>
                <div class="collapse navbar-collapse" id="billatrail_main_menu">
                    <ul class="navbar-nav menu-open">
                        <li class="menu-item-has-children">
                            <a href="#">Home</a>
                            <ul class="sub-menu">
                                <li><a href="index.html">Home 1</a></li>
                                <li><a href="index-2.html">Home 2</a></li>
                                <li><a href="index-3.html">Home 3</a></li>
                            </ul>
                        </li>

                        <li class="hidden-md"><a href="about.html">About</a></li>
                        <li class="menu-item-has-children">
                            <a href="#">Classes</a>
                            <ul class="sub-menu">
                                <li><a href="classes.html">Class</a></li>
                                <li><a href="class-details.html">Class Details</a></li>
                            </ul>
                        </li>
                        <li class="menu-item-has-children">
                            <a href="#">Trainer</a>
                            <ul class="sub-menu">
                                <li><a href="trainer.html">Trainer</a></li>
                                <li><a href="trainer-details.html">Trainer Details</a></li>
                            </ul>
                        </li>
                        <li class="menu-item-has-children">
                            <a href="#">Shop</a>
                            <ul class="sub-menu">
                                <li><a href="shop.html">Shop</a></li>
                                <li><a href="product-details.html">Product Details</a></li>
                                <li><a href="shopping-cart.html">Shopping Cart</a></li>
                                <li><a href="payment.html">Payment</a></li>
                                <li><a href="checkout.html">Checkout</a></li>
                            </ul>
                        </li>
                        <li class="menu-item-has-children">
                            <a href="#">Blog</a>
                            <ul class="sub-menu">
                                <li><a href="blog.html">Blog</a></li>
                                <li><a href="blog-details.html">Blog Details</a></li>
                            </ul>
                        </li>
                        <li class="menu-item-has-children current-menu-item">
                            <a href="#">Pages</a>
                            <ul class="sub-menu">
                                <li class="d-block d-xl-none"><a href="about.html">About Us</a></li>
                                <li><a href="service.html">Service</a></li>
                                <li><a href="signin.html">Sign In</a></li>
                                <li><a href="signup.html">Sign Up</a></li>
                                <li><a href="404.html">404</a></li>
                                <li><a href="coming-soon.html">Coming Soon</a></li>
                            </ul>
                        </li>
                        <li><a href="contact.html">Contact</a></li>
                    </ul>
                </div>
                <div class="nav-right-part">
                    <ul>
                        <li class="search" id="search">
                            <a href="#"><i class="fa fa-search"></i></a>
                        </li>
                        <li>
                            <div class="hamberger-area d-none d-lg-block">
                                <div class="menu-toggle hamburger hamburger--squeeze is-active">
                                    <div class="hamburger-box">
                                        <div class="hamburger-inner"></div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
    <!-- navbar end -->--%>

    <!-- signup area start -->
    <section class="sign-area">
        <div class="container-fluid no-gutter">
            <div class="row no-gutter">
                <div class="col-xl-4 col-lg-6 offset-xl-2">
                    <div class="sign-slider">
                        <div class="thumb">
                            <img class="w-100" src="assets/img/signin/05.jpg" alt="">
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
                            <img class="w-100" src="assets/img/signin/01.jpg" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6">
                    <div class="sign-content text-center h-100">
                        <div class="thumb">
                            <img src="assets/img/kg.png" alt="">
                        </div>
                        <h3>Join our community!</h3>
                        <p>Already have an account? <a href="SignIn.aspx">Login</a></p>
                        <%--<a class="btn btn-primary btn-lg btn-block"><i class="fa fa-facebook-square"></i> Join via facebook</a>--%>
                        <form runat="server" class="form">
 <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                            <div class="form-row">
                                <div class="form-group col-md-6 text-left">
                                    <label for="fname">First  Name <i class="fa fa-smile-o" aria-hidden="true"></i></label>
                                    <%--<input type="text" class="form-control" id="fname" placeholder="First Name">--%>
                                    <asp:TextBox ID="txt_fname" class="form-control" placeholder="First Name" runat="server" required=""></asp:TextBox>
                                </div>
                                <div class="form-group col-md-6 text-left">
                                    <label for="lname">Last Name <i class="fa fa-smile-o" aria-hidden="true"></i></label>
                                    <%--<input type="text" class="form-control" id="lname" placeholder="Last Name">--%>
                                    <asp:TextBox ID="txt_lname"  class="form-control" placeholder="Last Name" runat="server" required=""></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-group text-left">
                                <label for="email">Address <i class="fa fa-smile-o" aria-hidden="true"></i></label>
                                <%--<input type="email" class="form-control" id="email1" placeholder="Enter Address">--%>
                                <asp:TextBox ID="txt_address" class="form-control" placeholder="Enter Address" runat="server" required=""></asp:TextBox>
                            </div>


                            <div class="form-group text-left">
                                <label for="email">Email Address <i class="fa fa-smile-o" aria-hidden="true"></i></label>
                                <%--<input type="email" class="form-control" id="email" placeholder="xyz@gmail.com">--%>
                                <asp:TextBox ID="txt_email" class="form-control" placeholder="xyz@gmail.com" runat="server" required=""></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter Valid E-Mail " ControlToValidate="txt_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#CC0000"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group text-left">
                                <label for="password">Password <%--<span class="color-red password-alert">(Hey you forgot to create the password)</span>--%> <i class="fa fa-smile-o color-red" aria-hidden="true"></i></label>
                                <%-- <input type="password" class="form-control" id="password" placeholder="Enter Password">--%>
                                <asp:TextBox ID="txt_password" class="form-control" placeholder="Enter Password"
                                    runat="server" TextMode="Password" required=""></asp:TextBox>

                            </div>

                            <div class="form-group text-left">
                                <label for="password">Confirm Password <%--<span class="color-red password-alert">(Hey you forgot to create the password)</span>--%> <i class="fa fa-smile-o color-red" aria-hidden="true"></i></label>
                                <%-- <input type="password" class="form-control" id="password" placeholder="Enter Password">--%>
                                <asp:TextBox ID="txt_confirm_password" class="form-control" placeholder="Enter Password"
                                    runat="server" TextMode="Password" required=""></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Does Not Match Password" ControlToCompare="txt_password" ControlToValidate="txt_confirm_password"></asp:CompareValidator>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-6 text-left">
                                    <label for="fname">Date Of Birth <i class="fa fa-smile-o" aria-hidden="true"></i></label>
                                    <%--<input type="text" class="form-control" id="Text1" placeholder="Date Of Birth">--%>
                                    <asp:TextBox ID="txt_dob" AutoCompleteType="Disabled" class="form-control" placeholder="DD/MM/YYYY" runat="server" required=""></asp:TextBox>
                                    <ajaxToolkit:CalendarExtender runat="server" Format="dd/MM/yyyy" BehaviorID="txt_dob_CalendarExtender" TargetControlID="txt_dob" ID="txt_dob_CalendarExtender"></ajaxToolkit:CalendarExtender>
                                </div>
                             
                               <div class="form-group col-md-6 text-left">
                                    <label for="lname">Gender <i class="fa fa-smile-o" aria-hidden="true"></i></label>
                                 <%-- <input type="text" class="form-control" id="Text2" placeholder="Gender">--%>
                                   <asp:DropDownList ID="Ddl_gender" class="form-control" runat="server">
                                        <asp:ListItem >Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                    </asp:DropDownList>
                                
                                    </div>
                                </div>
                           

                        <asp:UpdatePanel ID="UpdatePanel1" runat="server" ><ContentTemplate>
                             <div class="form-row">
                                <div class="form-group col-md-6 text-left">
                                    <label for="fname">State <i class="fa fa-smile-o" aria-hidden="true"></i></label>
                                    <%--<input type="text" class="form-control" id="Text3" placeholder="State">--%>
                                    <asp:DropDownList ID="ddl_state" class="form-control" runat="server" 
                                        DataSourceID="SqlDataSource1" DataTextField="state" 
                                        DataValueField="state_id" AutoPostBack="True"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                                        SelectCommand="SELECT * FROM [State]"></asp:SqlDataSource>
                                </div>
                                <div class="form-group col-md-6 text-left">
                                    <label for="lname">City <i class="fa fa-smile-o" aria-hidden="true"></i></label>
                                    <%--<input type="text" class="form-control" id="Text4" placeholder="City">--%>
                                    <asp:DropDownList ID="ddl_city" class="form-control" runat="server" DataSourceID="SqlDataSource2" 
                                        DataTextField="city" DataValueField="city_id"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                                        SelectCommand="SELECT * FROM [City] WHERE ([state_id] = @state_id)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="ddl_state" Name="state_id" 
                                                PropertyName="SelectedValue" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div>
                                  </ContentTemplate> </asp:UpdatePanel>


                             <div class="form-row">
                                <div class="form-group col-md-6 text-left">
                                    <label for="fname">Height<i class="fa fa-smile-o" aria-hidden="true"></i></label>
                                   <%-- <input type="text" class="form-control" id="Text5" placeholder="Aadhar">--%>
                                   <asp:TextBox ID="txt_height"  class="form-control" placeholder="5.9ft" runat="server" required="" ></asp:TextBox>
                                 
                                </div>
                                <div class="form-group col-md-6 text-left">
                                    <label for="lname">Weight<i class="fa fa-smile-o" aria-hidden="true"></i></label>
                                    <%--<input type="text" class="form-control" id="Text6" placeholder="Mobile">--%>
                                    <asp:TextBox ID="txt_weight" class="form-control" placeholder="55" runat="server" onkeypress="return ValidNumeric()" required=""></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Please Enter Valid Weight" ValidationExpression="[0-9]{2}" ControlToValidate="txt_weight"></asp:RegularExpressionValidator>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-6 text-left">
                                    <label for="fname">Mobile No.<i class="fa fa-smile-o" aria-hidden="true"></i></label>
                                   <%-- <input type="text" class="form-control" id="Text5" placeholder="Aadhar">--%>
                                   <asp:TextBox ID="txt_mobile" class="form-control" placeholder="9737XXXXXXX" runat="server" onkeypress="return ValidNumeric()" required=""></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please Enter Valid Phone Number" ValidationExpression="[0-9]{10}" ControlToValidate="txt_mobile"></asp:RegularExpressionValidator>
                                </div>
                                <div class="form-group col-md-6 text-left">
                                    <label for="lname">Image<i class="fa fa-smile-o" aria-hidden="true"></i></label>
                                    <%--<input type="text" class="form-control" id="Text6" placeholder="Mobile">--%>
                                    <asp:FileUpload ID="FileUpload1" class="form-control" runat="server" required="" />
                                </div>
                            </div>




                            <%--<a class="btn btn-success btn-lg btn-block">Join our community</a>--%>
                            <asp:Button ID="Btn_signup"  class="btn btn-success btn-lg btn-block" 
                                runat="server" Text="Join our community" onclick="Btn_signup_Click"></asp:Button>

                                <asp:Label ID="Label1" class="form-control" runat="server" Text=""></asp:Label>

                            <p>By joining, you agree to the <a href="#">Terms</a> and <a href="#">Privacy Policy</a>.</p>
                        </form>
                    </div>
                </div>
                </div>
            </div>
        
    </section>
    <!-- signup area end -->

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
                              <%--  <div class="input-group margin-top-15 margin-bottom-100">
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
                           <%-- <ul>
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
                           <%-- <ul>
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
    <script>
    function ValidNumeric() {    
    
    var charCode = (event.which) ? event.which : event.keyCode;    
    if (charCode >= 48 && charCode <= 57)    
    { return true; }    
    else    
    { return false; }    
        }
    </script>


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

<!-- Mirrored from codingeek.io/html/zarxio/signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 13 Feb 2021 12:49:11 GMT -->
</html>

