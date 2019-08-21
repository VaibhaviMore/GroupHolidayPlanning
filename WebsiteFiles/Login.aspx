<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE HTML>
<html class="full">

<head>
    <title>Traveler - Login register</title>


    <meta content="text/html;charset=utf-8" http-equiv="Content-Type">
    <meta name="keywords" content="Template, html, premium, themeforest" />
    <meta name="description" content="Traveler - Premium template for travel companies">
    <meta name="author" content="Tsoy">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- GOOGLE FONTS -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,300,600' rel='stylesheet' type='text/css'>
    <!-- /GOOGLE FONTS -->
   <link rel="stylesheet" href="styles/ucss/bootstrap.css"/>
    <link rel="stylesheet" href="styles/ucss/font-awesome.css"/>
    <link rel="stylesheet" href="styles/ucss/icomoon.css"/>
    <link rel="stylesheet" href="styles/ucss/styles.css"/>
    <link rel="stylesheet" href="styles/ucss/mystyles.css"/>
    <script src="js/modernizr.js"></script>
   <%-- <style>
    .btn-primary
    {background-color:#1f68b1;
     border-color:#1f68b1;
    }</style>--%>
</head>

<body class="full">
   
    <div class="global-wrap">

        <div class="full-page">
            <div class="bg-holder full">
                <div class="bg-mask"></div>
                <div class="bg-img" style="background-image:url(images/homepage.jpg);"></div>
                <div class="bg-holder-content full text-white">
                    <center>
                        <div style="width:300px;margin-top:50px">
                                   <h3 class="mb15">Welcome!!</h3>
                                     <form id="sdfsf" runat="server"> 
                                       <div class="form-group form-group-ghost form-group-icon-left">
                                           <label>Username</label> 
                                           <asp:TextBox ID="txtEmailId" runat="server" class="form-control" placeholder="e.g. johndoe@gmail.com" style="padding-left:10px;"></asp:TextBox> 
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtEmailID" runat="server" ErrorMessage="Please Enter Email"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group form-group-ghost form-group-icon-left"><i class="fa fa-lock input-icon input-icon-show"></i>
                                            <label>Password</label>
                                             <asp:TextBox ID="txtPassword" runat="server" class="form-control" placeholder="my secret password" TextMode="Password" ></asp:TextBox> 
                                        </div>
                                        <asp:Button ID="btnSingnin" runat="server" class="btn btn-primary" Text="Sign in" OnClick="btnLogin_Click"/>
                                    </form><br /><br /><br /><br />
                              <h3 class="mb15">New To Traveloholic?</h3>
                          <%-- <h3> <a class="mb15" href='UserRegisteration.aspx'>Register Here!!</a></h3>
          
                       --%>

                            <h3><asp:HyperLink ID="hlnkRegister" runat="server" NavigateUrl="~/UserRegistration.aspx">Register Here!!</asp:HyperLink> </h3>
                                </div> 
                   
                          </center>   
        
                     <ul class="footer-links">
                        <li><a href="#">About</a>
                        </li>
                        <li><a href="#">Help</a>
                        </li>
                        <li><a href="#">Hot Deals</a>
                        </li>
                        <li><a href="#">Popular Locations</a>
                        </li>
                        <li><a href="#">Cheap Flights</a>
                        </li>
                        <li><a href="#">Business</a>
                        </li>
                        <li><a href="#">Media</a>
                        </li>
                        <li><a href="#">Developers</a>
                        </li>
                        <li><a href="#">Advertise</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

   
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/slimmenu.js"></script>
        <script src="js/bootstrap-datepicker.js"></script>
        <script src="js/bootstrap-timepicker.js"></script>
        <script src="js/nicescroll.js"></script>
        <script src="js/dropit.js"></script>
        <script src="js/ionrangeslider.js"></script>
        <script src="js/icheck.js"></script>
        <script src="js/fotorama.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
        <script src="js/typeahead.js"></script>
        <script src="js/card-payment.js"></script>
        <script src="js/magnific.js"></script>
        <script src="js/owl-carousel.js"></script>
        <script src="js/fitvids.js"></script>
        <script src="js/tweet.js"></script>
        <script src="js/countdown.js"></script>
        <script src="js/gridrotator.js"></script>
        <script src="js/custom.js"></script>
    </div>


</body>

</html>


