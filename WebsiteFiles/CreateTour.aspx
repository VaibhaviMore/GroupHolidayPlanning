<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="CreateTour.aspx.cs" Inherits="CreateTour" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
   <div id="title-breadcrumb-option-demo" class="page-title-breadcrumb">
        <div class="page-header pull-left">
            <div class="page-title">
                Create Tour
            </div>
        </div>
        <div class="clearfix">
        </div>
    </div>
            
           <div class="content">
    
                                                                            </div>
                <div class="content clearfix">

                          <div class="form-body pal">
                                <div class="row">
                                    <div class="col-md-8">
                                        <div class="form-group">
                                            <label for="inputName" class="control-label">
                                                Title</label>
                                            <div class="input-icon right">
                                                
                                                <asp:TextBox ID="txtTitle" runat="server" placeholder="" class="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredTitleName" ControlToValidate="txtTitle" runat="server" ErrorMessage="Please give a title to the tour."></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    </div>
                                  
                                </div>  
                                 <div class="row">
                                     <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="inputName" class="control-label" >
                                                    Start Date</label>
                                                <div class="input-icon right">
                                                    
                                                    <asp:TextBox ID="txtStartTime" runat="server" placeholder="" class="form-control datepicker"></asp:TextBox>
                                                <%--    <img alt="cal" src="styles/calender/images/down.gif" onclick="displayCalendar(document.forms[0].theDate,'dd/mm/yyyy',this)"/>--%>
                                                    <asp:RequiredFieldValidator ID="RequiredStartDate" runat="server" ControlToValidate="txtStartTime" ErrorMessage="When is the tour starting?"></asp:RequiredFieldValidator>
                                                     </div>
                                            </div>
                                     </div>
                                     <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="inputEmail" class="control-label">
                                                    End Date:</label>
                                                <div class="input-icon right">
                                                    
                                                    <asp:TextBox ID="txtEndTime" runat="server" placeholder="" class="form-control datepicker"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredEndtime" ControlToValidate="txtEndTime" runat="server" ErrorMessage="Please enter when the tour ends."></asp:RequiredFieldValidator>
                                                     </div>
                                            </div>
                                     </div>
                                    </div>
<div class="row">
                                <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="inputName" class="control-label">
                                                    Photo </label>
                                                <div class="input-icon right">
                                                    <i class="fa fa-image"></i>
                                                      <asp:FileUpload ID="fuPhoto" runat="server" />
                                                 
                                                </div>
                                            </div>
                                     </div>
    </div>
                <div class="row">
                            <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="inputName" class="control-label">
                                                    Description </label>
                                                <div class="input-icon right">
                                                    
                                                       <asp:TextBox ID="txtDescription" class="form-control" runat="server"></asp:TextBox>  
                                                </div>
                                            </div>
                                     </div>
                </div>                   
                                <div class="form-actions text-left pal">
                                    
                                        <asp:Button ID="btnAdd" runat="server"  Text="Next" class="btn btn-primary" onclick="btnAdd_Click" 
                                            />
                                </div>
                            </div>
                    
               
        </div>       
</asp:Content>

