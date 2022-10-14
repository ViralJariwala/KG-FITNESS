<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/1.master" AutoEventWireup="true" CodeFile="EditTrainer.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div class="container-fluid">
          <div class="row justify-content-center">
            <div class="col-12 col-xl-10">
              <div class="row align-items-center my-4">
                <div class="col">
                  <h2 class="h3 mb-0 page-title">Edit Trainer</h2>
                </div>
                <div class="col-auto">
                  <%--<button type="button" class="btn btn-primary">Save</button>--%>
                    <asp:Button ID="txt_save" class="btn btn-primary" runat="server" Text="Save" 
                        onclick="txt_save_Click"/>
                </div>
              </div>
               <hr class="my-4">
              <form>
              <div class="row mt-5 align-items-center">
                    <div class="col-md-12 text-center mb-5">
                      <div class="avatar avatar-xl">
                       <%-- <img src="./assets/avatars/face-1.jpg" alt="..." class="avatar-img rounded-circle">--%>
                          <asp:Image ID="Image1" class="avatar-img rounded-circle" runat="server"  />
                      </div>
                       
                    </div>

                     <div class="col-md-5 text-center mb-2">
                      <div class="avatar avatar-xl">
                       <%-- <img src="./assets/avatars/face-1.jpg" alt="..." class="avatar-img rounded-circle">--%>
                           <asp:FileUpload ID="FileUpload1" class="form-control" runat="server" />
                      </div>
                       
                    </div>

                    
                    <div class="col">
                      <div class="row align-items-center">
                        <div class="col-md-7">
                          
                            

                          <%--<h4 class="mb-1">Hello , <%#Eval("name") %></h4>
                          <p class="small mb-3"><span class="badge badge-dark"><%#Eval("email") %></span></p>
--%>
                          
                          
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
                <%--<h5 class="mb-2 mt-4">Personal Trainer</h5>--%>
                
                <div class="form-row">
                  <div class="form-group col-md-4">
                    <label for="firstname">Name</label>
                    <%--<input type="text" id="firstname" class="form-control">--%>
                      <asp:TextBox ID="txt_name" class="form-control" runat="server"></asp:TextBox>
                  </div>
                 

                
                  <div class="form-group col-md-6">
                  <label for="inputAddress5">Address</label>
                  <%--<input type="text" class="form-control" id="inputAddress5">--%>
                  <asp:TextBox ID="txt_address" class="form-control" runat="server"></asp:TextBox>
                  </div>
                </div>

                <div class="form-row">
                 <div class="form-group col-md-6">
                  <label for="inputAddress5">Email</label>
                  <%--<input type="text" class="form-control" id="Text2">--%>
                  <asp:TextBox ID="txt_email" class="form-control" runat="server"></asp:TextBox>
                  </div>
                  <div class="form-group col-md-4">
                    <label for="firstname">Password</label>
                    <%--<input type="text" id="Text1" class="form-control">--%>
                    <asp:TextBox ID="txt_password" class="form-control" runat="server"></asp:TextBox>
                  </div>
                </div>

                
                <div class="form-row">
                <div class="form-group col-md-5">
                    <label for="inputState5">Gender</label>
                    <%--<select id="inputState5" class="form-control">
                      <option value="female">Female</option>
                      <option value="male">Male</option>
                    </select>--%>
                    <asp:DropDownList ID="ddl_gender" class="form-control" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                  </div>


                  <div class="form-group col-md-5">
                    <label for="inputPhone">Phone No</label>
                    <%--<input type="text" class="form-control" id="inputPhone">--%>
                    <asp:TextBox ID="txt_phone_no" class="form-control" runat="server"></asp:TextBox>
                  </div>
                </div>
                  

                  <div class="form-row">
                  <div class="form-group col-md-5">
                    <label for="firstname">Specialities</label>
                    <%--<input type="text" id="firstname" class="form-control">--%>
                    <asp:DropDownList ID="ddl_specialities" class="form-control" runat="server">
                          <asp:ListItem>CrossFit</asp:ListItem>
                          <asp:ListItem>Power Lifting</asp:ListItem>
                          <asp:ListItem>Weight Lifting</asp:ListItem>
                      </asp:DropDownList>
                  </div>
                  <div class="form-group col-md-5">
                    <label for="lastname">Experience</label>
                    <%--<input type="text" id="lastname" class="form-control">--%>
                    <asp:DropDownList ID="ddl_Experience"  class="form-control" runat="server">
                          <asp:ListItem>Fresher</asp:ListItem>
                          <asp:ListItem>&lt;1 Year</asp:ListItem>
                          <asp:ListItem>1 To 2 Years</asp:ListItem>
                          <asp:ListItem>2 To 5 Years</asp:ListItem>
                          <asp:ListItem>5+ Years</asp:ListItem>
                      </asp:DropDownList>
                  </div>
                </div>

                 <div class="form-row">
                    <div class="form-group col-md-5">
                    <label for="lastname">Weight</label>
                     <asp:TextBox ID="txt_weight" class="form-control input-placeholder" runat="server"></asp:TextBox>
                    <%--<input type="text" id="lastname" class="form-control">--%>
                    
                  </div>


                  <div class="form-group col-md-5">
                    <label for="custom-placeholder">Age</label>
                    <%--<input class="form-control input-placeholder" id="custom-placeholder" type="text" name="placeholder">--%>
                    <asp:TextBox ID="txt_age" class="form-control input-placeholder" runat="server"></asp:TextBox>
                  </div>

                 
                </div>  
                 
                 
                 
                 <hr class="my-4">
                 <div class="form-row">
                     <div class="form-group col-md-8">
                         <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                     </div>
                </div>

                
              </form>
            </div> <!-- .col-12 -->
          </div> <!-- .row -->
        </div> <!-- .container-fluid -->


</asp:Content>

