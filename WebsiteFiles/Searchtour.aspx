<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Searchtour.aspx.cs" Inherits="Searchtour" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="title-breadcrumb-option-demo" class="page-title-breadcrumb">
        <div class="page-header pull-left">
            <div class="page-title">
                Search Tour
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
                        <asp:TextBox ID="txtSearch" runat="server" placeholder="Enter Tour Name" class="form-control"></asp:TextBox>
                    </div>
                </div>

            </div>
            <div class="col-md-6">


                <asp:Button ID="btnSearch" runat="server" Text="Search" class="btn btn-primary" data-toggle="tooltip" data-placement="bottom" title="Click to Search" OnClick="btnSearch_Click" />
            </div>
        </div>

              <div class="alert alert-danger" id="lblAlertDiv" runat="server" visible="false" >
                                      <asp:Label ID="lblDeleteMsg" Text="" Visible="false" runat="server" ></asp:Label>
                                        </div>
                              

        <div class="row">
            <div class="col-lg-12">
                <div class="panel-body">
                    <table class="table table-hover" style="border: 1px solid gray">
                        <tbody class="title" style="color: Black">
                            <tr>
                                <td>Title</td>
                                <td>Start Date</td>
                                <td>End Date</td>
                                <td></td>

                            </tr>
                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>

                                    <tr>
                                        <td>
                                            <a href='CreateTour.aspx?ID=<%# Eval("TourID") %>' class="title" style="color: Black"><%# Eval("Title") %></a>
                                        </td>
                                        <td class="title" style="color: Black"><%# Convert.ToDateTime(Eval("StartTime")).ToString("dd MMM,yyyy") %></td>
                                        <td class="title" style="color: Black"><%# Convert.ToDateTime(Eval("EndTime")).ToString("dd MMM,yyyy") %></td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" data-toggle="dropdown" class="btn btn-orange dropdown-toggle">
                                                    Action &nbsp;<span class="caret"></span></button>
                                                <ul class="dropdown-menu pull-right">
                                                    <li><a href='InviteMembers.aspx?TourID=<%# Eval("TourID")%>'>Invite Members</a></li>
                                                    <li><a href='ViewSchedule.aspx?TourID=<%# Eval("TourID") %>'>View Schedule</a></li>
                                                    <li><a href='TourDetail.aspx?TourID=<%# Eval("TourID") %>'>Change Details</a></li>
                                                    <li>
                                                        <asp:LinkButton ID="lbtnDelete" OnCommand="lbtnDelete_Command" CommandArgument='<%# Eval("TourID") %>' runat="server">Delete</asp:LinkButton><%--<a href="#">Delete Tour</a>--%></li>
                                                </ul>
                                            </div>
                                        </td>

                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>

                        </tbody>
                    </table>

                </div>
            </div>

        </div>
    </div>

</asp:Content>

