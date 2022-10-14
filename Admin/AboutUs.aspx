<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/1.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="Admin_Default" %><%@ Register assembly="CKEditor.NET" namespace="CKEditor.NET" tagprefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
     <div class="row">
                <div class="col-md-12">
                  <div class="card shadow mb-4">
                    <div class="card-header">
                      <strong class="card-title">About Us</strong>
                    </div>
                    <div class="card-body">
                      
                      <form>
                       <div class="form-row">

                            <CKEditor:CKEditorControl ID="CKEditorControl1" runat="server">

                            </CKEditor:CKEditorControl>
                      
                          </div>
                        
                        </form>
                        <%--<button type="submit" class="btn btn-primary">Sign in</button>--%>
                      <asp:Button ID="btn_submit" class="btn btn-primary" runat="server" Text="Submit" 
                            onclick="btn_submit_Click" />
                   
                    </div> <!-- /. card-body -->
                  </div> <!-- /. card -->
                </div> <!-- /. col -->
            </div>
</asp:Content>

