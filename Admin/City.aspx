<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/1.master" AutoEventWireup="true" CodeFile="City.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="row">
                <div class="col-md-12">
                  <div class="card shadow mb-4">
                    <div class="card-header">
                      <strong class="card-title">Add City</strong>
                    </div>
                    <div class="card-body">
                      <form>

                       <div class="form-row">
                          <div class="form-group col-md-6">
                            <label for="inputEmail4">State</label>
                           <%-- <input type="email" class="form-control" id="inputEmail5">--%>
                              <asp:DropDownList ID="ddl_statename" class="form-control" runat="server" 
                                  AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="state" 
                                  DataValueField="state_id">
                              </asp:DropDownList>
                              <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                  ConnectionString="<%$ ConnectionStrings:ConStr %>" 
                                  SelectCommand="SELECT * FROM [State]"></asp:SqlDataSource>
                          </div>
                        </div>



                        <div class="form-row">
                          <div class="form-group col-md-6">
                            <label for="inputEmail4">City</label>
                           <%-- <input type="email" class="form-control" id="inputEmail5">--%>
                              <asp:TextBox ID="txt_city" class="form-control" runat="server"></asp:TextBox>
                          </div>
                        </div>
                        <%--<button type="submit" class="btn btn-primary">Sign in</button>--%>
                      <asp:Button ID="btn_submit" class="btn btn-primary" runat="server" Text="Submit" 
                           onclick="btn_submit_Click" />
                      </form>
                    </div> <!-- /. card-body -->
                  </div> <!-- /. card -->
                </div> <!-- /. col -->
              </div>


</asp:Content>

