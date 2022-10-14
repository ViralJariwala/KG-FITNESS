<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/1.master" AutoEventWireup="true" CodeFile="EditClass.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="container-fluid">
          <div class="row justify-content-center">
            <div class="col-12 col-xl-10">
              <div class="row align-items-center my-4">
                <div class="col">
                  <h2 class="h3 mb-0 page-title">Edit Class</h2>
                </div>
                <div class="col-auto">
                  <%--<button type="button" class="btn btn-primary">Save</button>--%>
                    <asp:Button ID="btn_save" class="btn btn-primary" runat="server" Text="Save" 
                        onclick="btn_save_Click"  />
                </div>
              </div>
              <hr class="my-4">
              <form class="needs-validation" novalidate>

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
                          </div>
                      </div>
                      </div>
                      </div>


              
                
                <%--<h5 class="mb-2 mt-4">Personal Trainer</h5>--%>
                  <hr class="my-4">
                <div class="form-row">
                  <div class="form-group col-md-5">
                    <label for="validationCustom3">Select Class</label>
                    <%--<input type="text" id="firstname" class="form-control">--%>
                      <asp:DropDownList ID="ddl_class" class="form-control" runat="server">
                          <asp:ListItem>Muscles Build</asp:ListItem>
                          <asp:ListItem>Body Build</asp:ListItem>
                          <asp:ListItem>Fitness Build</asp:ListItem>
                          <asp:ListItem>Mind Refresh</asp:ListItem>
                      </asp:DropDownList>
                  </div>
                 

                
                  <div class="form-group col-md-5">
                  <label for="inputAddress5">Select Trainer</label>
                  <%--<input type="text" class="form-control" id="inputAddress5">--%>
                      <asp:DropDownList ID="ddl_trainer" runat="server" 
                          DataSourceID="SqlDataSource1" class="form-control" DataTextField="name" DataValueField="name">
                      </asp:DropDownList>
                      <asp:SqlDataSource ID="SqlDataSource1"  runat="server" 
                          ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                          SelectCommand="SELECT [name] FROM [Trainer]"></asp:SqlDataSource>
                  </div>
                </div>

                <div class="form-row">
                 <div class="form-group col-md-5">
                  <label for="inputAddress5">1st Day Name</label>
                  <%--<input type="text" class="form-control" id="Text2">--%>
                     <asp:DropDownList ID="ddl_1st_day" class="form-control"  runat="server">
                        <asp:ListItem>Mon</asp:ListItem>
                         <asp:ListItem>Tues</asp:ListItem>
                         <asp:ListItem>Wed</asp:ListItem>
                         <asp:ListItem>Thurs</asp:ListItem>
                         <asp:ListItem>Fri</asp:ListItem>
                         <asp:ListItem>Sat</asp:ListItem>
                     </asp:DropDownList>
                  </div>
                  <div class="form-group col-md-5">
                    <label for="firstname">1st Day Time</label>
                    <%--<input type="text" id="Text1" class="form-control">--%>
                      <asp:DropDownList ID="ddl_1st_time" class="form-control" runat="server">
                          <asp:ListItem>6.00 AM</asp:ListItem>
                          <asp:ListItem>7.00 AM</asp:ListItem>
                          <asp:ListItem>8.00 AM</asp:ListItem>
                          <asp:ListItem>9.00 AM</asp:ListItem>
                          <asp:ListItem>10.00 AM</asp:ListItem>
                          <asp:ListItem>5.00 PM</asp:ListItem>
                          <asp:ListItem>6.00 PM</asp:ListItem>
                          <asp:ListItem>7.00 PM</asp:ListItem>
                      </asp:DropDownList>
                  </div>
                </div>


                <div class="form-row">
                 <div class="form-group col-md-5">
                  <label for="inputAddress5">2nd Day Name</label>
                  <%--<input type="text" class="form-control" id="Text2">--%>
                 <asp:DropDownList ID="ddl_2nd_day" class="form-control"  runat="server">
                        <asp:ListItem>Mon</asp:ListItem>
                         <asp:ListItem>Tues</asp:ListItem>
                         <asp:ListItem>Wed</asp:ListItem>
                         <asp:ListItem>Thurs</asp:ListItem>
                         <asp:ListItem>Fri</asp:ListItem>
                         <asp:ListItem>Sat</asp:ListItem>
                     </asp:DropDownList>
                  </div>
                  <div class="form-group col-md-5">
                    <label for="firstname">2nd Day Time</label>
                    <%--<input type="text" id="Text1" class="form-control">--%>
                    <asp:DropDownList ID="ddl_2nd_time" class="form-control" runat="server">
                          <asp:ListItem>6.00 AM</asp:ListItem>
                          <asp:ListItem>7.00 AM</asp:ListItem>
                          <asp:ListItem>8.00 AM</asp:ListItem>
                          <asp:ListItem>9.00 AM</asp:ListItem>
                          <asp:ListItem>10.00 AM</asp:ListItem>
                          <asp:ListItem>5.00 PM</asp:ListItem>
                          <asp:ListItem>6.00 PM</asp:ListItem>
                          <asp:ListItem>7.00 PM</asp:ListItem>
                      </asp:DropDownList>
                  </div>
                </div>
                

                <div class="form-row">
                 <div class="form-group col-md-5">
                  <label for="inputAddress5">3rd Day Name</label>
                  <%--<input type="text" class="form-control" id="Text2">--%>
                 <asp:DropDownList ID="ddl_3rd_day" class="form-control"  runat="server">
                        <asp:ListItem>Mon</asp:ListItem>
                         <asp:ListItem>Tues</asp:ListItem>
                         <asp:ListItem>Wed</asp:ListItem>
                         <asp:ListItem>Thurs</asp:ListItem>
                         <asp:ListItem>Fri</asp:ListItem>
                         <asp:ListItem>Sat</asp:ListItem>
                     </asp:DropDownList>
                  </div>
                  <div class="form-group col-md-5">
                    <label for="firstname">3rd Day Time</label>
                    <%--<input type="text" id="Text1" class="form-control">--%>
                    <asp:DropDownList ID="ddl_3rd_time" class="form-control" runat="server">
                         <asp:ListItem>6.00 AM</asp:ListItem>
                          <asp:ListItem>7.00 AM</asp:ListItem>
                          <asp:ListItem>8.00 AM</asp:ListItem>
                          <asp:ListItem>9.00 AM</asp:ListItem>
                          <asp:ListItem>10.00 AM</asp:ListItem>
                          <asp:ListItem>5.00 PM</asp:ListItem>
                          <asp:ListItem>6.00 PM</asp:ListItem>
                          <asp:ListItem>7.00 PM</asp:ListItem>
                      </asp:DropDownList>
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

