<%@ Page Title="" Language="C#" MasterPageFile="~/Trainer/Trainer.master" AutoEventWireup="true" CodeFile="AddPhoto.aspx.cs" Inherits="Trainer_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid">
          <div class="row justify-content-center">
            <div class="col-12 col-xl-10">
              <div class="row align-items-center my-4">
                <div class="col">
                  <h2 class="h3 mb-0 page-title">Add Photos</h2>
                </div>
                <div class="col-auto">
                  <%--<button type="button" class="btn btn-primary">Save</button>--%>
                    <asp:Button ID="btn_submit" class="btn btn-primary" runat="server" Text="Save" 
                        onclick="btn_submit_Click" />
                </div>
              </div>
              <form>
                <hr class="my-4">
                <%--<h5 class="mb-2 mt-4">Personal Trainer</h5>--%>
                
                <div class="form-row">
                  <div class="form-group col-md-4">
                    <label for="firstname">Photos</label>
                    <%--<input type="text" id="firstname" class="form-control">--%>
                      <asp:FileUpload ID="FileUpload1" class="form-control" runat="server" ViewStateMode="Enabled" />
                  </div>
                  </div>

                  <div class="form-row">
                  <div class="form-group col-md-4">
                    <label for="firstname"></label>
                    <%--<input type="text" id="firstname" class="form-control">--%>
                      <asp:Image ID="Image1"   Height="300px" Width="300px" class="form-control" runat="server" />
                  </div>
                  </div>

                  <div class="form-row">
                     <div class="form-group col-md-8">
                         <asp:Label ID="Label1" runat="server"></asp:Label>
                     </div>
                </div>

                  <hr class="my-4">
                   </form>
            </div> <!-- .col-12 -->
          </div> <!-- .row -->
        </div> <!-- .container-fluid -->

</asp:Content>

