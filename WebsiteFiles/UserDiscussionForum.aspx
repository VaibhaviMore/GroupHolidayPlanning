<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserDiscussionForum.aspx.cs" Inherits="UserDiscussionForum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="gap"></div> 
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






   
        
          
         <asp:Label ID="lblTitle" runat="server" Text="Interact Here!!" class="mb20" style="font-style:normal;font-size:50px"></asp:Label>
    <br/>
                <div class="row row-wrap">
                    <div class="col-md-8">
                        <ul class="booking-item-reviews list">
                             <asp:Repeater ID="MessageRepeater" runat="server">
                             <ItemTemplate>
                            <li>
                                
                                <div class="row">
                                    <div class="col-md-2">
                                        <div class="booking-item-review-person">
                                            <a class="booking-item-review-person-avatar round" href="#">
                                                <img src="img/70x70.png" alt="Image Alternative text" title="AMaze" />
                                            </a>
                                            <p class="booking-item-review-person-name"><a href="#"> hello </a>
                                            </p>
                                           
                                        </div>
                                    </div>
                                    <div class="col-md-10">
                                        <div class="booking-item-review-content">
                                            <h5>  <%# Eval("MessageTitle") %> </h5>
                                          
                                            <p>          <%# Eval("MessageText") %>     </p>
                                            <div class="booking-item-review-more-content">
                                             
                                            </div>
                                            <div class="booking-item-review-expand"><span class="booking-item-review-expand-more">More <i class="fa fa-angle-down"></i></span><span class="booking-item-review-expand-less">Less <i class="fa fa-angle-up"></i></span>
                                            </div>
                                            <p class="booking-item-review-rate">Was this review helpful?
                                                <a class="fa fa-thumbs-o-up box-icon-inline round" href="#"></a><b class="text-color"> 16</b>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                 
                            </li>
                          </ItemTemplate>
                                 </asp:Repeater>
                        </ul>
                        <div class="row wrap">
                            <div class="col-md-5">
                                <p><small>1403 reviews on this hotel. &nbsp;&nbsp;Showing 1 to 7</small>
                                </p>
                            </div>
                            <div class="col-md-7">
                                <ul class="pagination">
                                    <li class="active"><a href="#">1</a>
                                    </li>
                                    <li><a href="#">2</a>
                                    </li>
                                    <li><a href="#">3</a>
                                    </li>
                                    <li><a href="#">4</a>
                                    </li>
                                    <li><a href="#">5</a>
                                    </li>
                                    <li><a href="#">6</a>
                                    </li>
                                    <li><a href="#">7</a>
                                    </li>
                                    <li class="dots">...</li>
                                    <li><a href="#">43</a>
                                    </li>
                                    <li class="next"><a href="#">Next Page</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="gap gap-small"></div>
                        <div class="box bg-gray">
                            <h3>Write a Message </h3>
                            <form>
                                <div class="row">
                                    <div class="col-md-8">
                                        <div class="form-group">
                                            <label>Message Title</label>
                                           
                                      <asp:TextBox ID="txtMessageTitle" runat="server" class="form-control"></asp:TextBox>
                   
                                 </div>
                                        <div class="form-group">
                                            <label>Message Text</label>
                                           
                                              <asp:TextBox ID="txtMessageText" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                       <asp:Button ID="btnAddMessage" runat="server" Text="Add Message" class="btn btn-primary" style="position:relative" OnClick="btnAddMessage_Click"/>
                                       
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                   
                </div>
         
         
         
         
           </div>
         
          </div>

</asp:Content>

