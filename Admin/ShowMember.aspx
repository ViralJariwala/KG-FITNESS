<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/1.master" AutoEventWireup="true" CodeFile="ShowMember.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<h2 class="mb-2 page-title">All Members</h2>
             <%-- <p class="card-text">DataTables is a plug-in for the jQuery Javascript library. It is a highly flexible tool, built upon the foundations of progressive enhancement, that adds all of these advanced features to any HTML table. </p>--%>
              <div class="row my-4">
                <!-- Small table -->
                <div class="col-md-12">
                  <div class="card shadow">
                    <div class="card-body">
                      <!-- table -->
                        <asp:Repeater ID="Repeater1" runat="server"  >
                        

                        <HeaderTemplate>
                        <div class="table-responsive">  
                        <table class="table datatables" id="dataTable-1"  CssClass="table table-striped table-bordered table-hover">
                         <thead>
                          <tr>
                            <th>Member_id</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Address</th>
                            <th>Email</th>
                            <th>Password</th>
                            <th>DOB</th>
                            <th>Gender</th>
                            <th>State</th>
                            <th>City</th>
                            <th>Height</th>
                            <th>Weight</th>
                            <th>Mobile No</th>
                            <th>Image</th>
                            <th>Otp</th>
                            <th>Status</th>
                            <th>Action</th>
                          </tr>
                        </thead>
                        <tbody>

                        </HeaderTemplate>

                          <ItemTemplate>
                        
                         <tr>
                            
                            <td><%#Eval("member_id") %></td>
                            <td><%#Eval("fname") %></td>
                            <td><%#Eval("lname") %></td>
                            <td><%#Eval("address") %></td>
                            <td><%#Eval("email") %></td>
                            <td><%#Eval("password") %></td>
                            <td><%#Eval("dob") %></td>
                            <td><%#Eval("gender") %></td>
                            <td><%#Eval("state") %></td>
                            <td><%#Eval("city") %></td>
                            <td><%#Eval("height") %></td>
                            <td><%#Eval("weight") %></td>
                            <td><%#Eval("mobile") %></td>
                            <td><img class="avatar-img rounded-circle" src='../MemberPhoto/<%#Eval("image") %>' height="50px" width="50px" /></td>
                            <td><%#Eval("otp") %></td>
                            <td><%#Eval("status") %></td>
                                <%--<td><a class="dropdown-item" href="RemoveMember.aspx?mid=<%#Eval("member_id") %>">Remove</a></td>--%>

                       
                        <td><button class="btn btn-sm dropdown-toggle more-horizontal" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="text-muted sr-only">Action</span>
                              </button>
                              <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href="RemoveMember.aspx?mid=<%#Eval("member_id") %>">Remove</a>
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
                            SelectCommand="SELECT * FROM [Member]"></asp:SqlDataSource>




                    </div>
                  </div>
                </div> <!-- simple table -->
              </div> <!-- end section -->

</asp:Content>

