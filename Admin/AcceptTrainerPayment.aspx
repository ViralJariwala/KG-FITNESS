<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/1.master" AutoEventWireup="true" CodeFile="AcceptTrainerPayment.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <h2 class="mb-2 page-title">Paid Members Status</h2>
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
                            <th>Trainer Paid Id</th>
                            <th>Trainer Plan Id</th>
                            <th>Trainer Id</th>
                            <th>Member Id</th>
                            <th>Plan Name</th>
                            <th>Price</th>
                            <th>Discount</th>
                            <th>SGST</th>
                            <th>CGST</th>
                            <th>Sub Total</th>
                            <th>Total Amount</th>
                            <th>Payment Method</th>
                            <th>Date</th>
                            <th>Expiry Date</th>
                            <th>Action</th>
                            
                          </tr>
                        </thead>
                        <tbody>

                        </HeaderTemplate>

                          <ItemTemplate>
                        
                         <tr>
                            
                            <td><%#Eval("trainer_paid_id") %></td>
                            <td><%#Eval("trainer_plan_id") %></td>
                            <td><%#Eval("trainer_id") %></td>
                            <td><%#Eval("member_id") %></td>
                            <td><%#Eval("plan_name") %></td>
                            <td><%#Eval("price") %></td>
                            <td><%#Eval("discount") %></td>
                            <td><%#Eval("sgst") %></td>
                            <td><%#Eval("cgst") %></td>
                            <td><%#Eval("sub_total") %></td>
                            <td><%#Eval("total_amount") %></td>
                            <td><%#Eval("payment_method") %></td>
                            <td><%#Eval("Date") %></td>
                            <td><%#Eval("expiry_date") %></td>

                            <td>
                                <asp:Label ID="Label1" runat="server" Visible='<%# Convert.ToInt32(Eval("status")).Equals(1) ? true: false %>' Text="Accepted"></asp:Label>
                                <asp:LinkButton ID="LinkButton1" class="btn mb-2 btn-outline-success" visible='<%# Convert.ToString(Eval("payment_method")).Equals("CASH") ? Convert.ToInt32(Eval("status")).Equals(0) ? true: false : false %>' PostBackUrl='<%# "AcceptTrainerPaid.aspx?tpid=" + Eval("trainer_paid_id") %>' runat="server">Accept</asp:LinkButton><asp:LinkButton
                                    ID="LinkButton2" class="btn mb-2 btn-outline-danger" visible='<%# Convert.ToString(Eval("payment_method")).Equals("CASH") ?  Convert.ToInt32(Eval("status")).Equals(0) ? true: false : false %>'  PostBackUrl='<%# "DeclineTrainerPaid.aspx?tpid=" + Eval("trainer_paid_id") %>' runat="server">Decline</asp:LinkButton></td>

                                <%--<td><a class="dropdown-item" href="RemoveMember.aspx?mid=<%#Eval("member_id") %>">Remove</a></td>--%>

                       
                      <%-- <td><button class="btn btn-sm dropdown-toggle more-horizontal" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="text-muted sr-only">Action</span>
                              </button>
                              <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href="Invoice.aspx?invoice_id=<%#Eval("invoice_id") %>">Invoice</a>
                              </div>
                            </td>--%>
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
                            SelectCommand="SELECT * FROM [Trainer_Paid]"></asp:SqlDataSource>








                    </div>
                  </div>
                </div> <!-- simple table -->
              </div> <!-- end section -->


</asp:Content>

