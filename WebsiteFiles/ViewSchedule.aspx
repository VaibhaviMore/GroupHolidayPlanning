<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewSchedule.aspx.cs" Inherits="ViewSchedule" %>

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
        <asp:Label ID="lblTourName" runat="server" Text=""></asp:Label>
              <div class="clearfix"></div>

      <asp:Button ID="btnAddSchedule" CssClass="btn-blue"  runat="server" Text="New Schedule" OnClick="btnAddSchedule_Click" Height="40px" Width="110px" style="margin-left:20px;margin-top:20px;" />
   
       <asp:PlaceHolder ID="ScheduleTable" runat="server">
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
                                 <asp:Repeater ID="ScheduleRepeater" runat="server">
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

            <asp:Button ID="btnNextStep" CssClass="btn-blue"  runat="server" OnClick="btnNextStep_Click" Text="Next" Height="40px" Width="110px" style="margin-left:20px;margin-top:20px;" />
   
           </asp:PlaceHolder>
     
</asp:Content>

