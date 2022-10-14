<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="UProfile.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">

    <!-- breadcrumb area -->
    <div class="breadcrumb-style-1" style="background-image:url(assets/img/bg/service.png);">
        <div class="breadcrumb-inner">
            <h1 class="page-title">Profile</h1>
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

            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>

                <div class="col-md-10">
                    <div class="row border-custom">
                        <div class="col-md-5">
                            <div class="thumb">
                                <img src='../MemberPhoto/<%#Eval("image") %>' Height="420" Width="290" alt="Please add your photo">
                                
                            </div>
                        </div>
                        <div class="col-md-7 d-flex align-items-center">
                            <div class="content">
                                <h3><%#Eval("fname") %> <%#Eval("lname") %></h3>
                                <p class="pb-3"><b>Address :</b> <%#Eval("address") %></p>
                                <p class="pb-3"><b>Email ID :</b> <%#Eval("email") %></p>
                                <p class="pb-3"><b>DOB :</b> <%#Eval("dob") %></p>
                                <p class="pb-3"><b>Gender :</b> <%#Eval("gender") %></p>
                                <p class="pb-3"><b>Height  :</b> <%#Eval("height") %></p>
                                <p class="pb-3"><b>Weight  :</b> <%#Eval("weight") %></p>
                                <p class="pb-3"><b>Mobile No :</b> <%#Eval("mobile") %></p>
                                 <ul class="social">

                                <div class="btn-wrapper">
                                    <a href="EditProfile.aspx?member_id=<%#Eval("member_id") %>" class="btn btn-element btn-normal-size btn-transparent-color btn-rounded">Edit Profile</a>
                                </div>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                </ItemTemplate>
                </asp:Repeater>


                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                    SelectCommand="SELECT * FROM [Member] WHERE ([member_id] = @member_id)">
                    <SelectParameters>
                        <asp:SessionParameter Name="member_id" SessionField="member_id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>


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

