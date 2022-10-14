<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/1.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="Admin_Default" %>

<%@ Register TagPrefix="ajaxToolkit" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-12 col-lg-10 col-xl-8">
                <h2 class="h3 mb-4 page-title">Edit Profile</h2>
                <div class="my-4">
                    <%-- <ul class="nav nav-tabs mb-4" id="myTab" role="tablist">
                  <li class="nav-item">
                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Profile</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Security</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Notifications</a>
                  </li>
                </ul>--%>
                    <form>
<asp:ScriptManager runat="server"></asp:ScriptManager>
                        <div class="row mt-5 align-items-center">
                            <div class="col-md-3 text-center mb-5">
                                <div class="avatar avatar-xl">
                                    <%-- <img src="./assets/avatars/face-1.jpg" alt="..." class="avatar-img rounded-circle">--%>
                                    <asp:Image ID="Image1" class="avatar-img rounded-circle" runat="server" />
                                </div>
                                <asp:FileUpload ID="FileUpload1" class="form-control" runat="server" />
                            </div>
                            <div class="col">
                                <div class="row align-items-center">
                                    <div class="col-md-7">
                                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                            <ItemTemplate>

                                                <h4 class="mb-1">Hello , <%#Eval("name") %></h4>
                                                <p class="small mb-3"><span class="badge badge-dark"><%#Eval("email") %></span></p>

                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                                            ConnectionString="<%$ ConnectionStrings:ConStr %>"
                                            SelectCommand="SELECT * FROM [Admin] WHERE ([admin_id] = @admin_id)">
                                            <SelectParameters>
                                                <asp:QueryStringParameter Name="admin_id" QueryStringField="Aid" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </div>
                                </div>
                                <%-- <div class="row mb-4">
                        <div class="col-md-7">
                          <p class="text-muted"> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit nisl ullamcorper, rutrum metus in, congue lectus. In hac habitasse platea dictumst. Cras urna quam, malesuada vitae risus at, pretium blandit sapien. </p>
                        </div>
                        <div class="col">
                          <p class="small mb-0 text-muted">Nec Urna Suscipit Ltd</p>
                          <p class="small mb-0 text-muted">P.O. Box 464, 5975 Eget Avenue</p>
                          <p class="small mb-0 text-muted">(537) 315-1481</p>
                        </div>
                      </div>--%>
                            </div>
                        </div>
                        <hr class="my-4">
                        <div class="form-row">
                            <div class="form-group col-md-5">
                                <label for="firstname">Name</label>
                                <%-- <input type="text" id="firstname" class="form-control" placeholder="Brown">--%>
                                <asp:TextBox ID="txt_fname" class="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-7">
                                <label for="lastname">Address</label>
                                <%--<input type="text" id="lastname" class="form-control" placeholder="Asher">--%>
                                <asp:TextBox ID="txt_address" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-5">
                                <label for="firstname">Mobile No</label>
                                <%-- <input type="text" id="Text1" class="form-control" placeholder="Brown">--%>
                                <asp:TextBox ID="txt_mobileno" class="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-7">
                                <label for="lastname">Email Id</label>
                                <%-- <input type="text" id="Text2" class="form-control" placeholder="Asher">--%>
                                <asp:TextBox ID="txt_email" ReadOnly="true" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-row">

                            <div class="form-group col-md-6">
                                <label for="lastname">Date Of Birth</label>
                                <%--<input type="text" id="Text4" class="form-control" placeholder="Asher">--%>
                                <asp:TextBox ID="txt_dob" class="form-control" AutoCompleteType="Disabled" runat="server"></asp:TextBox>
                                <ajaxToolkit:CalendarExtender runat="server"  Format="dd/MM/yyyy" BehaviorID="txt_dob_CalendarExtender" TargetControlID="txt_dob" ID="txt_dob_CalendarExtender"></ajaxToolkit:CalendarExtender>
                            </div>
                    <div class="form-group col-md-6">
                      <label for="lastname">Gender</label>
                     <%-- <input type="text" id="Text5" class="form-control" placeholder="Asher">--%>
                        <asp:DropDownList ID="ddl_gender" class="form-control" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                  </div>

                  <div class="form-row">
                    <div class="form-group col-md-5">
                      <label for="firstname">State</label>
                      <%--<input type="text" id="Text6" class="form-control" placeholder="Brown">--%>
                        <asp:DropDownList ID="ddl_state" class="form-control" runat="server" 
                             DataTextField="state" 
                            DataValueField="state_id" AutoPostBack="True" 
                            onselectedindexchanged="ddl_state_SelectedIndexChanged">
                        </asp:DropDownList>
                    </div>
                    <div class="form-group col-md-7">
                      <label for="lastname">City</label>
                      <%--<input type="text" id="Text7" class="form-control" placeholder="Asher">--%>
                        <asp:DropDownList ID="ddl_city" class="form-control" runat="server" 
                            AutoPostBack="True" DataTextField="city" 
                            DataValueField="city_id" >
                        </asp:DropDownList>
                      
                    </div>
                  </div>

                  <div class="form-row">
                    <div class="form-group col-md-12">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </div>
                   </div>

                <%--  <button type="submit" class="btn btn-primary">Save Change</button>--%>
                <asp:Button ID="btn_submit" class="btn btn-primary" runat="server" 
                      Text="Save Changes" onclick="btn_submit_Click" />
                </form>
              </div> <!-- /.card-body -->
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

