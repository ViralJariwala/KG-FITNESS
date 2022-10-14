<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="FeedBack.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">

 <!-- breadcrumb area -->
    <div class="breadcrumb-style-1" style="background-image:url(assets/img/bg/service.png);">
        <div class="breadcrumb-inner">
            <h1 class="page-title">Feedback</h1>
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

                <div class="col-md-12">
                    <div class="row border-custom">
                        <div class="col-md-5">
                            <div class="thumb">
                               <%--<img src="assets/images/Invoice1.png" >--%>
                              <asp:Image ID="Image1" Height="420" Width="290" runat="server"></asp:Image>
                            </div>
                        </div>
                        <div class="col-md-7 d-flex align-items-center">
                            <div class="content">
                               <%-- <h3><%#Eval("fname") %> <%#Eval("lname") %></h3>
                                 <p class="pb-3">Date : <%#Eval("date") %></p>
                                <p class="pb-3">Member ID : <%#Eval("member_id") %></p>
                                <p class="pb-3">Email ID : <%#Eval("email") %></p>
                                <p class="pb-3">Total : <%#Eval("total") %></p>
                                <p class="pb-3">Reason : <%#Eval("reason") %></p>--%>

                                <h3>Hello , <asp:Label ID="lbl_fname" runat="server" Text=""></asp:Label>
                                <asp:Label ID="lbl_lname" runat="server"  Text=""></asp:Label></h3><br /><br /><br />
                                <h5>Your Feedback Mention Below : </h5> <br /> <asp:TextBox ID="txt_description" class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox><br />
            
                                 <ul class="social">

                                <div class="btn-wrapper">
                                    <asp:Button ID="btn_submit" 
                                        class="btn btn-element btn-normal-size btn-transparent-color btn-rounded" 
                                        runat="server" Text="Submit" onclick="btn_submit_Click"></asp:Button>
                                </div>
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                </ul>
                            </div>
                        </div>
                    </div>
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


    </form>

</asp:Content>

