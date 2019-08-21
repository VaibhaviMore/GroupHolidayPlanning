<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="InviteMembers.aspx.cs" Inherits="InviteMembers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div id="title-breadcrumb-option-demo" class="page-title-breadcrumb">

        <div class="page-header ">
            <div class="page-title">
                Invite Members
            </div>
        </div>

    </div>
    <div class="clearfix">
    </div>


    <div class="content">
        <div class="row">
             <div class="panel-body">
             <div class="col-lg-3"><asp:ImageButton ID="imgInvitedMembers" Width="150px" Height="150px" ImageUrl="~/images/member_invitation.jpg" CausesValidation="false" runat="server" OnClick="imgInvitedMembers_Click"  ToolTip="List Of Invited Members"/>
                 
                          </div>
             <div class="col-lg-3">
                 <asp:ImageButton ID="imgTourMembers" Width="150px" Height="150px" ImageUrl="~/images/Members-List.png" CausesValidation="false" runat="server" OnClick="imgTourMembers_Click" ToolTip="List Of Tour Members"/>
             </div></div>
            
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="form-group">
                    <div class="input-icon right">
                        <i class="fa fa-search"></i>
                        <asp:TextBox ID="txtSearch" runat="server" placeholder="Enter Person Name" class="form-control"></asp:TextBox>
                    </div>
                </div>

            </div>
            <div class="col-md-6">
                <asp:Button ID="btnSearch" runat="server" Text="Search" class="btn-primary" data-toggle="tooltip" data-placement="bottom" title="Click to Search" OnClick="btnSearch_Click" />

            </div>
        </div>
        <div class="row">
            <div class="col-lg-12" id="fulltable" runat="server">
                <div class="panel-body">
                    <div class="alert alert-danger" id="lblAlertDiv" runat="server" visible="false">
                        <asp:Label ID="lblMsg" runat="server"></asp:Label>
                    </div>
                    <div class="panel panel-green">
                        <div class="panel-heading">Members</div>
                        <div class="panel-body">
                            <table class="table table-hover-color">

                                <tbody>
                                    <asp:Repeater ID="RepeaterForAllMembers" runat="server" OnItemCommand="RepeaterForAllMembers_ItemCommand">
                                        <ItemTemplate>
                                            <tr>
                                                <td>
                                                    <span style="font-weight: bolder;"><%# Eval("Name") %></span>


                                                    <asp:Button Style="position: absolute; left: 200px;" ID="btnInvite" runat="server" CssClass="btn-blue" ToolTip="Click to invite member" Text="Invite" CommandName="Invite" CommandArgument='<%# Eval("MemberID") %>' />

                                                    <br />
                                                    <%# Eval("MobileNO") %><br />
                                                    <span style="color: grey"><%# Eval("EmailID") %></span></td>

                                        </ItemTemplate>
                                        <AlternatingItemTemplate>

                                            <td>

                                                <span style="font-weight: bolder"><%# Eval("Name") %></span>

                                                <asp:Button Style="position: absolute; right: 100px;" ID="btnInvite" runat="server" CssClass="btn-blue" ToolTip="Click to invite member" Text="Invite" CommandName="Invite" CommandArgument='<%# Eval("MemberID") %>' />
                                                <br />
                                                <%# Eval("MobileNO") %><br />
                                                <span style="color: grey"><%# Eval("EmailID") %></span></td>
                                            </tr>
                                        </AlternatingItemTemplate>
                                    </asp:Repeater>

                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-5">
                <asp:Button ID="btnNext" runat="server" Text="Finish" class="btn btn-primary" OnClick="btnNext_Click" />
            </div>
        </div>

        <div class="row"><br />
            <asp:PlaceHolder ID="AllMembersTable"  Visible="false" runat="server">
                <div class="col-lg-12">
                    <div class="panel panel-green">
                        <div class="panel-heading">Invited Members</div>
                        <div class="panel-body">
                            <table class="table table-hover-color">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Member</th>
                                        <th>Phone</th>
                                        <th>Invitation Time</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="RepeaterForInvitedMembers" runat="server">
                                        <ItemTemplate>

                                            <tr>
                                                <td>2</td>
                                                <td><%# Eval("Name") %></td>
                                                <td><%# Eval("MobileNO") %></td>
                                                <td><%# Convert.ToDateTime( Eval("InvitationTime")).ToString("dd MMM, yyyy") %></td>
                                                <td><span class="label label-sm label-success"><%# Eval("Status") %></span></td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>


                                    <%--For showing status
                                            <td><span class="label label-sm label-info">Pending</span></td>
                                   
                                        <td><span class="label label-sm label-warning">Suspended</span></td>
                                   
                                        <td><span class="label label-sm label-danger">Blocked</span></td>--%>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </asp:PlaceHolder>
        </div>

        <div class="row">
    <asp:PlaceHolder ID="TourMembersTable" Visible="false" runat="server">
            <div class="col-lg-12" id="Div1" runat="server">
                <div class="panel-body">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <asp:Label ID="lblForTourMembers" runat="server"></asp:Label>
                        </div>
                        <div class="panel-body">
                            <table class="table table-hover-color">
                                <tbody>
                                    <asp:Repeater ID="RepeaterForTourMembers" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%# Eval("Name") %></td>
                                                <td><%# Eval("MobileNO") %></td>
                                                <td><%# Convert.ToDateTime( Eval("InvitationTime")).ToString("dd MMM, yyyy") %></td>
                                                <td><%# Convert.ToDateTime( Eval("JoiningTime")).ToString("dd MMM, yyyy") %></td>
                                                <td><span class="label label-sm label-success"><%# Eval("Status") %></span></td>
                                            </tr>
                                        </ItemTemplate>

                                    </asp:Repeater>

                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </asp:PlaceHolder>
        </div>


    </div>
</asp:Content>

