<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="StaffDetail.aspx.cs" Inherits="StaffDetail" %>



 <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div id="title-breadcrumb-option-demo" class="page-title-breadcrumb">
                    <div class="page-header pull-left">
                        <div class="page-title">
                            Staff Detail</div>
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
                                 <asp:Label runat="server" ID="lblName" CssClass="control-label"> Name </asp:Label>
                                  
                                <div class="input-icon right">
                                    <asp:TextBox ID="txtName" runat="server" placeholder="Member Name" class="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtName" runat="server" ErrorMessage="Please enter name of member"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
        <div class="col-md-10">
                            <div class="form-group">
                               
                                    <asp:Label runat="server" ID="lblGender" class="control-label"> Gender </asp:Label>
                                  
                                <div class="input-icon right">

                                   
                                    <asp:RadioButton ID="rbMale" runat="server"  class="radio-inline" Text="Male"  GroupName="Gender"/>
                                    <br />
                                    <asp:RadioButton ID="rbFemale" runat="server" class="radio-inline" Text="Female" GroupName="Gender" />
                                   
                                   
                                </div>
                            </div>
                        </div>
        <div class="col-md-10">
                            <div class="form-group">
                                  <asp:Label runat="server" ID="lblEmailID" CssClass="control-label"> EmailID </asp:Label>
                                <div class="input-icon right">

                                    <asp:TextBox ID="txtEmailID" runat="server" class="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtEmailID" runat="server" ErrorMessage="Please Enter Email"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
        <div class="col-md-10">
                            <div class="form-group">
                                  <asp:Label runat="server" ID="lblMobileNo" CssClass="control-label"> MobileNo </asp:Label>
                                <div class="input-icon right">

                                    <asp:TextBox ID="txtMobileNo" runat="server" class="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtMobileNo" runat="server" ErrorMessage="Please Enter Mobile No"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
        <div class="col-md-10">
            <div class="form-group">
                    <asp:Label runat="server" ID="lblAddress" CssClass="control-label"> Adress </asp:Label>
        <div class="input-icon right">
        <asp:TextBox ID="txtAddress" class="form-control" runat="server"></asp:TextBox>
                   </div>
              </div>
        </div>
        
        <div class="col-md-10">
            <div class="form-group">
                   <asp:Label runat="server" ID="lblCity" CssClass="control-label"> City</asp:Label>
        <div class="input-icon right">
            
        <asp:TextBox ID="txtCity" class="form-control" runat="server"></asp:TextBox>
                      </div>
               </div>
        </div>
        
        <div class="col-md-10">
            <div class="form-group">
                  <asp:Label runat="server" ID="lblPhoto" CssClass="control-label"> Photo </asp:Label>
        <div class="input-icon right">
        
        <asp:FileUpload ID="PhotoUpload" runat="server" />
        </div></div></div>

         <div class="col-md-10">
            <div class="form-group">
                   <asp:Label runat="server" ID="lblUsername" CssClass="control-label"> UserName</asp:Label>
        <div class="input-icon right">
        
        <asp:TextBox ID="txtUsername" class="form-control" runat="server"></asp:TextBox>
        </div></div></div>
       
         <div class="col-md-10">
            <div class="form-group">
                    <asp:Label runat="server" ID="lblPassword" CssClass="control-label"> Password </asp:Label>
        <div class="input-icon right">
        
        <asp:TextBox ID="txtPassword" TextMode="Password" class="form-control" runat="server"></asp:TextBox>
        </div></div></div>
        
       
    </div> 
       <div class="row">
          <div class="col-md-10">
              <asp:Label ID="lblStaffType" runat="server"  CssClass="control-label"> Staff Type </asp:Label>
                <asp:DropDownList ID="ddlStaffType" runat="server" CssClass="form-control" >
                  <asp:ListItem Text="StaffMember" Selected="False"> </asp:ListItem>
                  <asp:ListItem Text="Guide"> </asp:ListItem>
              </asp:DropDownList>                            
                </div>

                                  </div>
          
       <div class="row">
               <div class="col-md-10">
              <div class="form-actions text-left pal">
        <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-primary" OnClick="btnAdd_Click" />
    </div></div></div>

                                  
                              </div>
                           </div></div>
    </div>

 </asp:Content>