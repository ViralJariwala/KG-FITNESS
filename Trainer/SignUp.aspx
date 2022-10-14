﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="Trainer_SignUp" %>



<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">
    <title>KG Fitness Trainer Side</title>
    <!-- Simple bar CSS -->
    <link rel="stylesheet" href="css/simplebar.css">
    <!-- Fonts CSS -->
    <link href="https://fonts.googleapis.com/css2?family=Overpass:ital,wght@0,100;0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <!-- Icons CSS -->
    <link rel="icon" href= assets/images/top.png>
    <link rel="stylesheet" href="css/feather.css">
    <!-- Date Range Picker CSS -->
    <link rel="stylesheet" href="css/daterangepicker.css">
    <!-- App CSS -->
    <link rel="stylesheet" href="css/app-light.css" id="lightTheme" disabled>
    <link rel="stylesheet" href="css/app-dark.css" id="darkTheme">
  </head>
  <body class="dark ">
    <div class="wrapper vh-100">
      <div class="row align-items-center h-100">
        <form class="col-lg-6 col-md-8 col-10 mx-auto" runat="server">
          <div class="mx-auto text-center my-4">
            <a class="navbar-brand mx-auto mt-2 flex-fill text-center" href="./index.html">
                    <img src="../Admin/assets/images/kg.png" />
              <%--<svg version="1.1" id="logo" class="navbar-brand-img brand-md" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 120 120" xml:space="preserve">
                <g>
                  <polygon class="st0" points="78,105 15,105 24,87 87,87 	" />
                  <polygon class="st0" points="96,69 33,69 42,51 105,51 	" />
                  <polygon class="st0" points="78,33 15,33 24,15 87,15 	" />
                </g>
              </svg>--%>
            </a>
            <h2 class="my-3">Register Trainer</h2>
          </div>
         
          <div class="form-group">
            <div class="form-group">
              <label for="firstname">Name</label>
              <%--<input type="text" id="firstname" class="form-control">--%>
                <asp:TextBox ID="txt_name" class="form-control" runat="server"></asp:TextBox>
            </div>
          </div>

           <div class="form-group">
            <label for="inputEmail4">Address</label>
            <%--<input type="email" class="form-control" id="inputEmail4">--%>
            <asp:TextBox ID="txt_address" class="form-control" runat="server"></asp:TextBox>
          </div>


           <div class="form-group">
            <label for="inputEmail4">Email</label>
           <%-- <input type="email" class="form-control" id="Email1">--%>
           <asp:TextBox ID="txt_email" class="form-control" runat="server"></asp:TextBox>
          </div>

         <%-- <hr class="my-4">--%>

          <%--<div class="row mb-4">
            <div class="col-md-6">
              <div class="form-group">
                <label for="inputPassword5">Password</label>
                <input type="password" class="form-control" id="inputPassword5">
                <asp:TextBox ID="txt_password" class="form-control" runat="server"></asp:TextBox>
              </div>
              <div class="form-group">
                <label for="inputPassword6">Gender</label>
                <<select id="inputState5" class="form-control">
                      <option value="female">Female</option>
                      <option value="male">Male</option>
                    </select>
                  <asp:DropDownList ID="ddl_gender" class="form-control" runat="server">
                      <asp:ListItem Selected="True">Male</asp:ListItem>
                      <asp:ListItem>Female</asp:ListItem>
                  </asp:DropDownList>
              </div>
            </div>
            <div class="col-md-6">
              <p class="mb-2">Password requirements</p>
              <p class="small text-muted mb-2"> To create a new password, you have to meet all of the following requirements: </p>
              <ul class="small text-muted pl-4 mb-0">
                <li> Minimum 8 character </li>
                <li>At least one special character</li>
                <li>At least one number</li>
                <li>Can’t be the same as a previous password </li>
              </ul>
            </div>
          </div>--%>

           <div class="form-row">
            <div class="form-group col-md-6">
              <label for="firstname">Password</label>
              <%--<input type="text" id="Text1" class="form-control">--%>
              <asp:TextBox ID="txt_password" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-6">
              <label for="lastname">Gender</label>
              <%--<input type="text" id="lastname" class="form-control">--%>
              <asp:DropDownList ID="ddl_gender" class="form-control" runat="server">
                      <asp:ListItem Selected="True">Male</asp:ListItem>
                      <asp:ListItem>Female</asp:ListItem>
                  </asp:DropDownList>
            </div>
          </div>



           <div class="form-row">
            <div class="form-group col-md-6">
              <label for="firstname">Phone No</label>
              <%--<input type="text" id="Text1" class="form-control">--%>
              <asp:TextBox ID="txt_phone_no" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-6">
              <label for="lastname">Specialities</label>
              <%--<input type="text" id="lastname" class="form-control">--%>
                <asp:DropDownList ID="ddl_specialities" class="form-control" runat="server">
                     <asp:ListItem>CrossFit</asp:ListItem>
                          <asp:ListItem>Power Lifting</asp:ListItem>
                          <asp:ListItem>Weight Lifting</asp:ListItem>
                </asp:DropDownList>
            </div>
          </div>


           <div class="form-row">
            <div class="form-group col-md-6">
              <label for="firstname">Experience</label>
              <%--<input type="text" id="Text2" class="form-control">--%>
                 <asp:DropDownList ID="ddl_Experience"  class="form-control" runat="server">
                          <asp:ListItem>Fresher</asp:ListItem>
                          <asp:ListItem> > 1 Year</asp:ListItem>
                          <asp:ListItem>1 To 2 Years</asp:ListItem>
                          <asp:ListItem>2 To 5 Years</asp:ListItem>
                          <asp:ListItem>5+ Years</asp:ListItem>
                      </asp:DropDownList>
            </div>


            <div class="form-group col-md-6">
              <label for="lastname">Weight</label>
              <%--<input type="text" id="Text3" class="form-control">--%>
              <asp:TextBox ID="txt_weight" class="form-control" runat="server"></asp:TextBox>
            </div>
           
          </div>

          <div class="form-row">
           <div class="form-group col-md-6">
              <label for="lastname">Age</label>
              <%--<input type="text" id="Text3" class="form-control">--%>
              <asp:TextBox ID="txt_age" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-6">
              <label for="firstname">Image</label>
              <%--<input type="text" id="Text2" class="form-control">--%>
                <asp:FileUpload ID="FileUpload1" class="form-control" runat="server" />
            </div>
          </div>
        <asp:Label ID="Label1" runat="server" class="form-control" Text=""></asp:Label>


         <%-- <button class="btn btn-lg btn-primary btn-block" type="submit">Sign up</button>--%>
        <asp:Button ID="btn_signup" class="btn btn-lg btn-primary btn-block" 
              runat="server" Text="Sign Up" onclick="btn_signup_Click" />
          <p class="mt-5 mb-3 text-muted text-center">© 2020</p>
        </form>
      </div>
    </div>
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/moment.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/simplebar.min.js"></script>
    <script src='js/daterangepicker.js'></script>
    <script src='js/jquery.stickOnScroll.js'></script>
    <script src="js/tinycolor-min.js"></script>
    <script src="js/config.js"></script>
    <script src="js/apps.js"></script>
  </body>
</html>
</body>
</html>
