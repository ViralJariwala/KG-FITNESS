<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="TrainerPayment.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


 <form id="form1" runat="server">


<!-- breadcrumb area -->
    <div class="breadcrumb-style-1 cart-breadcrumb-overlay" style="background-image:url(assets/img/bg/shop.png);">
        <div class="breadcrumb-inner">
            <h1 class="page-title">Payment Method</h1>
            <%--<ul class="page-list margin-bottom-7">
                <li><a href="index.html">Home</a></li>
                <li><a href="#">Payment method</a></li>
            </ul>--%>
        </div>
    </div>
    <!-- breadcrumb area end -->


        <!-- payment start -->
    <div class="payment-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
                    <div class="payment-content">
                        <div class="title">
                            <h2>Payment Method</h2>
                        </div>
                        <div class="payment-tab">
                            <ul class="nav nav-pills">
                                <li>
                                    <a data-toggle="pill" href="#home" class="active"> 
                                        <div class="tab-item">
                                            <h1>Cash</h1>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a data-toggle="pill" href="#menu2">
                                        <div class="tab-item">
                                            <h1>Paytm</h1>
                                        </div>
                                    </a>
                                </li>
                            </ul>

                            <div class="tab-content">
                                <div id="home" class="tab-pane fade in active show">
                                    <div class="all-tab-content">
                                        <h2>Payment Details</h2>
                                        <div class="card-option">
                                            <div class="form-group">
                                                    <div class="form-row">
                                                        
                                                        <div class="form-group col-xl-4 col-lg-6 d-none d-md-block">
                                                        <h1 class="text-right">CASH</h1>
                                                        </div>
                                                    </div>
                                                   
                                                    <div class="form-row">
                                                        
                                                        <div class="form-group col-md-9 offset-md-1">
                                                            <div class="btn-wrapper">
                                                                <%--<a href="#" class="btn btn-block btn-element btn-lg-size btn-main-color btn-rounded">Checkout</a>--%>
                                                                <asp:Button ID="btn_chechout_cash"  
                                                                    class="btn btn-block btn-element btn-lg-size btn-main-color btn-rounded" 
                                                                    runat="server" Text="Checkout" onclick="btn_chechout_cash_Click"  />
                                                            </div>
                                                        </div>
                                                    </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div id="menu2" class="tab-pane fade">
                                    <div class="all-tab-content">
                                        <h2>Payment Dtails</h2>
                                        <div class="card-option">
                                            <div class="form-group">
                                                    <div class="form-row">
                                                        
                                                        <div class="form-group col-md-5 d-none d-md-block">
                                                        <h1 class="text-right">Paytm</h1>
                                                        </div>
                                                    </div>
                                                    
                                                    <div class="form-row">
                                                     
                                                        <div class="form-group col-md-9 offset-md-1">
                                                            <div class="btn-wrapper">
                                                               <%-- <a href="PaytmPaymentGateaway.aspx" class="btn btn-block btn-element btn-lg-size btn-main-color btn-rounded">Checkout</a>--%>
                                                               <asp:Button ID="btn_checkout_paytm"  
                                                                    class="btn btn-block btn-element btn-lg-size btn-main-color btn-rounded" 
                                                                    runat="server" Text="Checkout" onclick="btn_checkout_paytm_Click" />
                                                            </div>
                                                        </div>
                                                    </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            
       <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
            
                <div class="col-lg-5">
                    <div class="invoice">
                        <div class="invoice-top">
                            <h2>Invoice #<%#Eval("trainer_purchase_id") %>Summary</h2>
                            <h6></h6>
                        </div>
                        <div class="invoice-bottom">
                            <ul class="single-item">
                                <li class="single-cart-item">
                                    <div class="thumb">
                                        <img src="assets/img/product-details/member.png" alt="">
                                    </div>
                                    <div class="content">
                                        <h3><%#Eval("plan_name") %><br> <span> Personal Trainer</span></h3>
                                        <%--<span><%#Eval("price") %>₹</span>--%>
                                    </div>
                                    <span class="close"><a href='RemoveTrainerCart.aspx?tpid=<%#Eval("trainer_purchase_id") %>&tid=<%#Eval("trainer_id") %>'>X</a></span>
                                </li>
                            </ul>
                            <div class="total">
                                <h3>Total</h3>
                                <p class="text-right"><%#Eval("total_amount") %>₹</p>
                                
                                 
                            </div>
                            <div class="btn-wrapper desktop-center">
                                <a href='RemoveTrainerCart.aspx?tpid=<%#Eval("trainer_purchase_id") %>&tid=<%#Eval("trainer_id") %>' class="btn btn-invoice">Cancel Invoice <i class="fa fa-long-arrow-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
               

               </ItemTemplate>

               </asp:ListView>



                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                    
                    SelectCommand="SELECT * FROM [Trainer_Purchase] WHERE (([trainer_plan_id] = @trainer_plan_id) AND ([member_id] = @member_id))">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="trainer_plan_id" QueryStringField="tpid" 
                            Type="Int32" />
                        <asp:SessionParameter Name="member_id" SessionField="member_id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>

               

              
               

                

               

              
               

            </div>
        </div>
    </div>
    <!-- payment end -->
    </form>

</asp:Content>

