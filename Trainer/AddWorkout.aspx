<%@ Page Title="" Language="C#" MasterPageFile="~/Trainer/Trainer.master" AutoEventWireup="true" CodeFile="AddWorkout.aspx.cs" Inherits="Trainer_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid">
          <div class="row justify-content-center">
            <div class="col-12 col-xl-10">
              <div class="row align-items-center my-4">
                <div class="col">
                  <h2 class="h3 mb-0 page-title">Add Workout</h2>
                </div>
                <div class="col-auto">
                  <%--<button type="button" class="btn btn-primary">Save</button>--%>
                    <asp:Button ID="txt_save" class="btn btn-primary" runat="server" Text="Save" OnClick="txt_save_Click"  />
                </div>
              </div>
              <form class="needs-validation" novalidate>
              
                <hr class="my-4">
                <%--<h5 class="mb-2 mt-4">Personal Trainer</h5>--%>
                
                <div class="form-row">
                  <div class="form-group col-md-4">
                    <label for="validationCustom3">Exercise</label>
                    <%--<input type="text" id="firstname" class="form-control">--%>
                      <asp:DropDownList ID="ddl_exercise" class="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="exercise_name" DataValueField="exercise_id"></asp:DropDownList>
                          
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" SelectCommand="SELECT * FROM [Exercise]"></asp:SqlDataSource>
                          
                  </div>
                 

                
                  <div class="form-group col-md-6">
                  <label for="inputAddress5">Sub Exercise</label>
                  <%--<input type="text" class="form-control" id="inputAddress5">--%>
                     
                 
                      <asp:ListBox ID="ListBox1" runat="server"  class="form-control" DataSourceID="SqlDataSource2" SelectionMode="Multiple" DataTextField="sub_exercise_name" DataValueField="sub_exercise_name" Height="150px"></asp:ListBox>
                      
                      
                      
                  
                 
                      
                      
                      
                      
                  
                 
                      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" SelectCommand="SELECT * FROM [Sub_Exercise] WHERE ([exercise_id] = @exercise_id)">
                          <SelectParameters>
                              <asp:ControlParameter ControlID="ddl_exercise" Name="exercise_id" PropertyName="SelectedValue" Type="Int32" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                      
                      
                      
                  
                 
                      
                      
                      
                      
                  
                 
                </div>
                    </div>

                <div class="form-row">
                 <div class="form-group col-md-6">
                  <label for="inputAddress5">Set</label>
                  <%--<input type="text" class="form-control" id="Text2">--%>
                     <asp:DropDownList ID="ddl_set" class="form-control" runat="server">
                         <asp:ListItem Selected="True">Select Set</asp:ListItem>
                         <asp:ListItem>3</asp:ListItem>
                         <asp:ListItem>5</asp:ListItem>
                     </asp:DropDownList>
                  </div>
                  <div class="form-group col-md-4">
                    <label for="firstname">Rep</label>
                    <%--<input type="text" id="Text1" class="form-control">--%>
                      <asp:DropDownList ID="ddl_rep" class="form-control" runat="server">
                          <asp:ListItem Selected="True">Selet Reps</asp:ListItem>
                          <asp:ListItem>8</asp:ListItem>
                          <asp:ListItem>10</asp:ListItem>
                          <asp:ListItem>12</asp:ListItem>
                          <asp:ListItem>15</asp:ListItem>
                      </asp:DropDownList>
                  </div>
                </div>

                
                <div class="form-row">
                <div class="form-group col-md-5">
                    <label for="inputState5">Notes</label>
                    <%--<select id="inputState5" class="form-control">
                      <option value="female">Female</option>
                      <option value="male">Male</option>
                    </select>--%>
                    <asp:TextBox ID="txt_notes" class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
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

