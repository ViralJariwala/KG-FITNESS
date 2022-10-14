<%@ Page Title="" Language="C#" MasterPageFile="~/User/Visitor.master" AutoEventWireup="true" CodeFile="MembershipPricingVS.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <form id="form1" runat="server">

 <!-- breadcrumb area -->
    <div class="breadcrumb-style-1" style="background-image:url(assets/img/bg/service.png);">
        <div class="breadcrumb-inner">
            <h1 class="page-title">Membership</h1>
            <%--<ul class="page-list margin-bottom-0">
                <li><a href="index.html">Home</a></li>
                <li><a href="#">Trainer</a></li>
            </ul>--%>
        </div>
    </div>
    <!-- breadcrumb area end -->


    <!-- pricing start -->
    <div class="pricing-area padding-top-90">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title padding-bottom-65 text-center">
                        <p class="subtitle">Become A Part of us</p>
                        <h1 class="title">Our Membership</h1>
                    </div>
                </div>
            </div>
            <div class="row">
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                
                <ItemTemplate>

                <div class="col-lg-4 col-md-6 col-12">
                    <div class="single-pricing-style-01 pricing-item-bg1">
                        <h2 class="off-style-1"><%#Eval("discount") %>% Off</h2>
                        <div class="pricing-icon text-center">
                            <a><i class="flaticon-weight" aria-hidden="true"></i></a>
                        </div>
                        <div class="plan-title">
                            <h3><%#Eval("plan_name") %></h3>
                        </div>
                        <ul>
                            <li><span><%#Eval("price") %>₹</span></li>
                            <li><%#Eval("facilities1") %></li>
                            <li> <%#Eval("facilities2") %></li>
                            <li><%#Eval("facilities3") %></li>
                            <li><%#Eval("facilities4") %></li>
                        </ul>
                        <div class="btn-wrapper desktop-center">
                           <a href='SignIn.aspx?ret=MP' class="btn btn-element btn-normal-size btn-transparent-color btn-rounded">Select Plan</a>
                           
                        </div>
                    </div>
                </div>

                </ItemTemplate>
                </asp:Repeater>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                    SelectCommand="SELECT * FROM [Membership_Plan]"></asp:SqlDataSource>
            </div>
        </div>
    </div>
    <!-- pricing end -->

    </form>

</asp:Content>

