<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserAddPhoto.aspx.cs" Inherits="UserAddPhoto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
    <div class="global-wrap">
        <!-- TOP AREA -->
        <div class="top-area show-onload">
            <div class="bg-holder full">
                <div class="bg-mask"></div>
                <div class="bg-parallax" style="background-image:url(images/bcksearchpage.jpg);"></div>
                <div class="bg-content">


    <div class="container">
        <%-- <div class="col-md-3">
                    <aside class="user-profile-sidebar">
                        <div class="user-profile-avatar text-center">       <%--style="height:70px; width:70px;" 
             
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
            
                  </div>--%>--%>

    <%-- <div class="col-md-4">
                            <h4> Add Photo </h4>
                            <form>
                                <div class="form-group">
                                    <label> Title </label>
                                   
                                    <asp:TextBox ID="txtTitle" runat="server" class="form-control"  placeholder="Title" ></asp:TextBox>
                                </div>
                               
                                 <div class="form-group">
                                    <label> Photo</label>
                                    
                                    <asp:FileUpload ID="fuPhoto" runat="server"  />
                                </div>
                                
                                
             <div class="form-group">                         
             Photo Type: 
            <asp:RadioButton ID="rbPrivate" runat="server"  class="radio-inline" Text="Private"  GroupName="Privacy" />
             <asp:RadioButton ID="rbPublic" runat="server" class="radio-inline" Text="Public" GroupName="Privacy" />                          
           </div>

                            

                                <div class="form-group">
                  <label> Place </label>
            <asp:DropDownList ID="ddlPlace" runat="server" style="width:150px;height:30px">

            </asp:DropDownList>
              <asp:RequiredFieldValidator ID="RequiredPlace" runat="server" ControlToValidate="ddlPlace" ErrorMessage="Please Select Appropriate Place!"></asp:RequiredFieldValidator>
               </div>                
                   
                     <div class="form-group">                            
                 <asp:Label ID="lblDate" runat="server" Text=""></asp:Label>                    
                   </div>
                                                 
            <asp:Button ID="btnAddPhoto" runat="server" Text="Add Photo" class="btn btn-primary" OnClick="btnAddPhoto_Click" />
                            </form>
                        </div>--%> 


         <div class="row">
                            <div class="col-md-8">
                                <div class="search-tabs search-tabs-bg mt50">
                                    <h1> Its Time To Upload!!</h1>
                                    <div class="tabbable">
                                        <ul class="nav nav-tabs" id="myTab">
                                            <li class="active"><a href="#tab-1" data-toggle="tab"><i class="fa fa-building-o"></i> <span > Add Photo </span></a>
                                            </li>
                                           

                                        </ul>
                                        <div class="tab-content">
                                            <div class="tab-pane fade in active" id="tab-1">
                                                <h2> Add Photo </h2>
                                               
                                                    <div class="input-daterange" data-date-format="M d, D">
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group form-group-lg form-group-icon-left">
                                                                    <label> Title </label>
                                                                              <asp:TextBox ID="txtTitle" runat="server" class="typeahead form-control"></asp:TextBox>
                                                                </div>
                                                            </div> 

                                                             <div class="col-md-6">
                                                                <div class="form-group form-group-lg form-group-icon-left">
                                                                    <label> Photo </label>
                                                                               <asp:FileUpload ID="fuPhoto" runat="server"  />
                                                                </div>
                                                            </div> 

                                                                 <div class="col-md-6">
                                                                <div class="form-group form-group-lg form-group-icon-left">
                                                                    <label> Photo Type </label>
                                                                       <asp:RadioButton ID="rbPrivate" runat="server"  class="radio-inline" Text="Private"  GroupName="Privacy" />
                                                                       <asp:RadioButton ID="rbPublic" runat="server" class="radio-inline" Text="Public" GroupName="Privacy" />         
                                                                </div>
                                                            </div> 

                                                             <div class="col-md-6">
                                                                <div class="form-group form-group-lg form-group-icon-left">
                                                                    <label> City  </label>
                                                                    <asp:DropDownList ID="ddlAllCity" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlAllCity_SelectedIndexChanged" runat="server"></asp:DropDownList>
                                                                    <asp:RequiredFieldValidator ID="RequiredCity" runat="server" ControlToValidate="ddlAllCity" ErrorMessage="Please Select City!"></asp:RequiredFieldValidator>
                                                                       
                                                                </div>
                                                            </div> 


  
                                                              <div class="col-md-6">
                                                                <div class="form-group form-group-lg form-group-icon-left">
                                                                    <label> Places </label>
                                                                   <asp:DropDownList ID="ddlPlaces" CssClass="form-control" runat="server"></asp:DropDownList>
                                                                   <asp:RequiredFieldValidator ID="RequiredPlaces" runat="server" ControlToValidate="ddlPlaces" ErrorMessage="Please Select Place!"></asp:RequiredFieldValidator>
                                                                       
                                                                </div>
                                                            </div> 

                                                               
                     <div class="form-group">                            
                 <asp:Label ID="lblDate" runat="server" Text=""></asp:Label>                    
                   </div>

                                                             <div class="col-md-3"     style="padding-top: 30px;">
                                                       <asp:Button ID="btnAddPhoto" runat="server" Text="Add Photo" class="btn btn-primary btn-lg" OnClick="btnAddPhoto_Click" />                                              
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
        </div>
</asp:Content>

