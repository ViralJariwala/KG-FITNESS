<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Trainer_Details.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">

 <!-- breadcrumb area -->
    <div class="breadcrumb-style-1" style="background-image:url(assets/img/bg/service.png);">
        <div class="breadcrumb-inner">
            <h1 class="page-title">Trainer Details</h1>
           <%-- <ul class="page-list margin-bottom-0">
                <li><a href="index.html">Home</a></li>
                <li><a href="#">Trainner Details</a></li>
            </ul>--%>
        </div>
    </div>
    <!-- breadcrumb area end -->


     <!--  trainer start -->
    <section class="trainer-area bg-none margin-top-100">
        <div class="container">
            <div class="row">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            
            <ItemTemplate>
            
            
            <div class="col-md-6">
                    <div class="row border-custom">
                        <div class="col-md-5">
                            <div class="thumb">
                                <img src="../Admin/TrainerPhoto/<%#Eval("image") %>"height="350" width="350" alt="trainer">
                            </div>
                        </div>
                        <div class="col-md-7 d-flex align-items-center">
                            <div class="content">
                                <h3><%#Eval("name") %></h3>
                                <p class="pb-3"><b>Specialities :</b> <%#Eval("specialities") %></p>
                                <p class="pb-3"><b>Experience :</b> <%#Eval("expericence") %></p>
                                <p class="pb-3"><b>Age :</b>  <%#Eval("age") %></p>
                                <p class="pb-3"><b>Weight :</b>  <%#Eval("weight") %></p>
                                <p class="pb-3"><b>Email :</b> <%#Eval("email") %></p>
                                <p class="pb-3"><b>Phone :</b> <%#Eval("mobile") %></p>
                                <ul class="social">

                                <div class="btn-wrapper">
                                    <a href="TrainerPlanPricing.aspx?tid=<%#Eval("trainer_id") %>" class="btn btn-element btn-normal-size btn-transparent-color btn-rounded">Book Trainer</a>
                                </div>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            
            
            </ItemTemplate>
            
            </asp:ListView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                    SelectCommand="SELECT * FROM [Trainer] WHERE ([trainer_id] = @trainer_id)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="trainer_id" QueryStringField="tid" 
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>

                <div class="col-md-6">
                    <h3 class="progressbar-title">Skills:</h3>
                    <div class="element-progress-bar">
                        <div class="single-progressbar">
                            <p class="color-black">Yoga</p>
                            <div class="html"></div>
                        </div>
                        <div class="single-progressbar">
                            <p class="color-black">Cardio</p>
                            <div class="css"></div>
                        </div>
                        <div class="single-progressbar">
                            <p class="color-black">Boxing</p>
                            <div class="php"></div>
                        </div>
                        <div class="single-progressbar">
                            <p class="color-black">Gym</p>
                            <div class="javascript"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--  trainer end -->

        <!-- tariner-gallery-area start -->
    <div class="tariner-gallery-area padding-top-63">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title padding-bottom-65 text-center">
                        <p class="subtitle">Some Activities About Trainner</p>
                        <h1 class="title">Gallery</h1>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="container">
                        <div class="grid-layout">
                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
                            
                            <ItemTemplate>
                            
                            <div class="grid-item span-21 grid-item-3">
                                <img src='../Trainer/TrainerGallery/<%#Eval("image") %>'  height="340px" width="340px" alt="">
                            </div>

                            </ItemTemplate>
                            
                            </asp:Repeater>

                           

                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                                SelectCommand="SELECT * FROM [Trainer_Gallery] WHERE ([trainer_id] = @trainer_id)">
                                <SelectParameters>
                                    <asp:QueryStringParameter Name="trainer_id" QueryStringField="tid" 
                                        Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                           

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- tariner-gallery-area end -->


    </form>


</asp:Content>

