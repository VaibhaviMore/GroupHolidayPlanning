<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserPhotoGallery.aspx.cs" Inherits="UserPhotoGallery" %>

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
        <div class="col-md-9">

            <div class="global-wrap">
 
        <div class="container">
<div class="row">
     
                <div class="col-md-9">
                   
                    <div class="row row-wrap">
                     <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>

                            <div class="col-md-4">
                            <div class="thumb">
                                <header class="thumb-header">
                                    <a class="hover-img" href="UserAddPhoto.aspx?TourMemberID=<%# Eval("TourMemberID") %>">
                <img src='<%# "uploads/" + Eval("Photo") %>'  alt="Image" title="" style="height:200px; width:250px"/>
                                                                   
                                        <h5 class="hover-title-center">Explore</h5>
                                    </a>
                                </header>
                                <div class="thumb-caption">
                             
                                    <h5 class="thumb-title"><a class="text-darken" href='UserAddPhoto.aspx?TourMemberID=<%# Eval("TourMemberID") %>'><%# Eval("Title") %></a></h5>
                                    <p class="mb0 text-darken"><span class="text-lg lh1em"> Upload Time <%# Convert.ToDateTime(Eval("UploadTime")).ToString("dd MMM, yyyy") %></span>
                                    </p>
                                  
                                </div>
                            </div>
                        </div>
                                     </ItemTemplate>
                            </asp:Repeater>


