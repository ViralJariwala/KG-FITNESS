<%@ Page Title="" Language="C#" MasterPageFile="~/User/Visitor.master" AutoEventWireup="true" CodeFile="AboutUsVS.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!-- breadcrumb area -->
    <div class="breadcrumb-style-1 about-breadcrumb-overlay" style="background-image:url(assets/img/bg/about.png);">
        <div class="breadcrumb-inner">
            <h1 class="page-title">About us</h1>
            <%--<ul class="page-list">
                <li><a href="index.html">Home</a></li>
                <li><a href="#">About Us</a></li>
            </ul>--%>
        </div>
    </div>
    <!-- breadcrumb area end -->

    

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

      <!-- about start -->
    <div class="about-page-top">
        <div class="container section-padding">
            <div class="row">
                <div class="col-lg-6 col-xl-6 d-flex">
                    <div class="about-content align-self-center">
                        <h3 class="about-title">About KG FITNESS</h3>
                        <p class="font-regular"><iframe frameborder="0" src="../HTMLPages/AboutUS.htm" 
                                height="580" width="700"></iframe></p> 
                       <%-- <ul>
                            <li><i class="fa fa-check"></i> Pellentesque pellentesque odio et porta accumsan.</li>
                            <li><i class="fa fa-check"></i> Proin et augue et justo accumsan condimentum.</li>
                            <li><i class="fa fa-check"></i> Donec viverra urna id congue fringilla.</li>
                        </ul>--%>
                    </div>
                </div>
                <div class="col-lg-6 col-xl-6">
                    <div class="about-left">
                        <div class="thumb">
                            <img src="assets/img/bg/about-right.png" alt="About">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- about end -->

        <!-- project-counter start -->
    <div class="project-counter">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12">
                    <div class="project-counter__boxes">
                        <div class="row justify-content-center">
                            <div class="col">
                                <div class="project-counter__box">
                                    <div class="project-counter__box-content">
                                        <div class="icon">
                                            <img src="assets/img/counterup/1.png" alt="counter img">
                                        </div>
                                        <span class="project-counter__is">1250</span>
                                        <span class="project-counter__text">all equipments</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="project-counter__box">
                                    <div class="project-counter__box-content">
                                        <div class="icon">
                                            <img src="assets/img/counterup/2.png" alt="counter img">
                                        </div>
                                        <span class="project-counter__is"><asp:Label ID="lbl_trainer" runat="server" Text=""></asp:Label></span>
                                        <span class="project-counter__text">All Trainers</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="project-counter__box">
                                    <div class="project-counter__box-content">
                                        <div class="icon">
                                            <img src="assets/img/counterup/3.png" alt="counter img">
                                        </div>
                                        <span class="project-counter__is"><asp:Label ID="lbl_member" runat="server" Text=""></asp:Label></span>
                                        <span class="project-counter__text">All Members</span>
                                    </div>
                                </div>
                            </div>
                             <div class="col">
                                <div class="project-counter__box">
                                    <div class="project-counter__box-content">
                                        <div class="icon">
                                            <img src="assets/img/counterup/4.png" alt="counter img">
                                        </div>
                                        <span class="project-counter__is"><asp:Label ID="lbl_classes" runat="server" Text=""></asp:Label></span>
                                        <span class="project-counter__text">Classes</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="project-counter__box">
                                    <div class="project-counter__box-content">
                                        <div class="icon">
                                            <img src="assets/img/counterup/5.png" alt="counter img">
                                        </div>
                                        <span class="project-counter__is"><asp:Label ID="lbl_feedback" runat="server" Text=""></asp:Label></span>
                                        <span class="project-counter__text">Feedback</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--container-->
    </div>
    <!--project-counter-->

     <div class="mission-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="mission-content">
                        <h3 class="serial">01</h3>
                        <div class="title">
                            <h1>KG Classic</h1>
                        </div>
                        <div class="mission-content">
                            <p>This is the largest, and the Open-For-All-Members gym. The area features – 1) more than 25 cardio machines; 2) a well-equipped free-weight zone with the Hammer Strength Power Cage, dumbbells upto 65 kgs, 10 to 25 kgs Bumper Plates, strength-training; 3) a machine zone with over 5 different variations for each muscle group.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="mission-content">
                        <h3 class="serial">02</h3>
                        <div class="title">
                            <h1>KG PREMINUM</h1>
                        </div>
                        <div class="mission-content">
                            <p>KG Premium is a limited-access space which serves as a private Personal Training Studio for clients who have enrolled on our Personal Training services. The floor is a more luxurious, compact version of the Classic floor and is a perfect space for those who are looking for privacy and time-saving during the rush hours.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="mission-content">
                        <h3 class="serial">03</h3>
                        <div class="title">
                            <h1>KG CROSS-TRAINING</h1>
                        </div>
                        <div class="mission-content">
                            <p>We proudly host the MOST luxurious Cross-training facility with the most varied range of cross-training products in the country. With exercises like sled-pushes, heavy tyre workouts, kettlebell training, boxing circuits, this area is going to take your training and your fitness to a whole new level. In this area, you will challenge your body and mind with training sessions that you’ve never experienced before.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

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


    </div>

</asp:Content>

