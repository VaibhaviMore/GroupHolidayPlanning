<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserMyInvitations.aspx.cs" Inherits="UserMyInvitations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
          <div class="global-wrap">
        <div class="container">
            <div class="row">
           <div class="col-md-3"></div>
           <div class="col-md-9">  <h3 class="booking-title">My Invitations</h3></div>
                </div>
            <div class="row">
         <div class="col-md-3">
                    <aside class="user-profile-sidebar">
                        <div class="user-profile-avatar text-center">     
                              <asp:Image ID="imgPhoto" CssClass="user-profile-avatar text-left" runat="server" />          
                            <h5><asp:Label ID="lblMemberName" runat="server"></asp:Label></h5>
                            <p>Member Since May 2012</p>
                        </div>
                        <ul class="list user-profile-nav">
                            <li><a href="user-profile.html"><i class="fa fa-user"></i>Overview</a>
                            </li>
                            <li><a href="UserProfileSettings.aspx"><i class="fa fa-cog"></i>Settings</a>
                            </li>
                            <li><a href="user-profile-photos.html"><i class="fa fa-camera"></i>My Travel Photos</a>
                            </li>
                            <li><a href="user-profile-booking-history.html"><i class="fa fa-clock-o"></i>Booking History</a>
                            </li>
                            <li><a href="user-profile-cards.html"><i class="fa fa-credit-card"></i>Credit/Debit Cards</a>
                            </li>
                            <li><a href="user-profile-wishlist.html"><i class="fa fa-heart-o"></i>Wishlist</a>
                            </li>
                        </ul>
                    </aside>
            
                  </div>
         <div class="col-md-9">
                    <ul class="booking-list">
                        <li>
                            <div class="booking-item-container">
                              <asp:Repeater ID="InvitedRepeater" runat="server">
                                            <ItemTemplate>
                                      <div class="booking-item">
                                      <div class="row">
                                      
                                        <div class="col-md-2">
                                            <div class="booking-item-airline-logo">
                                             <img src='<%# "uploads/"+Eval("Photo") %>' alt="" title="" style="width:70px; height:50px" />
                                                <p><%# Eval("Title") %></p>

                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="booking-item-flight-details">
                                                <div class="booking-item-departure"><i class="fa fa-plane"></i>
                                                    <p class="booking-item-date">
                                                        <h5><%# Convert.ToDateTime(Eval("StartTime")).ToString("hh:mm tt") %></h5>
                                                        <p class="booking-item-date"><%# Convert.ToDateTime(Eval("StartTime")).ToString("dd MMM") %></p>

                                                    </p>
                                                </div>
                                                <div class="booking-item-arrival"><i class="fa fa-plane fa-flip-vertical"></i>
                                                    <p class="booking-item-date">
                                                     <h5><%# Convert.ToDateTime(Eval("EndTime")).ToString("hh:mm tt") %></h5>
                                                    <p class="booking-item-date"><%# Convert.ToDateTime(Eval("EndTime")).ToString("dd MMM") %></p></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3"><asp:LinkButton ID="btnJoinTour" runat="server" CssClass="btn btn-primary" Text="Join Tour" CommandName="joinTour" OnCommand="btnJoinTour_Command" CommandArgument='<%# Eval("TourID")%>'/>
                                            
                                        </div>
                                    </div>
          
                                         </div><div class="gap-small"></div> </ItemTemplate>
                                            </asp:Repeater>
                            </div>
                        </li>
                            
                    </ul>
          </div>
            </div>
         
        </div>
 </div>

</asp:Content>

