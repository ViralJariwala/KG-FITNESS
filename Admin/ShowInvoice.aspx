<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/1.master" AutoEventWireup="true" CodeFile="ShowInvoice.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <h2 class="mb-2 page-title">Paid Members Invoice</h2>
             <%-- <p class="card-text">DataTables is a plug-in for the jQuery Javascript library. It is a highly flexible tool, built upon the foundations of progressive enhancement, that adds all of these advanced features to any HTML table. </p>--%>
              <div class="row my-4">
                <!-- Small table -->
                <div class="col-md-12">
                  <div class="card shadow">
                    <div class="card-body">
                      <!-- table -->
                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
                        

                        <HeaderTemplate>
                        <div class="table-responsive">  
                        <table class="table datatables" id="dataTable-1"  CssClass="table table-striped table-bordered table-hover">
                         <thead>
                          <tr>
                            <th>Invoice Id</th>
                            <th>Member Id</th>
                            <th>Memberdhip Paid Id</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Email Id</th>
                            <th>Address</th>
                            <th>Mobile No</th>
                            <th>Date</th>
                            <th>Expiry Date</th>
                            <th>Plan Name</th>
                            <th>Price</th>
                            <th>Discount</th>
                            <th>Sub Total</th>
                            <th>SGST</th>
                            <th>CGST</th>
                            <th>Total Amount</th>
                            <th>Type</th>
                            <th>Action</th>
                          </tr>
                        </thead>
                        <tbody>

                        </HeaderTemplate>

                          <ItemTemplate>
                        
                         <tr>
                            
                            <td><%#Eval("invoice_id") %></td>
                            <td><%#Eval("member_id") %></td>
                            <td><%#Eval("membership_paid_id") %></td>
                            <td><%#Eval("fname") %></td>
                            <td><%#Eval("lname") %></td>
                            <td><%#Eval("email") %></td>
                            <td><%#Eval("address") %></td>
                            <td><%#Eval("mobile") %></td>
                            <td><%#Eval("date") %></td>
                            <td><%#Eval("expiry_date") %></td>
                            <td><%#Eval("plan_name") %></td>
                            <td><%#Eval("price") %></td>
                            <td><%#Eval("discount") %></td>
                            <td><%#Eval("subtotal") %></td>
                            <td><%#Eval("sgst") %></td>
                            <td><%#Eval("cgst") %></td>
                            <td><%#Eval("total") %></td>
                            <td><%#Eval("reason") %></td>
                            
                           <%-- <td>
                                <asp:Label ID="Label1" runat="server" Visible='<%# Convert.ToInt32(Eval("status")).Equals(1) ? true: false %>' Text="Accepted"></asp:Label>
                                <asp:LinkButton ID="LinkButton1" class="btn mb-2 btn-outline-success" visible='<%# Convert.ToString(Eval("payment_method")).Equals("CASH") ? Convert.ToInt32(Eval("status")).Equals(0) ? true: false : false %>' PostBackUrl='<%# "AccpetPaid.aspx?mpid=" + Eval("membership_paid_id") %>' runat="server">Accept</asp:LinkButton><asp:LinkButton
                                    ID="LinkButton2" class="btn mb-2 btn-outline-danger" visible='<%# Convert.ToString(Eval("payment_method")).Equals("CASH") ?  Convert.ToInt32(Eval("status")).Equals(0) ? true: false : false %>'  PostBackUrl='<%# "DeclinePaid.aspx?mpid=" + Eval("membership_paid_id") %>' runat="server">Decline</asp:LinkButton></td>--%>

                                <%--<td><a class="dropdown-item" href="RemoveMember.aspx?mid=<%#Eval("member_id") %>">Remove</a></td>--%>

                       
                       <td><button class="btn btn-sm dropdown-toggle more-horizontal" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="text-muted sr-only">Action</span>
                              </button>
                              <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href="Invoice.aspx?invoice_id=<%#Eval("invoice_id") %>">Invoice</a>
                              </div>
                            </td>
                          </tr>
                        
                        </ItemTemplate>

                        <FooterTemplate>

                         </tbody>
                      </table>
                      </div>
                        </FooterTemplate>

                       </asp:Repeater>



                        




                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                            SelectCommand="SELECT * FROM [Invoice]"></asp:SqlDataSource>



                        




                    </div>
                  </div>
                </div> <!-- simple table -->
              </div> <!-- end section -->


</asp:Content>

