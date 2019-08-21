<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="SearchPlace.aspx.cs" Inherits="SearchPlace" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="title-breadcrumb-option-demo" class="page-title-breadcrumb">
                    <div class="page-header pull-left">
                        <div class="page-title">Search Place
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
                                                <asp:TextBox ID="txtSearch" runat="server" placeholder="Enter Place Name" class="form-control"></asp:TextBox>
                                                </div>
                              </div>
                      
                  </div>
                       <div class="col-md-6">
                          <asp:Button ID="btnSearch" runat="server"  Text="Search" class="btn btn-primary" data-toggle="tooltip" data-placement="bottom" title="Click to Search" OnClick="btnSearch_Click"
                                             />
                               </div>
                  </div>
                          <div class="row">
                    <div class="col-lg-12">
                            <asp:Label ID="lblMsg" Visible="false" runat="server" ></asp:Label>
                        <div class="panel panel-grey">
                            <div class="panel-heading">Places</div>
                            <div class="panel-body">
                                <table class="table table-hover table-condensed">
                                   
                                    <tbody>
                                 <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                                 <td>
                                                  <a href='AddNewPlace.aspx?PlaceID=<%# Eval("PlaceID") %>' class="title" style="color:Black; font-weight:bold"><%# Eval("PlaceName") %></a><br />
                                                     <p class="desc"><%# Eval("CityName") %></p>
                                                    <%--   <p class="desc"> <%# Eval("PlaceDetails") %></p>--%>

                                            </td>
                                  </tr>
                                    </ItemTemplate>

                                     <AlternatingItemTemplate>
                                         <tr>
                                            <td>
                                                <a href='AddNewPlace.aspx?PlaceID=<%# Eval("PlaceID") %>' class="title" style="color:Black; font-weight:bold"><%# Eval("PlaceName") %></a>
                                       <%--   <p class="desc"> <%# Eval("PlaceDetails") %></p>--%>
                                                 <p class="desc"><%# Eval("CityName") %></p>
                                            </td></tr>
                                     </AlternatingItemTemplate>
                                 </asp:Repeater>
                                 
                                    </tbody>
                                    
                                </table>
                                </div>
                            </div>
                            </div>
                            <a id="totop" href="#" style="display:inline;"><i class="fa fa-angle-up">
                                       </i></a>
                            
                   </div>
               
                         </div>
                </div>
                        
             

              
                
</asp:Content>