<%--
                        <div class="col-md-4">
                            <div class="thumb">
                                <header class="thumb-header">
                                    <a class="hover-img" href="#">
                                        <img src="img/800x600.png" alt="Image Alternative text" title="hotel 2" />
                                        <h5 class="hover-title-center">Book Now</h5>
                                    </a>
                                </header>
                                <div class="thumb-caption">
                                    <ul class="icon-group text-tiny text-color">
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star-o"></i>
                                        </li>
                                    </ul>
                                    <h5 class="thumb-title"><a class="text-darken" href="#">New York Hilton Midtown</a></h5>
                                    <p class="mb0"><small>New York City: Midtown West , New York, NY</small>
                                    </p>
                                    <p class="mb0 text-darken"><span class="text-lg lh1em">$333</span><small> avg/night</small>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="thumb">
                                <header class="thumb-header">
                                    <a class="hover-img" href="#">
                                        <img src="img/800x600.png" alt="Image Alternative text" title="The pool" />
                                        <h5 class="hover-title-center">Book Now</h5>
                                    </a>
                                </header>
                                <div class="thumb-caption">
                                    <ul class="icon-group text-tiny text-color">
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                    </ul>
                                    <h5 class="thumb-title"><a class="text-darken" href="#">Grand Hyatt New York</a></h5>
                                    <p class="mb0"><small>New York City: Midtown West , New York, NY</small>
                                    </p>
                                    <p class="mb0 text-darken"><span class="text-lg lh1em">$196</span><small> avg/night</small>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="thumb">
                                <header class="thumb-header">
                                    <a class="hover-img" href="#">
                                        <img src="img/800x600.png" alt="Image Alternative text" title="hotel PORTO BAY RIO INTERNACIONAL rooftop pool" />
                                        <h5 class="hover-title-center">Book Now</h5>
                                    </a>
                                </header>
                                <div class="thumb-caption">
                                    <ul class="icon-group text-tiny text-color">
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                    </ul>
                                    <h5 class="thumb-title"><a class="text-darken" href="#">Warwick New York Hotel</a></h5>
                                    <p class="mb0"><small>New York City: Midtown West , New York, NY</small>
                                    </p>
                                    <p class="mb0 text-darken"><span class="text-lg lh1em">$212</span><small> avg/night</small>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="thumb">
                                <header class="thumb-header">
                                    <a class="hover-img" href="#">
                                        <img src="img/800x600.png" alt="Image Alternative text" title="hotel PORTO BAY LIBERDADE" />
                                        <h5 class="hover-title-center">Book Now</h5>
                                    </a>
                                </header>
                                <div class="thumb-caption">
                                    <ul class="icon-group text-tiny text-color">
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star-half-empty"></i>
                                        </li>
                                        <li><i class="fa fa-star-o"></i>
                                        </li>
                                    </ul>
                                    <h5 class="thumb-title"><a class="text-darken" href="#">Holiday Inn Express Kennedy</a></h5>
                                    <p class="mb0"><small>New York City: Midtown West , New York, NY</small>
                                    </p>
                                    <p class="mb0 text-darken"><span class="text-lg lh1em">$390</span><small> avg/night</small>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="thumb">
                                <header class="thumb-header">
                                    <a class="hover-img" href="#">
                                        <img src="img/800x600.png" alt="Image Alternative text" title="hotel THE CLIFF BAY spa suite" />
                                        <h5 class="hover-title-center">Book Now</h5>
                                    </a>
                                </header>
                                <div class="thumb-caption">
                                    <ul class="icon-group text-tiny text-color">
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star-half-empty"></i>
                                        </li>
                                    </ul>
                                    <h5 class="thumb-title"><a class="text-darken" href="#">Wellington Hotel</a></h5>
                                    <p class="mb0"><small>New York City: Midtown West , New York, NY</small>
                                    </p>
                                    <p class="mb0 text-darken"><span class="text-lg lh1em">$194</span><small> avg/night</small>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="thumb">
                                <header class="thumb-header">
                                    <a class="hover-img" href="#">
                                        <img src="img/800x600.png" alt="Image Alternative text" title="hotel PORTO BAY SERRA GOLF living room" />
                                        <h5 class="hover-title-center">Book Now</h5>
                                    </a>
                                </header>
                                <div class="thumb-caption">
                                    <ul class="icon-group text-tiny text-color">
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star-half-empty"></i>
                                        </li>
                                    </ul>
                                    <h5 class="thumb-title"><a class="text-darken" href="#">Waldorf Astoria New York</a></h5>
                                    <p class="mb0"><small>New York City: Midtown West , New York, NY</small>
                                    </p>
                                    <p class="mb0 text-darken"><span class="text-lg lh1em">$170</span><small> avg/night</small>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="thumb">
                                <header class="thumb-header">
                                    <a class="hover-img" href="#">
                                        <img src="img/800x600.png" alt="Image Alternative text" title="hotel PORTO BAY SERRA GOLF library" />
                                        <h5 class="hover-title-center">Book Now</h5>
                                    </a>
                                </header>
                                <div class="thumb-caption">
                                    <ul class="icon-group text-tiny text-color">
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                    </ul>
                                    <h5 class="thumb-title"><a class="text-darken" href="#">The Benjamin</a></h5>
                                    <p class="mb0"><small>New York City: Midtown West , New York, NY</small>
                                    </p>
                                    <p class="mb0 text-darken"><span class="text-lg lh1em">$263</span><small> avg/night</small>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="thumb">
                                <header class="thumb-header">
                                    <a class="hover-img" href="#">
                                        <img src="img/800x600.png" alt="Image Alternative text" title="hotel PORTO BAY SERRA GOLF suite" />
                                        <h5 class="hover-title-center">Book Now</h5>
                                    </a>
                                </header>
                                <div class="thumb-caption">
                                    <ul class="icon-group text-tiny text-color">
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                    </ul>
                                    <h5 class="thumb-title"><a class="text-darken" href="#">The Kimberly Hotel</a></h5>
                                    <p class="mb0"><small>New York City: Midtown West , New York, NY</small>
                                    </p>
                                    <p class="mb0 text-darken"><span class="text-lg lh1em">$245</span><small> avg/night</small>
                                    </p>
                                </div>
                            </div>
                        </div>--%>
                
                    </div>
                    <hr />
                    
                </div>
            </div>
            <div class="gap"></div>
        </div>

    </div>

   

</div>
</div>
      </div>



</asp:Content>

