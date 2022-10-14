<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/1.master" AutoEventWireup="true" CodeFile="ShowTrainer.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <h2 class="mb-2 page-title">All Trainers</h2>
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
                        <table class="table datatables" id="dataTable-1" CssClass="table table-striped table-bordered table-hover">
                         <thead>
                          <tr>
                            <th>Trainer_id</th>
                            <th>Name</th>
                            <th>Address</th>
                            <th>Email</th>
                            <th>Password</th>
                            <th>Gender</th>
                            <th>Mobile No</th>
                            <th>Specialities</th>
                            <th>Experience</th>
                            <th>Weight</th>
                            <th>Age</th>
                            <th>Image</th>
                            <th>Status</th>
                            <th>Actions</th>
                          </tr>
                        </thead>
                        <tbody>

                        </HeaderTemplate>

                        <ItemTemplate>
                        
                         <tr>
                            <td><%#Eval("trainer_id") %></td>
                            <td><%#Eval("name") %></td>
                            <td><%#Eval("address") %></td>
                            <td><%#Eval("email") %></td>
                            <td><%#Eval("password") %></td>
                            <td><%#Eval("gender") %></td>
                            <td><%#Eval("mobile") %></td>
                            <td><%#Eval("specialities") %></td>
                            <td><%#Eval("expericence") %></td>
                            <td><%#Eval("weight") %></td>
                            <td><%#Eval("age") %></td>
                            <td><img class="avatar-img rounded-circle" src='../Admin/TrainerPhoto/<%#Eval("image") %>' height="50px" width="50px" /></td>
                           
                            <td> <asp:Label ID="Label1" runat="server" Visible='<%# Convert.ToInt32(Eval("status")).Equals(1) ? true: false %>' Text="Accepted"></asp:Label>
                                <asp:LinkButton ID="LinkButton1" class="btn mb-2 btn-outline-success" visible='<%# Convert.ToString(Eval("status")).Equals("0") ? Convert.ToInt32(Eval("status")).Equals(0) ? true: false : false %>' PostBackUrl='<%# "AcceptTrainer.aspx?tid=" + Eval("trainer_id") %>' runat="server">Accept</asp:LinkButton><asp:LinkButton
                                    ID="LinkButton2" class="btn mb-2 btn-outline-danger" visible='<%# Convert.ToString(Eval("status")).Equals("0") ?  Convert.ToInt32(Eval("status")).Equals(0) ? true: false : false %>'  PostBackUrl='<%# "DeclineTrainer.aspx?tid=" + Eval("trainer_id") %>' runat="server">Decline</asp:LinkButton></td>
                          
                           <%--<td><a class="dropdown-item" href='EditTrainer.aspx?tid=<%#Eval("trainer_id") %>'>Edit</a></td>
                            <td><a class="dropdown-item" href='RemoveTrainer.aspx?tid=<%#Eval("trainer_id") %>'>Remove</a></td>--%>
                         <td><button class="btn btn-sm dropdown-toggle more-horizontal" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="text-muted sr-only">Action</span>
                              </button>
                              <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href='EditTrainer.aspx?tid=<%#Eval("trainer_id") %>'>Edit</a>
                                <a class="dropdown-item" href='RemoveTrainer.aspx?tid=<%#Eval("trainer_id") %>'>Remove</a>
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
                            SelectCommand="SELECT * FROM [Trainer]"></asp:SqlDataSource>
                      
                       
                        
                         
      
                        
                    </div>
                  </div>
                </div> <!-- simple table -->
              </div> <!-- end section -->

    </asp:Content>

