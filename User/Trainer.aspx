<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Trainer.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">

 <!-- breadcrumb area -->
    <div class="breadcrumb-style-1" style="background-image:url(assets/img/bg/service.png);">
        <div class="breadcrumb-inner">
            <h1 class="page-title">Trainer</h1>
            <%--<ul class="page-list margin-bottom-0">
                <li><a href="index.html">Home</a></li>
                <li><a href="#">Trainer</a></li>
            </ul>--%>
        </div>
    </div>
    <!-- breadcrumb area end -->

     <!-- search banner -->
    <div class="search-banner grey-bg padding-top-100 padding-bottom-100">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row d-flex justify-content-xl-around flex-column flex-lg-row align-items-center text-center">
                        <div class="filter-icon margin-top-10 margin-bottom-10 col-xl-2 col-md-1 col-sm-12 col-12">
                            <i class="flaticon-adjust"></i>
                        </div>
                        <div class="form-field margin-top-10 margin-bottom-10 col-md-8 col-xl-8 col-sm-12 col-12">
                           <%--<select class="select-form country_select">
                                <option value="search" selected>Search by categories</option>
                                <option value="all">Fitness</option>
                                <option value="Gym">Gym</option>
                                <option value="Yoga">Yoga</option>
                            </select>--%>
                            <asp:DropDownList ID="ddl_search" class="select-form country_select" runat="server" >
                                 <asp:ListItem Selected="True">Search By Categories</asp:ListItem>
                                 <%--<asp:ListItem>All</asp:ListItem>--%>
                                <asp:ListItem>Crossfit</asp:ListItem>
                                <asp:ListItem>Power Lifting</asp:ListItem>
                                <asp:ListItem>Weight Lifting</asp:ListItem>

                            </asp:DropDownList>
                        </div>
                        <div class="btn-wrapper margin-top-10 margin-bottom-10 col-md-3 col-xl-2 col-sm-12 col-12">
                            <%--<a href="#" class="btn btn-element btn-normal-size btn-main-color btn-rounded">Find Trainer</a>--%>
                            <asp:Button ID="btn_find"  
                                class="btn btn-element btn-normal-size btn-main-color btn-rounded" 
                                runat="server" Text="Find Trainer" OnClick="btn_find_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- search banner end -->

      <!--  trainer start -->
    <section class="trainer-area bg-none margin-bottom-100 margin-top-100">
        <div class="container">
            <div class="row class-slider-style-2">
                

                <asp:ListView ID="ListView1" runat="server" >
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
                                <h6><%#Eval("specialities") %></h6>
                                <h6>Expericence : <%#Eval("expericence") %></h6>
                                <p></p>
                                <div class="btn-wrapper">
                                    <a href='Trainer_Details.aspx?tid=<%#Eval("trainer_id") %>' class="btn btn-element btn-normal-size btn-transparent-color btn-rounded">Details</a>
                                </div>
                                <%--<ul class="social">
                                    <li class="icon-list">
                                        <a href="#" class="icon-text">
                                            <i class="fa fa-twitter"></i>
                                        </a>
                                    </li>
                                    <li class="icon-list">
                                        <a href="#" class="icon-text">
                                            <i class="fa fa-facebook-f"></i>
                                        </a>
                                    </li>
                                    <li class="icon-list">
                                        <a href="#" class="icon-text">
                                            <i class="fa fa-instagram"></i>
                                        </a>
                                    </li>
                                    <li class="icon-list">
                                        <a href="#" class="icon-text">
                                            <i class="fa fa-youtube"></i>
                                        </a>
                                    </li>
                                </ul>--%>
                            </div>
                        </div>
                    </div>
                </div>
                    </ItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                    SelectCommand="SELECT * FROM [Trainer] WHERE ([status] = @status)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="status" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            <%--<div class="row">
                <div class="col-md-12">
                    <div class="pagination-area d-flex justify-content-center margin-top-50">
                        <ul>
                            <li>
                                <span class="next page-bumber"><i class="fa fa-angle-left"></i> Prev</span>
                            </li>
                            <li>
                                <span class="page-bumber">1</span>
                            </li>
                            <li>
                                <span class="page-bumber current">2</span>
                            </li>
                            <li>
                                <span class="page-bumber">3</span>
                            </li>
                            <li>
                                <span class="next page-bumber">Next <i class="fa fa-angle-right"></i></span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>--%>
        </div>
    </section>
    <!--  trainer end -->


    </form>


</asp:Content>

