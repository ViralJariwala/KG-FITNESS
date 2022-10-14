<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Workout.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">

    <!-- breadcrumb area -->
    <div class="breadcrumb-style-1" style="background-image:url(assets/img/bg/service.png);">
        <div class="breadcrumb-inner">
            <h1 class="page-title">Workout</h1>
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
                                <img src="assets/images/Workout.jpg" Height="420" Width="290" >
                                
                            </div>
                        </div>
                        <div class="col-md-7 d-flex align-items-center">
                            <div class="content">
                                <h2>Next Day Workout</h2><br />
                                <p class="pb-3"><font size="5"><b>Exercise Name :</b> <%#Eval("exercise_name") %></font></p>
                                <p class="pb-3"><font size="5"><b>Sub Exercise Name :</b> <%#Eval("sub_exercise_name") %></font></p>
                                <p class="pb-3"><font size="5"><b>Set :</b> <%#Eval("set") %></font></p>
                                <p class="pb-3"><font size="5"><b>Rep :</b> <%#Eval("rep") %></font></p>
                                <p class="pb-3"><font size="5"><b>Note  :</b> <%#Eval("notes") %></font></p>
                                 <ul class="social">

                               <%-- <div class="btn-wrapper">
                                    <a href="EditProfile.aspx?member_id=<%#Eval("member_id") %>" class="btn btn-element btn-normal-size btn-transparent-color btn-rounded">Edit Profile</a>
                                </div>--%>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                </ItemTemplate>
                </asp:Repeater>


             


                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" SelectCommand="SELECT * FROM [Workout] WHERE (([status] = @status) AND ([member_id] = @member_id))">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="status" Type="Int32" />
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

