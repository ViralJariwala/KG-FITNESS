<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/1.master" AutoEventWireup="true" CodeFile="EditServices.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="container-fluid">
          <div class="row justify-content-center">
            <div class="col-12 col-xl-10">
              <div class="row align-items-center my-4">
                <div class="col">
                  <h2 class="h3 mb-0 page-title">Edit Services</h2>
                </div>
                <div class="col-auto">
                  <%--<button type="button" class="btn btn-primary">Save</button>--%>
                    <asp:Button ID="txt_save" class="btn btn-primary" runat="server" Text="Save" 
                        onclick="txt_save_Click"  />
                </div>
              </div>
              <form class="needs-validation" novalidate>
              
                <hr class="my-4">
                <%--<h5 class="mb-2 mt-4">Personal Trainer</h5>--%>
                
                <div class="form-row">
                  <div class="form-group col-md-6">
                    <label for="validationCustom3">Title</label>
                    <%--<input type="text" id="firstname" class="form-control">--%>
                      <asp:TextBox ID="txt_title1" class="form-control" runat="server" required=""></asp:TextBox>
                  </div>
                 

                </div>

                <div class="form-row">
                 <div class="form-group col-md-6">
                  <label for="inputAddress5">Description</label>
                  <%--<input type="text" class="form-control" id="Text2">--%>
                  <asp:TextBox ID="txt_description1" class="form-control" runat="server" TextMode="MultiLine" required=""></asp:TextBox>
                  </div>
                </div>
                <hr class="my-4">


                 <h2 class="h3 mb-0 page-title">Add Second Services</h2>
                <hr class="my-4">
                    

                 <div class="form-row">
                  <div class="form-group col-md-6">
                    <label for="validationCustom3">Title</label>
                    <%--<input type="text" id="firstname" class="form-control">--%>
                      <asp:TextBox ID="txt_title2" class="form-control" runat="server" required=""></asp:TextBox>
                  </div>
                 

                </div>

                <div class="form-row">
                 <div class="form-group col-md-6">
                  <label for="inputAddress5">Description</label>
                  <%--<input type="text" class="form-control" id="Text2">--%>
                  <asp:TextBox ID="txt_description2" class="form-control" runat="server" TextMode="MultiLine" required=""></asp:TextBox>
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

