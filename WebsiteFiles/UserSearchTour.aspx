<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserSearchTour.aspx.cs" Inherits="UserSearchTour" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<%--    <div class="container">
     <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group form-group-lg form-group-icon-left"><i class="fa fa-map-marker input-icon"></i>
                                                                    <label>Where should I take You?? </label>
                                                                   
                                                               <asp:TextBox ID="txtSearch" runat="server" class="typeahead form-control"></asp:TextBox>
                                                                     </div>
                                                            </div>
      
    //comment
   //<asp:Button ID="btnSearch" runat="server" Text="Search"  class="btn btn-primary btn-lg" />

     <div class="col-md-3">
          
                                                                  
                           <asp:Button ID="btnSearch" runat="server" Text="Search"  class="btn btn-primary btn-lg" OnClick="btnSearch_Click" />                                    
                                                           

            </div>
         </div>




         <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>

                            <div class="col-md-4">
                            <div class="thumb">
                                <header class="thumb-header">
                                    <a class="hover-img" >
                <img src='<%# "uploads/" + Eval("Photo") %>'  alt="Image" title=""/>
                                                                   
                                        <h5 class="hover-title-center">Explore</h5>
                                    </a>
                                </header>
                                <div class="thumb-caption">
                             
                                    <h5 class="thumb-title"><a class="text-darken"><%# Eval("Title") %></a></h5>
                                   
                                </div>
                            </div>
                        </div>
                                     </ItemTemplate>
                            </asp:Repeater>


        </div>--%>

    <div class="global-wrap">
        <!-- TOP AREA -->
        <div class="top-area show-onload">
            <div class="bg-holder full">
                <div class="bg-mask"></div>
                <div class="bg-parallax" style="background-image:url(images/bcksearchpage.jpg);"></div>
                <div class="bg-content">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-8">
                                <div class="search-tabs search-tabs-bg mt50">
                                    <h1>Find Tour</h1>
                                    <div class="tabbable">
                                        <ul class="nav nav-tabs" id="myTab">
                                            <li class="active"><a href="#tab-1" data-toggle="tab"><i class="fa fa-building-o"></i> <span >Search Tours</span></a>
                                            </li>
                                           

                                        </ul>
                                        <div class="tab-content">
                                            <div class="tab-pane fade in active" id="tab-1">
                                                <h2>Search Tours</h2>
                                               
                                                    <div class="input-daterange" data-date-format="M d, D">
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group form-group-lg form-group-icon-left"><i class="fa fa-map-marker input-icon"></i>
                                                                    <label>Tour to Search </label>
                                                                              <asp:TextBox ID="txtSearch" runat="server" class="typeahead form-control"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                               
                                                             <div class="col-md-3"     style="padding-top: 30px;">
                                                       <asp:Button ID="btnSearch" runat="server" Text="Search Tours" class="btn btn-primary btn-lg" OnClick="btnSearch_Click" />                                              
                                                             </div>
                                                        </div>

                                                    </div>
                                                       
                                                   </div>
                                           </div>
                                    </div>
                                </div>
                            </div>
                          
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END TOP AREA  -->
        <div class="gap gap-small"></div>
        <%--<div class="gap"></div>--%>
<asp:PlaceHolder ID="displayTours" Visible="false" runat="server">
   
        <div class="container">
            <div class="row row-wrap" data-gutter="60">
                     <asp:Repeater ID="Repeater1" runat="server">
                     <ItemTemplate>

                            <div class="col-md-4">
                            <div class="thumb">
                                <header class="thumb-header">
                                    <a class="hover-img" href='UserTourDetail.aspx?TourID=<%# Eval("TourID") %>'>
                          <img src='<%# "uploads/" + Eval("Photo") %>'  alt="Image" title=""/>
                                                                   
                                        <h5 class="hover-title-center">Explore</h5>
                                    </a>
                                </header>
                                <div class="thumb-caption">
                             
                                    <h5 class="thumb-title"><a class="text-darken" href='UserTourDetail.aspx?TourID=<%# Eval("TourID") %>'> <%# Eval("Title") %></a></h5>
                                   
                                </div>
                            </div>
                        </div>
                                     </ItemTemplate>
                            </asp:Repeater>


            </div>
            <div class="gap gap-small"></div>
        </div>

          </asp:PlaceHolder>
    </div>  
</asp:Content>

