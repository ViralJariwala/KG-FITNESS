<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/1.master" AutoEventWireup="true" CodeFile="ShowPlan.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <h2 class="mb-2 page-title">All Plans</h2>
             <%-- <p class="card-text">DataTables is a plug-in for the jQuery Javascript library. It is a highly flexible tool, built upon the foundations of progressive enhancement, that adds all of these advanced features to any HTML table. </p>--%>
              <div class="row my-4">
                <!-- Small table -->
                <div class="col-md-12">
                  <div class="card shadow">
                    <div class="card-body">
                      <!-- table -->
                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        
                        
                        <HeaderTemplate>
                        
                         <div class="table-responsive"> 
                        <table class="table datatables" id="dataTable-1">
                         <thead>
                          <tr>
                            <th>Plan Id</th>
                            <th>Plan Name</th>
                            <th>Price</th>
                            <th>Discount</th>
                            <th>Facilities 1</th>
                            <th>Facilities 2</th>
                            <th>Facilities 3</th>
                            <th>Facilities 4</th>
                            <th>Action</th>
                          </tr>
                        </thead>
                        <tbody>
                        
                        </HeaderTemplate>

                        <ItemTemplate>
                        
                         <tr>
                            <td><%#Eval("plan_id") %></td>
                            <td><%#Eval("plan_name") %></td>
                            <td><%#Eval("price") %></td>
                            <td><%#Eval("discount") %></td>
                            <td><%#Eval("facilities1") %></td>
                            <td><%#Eval("facilities2")%></td>
                            <td><%#Eval("facilities3")%></td>
                            <td><%#Eval("facilities4")%></td>
                          <%-- <td><a class="dropdown-item" href='EditPlan.aspx?pid=<%#Eval("plan_id")%>'>Edit</a></td>
                           <td><a class="dropdown-item" href='RemovePlan.aspx?pid=<%#Eval("plan_id")%>'>Remove</a></td>--%>

                              <td><button class="btn btn-sm dropdown-toggle more-horizontal" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="text-muted sr-only">Action</span>
                              </button>
                              <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href='EditPlan.aspx?pid=<%#Eval("plan_id")%>'>Edit</a>
                                <a class="dropdown-item" href='RemovePlan.aspx?pid=<%#Eval("plan_id")%>'>Remove</a>
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
                            SelectCommand="SELECT * FROM [Membership_Plan]"></asp:SqlDataSource>

                       

                           
                       

                       

                                            </div>
                  </div>
                </div> <!-- simple table -->
              </div> <!-- end section -->





</asp:Content>

