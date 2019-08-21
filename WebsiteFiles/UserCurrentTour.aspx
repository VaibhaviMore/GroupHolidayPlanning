<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserCurrentTour.aspx.cs" Inherits="UserCurrentTour" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="gap"> </div>
   
           <div class="container">
               <div class="row"> 

            <div class="col-md-3">
                    <aside class="user-profile-sidebar">
                        <div class="user-profile-avatar text-center">       <%--style="height:70px; width:70px;" --%>
             
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


    <div class="col-md-2">
           <asp:Button ID="btnLostRequest" runat="server" Text="Lost Request"  class="btn btn-primary btn-lg" />                                    
     </div>

     <div class="col-md-2">
           <asp:Button ID="btnAddPhoto" runat="server" Text="Add Photo"  class="btn btn-primary btn-lg" OnClick="btnAddPhoto_Click" />                                    
     </div>

     <div class="col-md-2">
           <asp:Button ID="btnViewPhoto" runat="server" Text="View Photo"  class="btn btn-primary btn-lg" />                                    
     </div>

     <div class="col-md-2">
           <asp:Button ID="btnViewPlaceDetails" runat="server" Text="Place Details"  class="btn btn-primary btn-lg" />                                    
     </div>  
                     
               

                    <asp:Repeater ID="Repeater1" runat="server">
                   <ItemTemplate>
                       <%# Eval("Title") %>
                   </ItemTemplate>
               </asp:Repeater>
              
   </div>

               </div>  

    
</asp:Content>

