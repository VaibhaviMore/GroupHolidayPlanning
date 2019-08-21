<%@ Page Language="C#"  MasterPageFile="~/UserMasterPage.master"  AutoEventWireup="true" CodeFile="UserAboutUs.aspx.cs" Inherits="UserAboutUs" %>




<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    
    <!-- FACEBOOK WIDGET -->
    <div id="fb-root"></div>
    <script>
        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s);
            js.id = id;
            js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.0";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>
    <!-- /FACEBOOK WIDGET -->

   <div class="container">
            <h1 class="page-title">About Us</h1>
        </div>




        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <p class="text-bigger">Come and lets traverse the serene beauty which lies on the lap of our alluring Mother Earth like a pampered child.
</p>
                    <p class="text-bigger"> We believe in serving you with the conventional ideology of “atithi Devo Bhavh:” viz. Guests are our god.
                                         So, we welcome you on board to come and cherish this life and make astounding memories out of every tour you make. 
  </p>
                </div>
            </div>
            <div class="gap"></div>
        </div>
        <div class="bg-holder">
            <div class="bg-parallax" style="background-image:url(images/myhouse.png);"></div>
            <div class="bg-mask"></div>
            <div class="bg-holder-content">
                <div class="container">
                    <div class="gap gap-big text-white">
                        <div class="row">
                            <div class="col-md-10">
                                <h2>Work hard. Play hard.</h2>
                                <p class="text-bigger">Scelerisque ornare ante pellentesque id ad eget volutpat consequat aptent lacus penatibus consectetur vivamus magnis ornare venenatis mattis rhoncus interdum quam tempor commodo ultrices augue risus senectus ornare aliquam leo rutrum nam duis nisi fringilla convallis praesent libero faucibus fermentum convallis pretium aptent nisl morbi odio justo vel nascetur tristique pulvinar senectus etiam quam taciti dignissim etiam tincidunt cras molestie</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     
         <div class="container">
            <div class="gap"></div>
            <h2>Our Approach</h2>
            <div class="row">
                <div class="col-md-8">
                    <p class="text-bigger">Cubilia gravida mus senectus donec consectetur dis ac vel quis a suscipit potenti purus aptent nibh gravida aliquet vestibulum varius dictum consectetur semper consectetur at varius donec sociis habitasse vivamus eget faucibus tempus donec lorem etiam volutpat blandit aliquam varius molestie nibh mattis adipiscing sodales dictumst volutpat quam rhoncus sodales</p>
                </div>
            </div>
            <div class="gap"></div>
            <h2>Rockstar Team</h2>
            <div class="row">
                <div class="col-md-10">
                    <p class="text-bigger mb30">Auctor sit parturient aenean sodales maecenas fusce potenti tristique lectus dapibus hendrerit habitant tristique vulputate vehicula quisque nisl curabitur varius enim quam maecenas facilisis inceptos auctor gravida massa facilisis risus</p>
                </div>
            </div>
            <div class="row row-wrap" data-gutter="60">
                <div class="col-md-3">
                    <div class="thumb text-center">
                        <header class="thumb-header">
                            <img class="round" src="img/300x300.png" alt="Image Alternative text" title="AMaze" />
                        </header>
                        <div class="thumb-caption">
                            <h5 class="thumb-title">Joseph Hudson</h5>
                            <p class="thumb-meta text-small">Project Manager</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumb text-center">
                        <header class="thumb-header">
                            <img class="round" src="img/300x300.png" alt="Image Alternative text" title="Chiara" />
                        </header>
                        <div class="thumb-caption">
                            <h5 class="thumb-title">Leah Kerr</h5>
                            <p class="thumb-meta text-small">Product Designer</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumb text-center">
                        <header class="thumb-header">
                            <img class="round" src="img/300x300.png" alt="Image Alternative text" title="Bubbles" />
                        </header>
                        <div class="thumb-caption">
                            <h5 class="thumb-title">Cheryl Gustin</h5>
                            <p class="thumb-meta text-small">Producer</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumb text-center">
                        <header class="thumb-header">
                            <img class="round" src="img/300x300.png" alt="Image Alternative text" title="Gamer Chick" />
                        </header>
                        <div class="thumb-caption">
                            <h5 class="thumb-title">Sarah Slater</h5>
                            <p class="thumb-meta text-small">CEO</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumb text-center">
                        <header class="thumb-header">
                            <img class="round" src="img/300x300.png" alt="Image Alternative text" title="Afro" />
                        </header>
                        <div class="thumb-caption">
                            <h5 class="thumb-title">Oliver Ross</h5>
                            <p class="thumb-meta text-small">Office Manager</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumb text-center">
                        <header class="thumb-header">
                            <img class="round" src="img/300x300.png" alt="Image Alternative text" title="Me with the Uke" />
                        </header>
                        <div class="thumb-caption">
                            <h5 class="thumb-title">John Mathis</h5>
                            <p class="thumb-meta text-small">Product Designer</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumb text-center">
                        <header class="thumb-header">
                            <img class="round" src="img/300x300.png" alt="Image Alternative text" title="Andrea" />
                        </header>
                        <div class="thumb-caption">
                            <h5 class="thumb-title">Neil Davidson</h5>
                            <p class="thumb-meta text-small">Project Manager</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumb text-center">
                        <header class="thumb-header">
                            <img class="round" src="img/300x300.png" alt="Image Alternative text" title="Spidy" />
                        </header>
                        <div class="thumb-caption">
                            <h5 class="thumb-title">Oliver Ross</h5>
                            <p class="thumb-meta text-small">Office Manager</p>
                        </div>
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
   

 </asp:Content>
