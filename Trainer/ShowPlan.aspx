<%@ Page Title="" Language="C#" MasterPageFile="~/Trainer/Trainer.master" AutoEventWireup="true" CodeFile="ShowPlan.aspx.cs" Inherits="Trainer_Default" %>

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
                            <th>Trainer Plan Id</th>
                            <th>Trainer Id</th>
                            <th>Plan Name</th>
                            <th>Price</th>
                            <th>Discount</th>
                            <th>Strength 1</th>
                            <th>Strength 2</th>
                            <th>Strength 3</th>
                            <th>Action</th>
                          </tr>
                        </thead>
                        <tbody>
                        
                        </HeaderTemplate>

                        <ItemTemplate>
                        
                         <tr>
                            <td><%#Eval("trainer_plan_id") %></td>
                            <td><%#Eval("trainer_id") %></td>
                            <td><%#Eval("plan_name") %></td>
                            <td><%#Eval("price") %></td>
                            <td><%#Eval("discount") %></td>
                            <td><%#Eval("strength1") %></td>
                            <td><%#Eval("strength2")%></td>
                            <td><%#Eval("strength3")%></td>
                            <%-- <td><a class="dropdown-item" href='EditPlan.aspx?pid=<%#Eval("plan_id")%>'>Edit</a></td>
                           <td><a class="dropdown-item" href='RemovePlan.aspx?pid=<%#Eval("plan_id")%>'>Remove</a></td>--%>

                              <td><button class="btn btn-sm dropdown-toggle more-horizontal" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="text-muted sr-only">Action</span>
                              </button>
                              <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href='EditPlan.aspx?tpid=<%#Eval("trainer_plan_id")%>&tid=<%#Eval("trainer_id") %>'>Edit</a>
                                <a class="dropdown-item" href='RemovePlan.aspx?tpid=<%#Eval("trainer_plan_id")%>&tid=<%#Eval("trainer_id") %>'>Remove</a>
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
                            SelectCommand="SELECT * FROM [Trainer_Plan] WHERE ([trainer_id] = @trainer_id)">
                            <SelectParameters>
                                <asp:QueryStringParameter Name="trainer_id" QueryStringField="tid" 
                                    Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                       

                       

                     </div>
                  </div>
                </div> <!-- simple table -->
              </div> <!-- end section -->

</asp:Content>

