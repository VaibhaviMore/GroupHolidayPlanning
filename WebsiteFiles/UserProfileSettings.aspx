﻿<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserProfileSettings.aspx.cs" Inherits="UserProfileSettings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">
            <h1 class="page-title">Account Settings</h1>
        </div>




        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <aside class="user-profile-sidebar">
                        <div class="user-profile-avatar text-center">
                            <img src="img/300x300.png" alt="Image Alternative text" title="AMaze" />
                            <h5>John Doe</h5>
                            <p>Member Since May 2012</p>
                        </div>
                        <ul class="list user-profile-nav">
                            <li><a href="user-profile.html"><i class="fa fa-user"></i>Overview</a>
                            </li>
                            <li><a href="user-profile-settings.html"><i class="fa fa-cog"></i>Settings</a>
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
                    <div class="row">
                        <div class="col-md-5">
                            <form action="">
                                <h4>Personal Infomation</h4>
                                <div class="form-group form-group-icon-left"><i class="fa fa-user input-icon"></i>
                                    <label>First Name</label>
                                    <asp:TextBox ID="txtFirstName" CssClass="form-control" Text="John" runat="server"></asp:TextBox>
                                   
                                </div>
                                <div class="form-group form-group-icon-left"><i class="fa fa-user input-icon"></i>
                                    <label>Last Name</label>
                                     <asp:TextBox ID="txtLastName" CssClass="form-control" Text="Doe" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group form-group-icon-left"><i class="fa fa-envelope input-icon"></i>
                                    <label>E-mail</label>
                                     <asp:TextBox ID="txtEmailId" CssClass="form-control" Text="abc@gmail.com" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group form-group-icon-left"><i class="fa fa-phone input-icon"></i>
                                    <label>Phone Number</label>
                                     <asp:TextBox ID="txtPhoneNo" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                                </div>
                                <div class="gap gap-small"></div>
                                <h4>Location</h4>
                                <div class="form-group form-group-icon-left"><i class="fa fa-plane input-icon"></i>
                                    <label>Home Airport</label>
                                    <input class="form-control" value="London Heathrow Airport (LHR)" type="text" />
                                </div>
                                <div class="form-group">
                                    <label>Street Address</label>
                                    <input class="form-control" value="46 Gray's Inn Rd, London, WC1X 8LP" type="text" />
                                </div>
                                <div class="form-group">
                                    <label>City</label>
                                    <input class="form-control" value="London" type="text" />
                                </div>
                                <div class="form-group">
                                    <label>State/Province/Region</label>
                                    <input class="form-control" value="London" type="text" />
                                </div>
                                <div class="form-group">
                                    <label>ZIP code/Postal code</label>
                                    <input class="form-control" value="4115523" type="text" />
                                </div>
                                <div class="form-group">
                                    <label>Country</label>
                                    <input class="form-control" value="United Kingdom" type="text" />
                                </div>
                                <hr>
                                <input type="submit" class="btn btn-primary" value="Save Changes">
                            </form>
                        </div>
                        <div class="col-md-4 col-md-offset-1">
                            <h4>Change Password</h4>
                            <form>
                                <div class="form-group form-group-icon-left"><i class="fa fa-lock input-icon"></i>
                                    <label>Current Password</label>
                                    <input class="form-control" type="password" />
                                </div>
                                <div class="form-group form-group-icon-left"><i class="fa fa-lock input-icon"></i>
                                    <label>New Password</label>
                                    <input class="form-control" type="password" />
                                </div>
                                <div class="form-group form-group-icon-left"><i class="fa fa-lock input-icon"></i>
                                    <label>New Password Again</label>
                                    <input class="form-control" type="password" />
                                </div>
                                <hr />
                                <input class="btn btn-primary" type="submit" value="Change Password" />
                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </div>



        <div class="gap"></div>
</asp:Content>

