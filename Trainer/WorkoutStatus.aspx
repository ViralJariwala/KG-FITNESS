<%@ Page Title="" Language="C#" MasterPageFile="~/Trainer/Trainer.master" AutoEventWireup="true" CodeFile="WorkoutStatus.aspx.cs" Inherits="Trainer_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <h2 class="mb-2 page-title">Workout Status</h2>
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
                            <th>Workout Id</th>
                            <th>Trainer Id</th>
                            <th>Member Id</th>
                            <th>Exercise Name</th>
                            <th>Sub Exercise Name</th>
                            <th>Set</th>
                            <th>Rep</th>
                            <th>Notes</th>
                            <%--<th>Workout</th>--%>
                            
                          </tr>
                        </thead>
                        <tbody>

                        </HeaderTemplate>

                          <ItemTemplate>
                        
                         <tr>
                            
                            <td><%#Eval("workout_id") %></td>
                            <td><%#Eval("trainer_id") %></td>
                            <td><%#Eval("member_id") %></td>
                            <td><%#Eval("exercise_name") %></td>
                            <td><%#Eval("sub_exercise_name") %></td>
                            <td><%#Eval("set") %></td>
                            <td><%#Eval("rep") %></td>
                            <td><%#Eval("notes") %></td>
                           

                           <%-- <td>
                                <asp:Label ID="Label1" runat="server" Visible='<%# Convert.ToInt32(Eval("status")).Equals(1) ? true: false %>' Text="Accepted"></asp:Label>
                                <asp:LinkButton ID="LinkButton1" class="btn mb-2 btn-outline-success" visible='<%# Convert.ToString(Eval("payment_method")).Equals("CASH") ? Convert.ToInt32(Eval("status")).Equals(0) ? true: false : false %>' PostBackUrl='<%# "AcceptTrainerPaid.aspx?tpid=" + Eval("trainer_paid_id") %>' runat="server">Accept</asp:LinkButton><asp:LinkButton
                                    ID="LinkButton2" class="btn mb-2 btn-outline-danger" visible='<%# Convert.ToString(Eval("payment_method")).Equals("CASH") ?  Convert.ToInt32(Eval("status")).Equals(0) ? true: false : false %>'  PostBackUrl='<%# "DeclineTrainerPaid.aspx?tpid=" + Eval("trainer_paid_id") %>' runat="server">Decline</asp:LinkButton></td>--%>


                           <%--  <td>  <asp:Label ID="Label2" runat="server" Visible='<%# Convert.ToInt32(Eval("workout_status")).Equals(1) ? true: false %>' Text="Workout Provided"></asp:Label>
                                 <asp:LinkButton ID="LinkButton3" class="btn mb-2 btn-outline-success" visible='<%# Convert.ToString(Eval("workout_status")).Equals("0") ? Convert.ToInt32(Eval("workout_status")).Equals(0) ? true: false : false %>' PostBackUrl='<%# "AddWorkout.aspx?tid=" + Eval("trainer_id") + "&member_id=" + Eval("member_id") %>' runat="server">Give Workout</asp:LinkButton>

                             </td>--%>
                             

                                <%--<td><a class="dropdown-item" href="RemoveMember.aspx?mid=<%#Eval("member_id") %>">Remove</a></td>--%>

                       
                      <%--<td><button class="btn btn-sm dropdown-toggle more-horizontal" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="text-muted sr-only">Action</span>
                              </button>
                              <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href="AddWorkout.aspx?tid=<%#Eval("trainer_id") %>&member_id=<%#Eval("member_id") %>">Workout</a>
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





                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" SelectCommand="SELECT * FROM [Workout] WHERE ([trainer_id] = @trainer_id)">
                            <SelectParameters>
                                <asp:SessionParameter Name="trainer_id" SessionField="tid" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>





                    </div>
                  </div>
                </div> <!-- simple table -->
              </div> <!-- end section -->


</asp:Content>

