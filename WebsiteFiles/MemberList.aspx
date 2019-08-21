<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="MemberList.aspx.cs" Inherits="MemberList" %>

<%-- Add content controls here --%>
<asp:Content ID="CContent1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="title-breadcrumb-option-demo" class="page-title-breadcrumb">
                    <div class="page-header pull-left">
                        <div class="page-title"> View Members
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
                        <asp:TextBox ID="txtSearch" runat="server" placeholder="Enter Name" class="form-control"></asp:TextBox>
                    </div>
                </div>

            </div>
      <div class="col-md-6">
                <asp:Button ID="btnSearch" runat="server" Text="Search" class="btn-primary" data-toggle="tooltip" data-placement="bottom" title="Click to Search" OnClick="btnSearch_Click" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </div>
    </div>

     <div class="row">
     <div class="col-md-1">
         <div class="form-group">
           <asp:Label runat="server" ID="lblType" class="radio-inline"> Search : </asp:Label>
         </div>
     </div>
     <div class="col-md-1">
         <div class="form-group">
            <div class="radio">                 
                <asp:RadioButton ID="rbStaff" runat="server" class="radio-inline" Text="Staff"  GroupName="Type" style="display: block; width: 140%; height: 140%; background: rgb(255, 255, 255);"/>
            </div>
           </div>
          </div>

            <div class="col-md-8">
         <div class="form-group">
            <div class="radio">                 
               <asp:RadioButton ID="rbMember" runat="server" class="radio-inline" Text="Member" GroupName="Type" style="display: block; width: 140%; height: 140%; background: rgb(255, 255, 255);" />                          
              </div>
           </div>
          </div>
  
         
                </div>
     <asp:PlaceHolder ID="showMembers" Visible="false" runat="server">
                <div class="panel-body">
      <asp:Label ID="lblMsg" runat="server" Text="" Visible="false"></asp:Label>
       <div class="panel panel-green">
                            <div class="panel-heading">Members</div>
                                <table class="table table-hover-color">
                                    <thead class="table-header" style="height:2%">
                                    <tr>
                                        <th>#</th>
                                       <th style="width: 5%">Picture</th>
                                         <th>Username</th>
                                         <th>Name</th>
                           
                                         <th>Email</th>
                                             <th style="width: 5%">Profile</th>
                                            <th>Last Login</th>
                                    </tr>
                                    </thead>
                                    <tbody> <asp:Repeater ID="AllMemberRepeater" runat="server">
                                    <ItemTemplate>
                                        <tr>
             
                                           
                                                   <td>1</td>   
                                           <td  >
                                               <img class="img-responsive img-circle" src='<%# "uploads/" + Eval("Photo") %>'  alt="Image" title=""/></td>
                                         
                                            <td><a href="MembersProfileForAdmin.aspx?MemberID=<%# Eval("MemberID") %>"><%# Eval("Username") %></a></td>
                                            <td><a href="MembersProfileForAdmin.aspx?MemberID=<%# Eval("MemberID") %>"><%# Eval("Name") %></a></td>
                                            <td><%# Eval("EmailID") %></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                    </ItemTemplate>
                                 </asp:Repeater>
                                   
                                    </tbody>
                                </table>
                         
                        </div>
                    </div>
         </asp:PlaceHolder>
    <asp:PlaceHolder ID="showStaff" Visible="false" runat="server">
           <div class="panel-body">
      <asp:Label ID="Label2" runat="server" Text="" Visible="false"></asp:Label>
       <div class="panel panel-green">
                            <div class="panel-heading">Staff Members</div>
                                <table class="table table-hover-color">
                                    <thead class="table-header" style="height:2%">
                                    <tr>
                                        <th>#</th>
                                       <th style="width: 5%">Picture</th>
                                         <th>Username</th>
                                         <th>Name</th>
                           
                                         <th>Email</th>
                                           <th style="width: 5%">Profile</th>
                                            <th>Last Login</th>
                                    </tr>
                                    </thead>
                                    <tbody> 
                                        <asp:Repeater ID="RepeaterforStaff" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                           <td>1</td>   
                                           <td  >
                                           <img class="img-responsive img-circle" src='<%# "uploads/" + Eval("Photo") %>'  alt="Image" title=""/></td>
                                         
                                            <td><a href="MembersProfileForAdmin.aspx?StaffID=<%# Eval("StaffID") %>"><%# Eval("Username") %></a></td>
                                            <td><a href="MembersProfileForAdmin.aspx?StaffID=<%# Eval("StaffID") %>"><%# Eval("Name") %></a></td>
                                            <td><%# Eval("EmailID") %></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                    </ItemTemplate>
                                 </asp:Repeater>
                                   
                                    </tbody>
                                </table>
                         
                        </div>
                    </div>

        </asp:PlaceHolder>

     </div>

</asp:Content>
