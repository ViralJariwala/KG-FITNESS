<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/1.master" AutoEventWireup="true" CodeFile="ShowGallery.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<h2 class="mb-2 page-title">All Photos</h2>
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
                            <th>Gallery Id</th>
                            <th>Image</th>
                            <th>Acton</th>

                          </tr>
                        </thead>
                        <tbody>

                        </HeaderTemplate>

                        <ItemTemplate>


                        <tr>
                            <td><%#Eval("gallery_id") %></td>
                            <td><img class="avatar-img rounded-circle" src='../Gallery/<%#Eval("image") %>' height="50px" width="50px" /></td>
                         <%-- <td><a class="dropdown-item" href='EditPhotos.aspx?gid=<%#Eval("gallery_id")%>'>Edit</a></td>
                           <td><a class="dropdown-item" href='RemovePhotos.aspx?gid=<%#Eval("gallery_id")%>'>Remove</a></td>--%>

                           <td><button class="btn btn-sm dropdown-toggle more-horizontal" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="text-muted sr-only">Action</span>
                              </button>
                              <div class="dropdown-menu dropdown-menu-right">
                                <%--<a class="dropdown-item" href='EditPhotos.aspx?gid=<%#Eval("gallery_id")%>'>Edit</a>--%>
                                 <a class="dropdown-item" href='RemovePhotos.aspx?gid=<%#Eval("gallery_id")%>'>Remove</a>
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
                            SelectCommand="SELECT * FROM [Gallery]"></asp:SqlDataSource>

                        

                        

                        

                        

                        

                        

                        

                     </div>
                  </div>
                </div> <!-- simple table -->
              </div> <!-- end section -->



</asp:Content>

