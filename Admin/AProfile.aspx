<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/1.master" AutoEventWireup="true" CodeFile="AProfile.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="container-fluid">
          <div class="row justify-content-center">
            <div class="col-12">
              <h2 class="h3 mb-4 page-title">Profile</h2>
              <div class="row mt-5 align-items-center">
                <div class="col-md-3 text-center mb-5">
                  <div class="avatar avatar-xl">
                   <%-- <img src="./assets/avatars/face-1.jpg" alt="..." class="avatar-img rounded-circle">--%>
                      <asp:Image ID="Img1" class="avatar-img rounded-circle" runat="server" />
                  </div>
                </div>
                <div class="col">
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>

                  <div class="row align-items-center">
                    <div class="col-md-7">
                      <h4 class="mb-1"><%#Eval("name") %></h4>
                      <p class="small mb-3"><span class="badge badge-dark"><%#Eval("email") %></span></p>
                    </div>
                  </div>
                  <div class="row mb-4">
                    <div class="col-md-7">
                      <p> Address : <%#Eval("address") %></p>
                      <p> Mobile No : <%#Eval("mobile") %></p>
                      <p> Date Of Birth : <%#Eval("dob") %></p>
                      <p> Gender : <%#Eval("gender") %></p>


                    </div>
                   <%-- <div class="col">
                      <p class="small mb-0 text-muted">Nec Urna Suscipit Ltd</p>
                      <p class="small mb-0 text-muted">P.O. Box 464, 5975 Eget Avenue</p>
                      <p class="small mb-0 text-muted">(537) 315-1481</p>
                    </div>--%>
                  </div>



                  </ItemTemplate>
                  </asp:ListView>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                        SelectCommand="SELECT * FROM [Admin] WHERE ([admin_id] = @admin_id)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="admin_id" QueryStringField="Aid" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>

                   <a class="btn mb-2 btn-outline-secondary" href='EditProfile.aspx?Aid=<%= Session["Aid"].ToString()%>'>Edit Changes</a>

                </div>
              </div>
              <%--<div class="row my-4">
                <div class="col-md-4">
                  <div class="card mb-4 shadow">
                    <div class="card-body my-n3">
                      <div class="row align-items-center">
                        <div class="col-3 text-center">
                          <span class="circle circle-lg bg-light">
                            <i class="fe fe-user fe-24 text-primary"></i>
                          </span>
                        </div> <!-- .col -->
                        <div class="col">
                          <a href="#">
                            <h3 class="h5 mt-4 mb-1">Personal</h3>
                          </a>
                          <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit nisl ullamcorper, rutrum metus in, congue lectus.</p>
                        </div> <!-- .col -->
                      </div> <!-- .row -->
                    </div> <!-- .card-body -->
                    <div class="card-footer">
                      <a href="" class="d-flex justify-content-between text-muted"><span>Account Settings</span><i class="fe fe-chevron-right"></i></a>
                    </div> <!-- .card-footer -->
                  </div> <!-- .card -->
                </div> <!-- .col-md-->
                <div class="col-md-4">
                  <div class="card mb-4 shadow">
                    <div class="card-body my-n3">
                      <div class="row align-items-center">
                        <div class="col-3 text-center">
                          <span class="circle circle-lg bg-light">
                            <i class="fe fe-shield fe-24 text-primary"></i>
                          </span>
                        </div> <!-- .col -->
                        <div class="col">
                          <a href="#">
                            <h3 class="h5 mt-4 mb-1">Security</h3>
                          </a>
                          <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit nisl ullamcorper, rutrum metus in, congue lectus.</p>
                        </div> <!-- .col -->
                      </div> <!-- .row -->
                    </div> <!-- .card-body -->
                    <div class="card-footer">
                      <a href="" class="d-flex justify-content-between text-muted"><span>Security Settings</span><i class="fe fe-chevron-right"></i></a>
                    </div> <!-- .card-footer -->
                  </div> <!-- .card -->
                </div> <!-- .col-md-->
                <div class="col-md-4">
                  <div class="card mb-4 shadow">
                    <div class="card-body my-n3">
                      <div class="row align-items-center">
                        <div class="col-3 text-center">
                          <span class="circle circle-lg bg-light">
                            <i class="fe fe-bell fe-24 text-primary"></i>
                          </span>
                        </div> <!-- .col -->
                        <div class="col">
                          <a href="#">
                            <h3 class="h5 mt-4 mb-1">Notifications</h3>
                          </a>
                          <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit nisl ullamcorper, rutrum metus in, congue lectus.</p>
                        </div> <!-- .col -->
                      </div> <!-- .row -->
                    </div> <!-- .card-body -->
                    <div class="card-footer">
                      <a href="" class="d-flex justify-content-between text-muted"><span>Notification Settings</span><i class="fe fe-chevron-right"></i></a>
                    </div> <!-- .card-footer -->
                  </div> <!-- .card -->
                </div> <!-- .col-md-->
              </div>--%> <!-- .row-->
            </div> <!-- /.col-12 -->
          </div> <!-- .row -->
        </div> <!-- .container-fluid -->
        <div class="modal fade modal-notif modal-slide" tabindex="-1" role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="defaultModalLabel">Notifications</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <div class="list-group list-group-flush my-n3">
                  <div class="list-group-item bg-transparent">
                    <div class="row align-items-center">
                      <div class="col-auto">
                        <span class="fe fe-box fe-24"></span>
                      </div>
                      <div class="col">
                        <small><strong>Package has uploaded successfull</strong></small>
                        <div class="my-0 text-muted small">Package is zipped and uploaded</div>
                        <small class="badge badge-pill badge-light text-muted">1m ago</small>
                      </div>
                    </div>
                  </div>
                  <div class="list-group-item bg-transparent">
                    <div class="row align-items-center">
                      <div class="col-auto">
                        <span class="fe fe-download fe-24"></span>
                      </div>
                      <div class="col">
                        <small><strong>Widgets are updated successfull</strong></small>
                        <div class="my-0 text-muted small">Just create new layout Index, form, table</div>
                        <small class="badge badge-pill badge-light text-muted">2m ago</small>
                      </div>
                    </div>
                  </div>
                  <div class="list-group-item bg-transparent">
                    <div class="row align-items-center">
                      <div class="col-auto">
                        <span class="fe fe-inbox fe-24"></span>
                      </div>
                      <div class="col">
                        <small><strong>Notifications have been sent</strong></small>
                        <div class="my-0 text-muted small">Fusce dapibus, tellus ac cursus commodo</div>
                        <small class="badge badge-pill badge-light text-muted">30m ago</small>
                      </div>
                    </div> <!-- / .row -->
                  </div>
                  <div class="list-group-item bg-transparent">
                    <div class="row align-items-center">
                      <div class="col-auto">
                        <span class="fe fe-link fe-24"></span>
                      </div>
                      <div class="col">
                        <small><strong>Link was attached to menu</strong></small>
                        <div class="my-0 text-muted small">New layout has been attached to the menu</div>
                        <small class="badge badge-pill badge-light text-muted">1h ago</small>
                      </div>
                    </div>
                  </div> <!-- / .row -->
                </div> <!-- / .list-group -->
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary btn-block" data-dismiss="modal">Clear All</button>
              </div>
            </div>
          </div>
        </div>
        <div class="modal fade modal-shortcut modal-slide" tabindex="-1" role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="defaultModalLabel">Shortcuts</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body px-5">
                <div class="row align-items-center">
                  <div class="col-6 text-center">
                    <div class="squircle bg-success justify-content-center">
                      <i class="fe fe-cpu fe-32 align-self-center text-white"></i>
                    </div>
                    <p>Control area</p>
                  </div>
                  <div class="col-6 text-center">
                    <div class="squircle bg-primary justify-content-center">
                      <i class="fe fe-activity fe-32 align-self-center text-white"></i>
                    </div>
                    <p>Activity</p>
                  </div>
                </div>
                <div class="row align-items-center">
                  <div class="col-6 text-center">
                    <div class="squircle bg-primary justify-content-center">
                      <i class="fe fe-droplet fe-32 align-self-center text-white"></i>
                    </div>
                    <p>Droplet</p>
                  </div>
                  <div class="col-6 text-center">
                    <div class="squircle bg-primary justify-content-center">
                      <i class="fe fe-upload-cloud fe-32 align-self-center text-white"></i>
                    </div>
                    <p>Upload</p>
                  </div>
                </div>
                <div class="row align-items-center">
                  <div class="col-6 text-center">
                    <div class="squircle bg-primary justify-content-center">
                      <i class="fe fe-users fe-32 align-self-center text-white"></i>
                    </div>
                    <p>Users</p>
                  </div>
                  <div class="col-6 text-center">
                    <div class="squircle bg-primary justify-content-center">
                      <i class="fe fe-settings fe-32 align-self-center text-white"></i>
                    </div>
                    <p>Settings</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

</asp:Content>

