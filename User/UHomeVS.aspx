<%@ Page Title="" Language="C#" MasterPageFile="~/User/Visitor.master" AutoEventWireup="true" CodeFile="UHomeVS.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <form id="form1" runat="server">

 <!-- banner start -->
    <div class="banner-area banner-style-one" style="background-image:url(assets/img/bg/1.png);">
        
        <div class="border1"></div>
        <div class="border2"></div>
        <div class="border3"></div>
        <div class="border4"></div>

        <div class="banner-slider banner-slide1">
            <div class="banner-bg-style-one">
                <div class="container">
                    <div class="row h-100vh">
                        <div class="col-lg-6">
                            <div class="banner-inner-style-one">
                                <p data-animation-in="fadeInLeft">FUEL YOUR</p>
                                <h1 class="title1" data-animation-in="fadeInDown"> <span class="color-main">BODY</span> FITNESS</h1>
                                <div class="btn-wrapper" data-animation-in="fadeInUp">
                                    <a href="#" class="btn btn-slider">Be one of us</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="banner-bg-style-one" >
                <div class="container">
                    <div class="row h-100vh">
                        <div class="col-lg-6">
                            <div class="banner-inner-style-one">
                                <p data-animation-in="fadeInLeft">Improve</p>
                                <h1 class="title1" data-animation-in="fadeInDown"> <span class="color-main">Your</span> Health</h1>
                                <div class="btn-wrapper" data-animation-in="fadeInUp">
                                    <a href="#" class="btn btn-slider">Be one of us</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="banner-bg-style-one">
                <div class="container">
                    <div class="row h-100vh">
                        <div class="col-lg-6">
                            <div class="banner-inner-style-one">
                                <p data-animation-in="fadeInLeft">Let's Change</p>
                                <h1 class="title1" data-animation-in="fadeInDown"> <span class="color-main">Life</span> Style</h1>
                                <div class="btn-wrapper" data-animation-in="fadeInUp">
                                    <a href="#" class="btn btn-slider">Be one of us</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="banner-bg-style-one">
                <div class="container">
                    <div class="row h-100vh">
                        <div class="col-lg-6">
                            <div class="banner-inner-style-one">
                                <p data-animation-in="fadeInLeft">Start YOUR</p>
                                <h1 class="title1" data-animation-in="fadeInDown"> <span class="color-main">Gym</span> Classes</h1>
                                <div class="btn-wrapper" data-animation-in="fadeInUp">
                                    <a href="#" class="btn btn-slider">Be one of us</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- social icon -->
       <%--<ul class="social-icon">
            <li class="icon-list">
                <a href="" target="_blank" class="icon-text">
                    <i class="fa fa-twitter"></i>
                </a>
            </li>
            <li class="icon-list">
                <a href="" target="_blank" class="icon-text">
                    <i class="fa fa-facebook-f"></i>
                </a>
            </li>
            <li class="icon-list">
                <a href="" target="_blank" class="icon-text">
                    <i class="fa fa-instagram"></i>
                </a>
            </li>
            <li class="icon-list">
                <a href="" target="_blank" class="icon-text">
                    <i class="fa fa-youtube"></i>
                </a>
            </li>
        </ul>--%>

        <!-- video button -->
       <%-- <div class="cart-btn">
            <a href="#"><i class="flaticon-cart"></i><span class="badge">3</span></a>
        </div>--%>
        
        <!-- scroll down -->
        <div class="scroll">
            <a href="#home-about">
                <div class="scroll-btn">
                    <span></span>
                    <ul>
                        <li></li>
                        <li></li>
                        <li></li>
                    </ul>
                </div>
            </a>
        </div>

        <div class="banner-small-slider">


            <div class="small-slider">
               <div class="slider-image1"><img src="assets/img/home/sm-slider/1.jpg" alt=""></div>
                <div class="slider-image1"><img src="assets/img/home/sm-slider/2.jpg" alt=""></div>
                <div class="slider-image1"><img src="assets/img/home/sm-slider/3.jpg" alt=""></div>
              <div class="slider-image1"><img src="assets/img/home/sm-slider/4.jpg" alt=""></div>
            </div>
            <div class="controler-wrapper d-none d-lg-block">
                <div class="progressbar">
                    <span class="home-slider-progress"></span>
                    <span class="home-slider-progress-active"></span> 
                </div>
                <span class="active-controler">01</span><span>/</span><span class="total-controler">04</span>
            </div>
        </div>




    </div>
    <!-- banner end -->

    <!-- home-about start -->
   <div class="home-about" id="home-about">
        <div class="floating-icon" id="service_info_item">
            <div class="floating-icon__is floating-icon-info">
                <i class="flaticon-phone-call"></i>
            </div>
            <!--floating-icon-is-->
            <div class="floating-icon__is floating-icon-location">
                <i class="flaticon-placeholder"></i>
            </div>
            <!--floating-icon-is-->
           <%-- <div class="floating-icon__is floating-icon-message">
                <i class="flaticon-email"></i>
            </div>--%>
            <!--floating-icon-is-->
        </div>
        <!--floating-icon-->

        <div class="container padding-top-100 padding-bottom-94">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-6 col-xl-5">
                            <div class="left-content-area" id="twentytwenty-container">
                              
                                <img src="assets/img/home/after.jpg" alt="editing company image">
                            </div>
                        </div>
                        <div class="col-lg-6 col-xl-7">
                            <div class="about-content">
                                <span>Who we are</span>
                                <h3 class="padding-top-3">About Us</h3>
                              <iframe frameborder="0" src="../HTMLPages/AboutUS.htm" height="800" width="900"></iframe>
                                <div class="btn-wrapper margin-top-40">
                                    <a href="AboutUsVS.aspx" class="btn btn-element btn-normal-size btn-main-color btn-rounded mr-5">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- home-about end -->

    <!-- home service start -->
   <div class="our-service-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title text-center padding-bottom-35">
                        <p class="subtitle">Service we provide</p>
                        <h1 class="title">Our Services</h1>
                    </div>
                </div>
            </div>
        </div>
        <div class="service-area service-bg">
            <div class="container">
                <div class="row">
                    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                    
                        <ItemTemplate>
                        <div class="col-lg-12">
                        <div class="row d-flex justify-content-between">
                            <div class="col-xl-3 col-lg-6 col-md-6">
                                <div class="service-box-style-01">
                                    <div class="sb-icon">
                                        <a href="#"><i class="flaticon-weight" aria-hidden="true"></i></a>
                                    </div>
                                    <div class="sb-content">
                                        <h4 class="title"><%#Eval("title") %></h4>
                                        <p><%#Eval("description") %></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-6 col-md-6">
                                <div class="service-box-style-01">
                                    <div class="sb-icon">
                                        <a href="#"><i class="flaticon-gym-1" aria-hidden="true"></i></a>
                                    </div>
                                    <div class="sb-content">
                                        <h4 class="title"><%#Eval("title2") %></h4>
                                        <p><%#Eval("description2") %></p>
                                    </div>
                                </div>
                            </div>
                          </div>
                        </div>
                            </ItemTemplate>


                     
                   </asp:Repeater>

                   
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                        SelectCommand="SELECT * FROM [Services]"></asp:SqlDataSource>

                   
                </div>
            </div>
        </div>
    </div>
    <!-- home service end -->

    <!-- home explore start -->
    <div class="explore-area explore-bg margin-top-50">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="explore-title">
                        <div class="title">
                            <h2>Explore KG Fitness</h2>
                        </div>
                        <div class="btn-wrapper">
                            <a href="MembershipPricingVS.aspx" class="btn btn-element btn-lg btn-main">Join with us</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- home explore end -->

    <!-- popular classes start -->
    <div class="popular-classes">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title title-padding-bottom text-center">
                        <p class="subtitle">What do you want to learn today?</p>
                        <h1 class="title">Popular Class</h1>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="popular-slider">


                       <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource3">
                        <ItemTemplate>
                        

                        <div class="single-popular-item">
                            <div class="popular-item-style-01">
                                <div class="thumb">
                                    <img src="../ServicesImage/<%#Eval("image") %>" alt="slider1">
                                </div>
                                <div class="content">
                                    <p><%#Eval("class_name") %></p>
                                </div>
                                <div class="hover-element">
                                    <div class="hover-top">
                                        <span><%#Eval("class_name") %></span><br>
                                        <a class="btn"><%#Eval("trainer_name") %></a>
                                    </div>
                                    <ul>
                                        <li><a><%#Eval("day1") %> <br><span><%#Eval("time1") %></span></a></li>
                                        <li><a><%#Eval("day2") %> <br><span><%#Eval("time2") %></span></a></li>
                                        <li><a><%#Eval("day3") %> <br><span><%#Eval("time3") %></span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        </ItemTemplate>
                        </asp:Repeater>

                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                            SelectCommand="SELECT * FROM [Class]"></asp:SqlDataSource>



                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- popular classes end -->


    <!-- home trainer start -->
    <div class="trainer-title">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title padding-top-93 padding-bottom-47 text-center">
                        <p class="subtitle">Your Best Partner</p>
                        <h1 class="title">Choose your trainer</h1>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="trainer-area margin-bottom-25">
        <div class="container">
            <div class="row class-slider">

                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>


                <div class="col-md-6">
                    <div class="row border-custom">
                        <div class="col-md-5 d-flex align-items-end">
                            <div class="thumb">
                                <img src="../Admin/TrainerPhoto/<%#Eval("image") %>"height="350" width="350" alt="trainer">
                            </div>
                        </div>
                        <div class="col-md-7 d-flex align-items-center">
                            <div class="content">
                               <h3><%#Eval("name") %></h3>
                                <h6><%#Eval("specialities") %></h6>
                                <h6>Expericence : <%#Eval("expericence") %></h6>
                                <p></p>
                                <div class="btn-wrapper">
                                    <a href='Trainer_DetailsVS.aspx?tid=<%#Eval("trainer_id") %>' class="btn btn-element btn-normal-size btn-transparent-color btn-rounded">Details</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
          
          </ItemTemplate>
          </asp:Repeater>


                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                    SelectCommand="SELECT * FROM [Trainer] WHERE ([status] = @status)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="status" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>


            </div>
        </div>
    </div>
    <!-- home trainer end -->


    <!-- news-area start -->
    <div class="news-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title title-padding text-center">
                        <p class="subtitle">KG FITNESS News For You</p>
                        <h1 class="title">Latest News</h1>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 col-sm-12 col-11 news-slider text-center">
                    <asp:Repeater ID="Repeater4" runat="server" DataSourceID="SqlDataSource4">
                    <ItemTemplate>

                    <div class="news-item-style-01">
                        <div class="thumb">
                            <img src="../NewsImages/<%#Eval("image") %>" alt="news">
                        </div>
                        <div class="content">
                           <%-- <div class="blog-meta">
                                <h6 class="d-flex justify-content-between"><a href="#"><i class="fa fa-user-o" aria-hidden="true"></i> By Rasel</a><a href="#"><i class="fa fa-comment-o" aria-hidden="true"></i> 9 comments</a></h6>
                            </div>--%>
                            <h3><%#Eval("title") %></h3>
                            <p><%#Eval("description") %></p>
                        </div>
                        <div class="hover-content">
                            <span class="border-bottom"><%#Eval("date") %></span><br>
                            <span><%#Eval("year") %></span>
                        </div>
                    </div>

                    </ItemTemplate>
                    </asp:Repeater>




                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                        SelectCommand="SELECT * FROM [News]"></asp:SqlDataSource>




                </div>
            </div>
        </div>
    </div>
    <!-- news-area end -->

    <!-- client start -->
   <%-- <div class="client-area margin-top-50">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title title-padding-bottom text-center">
                        <p class="subtitle">KG FITNESS</p>
                        <h1 class="title">Our Clients Say's</h1>
                    </div>
                </div>
            </div>
        </div>
        <div class="owl-carousel owl-theme">
            <div class="item quote-style-1">
                <div class="thumb">
                    <img src="assets/img/home/client/1.png" alt="client">
                </div>
                <div class="content">
                    <h1>Arpita paul</h1>
                    <p>"Praesent a diam at velit finibus vehicula sit amet eu dui. Vestibulum rutrum dignissim arcu, vitae libero. Nulla interdum erat nec tincidunt"</p>
                </div>
            </div>
            <div class="item quote-style-1">
                <div class="thumb">
                    <img src="assets/img/home/client/2.png" alt="client">
                </div>
                <div class="content">
                    <h1>Susmita sen</h1>
                    <p>"Praesent a diam at velit finibus vehicula sit amet eu dui. Vestibulum rutrum dignissim arcu, vitae libero. Nulla interdum erat nec tincidunt"</p>
                </div>
            </div>
            <div class="item quote-style-1">
                <div class="thumb">
                    <img src="assets/img/home/client/3.png" alt="client">
                </div>
                <div class="content">
                    <h1>Dipa talukdar</h1>
                    <p>"Praesent a diam at velit finibus vehicula sit amet eu dui. Vestibulum rutrum dignissim arcu, vitae libero. Nulla interdum erat nec tincidunt"</p>
                </div>
            </div>
            <div class="item quote-style-1">
                <div class="thumb">
                    <img src="assets/img/home/client/4.png" alt="client">
                </div>
                <div class="content">
                    <h1>Jimmy H. Hines</h1>
                    <p>"Praesent a diam at velit finibus vehicula sit amet eu dui. Vestibulum rutrum dignissim arcu, vitae libero. Nulla interdum erat nec tincidunt"</p>
                </div>
            </div>
            <div class="item quote-style-1">
                <div class="thumb">
                    <img src="assets/img/home/client/7.png" alt="client">
                </div>
                <div class="content">
                    <h1>Sharifur Rahman</h1>
                    <p>"Praesent a diam at velit finibus vehicula sit amet eu dui. Vestibulum rutrum dignissim arcu, vitae libero. Nulla interdum erat nec tincidunt"</p>
                </div>
            </div>
            <div class="item quote-style-1">
                <div class="thumb">
                    <img src="assets/img/home/client/8.png" alt="client">
                </div>
                <div class="content">
                    <h1>Azharul Naeem</h1>
                    <p>"Praesent a diam at velit finibus vehicula sit amet eu dui. Vestibulum rutrum dignissim arcu, vitae libero. Nulla interdum erat nec tincidunt"</p>
                </div>
            </div>
            <div class="item quote-style-1">
                <div class="thumb">
                    <img src="assets/img/home/client/9.png" alt="client">
                </div>
                <div class="content">
                    <h1>Asaduzzaman</h1>
                    <p>"Praesent a diam at velit finibus vehicula sit amet eu dui. Vestibulum rutrum dignissim arcu, vitae libero. Nulla interdum erat nec tincidunt"</p>
                </div>
            </div>
        </div>
    </div>--%>
    <!-- client end -->


     <!-- client start -->
    <div class="client-area margin-top-50">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title padding-top-95 padding-bottom-35 text-center">
                        <p class="subtitle">KG FITNESS</p>
                        <h1 class="title">Our Clients Say's</h1>
                    </div>
                </div>
            </div>
            <div class="row client-slider2">
                <asp:Repeater ID="Repeater5" runat="server" DataSourceID="SqlDataSource5">
                
                <ItemTemplate>

                <div class="col-lg-4">
                    <div class="quote-style-02">
                        <div class="item">
                            <div class="quote-icon">
                                <i class="fa fa-quote-right"></i>
                            </div>
                            <div class="content d-flex ">
                                <div class="content-text w-75">
                                    <h2><%#Eval("fname") %> <%#Eval("lname") %></h2>
                                    <p>"<%#Eval("description") %>"</p>
                                </div>
                                <div class="thumb align-self-end">
                                    <%--<img src="<%#Eval("image") %>" alt="client">--%>
                                    <%--<asp:Image ID="Image1" ImageUrl='<%#Eval("image") %>' runat="server" />--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                </ItemTemplate>
                </asp:Repeater>
        


                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                    SelectCommand="SELECT * FROM [Feedback]"></asp:SqlDataSource>
        


            </div>
        </div>
    </div>
    <!-- client end -->


    </form>

</asp:Content>

