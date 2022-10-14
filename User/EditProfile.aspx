<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="User_Default" %>

<%@ Register TagPrefix="ajaxToolkit" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <!-- breadcrumb area -->
    <div class="breadcrumb-style-1" style="background-image: url(assets/img/bg/service.png);">
        <div class="breadcrumb-inner">
            <h1 class="page-title">Edit Profile</h1>
            <%--<ul class="page-list margin-bottom-0">
                <li><a href="index.html">Home</a></li>
                <li><a href="#">Trainer</a></li>
            </ul>--%>
        </div>
    </div>
    <!-- breadcrumb area end -->

    <section class="trainer-area bg-none margin-top-100">
        <div class="container">
            <div class="row">

                <div class="col-md-10">
                    <form runat="server">
                        <div class="row border-custom">
                            <div class="col-md-5">
                                <div class="thumb">
                                    <%--<img src="assets/img/home/trainer/2.png" alt="trainer">--%>
                                    <asp:Image ID="Image1" runat="server" Height="420" Width="290"></asp:Image>
                                </div>
                                <asp:FileUpload ID="FileUpload1" class="form-control" runat="server"></asp:FileUpload>
                                <asp:Label ID="Label1" class="form-control" runat="server"></asp:Label>
                            </div>
                            <div class="col-md-7 d-flex align-items-center">
                                <div class="content">
                                   
                                    <div class="form-row">
                                        <div class="form-group col-md-6 text-left">
                                            <label for="fname">First Name </label>
                                            <%--<input type="text" class="form-control" id="fname" placeholder="First Name">--%>
                                            <asp:TextBox ID="txt_fname" class="form-control" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="form-group col-md-6 text-left">
                                            <label for="lname">Last Name </label>
                                            <%-- <input type="text" class="form-control" id="lname" placeholder="Last Name">--%>
                                            <asp:TextBox ID="txt_lname" class="form-control" runat="server"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="form-group text-left">
                                        <label for="email">Address </label>
                                        <%--<input type="email" class="form-control" id="email" placeholder="santa.bevilard@gmail.com">--%>
                                        <asp:TextBox ID="txt_address" class="form-control" runat="server"></asp:TextBox>
                                    </div>

                                    <div class="form-group text-left">
                                        <label for="email">Email Address </label>
                                        <%--<input type="email" class="form-control" id="email" placeholder="santa.bevilard@gmail.com">--%>
                                        <asp:TextBox ID="txt_email" class="form-control" runat="server" ReadOnly="true"></asp:TextBox>
                                    </div>
                                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                     <asp:UpdatePanel ID="UpdatePanel1" runat="server" ><ContentTemplate>
                                    <div class="form-row">
                                        <div class="form-group col-md-6 text-left">
                                            <label for="fname">State </label>
                                            <%--<input type="text" class="form-control" id="Text7" placeholder="First Name">--%>
                                            <asp:DropDownList ID="ddl_state" class="form-control" runat="server"
                                                AutoPostBack="True" DataTextField="state"
                                                DataValueField="state_id"
                                                OnSelectedIndexChanged="ddl_state_SelectedIndexChanged">
                                            </asp:DropDownList>
                                            <%--DataSourceID="SqlDataSource1"--%>
                                            <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                                        SelectCommand="SELECT * FROM [State]"></asp:SqlDataSource>--%>
                                        </div>
                                        <div class="form-group col-md-6 text-left">
                                            <label for="lname">City </label>
                                            <%--<input type="text" class="form-control" id="Text8" placeholder="Last Name">--%>
                                            <asp:DropDownList ID="ddl_city" class="form-control" runat="server"
                                                DataTextField="city" DataValueField="city_id">
                                            </asp:DropDownList>
                                            <%--DataSourceID="SqlDataSource2" --%>
                                            <%--<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                                        
                                        SelectCommand="SELECT * FROM [City] WHERE ([state_id] = @state_id)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="ddl_state" Name="state_id" 
                                                PropertyName="SelectedValue" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>--%>
                                        </div>
                                    </div>
                                        </ContentTemplate> </asp:UpdatePanel>


                                    <div class="form-row">
                                        <div class="form-group col-md-6 text-left">
                                            <label for="fname">Date Of Birth </label>
                                            <%-- <input type="text" class="form-control" id="Text1" placeholder="First Name">--%>
                                            <asp:TextBox ID="txt_dob" AutoCompleteType="Disabled" class="form-control" runat="server"></asp:TextBox>
                                            <ajaxToolkit:CalendarExtender runat="server" Format="dd/MM/yyyy" BehaviorID="txt_dob_CalendarExtender" TargetControlID="txt_dob" ID="txt_dob_CalendarExtender"></ajaxToolkit:CalendarExtender>
                                        </div>
                                <div class="form-group col-md-6 text-left">
                                    <label for="lname">Gender </label>
                                    <%--<input type="text" class="form-control" id="Text2" placeholder="Last Name">--%>
                                     <asp:DropDownList ID="ddl_gender"  class="form-control" runat="server">
                                         <asp:ListItem>Male</asp:ListItem>
                                         <asp:ListItem>Female</asp:ListItem>
                                     </asp:DropDownList>
                                </div>
                            </div>


                             <div class="form-row">
                                <div class="form-group col-md-6 text-left">
                                    <label for="fname">Height </label>
                                    <%--<input type="text" class="form-control" id="Text5" placeholder="First Name">--%>
                                    <asp:TextBox ID="txt_height" class="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group col-md-6 text-left">
                                    <label for="lname">Weight </label>
                                    <%--<input type="text" class="form-control" id="Text6" placeholder="Last Name">--%>
                                    <asp:TextBox ID="txt_weight" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>


                             <div class="form-row">
                                <div class="form-group col-md-6 text-left">
                                    <label for="fname">Mobile No </label>
                                    <%--<input type="text" class="form-control" id="Text5" placeholder="First Name">--%>
                                    <asp:TextBox ID="txt_mobile" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            
                            </div>

                            <asp:Button ID="btn_savechanges" 
                                    class="btn btn-element btn-normal-size btn-transparent-color btn-rounded" 
                                    runat="server" Text="Save Changes" onclick="btn_savechanges_Click"></asp:Button>
                            

                               <%-- <ul class="social">
                                    <li class="icon-list">
                                        <a href="#" class="icon-text">
                                            <i class="fa fa-twitter"></i>
                                        </a>
                                    </li>
                                    <li class="icon-list">
                                        <a href="#" class="icon-text">
                                            <i class="fa fa-facebook-f"></i>
                                        </a>
                                    </li>
                                    <li class="icon-list">
                                        <a href="#" class="icon-text">
                                            <i class="fa fa-instagram"></i>
                                        </a>
                                    </li>
                                    <li class="icon-list">
                                        <a href="#" class="icon-text">
                                            <i class="fa fa-youtube"></i>
                                        </a>
                                    </li>
                                </ul>--%>
                            </div>
                        </div>
                    </div>
                    </form>
                </div>
                <%--<div class="col-md-6">
                    <h3 class="progressbar-title">Skills:</h3>
                    <div class="element-progress-bar">
                        <div class="single-progressbar">
                            <p class="color-black">Yoga</p>
                            <div class="html"></div>
                        </div>
                        <div class="single-progressbar">
                            <p class="color-black">Cardio</p>
                            <div class="css"></div>
                        </div>
                        <div class="single-progressbar">
                            <p class="color-black">Boxing</p>
                            <div class="php"></div>
                        </div>
                        <div class="single-progressbar">
                            <p class="color-black">Gym</p>
                            <div class="javascript"></div>
                        </div>
                    </div>
                </div>--%>
            </div>
        </div>
    </section>
    <!--  trainer end -->

</asp:Content>

