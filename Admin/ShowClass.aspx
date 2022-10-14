<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/1.master" AutoEventWireup="true" CodeFile="ShowClass.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<h2 class="mb-2 page-title">All Classes</h2>
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
                            <th>Class Id</th>
                            <th>Class Name</th>
                            <th>Trainer</th>
                            <th>Day 1</th>
                            <th>Time 1</th>
                            <th>Day 2</th>
                            <th>Time 2</th>
                            <th>Day 3</th>
                            <th>Time 3</th>
                            <th>Image</th>
                            <th>Action</th>
                          </tr>
                        </thead>
                        <tbody>
                        
                        </HeaderTemplate>

                        <ItemTemplate>
                        
                         <tr>
                            <td><%#Eval("class_id") %></td>
                            <td><%#Eval("class_name") %></td>
                            <td><%#Eval("trainer_name") %></td>
                            <td><%#Eval("day1") %></td>
                            <td><%#Eval("time1") %></td>
                            <td><%#Eval("day2") %></td>
                            <td><%#Eval("time2") %></td>
                            <td><%#Eval("day3") %></td>
                            <td><%#Eval("time3") %></td>
                            <td><img class="avatar-img rounded-circle" src='../ServicesImage/<%#Eval("image") %>' height="50px" width="50px" /></td>
                          <%-- <td><a class="dropdown-item" href='EditPlan.aspx?pid=<%#Eval("plan_id")%>'>Edit</a></td>
                           <td><a class="dropdown-item" href='RemovePlan.aspx?pid=<%#Eval("plan_id")%>'>Remove</a></td>--%>

                              <td><button class="btn btn-sm dropdown-toggle more-horizontal" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="text-muted sr-only">Action</span>
                              </button>
                              <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href='EditClass.aspx?cid=<%#Eval("class_id")%>'>Edit</a>
                                <a class="dropdown-item" href='RemoveClass.aspx?cid=<%#Eval("class_id")%>'>Remove</a>
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
                            SelectCommand="SELECT * FROM [Class]"></asp:SqlDataSource>


              

                       

                                            </div>
                  </div>
                </div> <!-- simple table -->
              </div> <!-- end section -->

</asp:Content>

