<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">

 <!-- breadcrumb area -->
    <div class="breadcrumb-style-1 service-breadcrumb-overlay" style="background-image:url(assets/img/bg/service.png);">
        <div class="breadcrumb-inner">
            <h1 class="page-title">Gallery</h1>
           <%-- <ul class="page-list margin-bottom-0">
                <li><a href="index.html">Home</a></li>
                <li><a href="#">Trainner Details</a></li>
            </ul>--%>
        </div>
    </div>
    <!-- breadcrumb area end -->
     
  <!-- tariner-gallery-area start -->
    <div class="tariner-gallery-area padding-top-63">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title padding-bottom-65 text-center">
                        <%--<p class="subtitle">Some Activities About Trainner</p>
                        <h1 class="title">Gallery</h1>--%>
                    </div>
                </div>
            </div>
            <div class="row">
         <div class="col-lg-12 text-center">
       <div class="container">
     <div class="grid-layout">

      <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

      <ItemTemplate>

        <div class="grid-item span-21 grid-item-3">
              <img src='../Gallery/<%#Eval("image") %>' height="340px" width="340px" alt="" >
            </div>
      
      </ItemTemplate>

      </asp:Repeater>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                                SelectCommand="SELECT * FROM [Gallery]"></asp:SqlDataSource>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- tariner-gallery-area end -->

    </form>

</asp:Content>

