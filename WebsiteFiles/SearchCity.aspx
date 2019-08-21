<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="SearchCity.aspx.cs" Inherits="SearchCity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div id="title-breadcrumb-option-demo" class="page-title-breadcrumb">
                    <div class="page-header pull-left">
                        <div class="page-title"> Search City
                            </div>
                    </div>
                   
                    <div class="clearfix">
                    </div>
                </div>
    <div class="page-content">
        <div class="row">
            <div class="col-lg-6">
                <div class="form-group">

                    <div class="input-icon right">
                        <i class="fa fa-search"></i>
                        <asp:TextBox ID="txtSearch" runat="server" placeholder="Enter City Name" class="form-control"></asp:TextBox>
                    </div>
                </div>

            </div>
            <div class="col-md-6">
                <asp:Button ID="btnSearch" runat="server" Text="Search" class="btn-primary" data-toggle="tooltip" data-placement="bottom" title="Click to Search" OnClick="btnSearch_Click" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-grey">
                    <div class="panel-heading">City Information</div>
                    <div class="panel-body">
                        <asp:Label ID="lblMsg" Visible="false" runat="server"></asp:Label>
                        <table class="table-condensed">
                            <tbody>
                                <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                                    <ItemTemplate>
                                        <tr>
                                            <td class="img">
                                                <img src='<%# "uploads/" + Eval("Photo") %>' style="max-width: 100px; max-height: 100px" alt="" title="" /></td>

                                            <td>
                                                <a href='AddNewCity.aspx?ID=<%# Eval("CityID") %>' class="title" style="color: Black; font-weight: bold"><%# Eval("CityName") %></a>
                                                <asp:Button ID="btnView" runat="server" CssClass="btn-blue"
                                                    ToolTip="Click to view city details" Text="View"
                                                    CommandName="View" CommandArgument='<%# Eval("CityID") %>' />
                                                <br />
                                                <%# Eval("Country") %></td>

                                    </ItemTemplate>
                                    <AlternatingItemTemplate>
                                        <td class="img">
                                            <img src='<%# "uploads/" + Eval("Photo") %>' style="max-width: 100px; max-height: 100px" alt="" title="" /></td>

                                        <td>
                                            <a href='AddNewCity.aspx?ID=<%# Eval("CityID") %>' class="title" style="color: Black; font-weight: bold"><%# Eval("CityName") %></a>
                                            <asp:Button ID="btnView" runat="server" CssClass="btn-blue"
                                                ToolTip="Click to view city details" Text="View"
                                                CommandName="View" CommandArgument='<%# Eval("CityID") %>' />
                                            <br />
                                            <%# Eval("Country") %></td>
                                     

                                    </AlternatingItemTemplate> 

                                     <AlternatingItemTemplate>
                                        <td class="img">
                                            <img src='<%# "uploads/" + Eval("Photo") %>' style="max-width: 100px; max-height: 100px" alt="" title="" /></td>

                                        <td>
                                            <a href='AddNewCity.aspx?ID=<%# Eval("CityID") %>' class="title" style="color: Black; font-weight: bold"><%# Eval("CityName") %></a>
                                            <asp:Button ID="btnView" runat="server" CssClass="btn-blue"
                                                ToolTip="Click to view city details" Text="View"
                                                CommandName="View" CommandArgument='<%# Eval("CityID") %>' />
                                            <br />
                                            <%# Eval("Country") %></td>
                                         
 </tr>
                                    </AlternatingItemTemplate>

                                    <%--  <p class="desc"><%# Eval("CityDetails") %></p>  --%>
                                </asp:Repeater>
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>


