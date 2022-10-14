<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MemberInvoice.aspx.cs" Inherits="User_MemberInvoice" %>

<!DOCTYPE html>
<html lang="en">

<head>
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">
    <title>KG Fitness</title>
    
    <!-- Simple bar CSS -->
    <link rel="stylesheet" href="css/simplebar.css">
    <!-- Fonts CSS -->
    <link href="https://fonts.googleapis.com/css2?family=Overpass:ital,wght@0,100;0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <!-- Icons CSS -->
    <link rel="stylesheet" href="css/feather.css">
    <link rel="icon" href= assets/images/top.png >
    <link rel="stylesheet" href="css/select2.css">
    <link rel="stylesheet" href="css/dropzone.css">
    <link rel="stylesheet" href="css/uppy.min.css">
    <link rel="stylesheet" href="css/jquery.steps.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">
    <link rel="stylesheet" href="css/dataTables.bootstrap4.css">
    <link rel="stylesheet" href="css/quill.snow.css">
    <!-- Date Range Picker CSS -->
    <link rel="stylesheet" href="css/daterangepicker.css">
    <!-- App CSS -->
    <link rel="stylesheet" href="css/app-light.css" id="lightTheme">
    <link rel="stylesheet" href="css/app-dark.css" id="darkTheme" disabled>
    <script src="pdf.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.js"></script>
</head>

<body>
<form runat="server">
    <div class="container d-flex justify-content-center mt-50 mb-50">
        <div class="row">
			<div class="col-md-9 text-right mb-3">
                  <br /><br /><button type="button" id="download" class="btn mb-2 btn-success">Download</button>
                <asp:Button ID="btn_home" class="btn mb-2 btn-primary" runat="server" Text="Home" 
                      onclick="btn_home_Click" />
                </div>
           	
			<div class="col-md-12 text-left mb-3">
                <h2 class="h5 page-title"><small class="text-muted text-uppercase">Invoice</small><br />
                    #<asp:Label ID="lbl_membership_paid_id" runat="server" Text=""></asp:Label></h2>
            </div>
			
            <div class="card shadow">
                <div class="card-body p-2" id="invoice">
				<div class="row mb-5">
                    <div class="col-12 text-center mb-4">
                      <%--<h1 class="mb-0 text-uppercase">KG FITNESS</h1><br>--%>
					  <img src="./assets/images/kg1.png" alt="...">
                      <h3 class="mb-0 text-uppercase">Invoice</h3>
                      <p class="text-muted"><asp:Label ID="lbl_date" runat="server" Text=""></asp:Label></p>
                     
                    </div>
                    <div class="col-md-7">
                      <p class="small text-muted text-uppercase mb-2">Invoice from</p>
                      <p class="mb-4">
                        <strong>KG FITNESS</strong><br /> 3rd Floor KG Heights,<br />  Gaurav path Next To Iscon Mall,<br />  Piplod, Surat, Gujarat 395007 <br />0261 222 5505<br />
                      </p>
                      
                    </div>
                    <div class="col-md-5">
                      <p class="small text-muted text-uppercase mb-2">Invoice to</p>
                      <p class="mb-4">
                        <strong>
                            <asp:Label ID="lbl_name" runat="server" Text=""></asp:Label> <asp:Label ID="lbl_lname"
                                runat="server" Text=""></asp:Label>
                            </strong><br />
                          <asp:Label ID="lbl_email" runat="server" Text=""></asp:Label><br />
                          <asp:Label ID="lbl_address" runat="server" Text=""></asp:Label><br />
                          <asp:Label ID="lbl_phoneno" runat="server" Text=""></asp:Label><br /> <br />
                      </p>
                      
                    </div>
                  </div> <!-- /.row -->
                    
                    <div class="table-responsive">
                        <table class="table table-lg">
                            <thead>
                                <tr>
                                    <th>Plan</th>
                                    <th>Price</th>
                                    <th>Discount</th>
                                    <th>Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <h6 class="mb-0">
                                            <asp:Label ID="lbl_plan_name" runat="server" Text=""></asp:Label> Membership</h6> <span class="text-muted">Expiry Date : 
                                                <asp:Label ID="lbl_expiry_date" runat="server" Text=""></asp:Label></span>
                                    </td>
                                    <td> <asp:Label ID="lbl_price" runat="server" Text=""></asp:Label>₹</td>
                                    <td><asp:Label ID="lbl_discount" runat="server" Text=""></asp:Label>₹</td>
                                    <td><span class="font-weight-semibold">
                                        <asp:Label ID="lbl_total1" runat="server" Text=""></asp:Label>₹</span></td>
                                </tr>
                                
                            </tbody>
                        </table>
                    </div>
                    <div class="card-body">
                        <div class="d-md-flex flex-md-wrap">
                            <div class="pt-2 mb-3 wmin-md-400 ml-auto">
                                <h6 class="mb-3 text-left">Total</h6>
                                <div class="table-responsive">
                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <th class="text-left">Subtotal:</th>
                                                <td class="text-right">
                                                    <asp:Label ID="lbl_sub_total" runat="server" Text=""></asp:Label>₹</td>
                                            </tr>
                                            <tr>
                                                <th class="text-left">SGST: <span class="font-weight-normal">(2.5%)</span></th>
                                                <td class="text-right"> <asp:Label ID="lbl_sgst" runat="server" Text=""></asp:Label>₹</td>
                                            </tr>
											<tr>
                                                <th class="text-left">CGST: <span class="font-weight-normal">(2.5%)</span></th>
                                                <td class="text-right">
                                                    <asp:Label ID="lbl_cgst" runat="server" Text=""></asp:Label>₹</td>
                                            </tr>
                                            <tr>
                                                <th class="text-left">Total:</th>
                                                <td class="text-right text-primary">
                                                    <h5 class="font-weight-semibold">
                                                        <asp:Label ID="lbl_total" runat="server" Text=""></asp:Label></asp:Label>₹</h5>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <h6 class="mb-0">
                    Welcome To KG FITNESS 
                        <asp:Label ID="lbl_reason" runat="server" Text=""></asp:Label> . You Paid By <asp:Label ID="lbl_payment_method" runat="server" Text=""></asp:Label></h6> 
                </div>
        </div>
    </div>
	</div>
    </form>
     <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/moment.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/simplebar.min.js"></script>
    <script src='js/daterangepicker.js'></script>
    <script src='js/jquery.stickOnScroll.js'></script>
    <script src="js/tinycolor-min.js"></script>
    <script src="js/config.js"></script>
    <script src='js/jquery.dataTables.min.js'></script>
    <script src='js/dataTables.bootstrap4.min.js'></script>
    <script src='js/dropzone.min.js'></script>
    <script src='js/uppy.min.js'></script>
    <script src='js/select2.min.js'></script>
    <script src='js/jquery.steps.min.js'></script>
    <script src='js/jquery.validate.min.js'></script>
    <script src='js/jquery.timepicker.js'></script>
</body>

</html>
