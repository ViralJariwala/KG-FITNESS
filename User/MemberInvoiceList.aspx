<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="MemberInvoiceList.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


 <form id="form1" runat="server">

 <!-- breadcrumb area -->
    <div class="breadcrumb-style-1" style="background-image:url(assets/img/bg/service.png);">
        <div class="breadcrumb-inner">
            <h1 class="page-title">Invoice</h1>
            <%--<ul class="page-list margin-bottom-0">
                <li><a href="index.html">Home</a></li>
                <li><a href="#">Trainer</a></li>
            </ul>--%>
        </div>
    </div>
    <!-- breadcrumb area end -->


    <section class="trainer-area bg-none margin-top-100">
        <div class="container">
            <div class="row">

            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>

                <div class="col-md-10">
                    <div class="row border-custom">
                        <div class="col-md-5">
                            <div class="thumb">
                               <img src="assets/images/Invoice1.png" > 
                                
                            </div>
                        </div>
                        <div class="col-md-7 d-flex align-items-center">
                            <div class="content">
                            <h4>MEMBERSHIP INVOICE</h4><br />
                                <h3><%#Eval("fname") %> <%#Eval("lname") %></h3>
                                 <p class="pb-3">Start Date : <%#Eval("date") %></p>
                                 <p class="pb-3">End Date : <%#Eval("expiry_date") %></p>
                                <p class="pb-3">Member ID : <%#Eval("member_id") %></p>
                                <p class="pb-3">Email ID : <%#Eval("email") %></p>
                                <p class="pb-3">Total : <%#Eval("total") %></p>
                                <p class="pb-3">Type : <%#Eval("reason") %></p>
                                 <ul class="social">

                                <div class="btn-wrapper">
                                    <a href="MemberInvoice.aspx?ivoiceid=<%#Eval("invoice_id") %>" class="btn btn-element btn-normal-size btn-transparent-color btn-rounded">Download Invoice</a>
                                </div>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                </ItemTemplate>
                </asp:Repeater>


              


              


              


                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                    
                    SelectCommand="SELECT * FROM [Invoice] WHERE (([member_id] = @member_id) AND ([status] = @status))">
                    <SelectParameters>
                        <asp:SessionParameter Name="member_id" SessionField="member_id" Type="Int32" />
                        <asp:Parameter DefaultValue="1" Name="status" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>


              


              


              


                <%--<div class="col-md-6">
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
                </div>--%>


            </div>
        </div>
    </section>
    <!--  trainer end -->


     <section class="trainer-area bg-none margin-top-100">
        <div class="container">
            <div class="row">

            <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
            <ItemTemplate>

                <div class="col-md-10">
                    <div class="row border-custom">
                        <div class="col-md-5">
                            <div class="thumb">
                               <img src="assets/images/Invoice1.png" > 
                                
                            </div>
                        </div>
                        <div class="col-md-7 d-flex align-items-center">
                            <div class="content">
                            <h4>TRAINER INVOICE</h4><br />
                                <h3><%#Eval("fname") %> <%#Eval("lname") %></h3>
                                 <p class="pb-3">Start Date : <%#Eval("date") %></p>
                                 <p class="pb-3">End Date : <%#Eval("expiry_date") %></p>
                                <p class="pb-3">Member ID : <%#Eval("member_id") %></p>
                                <p class="pb-3">Email ID : <%#Eval("email") %></p>
                                <p class="pb-3">Total : <%#Eval("total") %></p>
                                <p class="pb-3">Type : <%#Eval("reason") %></p>
                                 <ul class="social">

                                <div class="btn-wrapper">
                                    <a href="TrainerInvoice.aspx?trainer_invoice_id=<%#Eval("trainer_invoice_id") %>" class="btn btn-element btn-normal-size btn-transparent-color btn-rounded">Download Invoice</a>
                                </div>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                </ItemTemplate>
                </asp:Repeater>




                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                    SelectCommand="SELECT * FROM [Trainer_Invoice] WHERE (([member_id] = @member_id) AND ([status] = @status))">
                    <SelectParameters>
                        <asp:SessionParameter Name="member_id" SessionField="member_id" Type="Int32" />
                        <asp:Parameter DefaultValue="1" Name="status" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>




            </div>
        </div>
    </section>
    <!--  trainer end -->




    </form>


</asp:Content>

