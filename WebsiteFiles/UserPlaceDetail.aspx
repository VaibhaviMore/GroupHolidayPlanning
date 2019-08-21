<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserPlaceDetail.aspx.cs" Inherits="UserPlaceDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="global-wrap">
        <div class="container">
            <div class="booking-item-details">
                <header class="booking-item-header">
                    <div class="row">
                        <div class="col-md-9">
                            <h2 class="lh1em"><asp:Label ID="placeName" runat="server"></asp:Label></h2>
                           <p class="lh1em text-small"><i class="fa fa-map-marker"><asp:Label ID="lblCityName" runat="server"></asp:Label></i></p>
                        </div>
                        </div>
                </header>
                <div class="row">
                    <div class="col-md-7">
                        <div class="tabbable booking-details-tabbable">
                            <ul class="nav nav-tabs" id="myTab">
                                <li class="active"><a href="#tab-1" data-toggle="tab"><i class="fa fa-camera"></i>Photos</a>
                                </li>
                                <li><a href="#google-map-tab" data-toggle="tab"><i class="fa fa-map-marker"></i>On the Map</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                              <div class="tab-pane fade in active" id="tab-1">
                                    <div class="fotorama" data-allowfullscreen="true" data-nav="thumbs">
                                        <asp:Image ID="pic1" runat="server"/>
                                        <asp:Image ID="pic2" runat="server"/>
                                        <asp:Image ID="pic3" runat="server"/>
                                        </div>
                                </div>
                     
                                             <div class="tab-pane fade" id="google-map-tab">
                                    <div id="map-canvas" style="width:100%; height:500px;"></div>
                                </div>
                            </div>
                        </div>
                    </div>
            
                </div>
                <div class="gap"></div>
                <div class="row">
                        <h3>Description</h3>
                        <p><asp:Label ID="placeDetails" runat="server"></asp:Label></p>
                </div>
              
            <div class="gap gap-small"></div>
        </div>



    </div>
</asp:Content>

