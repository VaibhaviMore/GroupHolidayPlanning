<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="TourDetail.aspx.cs" Inherits="TourDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script src="script/jquery-1.10.2.min.js"></script>
    <script>
        $(document).ready(function () {
            $(".btnAddMemberToTour").click(function () {
                
                //$("tourDetailsForm").slideDown();
            });
            $(".btnViewTourMembers").click(function () {
                $("tourDetailsForm").slideDown();
            });
        });
</script>
       <div id="title-breadcrumb-option-demo" class="page-title-breadcrumb">
        <div class="page-header pull-left">
            <div class="page-title">
                <asp:Label ID="lblHeading" runat="server"></asp:Label>
            </div>
        </div>
        <div class="clearfix">
        </div>
    </div>

    <div class="content">
            <asp:Button ID="btnAddMemberToTour" runat="server" Text="Add Member To Tour" OnClick="btnAddMemberToTour_Click" class="btn btn-primary btnAddMemberToTour" />
          <asp:Button ID="btnViewTourMembers" runat="server" Text="View Tour Members" OnClick="btnViewTourMembers_Click" class="btn btn-primary"/>
         <asp:Button ID="btnViewSchedule" runat="server" Text="View Schedule" OnClick="btnViewSchedule_Click" class="btn btn-primary"/>
 
    
        <asp:PlaceHolder ID="tourDetailsForm"  runat="server">
           <div class="content clearfix">

            <div class="form-body pal" style="width:70%">
                <div class="row">
                    <div class="col-md-8">
                        <div class="form-group">
                            <label for="inputName" class="control-label">
                                Title</label>
                            <div class="input-icon right">

                                <asp:TextBox ID="txtTitle" runat="server" placeholder="" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                        
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="inputName" class="control-label">
                                Starts :</label>
                            <div class="input-icon right">

                                <asp:TextBox ID="txtStarts" runat="server" placeholder="" class="form-control datepicker"></asp:TextBox>
                                <%--    <img alt="cal" src="styles/calender/images/down.gif" onclick="displayCalendar(document.forms[0].theDate,'dd/mm/yyyy',this)"/>--%>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="inputEmail" class="control-label">
                                Ends :</label>
                            <div class="input-icon right">

                                <asp:TextBox ID="txtEnds" runat="server" placeholder="" class="form-control datepicker"></asp:TextBox>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="inputName" class="control-label">
                                Status :</label>
                            <div class="input-icon right">

                                <asp:TextBox ID="txtStatus" runat="server" placeholder="" class="form-control"></asp:TextBox>

                            </div>
                        </div>

                    </div>
                </div>

                <div class="row">
                    <div class="col-md-8">
                        <div class="form-group">
                            <label for="inputName" class="control-label">
                                Description</label>
                            <div class="input-icon right">

                                <asp:TextBox ID="txtDescription" runat="server" placeholder="" class="form-control" TextMode="MultiLine"></asp:TextBox>
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

                <div class="form-actions text-left pal">

                    <asp:Button ID="btnUpdate" runat="server" Text="Change Tour Details" class="btn btn-primary" OnClick="btnUpdate_Click" />
                </div>
            </div>
               

        </div>
        </asp:PlaceHolder>
          <%-- <br /> <asp:ImageButton ID="imgAddMembersToTour" Width="150px" Height="150px" ToolTip="Click to Add Members to the Tour" ImageUrl="~/images/bakimage.jpg" CausesValidation="false" runat="server"  OnClick="imgAddMembersToTour_Click" />
       <br /> <asp:ImageButton ID="imgViewTourMembers" Width="150px" Height="150px" ToolTip="Click to View All Tour Members" ImageUrl="~/images/bakimage.jpg" CausesValidation="false" runat="server" OnClick="imgViewTourMembers_Click" />   --%>
       
        
        
        
         <asp:PlaceHolder ID="addMembersToTour" Visible="false" runat="server">
            
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


                                                    <asp:Button Style="position: absolute; left: 200px;" ID="btnAdd" runat="server" CssClass="btn-blue" ToolTip="Click to add member to the tour" Text="Add To Tour" CommandName="Invite" CommandArgument='<%# Eval("MemberID") %>' />

                                                    <br />
                                                    <%# Eval("MobileNO") %><br />
                                                    <span style="color: grey"><%# Eval("EmailID") %></span></td>

                                        </ItemTemplate>
                                        <AlternatingItemTemplate>

                                            <td>

                                                <span style="font-weight: bolder"><%# Eval("Name") %></span>

                                                <asp:Button Style="position: absolute; right: 100px;" ID="btnAdd" runat="server" CssClass="btn-blue" ToolTip="Click to add member to the tour" Text="Add To Tour" CommandName="Invite" CommandArgument='<%# Eval("MemberID") %>' />
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

        </asp:PlaceHolder></div>
               
        <asp:PlaceHolder ID="TourMembers" Visible="false" runat="server">
             <div class="col-lg-12">
                    <div class="panel panel-green">
                        <div class="panel-heading">Tour Members</div>
                        <div class="panel-body">
                            <table class="table table-hover-color">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Member</th>
                                        <th>Phone</th>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="RepeaterForTourMembers" runat="server">
                                        <ItemTemplate>

                                            <tr>
                                                <td>2</td>
                                                <td><%# Eval("Name") %></td>
                                                <td><%# Eval("MobileNO") %></td>
                                               
                                               
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



       <asp:PlaceHolder ID="ViewSchedule" Visible="false" runat="server">
              <div class="page-header">
                <div class="panel"> 
                          <div class="panel panel-green">
                            <div class="panel-heading">Schedule</div>
                            <div class="panel-body">
                                <table class="table table-hover-color">
                                    
                                    <thead>
                     
                                       <tr>
                                            <th>Place</th>
                                            <th>Entry Time</th>
                                            <th>Exit Time</th>
                                            <th>Time </th>
                                        </tr>
                                        </thead>
                                    <tbody>
                                 <asp:Repeater ID="RepeaterForSchedule" runat="server">
                                    <ItemTemplate>
                                        
                                        <tr>
                                            <td><%# Eval("PlaceName") %></td>
                                            <td><%# Eval("EntryTime") %></td>
                                            <td><%# Eval("ExitTime") %></td>
                                            <td><%# Eval("TimeToReach") %></td>
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
            
</asp:Content>

