<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/1.master" AutoEventWireup="true" CodeFile="Plan.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="container-fluid">
          <div class="row justify-content-center">
            <div class="col-12 col-xl-10">
              <div class="row align-items-center my-4">
                <div class="col">
                  <h2 class="h3 mb-0 page-title">Add Plan</h2>
                </div>
                <div class="col-auto">
                  <%--<button type="button" class="btn btn-primary">Save</button>--%>
                    <asp:Button ID="txt_save" class="btn btn-primary" runat="server" Text="Save" 
                        onclick="txt_save_Click"/>
                </div>
              </div>
              <form>
                <hr class="my-4">
                <h5 class="mb-2 mt-4"></h5>
                
                <div class="form-row">
                  <div class="form-group col-md-5">
                    <label for="firstname">Plan Name</label>
                    <%--<input type="text" id="firstname" class="form-control">--%>
                      <asp:TextBox ID="txt_planname" class="form-control" runat="server"></asp:TextBox>
                  </div>
                  <div class="form-group col-md-5">
                  <label for="inputAddress5">Price</label>
                  <%--<input type="text" class="form-control" id="inputAddress5">--%>
                  <asp:TextBox ID="txt_price" class="form-control" runat="server"></asp:TextBox>
                  </div>
                </div>

                <div class="form-row">
                 <div class="form-group col-md-5">
                  <label for="inputAddress5">Discount</label>
                  <%--<input type="text" class="form-control" id="Text2">--%>
                  <asp:TextBox ID="txt_discount" class="form-control" runat="server"></asp:TextBox>
                  </div>
                  <div class="form-group col-md-5">
                  <label for="inputAddress5">Facilities 1</label>
                  <%--<input type="text" class="form-control" id="Text2">--%>
                  <asp:TextBox ID="txt_facilities1" class="form-control" runat="server"></asp:TextBox>
                  </div>
                </div>

                <div class="form-row">
                  <div class="form-group col-md-5">
                    <label for="firstname">Facilities 2</label>
                    <%--<input type="text" id="Text1" class="form-control">--%>
                    <asp:TextBox ID="txt_facilities2" class="form-control" runat="server"></asp:TextBox>
                  </div>
                  <div class="form-group col-md-5">
                  <label for="inputAddress5">Facilities 3</label>
                  <%--<input type="text" class="form-control" id="Text2">--%>
                  <asp:TextBox ID="txt_facilities3" class="form-control" runat="server"></asp:TextBox>
                  </div>
                </div>


                <div class="form-row">
                  <div class="form-group col-md-5">
                    <label for="firstname">Facilities 4</label>
                    <%--<input type="text" id="Text1" class="form-control">--%>
                    <asp:TextBox ID="txt_facilities4" class="form-control" runat="server"></asp:TextBox>
                  </div>
                </div>
                 <hr class="my-4">
                 <div class="form-row">
                     <div class="form-group col-md-8">
                         <asp:Label ID="Label1" runat="server"></asp:Label>
                     </div>
                </div>
              </form>
            </div> <!-- .col-12 -->
          </div> <!-- .row -->
        </div> <!-- .container-fluid -->


</asp:Content>

