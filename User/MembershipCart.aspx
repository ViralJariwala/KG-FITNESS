

<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="MembershipCart.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">

<!-- breadcrumb area -->
    <div class="breadcrumb-style-1 cart-breadcrumb-overlay" style="background-image:url(assets/img/bg/shop.png);">
        <div class="breadcrumb-inner">
            <h1 class="page-title">Membership Cart List</h1>
            <%--<ul class="page-list margin-bottom-0 margin-top-10">
                <li><a href="index.html">Home</a></li>
                <li><a href="#">Product List</a></li>
            </ul>--%>
        </div>
    </div>
    <!-- breadcrumb area end -->


     <!-- cart content start -->
    <section class="cart-content-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="cart-title">
                        <h2>Membership List</h2>
                    </div>
                </div>
            </div>

           


            <div class="row">
                <div class="col-lg-8">
                    <div class="single-cart-list">

                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

                    <HeaderTemplate>
                    
                    <table class="table table-borderless">
                            <tbody>

                    </HeaderTemplate>

                    <ItemTemplate>

                                 <tr>
                                    <td><a href='RemoveCart.aspx?mpid=<%#Eval("membership_purchase_id") %>'>X</a></td>
                                    <td><img src="assets/img/product-details/member.png" alt=""></td>
                                    <td><p class="font-semibold"><%#Eval("plan_name") %> Membership</p></td>
                                    <td><p><%#Eval("price") %> ₹</p></td>
                                    <%--<td><p>Quantity</p></td>--%>
                                    <td>
                                        <%--<div class="input-group mb-2">
                                            <div class="input-group-prepend">
                                                <a class="btn btn-sm" id="minus-btn"><i class="fa fa-minus"></i></a>
                                            </div>
                                            <input type="number" id="qty_input" class="form-control form-control-sm" value="1" min="1">
                                            <div class="input-group-prepend">
                                                <a class="btn btn-sm" id="plus-btn"><i class="fa fa-plus"></i></a>
                                            </div>
                                        </div>--%>
                                    </td>
                                </tr>


                    </ItemTemplate>
                        
                    <FooterTemplate>

                      </tbody>
                        </table>

                   </FooterTemplate>
                               
                        </asp:Repeater>

                        

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                            SelectCommand="SELECT * FROM [Membership_Purchase] WHERE ([plan_id] = @plan_id)">
                            <SelectParameters>
                                <asp:QueryStringParameter Name="plan_id" QueryStringField="pid" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                        <hr class="my-4">

                        <div class="coupon-title">
                           <%-- <h2>Have a coupon?</h2>--%>
                        </div>
                        <div class="apply-coupon-form">
                            <%--<div class="input-group margin-top-30">
                                <input type="text" class="form-control" placeholder="Coupon Code">
                                <span class="input-group-btn">
                                    <button class="btn btn-default submit-btn" type="button">Apply Coupon</button>
                                </span>
                            </div>--%>
                        </div>
                    </div>
                </div>



                <div class="col-lg-4">

                    <div class="cart-total-list">

                    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2" 
                            onitemcommand="Repeater2_ItemCommand">
                    <ItemTemplate>

                        <div class="total-title">
                            <h2>Cart totals</h2>
                        </div>
                        <div class="cart-price">
                          <p>Sub Total <span class="float-right text-right"><%#Eval("sub_total") %>₹</span></p>
                          <p>Discount <span class="float-right text-right"><%#Eval("discount") %>₹</span></p>
                          <p>SGST(2.5%) <span class="float-right text-right"><%#Eval("sgst") %>₹</span></p>
                          <p>CGST(2.5%) <span class="float-right text-right"><%#Eval("cgst") %>₹</span></p>
                        </div>
                        <div class="cart-price-total">
                            <p>Total Price <span class="float-right text-right"><%#Eval("total_amount") %>₹</span></p>
                        </div>
                        <div class="btn-wrapper">
                           <%--<a href='Payment.aspx?pid=<%#Eval("plan_id") %>' class="btn btn-block btn-element btn-lg-size btn-main-color btn-rounded">Procced To Payment</a>--%>
                            <asp:Button ID="btn_procced_to_checkout" 
                                class="btn btn-block btn-element btn-lg-size btn-main-color btn-rounded" 
                                runat="server" Text="Procced To Payment" CommandName="checkout" ></asp:Button>
                        </div>

                        </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                            SelectCommand="SELECT * FROM [Membership_Purchase] WHERE (([plan_id] = @plan_id) AND ([member_id] = @member_id))">
                            <SelectParameters>
                                <asp:QueryStringParameter Name="plan_id" QueryStringField="pid" Type="Int32" />
                                <asp:SessionParameter Name="member_id" SessionField="member_id" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
                

                   

            </div>

            

          
      


            

        </div>
    </section>
    <!-- cart content end -->


    </form>


</asp:Content>

