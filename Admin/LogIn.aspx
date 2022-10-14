<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>


<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">
    <title>KG Fitness Admin Side</title>
    <!-- Simple bar CSS -->
    <link rel="stylesheet" href="css/simplebar.css">
    <!-- Fonts CSS -->
    <link href="https://fonts.googleapis.com/css2?family=Overpass:ital,wght@0,100;0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <!-- Icons CSS -->
    <link rel="stylesheet" href="css/feather.css">
    <link rel="icon" href= assets/images/top.png >
    <!-- Date Range Picker CSS -->
    <link rel="stylesheet" href="css/daterangepicker.css">
    <!-- App CSS -->
    <link rel="stylesheet" href="css/app-light.css" id="lightTheme">
    <link rel="stylesheet" href="css/app-dark.css" id="darkTheme" disabled>
  </head>
  <body class="light ">
    <div class="wrapper vh-100">
      <div class="row align-items-center h-100">
        <form class="col-lg-3 col-md-4 col-10 mx-auto text-center" runat="server">
          <a class="navbar-brand mx-auto mt-2 flex-fill text-center" href="">
                 <img src="assets/images/kg.png" alt="logo">
           <%-- <svg version="1.1" id="logo" class="navbar-brand-img brand-md" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 120 120" xml:space="preserve">
              <g>
                <polygon class="st0" points="78,105 15,105 24,87 87,87 	" />
                <polygon class="st0" points="96,69 33,69 42,51 105,51 	" />
                <polygon class="st0" points="78,33 15,33 24,15 87,15 	" />
              </g>
            </svg>--%>
          </a>
           <h2 class="my-3">Admin Login</h2>
          <div class="form-group">
            <label for="inputEmail" class="sr-only">Email address</label>
            <%--<input type="email" id="inputEmail" class="form-control form-control-lg" placeholder="Email address" required="" autofocus="">--%>
              <asp:TextBox ID="Txt_Email" class="form-control form-control-lg"  
                  placeholder="Email address" required="" runat="server"></asp:TextBox>
          </div>
          <div class="form-group">
            <label for="inputPassword" class="sr-only">Password</label>
            <%--<input type="password" id="inputPassword" class="form-control form-control-lg" placeholder="Password" required="">--%>
              <asp:TextBox ID="Txt_Password" type="password" class="form-control form-control-lg" placeholder="Password" required="" runat="server"></asp:TextBox>
          </div>
          <div>
             <br /><asp:HyperLink ID="HyperLink1" class="card-text" runat="server" NavigateUrl="~/Admin/ForgotPassword.aspx">Forgot Password</asp:HyperLink> 
             </div>
          <%--<div class="checkbox mb-3">
            <label>
              <input type="checkbox" value="remember-me"> Stay logged in </label>
          </div>--%>
          <%--<button class="btn btn-lg btn-primary btn-block" type="submit">Let me in</button>--%>
       <br /> <asp:Button ID="Btn_submit" class="btn btn-lg btn-primary btn-block" 
              runat="server" Text="Let me in" onclick="Btn_submit_Click" />
          <p class="mt-5 mb-3 text-muted"></p>
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
