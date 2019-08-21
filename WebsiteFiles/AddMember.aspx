<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddMember.aspx.cs" Inherits="AddMember" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
          <div id="title-breadcrumb-option-demo" class="page-title-breadcrumb">
                    <div class="page-header pull-left">
                        <div class="page-title">
                            Add Member</div>
                    </div>
                    <div class="clearfix">
                    </div>
                </div>
                      
     <div class="page-content">
                  <div class="row">
                       <div class="col-lg-6">
                              <div class="form-group">
    <div class="row">
        <div class="col-md-10">
                            <div class="form-group">
                                <label for="inputName" class="control-label">
                                    Name</label>
                                <div class="input-icon right">
                                    <asp:TextBox ID="txtName" runat="server" placeholder="Member Name" class="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtName" runat="server" ErrorMessage="Please enter name of member"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
        <div class="col-md-10">
                            <div class="form-group">
                                <label for="inputEmail" class="control-label">
                                   Gender</label>
                                <div class="input-icon right">

                                    <asp:TextBox ID="txtGender" runat="server" class="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtGender" runat="server" ErrorMessage="Please Enter country name"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
        <div class="col-md-10">
                            <div class="form-group">
                                <label for="inputEmail" class="control-label">
                                  Email</label>
                                <div class="input-icon right">

                                    <asp:TextBox ID="txtEmailID" runat="server" class="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtEmailID" runat="server" ErrorMessage="Please Enter Email"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
        <div class="col-md-10">
                            <div class="form-group">
                                <label for="inputEmail" class="control-label">
                                   Mobile No</label>
                                <div class="input-icon right">

                                    <asp:TextBox ID="txtMobileNo" runat="server" class="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtMobileNo" runat="server" ErrorMessage="Please Enter Mobile No"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
        <div class="col-md-10">
            <div class="form-group">
                 <label for="inputEmail" class="control-label">
                            Address</label>
        <div class="input-icon right">
        <asp:TextBox ID="txtAddress" class="form-control" runat="server"></asp:TextBox>
                   </div>
              </div>
        </div>
        
        <div class="col-md-10">
            <div class="form-group">
                 <label for="inputEmail" class="control-label">
                            City</label>
        <div class="input-icon right">
            
        <asp:TextBox ID="txtCity" class="form-control" runat="server"></asp:TextBox>
                      </div>
               </div>
        </div>
        
        <div class="col-md-10">
            <div class="form-group">
                 <label for="inputEmail" class="control-label">
                            Photo</label>
        <div class="input-icon right">
        
        <asp:FileUpload ID="PhotoUpload" runat="server" />
        </div></div></div>

         <div class="col-md-10">
            <div class="form-group">
                 <label for="inputEmail" class="control-label">
                            Username</label>
        <div class="input-icon right">
        
        <asp:TextBox ID="txtUsername" class="form-control" runat="server"></asp:TextBox>
        </div></div></div>
       
         <div class="col-md-10">
            <div class="form-group">
                 <label for="inputEmail" class="control-label">
                            Password</label>
        <div class="input-icon right">
        
        <asp:TextBox ID="txtPassword" TextMode="Password" class="form-control" runat="server"></asp:TextBox>
        </div></div></div>
        
       
    </div> 
    <div class="row">
                                <div class="form-actions text-left pal">
        <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-primary" OnClick="btnAdd_Click" />
    </div></div>

                                  
                              </div>
                           </div></div></div>
    
</asp:Content>

