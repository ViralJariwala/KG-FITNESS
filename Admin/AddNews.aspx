<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/1.master" AutoEventWireup="true" CodeFile="AddNews.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid">
          <div class="row justify-content-center">
            <div class="col-12 col-xl-10">
              <div class="row align-items-center my-4">
                <div class="col">
                  <h2 class="h3 mb-0 page-title">Add News</h2>
                </div>
                <div class="col-auto">
                  <%--<button type="button" class="btn btn-primary">Save</button>--%>
                    <asp:Button ID="btn_save" class="btn btn-primary" runat="server" Text="Save" 
                        onclick="btn_save_Click"  />
                </div>
              </div>
              <form class="needs-validation" novalidate>
              
                <hr class="my-4">
                <%--<h5 class="mb-2 mt-4">Personal Trainer</h5>--%>
                
                <div class="form-row">
                  <div class="form-group col-md-10">
                    <label for="validationCustom3">News Name</label>
                    <%--<input type="text" id="firstname" class="form-control">--%>
                    <asp:TextBox ID="txt_title" class="form-control" runat="server" ></asp:TextBox>
                      
                  </div>

                </div>

                <div class="form-row">
                 <div class="form-group col-md-10">
                  <label for="inputAddress5">Description</label>
                  <%--<input type="text" class="form-control" id="Text2">--%>
                  <asp:TextBox ID="txt_description" class="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                    
                  </div>
                 
                </div>


                <div class="form-row">
                 <div class="form-group col-md-5">
                  <label for="inputAddress5">Date</label>
                  <%--<input type="text" class="form-control" id="Text2">--%>
                  <asp:TextBox ID="txt_date" class="form-control" runat="server"></asp:TextBox>
                
                  </div>
                  <div class="form-group col-md-5">
                    <label for="firstname">Year</label>
                    <%--<input type="text" id="Text1" class="form-control">--%>
                      <asp:TextBox ID="txt_year" class="form-control" runat="server"></asp:TextBox>
                  </div>
                </div>
                

                <div class="form-row">
                 <div class="form-group col-md-5">
                  <label for="inputAddress5">Image</label>
                  <%--<input type="text" class="form-control" id="Text2">--%>
                     <asp:FileUpload ID="FileUpload1" class="form-control" runat="server" />
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

