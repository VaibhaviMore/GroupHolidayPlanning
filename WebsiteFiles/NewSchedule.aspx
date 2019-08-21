<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="NewSchedule.aspx.cs" Inherits="NewSchedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">



    <div class="content">
        <div id="title-breadcrumb-option-demo" class="page-title-breadcrumb">
            <div class="page-header pull-left">
                <div class="page-title">
                    Add Schedule
                </div>
            </div>
            <div class="clearfix">
            </div>
        </div>
        <div class="panel-body pan">
            <div>
                <div class="form-body pal">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="inputName" class="control-label">
                                    Date
                                </label>
                                <div class="input-icon right">

                                    <asp:TextBox ID="txtDate" runat="server" placeholder="" class="form-control datepicker"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredStartDate" runat="server" ControlToValidate="txtDate" ErrorMessage="Please Enter date!"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-2">
                            <div class="form-group">
                                <label for="inputName" class="control-label">
                                    Entry Time :</label>
                                <div class="input-icon right">
                                    <asp:DropDownList ID="ddlhour" CssClass="form-control" runat="server"></asp:DropDownList> 
                                   
                                    <asp:RequiredFieldValidator ID="Requiredhour" runat="server" ControlToValidate="ddlhour" ErrorMessage="field empty"></asp:RequiredFieldValidator>
                                </div>
                                 </div>
                        </div>
                                <div class="col-md-1">
                                    <div class="form-group">
                                        <asp:Label ID="Label2" runat="server" Text="" CssClass="control-label"></asp:Label> 
                                <asp:Label ID="lblHour" runat="server" Text="Hrs" CssClass="control-label" style="position:relative;top:25px;"></asp:Label> 
                           </div> </div>
                                    
                        <div class="col-md-2">
                            <div class="form-group">
                                <label for="inputName" class="control-label">
                                </label>
                                <div class="input-icon right">
                                    <asp:DropDownList ID="ddlMins" CssClass="form-control" runat="server">
                                        <asp:ListItem Value="00"></asp:ListItem>
                                        <asp:ListItem Value="15"></asp:ListItem>
                                        <asp:ListItem Value="30"></asp:ListItem>
                                        <asp:ListItem Value="45"></asp:ListItem>
                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredMins" runat="server" ControlToValidate="ddlMins" ErrorMessage="field empty"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>

                          <div class="col-md-1">
                            <div class="form-group">
                                 <asp:Label ID="lblMin" runat="server" Text="Mins" CssClass="control-label" style="position:relative;top:25px;"></asp:Label> 
                             </div>
                            </div>
                    </div>

                    <div class="row">
                        <div class="col-md-2">
                            <div class="form-group">
                                <label for="inputName" class="control-label">
                                    Exit Time :</label>
                                <div class="input-icon right">
                                    <asp:DropDownList ID="ddlhour2" CssClass="form-control" runat="server"></asp:DropDownList>
                                                          
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlhour2" ErrorMessage="field empty"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-1">
                            <div class="form-group">
                                 <asp:Label ID="Label1" runat="server" Text="Hrs" CssClass="control-label" style="position:relative;top:25px;"></asp:Label> 
                             </div>
                            </div>

                        <div class="col-md-2">
                            <div class="form-group">
                                <label for="inputName" class="control-label">
                                </label>
                                <div class="input-icon right">
                                    <asp:DropDownList ID="ddlmin2" CssClass="form-control" runat="server">
                                        <asp:ListItem Text="00" Value="00"></asp:ListItem>
                                        <asp:ListItem Value="15"></asp:ListItem>
                                        <asp:ListItem Value="30"></asp:ListItem>
                                        <asp:ListItem Value="45"></asp:ListItem>
                                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlmin2" ErrorMessage="field empty"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>

                          <div class="col-md-1">
                            <div class="form-group">
                                 <asp:Label ID="lblMins" runat="server" Text="Mins" CssClass="control-label" style="position:relative;top:25px;"></asp:Label> 
                             </div>
                            </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="inputName" class="control-label">
                                    Time to Reach
                                </label>
                                <div class="input-icon right">
                                    <asp:TextBox ID="txtTimeToReach" CssClass="form-control" runat="server" > </asp:TextBox>

                                </div>
                            </div>


                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <div class="input-icon right">
                                    <asp:DropDownList ID="ddlTime" CssClass="form-control" runat="server" style="position:relative;top:22px;">
                                        <asp:ListItem Text="Mins" Value="00"></asp:ListItem>
                                        <asp:ListItem>Hours</asp:ListItem>
                                        <asp:ListItem>Days</asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="inputName" class="control-label">
                                    City
                                </label>
                                <div class="input-icon right">

                                    <asp:DropDownList ID="ddlAllCity" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlAllCity_SelectedIndexChanged" runat="server"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredCity" runat="server" ControlToValidate="ddlAllCity" ErrorMessage="Please Select City!"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="inputName" class="control-label">
                                    Place
                                </label>
                                <div class="input-icon right">

                                    <asp:DropDownList ID="ddlPlaces" CssClass="form-control" runat="server"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredPlaces" runat="server" ControlToValidate="ddlPlaces" ErrorMessage="Please Select City!"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="form-actions text-left pal">
                        <asp:Button ID="btnAdd" runat="server" Text="Add New Schedule" class="btn btn-primary" OnClick="btnAdd_Click" />
                    </div>
                </div>
            </div>
        </div>



    </div>
</asp:Content>

