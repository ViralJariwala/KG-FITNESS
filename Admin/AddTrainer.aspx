<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/1.master" AutoEventWireup="true" CodeFile="AddTrainer.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div class="container-fluid">
          <div class="row justify-content-center">
            <div class="col-12 col-xl-10">
              <div class="row align-items-center my-4">
                <div class="col">
                  <h2 class="h3 mb-0 page-title">Add Trainer</h2>
                </div>
                <div class="col-auto">
                  <%--<button type="button" class="btn btn-primary">Save</button>--%>
                    <asp:Button ID="txt_save" class="btn btn-primary" runat="server" Text="Save" 
                        onclick="txt_save_Click" />
                </div>
              </div>
              <form class="needs-validation" novalidate>
              
                <hr class="my-4">
                <%--<h5 class="mb-2 mt-4">Personal Trainer</h5>--%>
                
                <div class="form-row">
                  <div class="form-group col-md-4">
                    <label for="validationCustom3">Name</label>
                    <%--<input type="text" id="firstname" class="form-control">--%>
                      <asp:TextBox ID="txt_name" class="form-control" runat="server" required></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                          ErrorMessage="Enter Trainer Name" ControlToValidate="txt_name"></asp:RequiredFieldValidator>
                          <div class="valid-feedback"> Looks good! </div>
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
                        <asp:ListItem Selected="True">Male</asp:ListItem>
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
                          <asp:ListItem> > 1 Year</asp:ListItem>
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



                 <div class="form-row">
                 <div class="form-group col-md-5">
                    <label for="lastname">Image</label>
                    <%--<input type="text" id="lastname" class="form-control">--%>
                     <asp:FileUpload ID="FileUpload1" class="form-control" runat="server" />
                  </div>
                </div>
                 
               
                 <div class="form-row">
                     <div class="form-group col-md-8">
                         <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                     </div>
                </div>
                <hr class="my-4">
              </form>
            </div> <!-- .col-12 -->
          </div> <!-- .row -->
        </div> <!-- .container-fluid -->


</asp:Content>

