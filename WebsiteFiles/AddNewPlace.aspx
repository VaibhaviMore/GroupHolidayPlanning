<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddNewPlace.aspx.cs" Inherits="AddNewPlace" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="title-breadcrumb-option-demo" class="page-title-breadcrumb">
                    <div class="page-header pull-left">
                        <div class="page-title">
                               <asp:Label ID="lblHEading" runat="server" Text="Add New Place"></asp:Label>
                            </div>
                    </div>
                
                    <div class="clearfix">
                    </div>
                </div>
                <div class="page-content">
               
                    <div class="panel-body pan">
                        <div>
                            <div class="form-body pal">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="inputName" class="control-label">
                                                Name</label>
                                            <div class="input-icon right">
                                                <i class="fa fa-plus"></i>
                                                <asp:TextBox ID="txtName" runat="server" placeholder="Place Name" class="form-control"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  ControlToValidate="txtName" runat="server" ErrorMessage="Please enter name of place"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    </div>
                                </div>  
                                <div class="row" id="displayphotorow" runat="server">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <div class="input-icon right">
                                     
                               <asp:Image ID="img1" runat="server" style="max-width: 200px; max-height: 200px" alt="Image"/>
                                                </div>
                                            </div>
                                     </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <div class="input-icon right">
                                                    <asp:Image ID="img2" runat="server" style="max-width: 200px; max-height: 200px" alt="Image"/>
                                  
                                                </div>
                                            </div>
                                     </div>
                                           <div class="col-md-4">
                                            <div class="form-group">
                                                <div class="input-icon right">
                                     
                                  <asp:Image ID="img3" runat="server" style="max-width: 200px; max-height: 200px" alt="Image"/>
                                                </div>
                                            </div>
                                     </div>
                                  
                                </div>
                                 <div class="row" id="photorow"  runat="server">
                                     <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="inputName" class="control-label">
                                                    Photo 1</label>
                                                <div class="input-icon right">
                                                    <i class="fa fa-image"></i>
                                                      <asp:FileUpload ID="FileUpload1" runat="server" />
                                                   <%--     <img src='<%# "uploads/" + Eval("Photo1") %>'  style="max-width: 100px; max-height: 100px" alt="Image" title=""/>--%>
                                                </div>
                                            </div>
                                     </div>
                                     <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="inputEmail" class="control-label">
                                                    Photo 2</label>
                                                <div class="input-icon right">
                                                    <i class="fa fa-image"></i>
                                                      <asp:FileUpload ID="FileUpload2" runat="server" />
                                                </div>
                                            </div>
                                     </div>
                                     <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="inputEmail" class="control-label">
                                                    Photo 3</label>
                                                <div class="input-icon right">
                                                    <i class="fa fa-image"></i>
                                                      <asp:FileUpload ID="FileUpload3" runat="server" />                                             </div>
                                            </div>
                                     </div>
                                 </div>
                                    <div class="row">
                                     <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="inputMessage" class="control-label">
                                            Place Details</label>
                                             <div class="input-icon right">
                                                    <i class="fa fa-info-circle"></i>
                                           <asp:TextBox ID="txtPlaceDetails" runat="server" placeholder="Place Details" TextMode="MultiLine" class="form-control"></asp:TextBox>  
                                            </div>
                                            </div>
                                  </div>
                                </div>
                                   
                                  <div class="row">
                                     <div class="col-md-12">   
                                    <div class="form-group">
                                        <label for="inputMessage" class="control-label">
                                            Audio Details</label>
                                             <div class="input-icon right">
                                                    <i class="fa fa-info-circle"></i>
                                           <asp:TextBox ID="txtAudioDetails" runat="server" placeholder="Audio Details" TextMode="MultiLine" class="form-control"></asp:TextBox>  
                                            </div>
                                            </div>
                                     </div>
                                </div>

                                <div class="row">
                                <div class="form-actions text-left pal">
                                    
                                        <asp:Button ID="btnAdd" runat="server"  Text="Add New Place" class="btn btn-primary" 
                                            onclick="btnAdd_Click" />
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
       
    
          

</asp:Content>

