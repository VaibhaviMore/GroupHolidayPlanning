<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserTourDetail.aspx.cs" Inherits="UserTourDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <div class="container">
            <div class="booking-item-details">
                <header class="booking-item-header">
                    <div class="row">
                        <div class="col-md-9">
                            <h2 class="lh1em">    <asp:Label ID="lblTitle" runat="server">sss</asp:Label></h2>
                            <p class="lh1em text-small"><i class="fa fa-map-marker"></i> 6782 Sarasea Circle, Siesta Key, FL 34242</p>
                            <ul class="list list-inline text-small">
                                <li><a href="#"><i class="fa fa-envelope"></i> Hotel E-mail</a>
                                </li>
                                <li><a href="#"><i class="fa fa-home"></i> Hotel Website</a>
                                </li>
                                <li><i class="fa fa-phone"></i> +1 (163) 493-1463</li>
                            </ul>
                        </div>
                    </div>
                </header>
                <div class="row">
                    <div class="col-md-6">
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
                                      <asp:Image ID="imgTour" runat="server" alt="Image"/>
                                       </div>
                                </div>
                                <div class="tab-pane fade" id="google-map-tab">
                                    <div id="map-canvas" style="width:100%; height:500px;"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="booking-item-meta">
                            <h2 class="lh1em mt40">Exeptional!</h2>
                            <h3>97% <small >of guests recommend</small></h3>
                            <div class="booking-item-rating">
                                <ul class="icon-list icon-group booking-item-rating-stars">
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
                                </ul><span class="booking-item-rating-number"><b >4.7</b> of 5 <small class="text-smaller">guest rating</small></span>
                                <p><a class="text-default" href="#">based on 1535 reviews</a>
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-8">
                               <h2><asp:Label ID="lblTotalTourMembers" runat="server"></asp:Label></h2>
                                <h4 class="lh1em">Members Attended the Tour</h4>
                               
                            </div>
                          </div>
                        
                    </div>
                </div>
                <div class="gap"></div>
                <h3>Schedule</h3>
                <div class="row">
                    <div class="col-md-9">
                        
                        <div class="gap gap-small"></div>
                        <ul class="booking-list">
                         <asp:Repeater ID="ScheduleRepeater" runat="server">
                             <ItemTemplate>
                              <li>
                                <div class="booking-item">
                                    <div class="row">
                                        <div class="col-md-3">
                                       <asp:Image ID="imgPlace" runat="server" ImageUrl='<%# "uploads/" + Eval("Photo1") %>' alt="Image"/>
                                        </div>
                                        <div class="col-md-6">
                                            <h5 class="booking-item-title"><%# Eval("PlaceName") %></h5>
                                            <p class="text-small">Platea fringilla cursus aliquam euismod integer viverra dis facilisi in augue vehicula sed</p>
                                          </div>
                                        <div class="col-md-3"><a href="UserPlaceDetail.aspx?PlaceID=<%# Eval("PlaceID") %>"><span class="btn btn-primary">Explore</span></a>
                                        </div>
                                    </div>
                                </div>
                            </li>

                             </ItemTemplate>
                         </asp:Repeater>
                           </ul>
                    </div>
                    <div class="col-md-3">
                        <h4>About the Tour</h4>
                        <p class="mb30">  <asp:Label ID="lblDescription" runat="server" Text=""></asp:Label></p>
                    </div>
                </div>
                <h3 class="mb20">Tour Reviews</h3>
                <div class="row row-wrap">
                    <div class="col-md-8">
                        <ul class="booking-item-reviews list">
                            <li>
                                <div class="row">
                                    <div class="col-md-2">
                                        <div class="booking-item-review-person">
                                            <a class="booking-item-review-person-avatar round" href="#">
                                                <img src="img/70x70.png" alt="Image Alternative text" title="Afro" />
                                            </a>
                                            <p class="booking-item-review-person-name"><a href="#">John Doe</a>
                                            </p>
                                            <p class="booking-item-review-person-loc">Palm Beach, FL</p><small><a href="#">143 Reviews</a></small>
                                        </div>
                                    </div>
                                    <div class="col-md-10">
                                        <div class="booking-item-review-content">
                                            <h5>"Ridiculus volutpat varius"</h5>
                                            <ul class="icon-group booking-item-rating-stars">
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
                                            <p>Suspendisse velit venenatis facilisi velit quis volutpat enim ipsum mauris mus tortor leo augue non sociosqu ridiculus sagittis odio curabitur nostra maecenas nisi lectus platea mauris venenatis sed dui primis porttitor sit turpis litora<span class="booking-item-review-more"> Eu nisl volutpat nam per primis dictum hendrerit gravida facilisis porta pretium erat turpis erat vivamus torquent ornare bibendum vitae dui congue torquent aptent placerat in tortor arcu eu blandit sit fusce lorem eu tortor proin egestas neque senectus netus ac augue senectus pulvinar rutrum habitasse nostra montes aenean mauris lacinia sociosqu posuere curabitur vestibulum venenatis euismod habitasse litora rhoncus purus pretium nullam nibh montes gravida pharetra eu parturient semper</span>
                                            </p>
                                            <div class="booking-item-review-more-content">
                                                <p>Fringilla dictum montes eget senectus cras dictum dictum sollicitudin maecenas</p>
                                                <p>Aliquam quisque orci auctor auctor natoque ultrices elit quisque porta tortor sollicitudin bibendum proin facilisi duis magna risus fringilla donec velit justo pretium curabitur velit quis platea tristique libero iaculis velit scelerisque ullamcorper id proin placerat faucibus hac purus tristique consectetur interdum donec fames euismod consequat sodales egestas faucibus</p>
                                                <p class="text-small mt20">Stayed March 2014, traveled as a couple</p>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <ul class="list booking-item-raiting-summary-list">
                                                            <li>
                                                                <div class="booking-item-raiting-list-title">Sleep</div>
                                                                <ul class="icon-group booking-item-rating-stars">
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o text-gray"></i>
                                                                    </li>
                                                                </ul>
                                                            </li>
                                                            <li>
                                                                <div class="booking-item-raiting-list-title">Location</div>
                                                                <ul class="icon-group booking-item-rating-stars">
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                </ul>
                                                            </li>
                                                            <li>
                                                                <div class="booking-item-raiting-list-title">Service</div>
                                                                <ul class="icon-group booking-item-rating-stars">
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                </ul>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <ul class="list booking-item-raiting-summary-list">
                                                            <li>
                                                                <div class="booking-item-raiting-list-title">Clearness</div>
                                                                <ul class="icon-group booking-item-rating-stars">
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o text-gray"></i>
                                                                    </li>
                                                                </ul>
                                                            </li>
                                                            <li>
                                                                <div class="booking-item-raiting-list-title">Rooms</div>
                                                                <ul class="icon-group booking-item-rating-stars">
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                </ul>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="booking-item-review-expand"><span class="booking-item-review-expand-more">More <i class="fa fa-angle-down"></i></span><span class="booking-item-review-expand-less">Less <i class="fa fa-angle-up"></i></span>
                                            </div>
                                            <p class="booking-item-review-rate">Was this review helpful?
                                                <a class="fa fa-thumbs-o-up box-icon-inline round" href="#"></a><b class="text-color"> 7</b>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="row">
                                    <div class="col-md-2">
                                        <div class="booking-item-review-person">
                                            <a class="booking-item-review-person-avatar round" href="#">
                                                <img src="img/70x70.png" alt="Image Alternative text" title="Bubbles" />
                                            </a>
                                            <p class="booking-item-review-person-name"><a href="#">Minnie Aviles</a>
                                            </p>
                                            <p class="booking-item-review-person-loc">Palm Beach, FL</p><small><a href="#">128 Reviews</a></small>
                                        </div>
                                    </div>
                                    <div class="col-md-10">
                                        <div class="booking-item-review-content">
                                            <h5>"Neque suspendisse massa cras inceptos volutpat"</h5>
                                            <ul class="icon-group booking-item-rating-stars">
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
                                            <p>Malesuada elit pellentesque lectus ante nisi vel varius magna per iaculis porttitor pharetra lacus mi libero varius gravida magnis inceptos cras iaculis tempus eros nisi a rhoncus est<span class="booking-item-review-more"> Dictum dignissim quam conubia egestas interdum urna at nascetur nulla tortor scelerisque mus fames purus morbi aliquam justo auctor aenean habitant lectus venenatis ligula gravida fusce accumsan mus habitasse natoque fermentum montes eleifend consequat maecenas cubilia fermentum leo neque nascetur ligula mauris egestas molestie vulputate sem magnis est ridiculus eu volutpat luctus convallis justo scelerisque in ultrices dapibus metus primis luctus ad erat porttitor pellentesque ultricies netus aliquam sagittis hac</span>
                                            </p>
                                            <div class="booking-item-review-more-content">
                                                <p>Non varius primis euismod ultrices cubilia sem dignissim nostra suspendisse tincidunt</p>
                                                <p>Aenean etiam sed facilisi est accumsan donec tempor tempus interdum ridiculus viverra fusce nascetur proin ligula nisi at scelerisque odio cum accumsan dignissim himenaeos varius vulputate nullam a leo congue feugiat himenaeos orci vehicula ac sit vulputate nisl torquent donec litora per porta taciti mi elit odio nunc curabitur ultrices laoreet suspendisse sem sagittis</p>
                                                <p class="text-small mt20">Stayed March 2014, traveled as a couple</p>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <ul class="list booking-item-raiting-summary-list">
                                                            <li>
                                                                <div class="booking-item-raiting-list-title">Sleep</div>
                                                                <ul class="icon-group booking-item-rating-stars">
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                </ul>
                                                            </li>
                                                            <li>
                                                                <div class="booking-item-raiting-list-title">Location</div>
                                                                <ul class="icon-group booking-item-rating-stars">
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                </ul>
                                                            </li>
                                                            <li>
                                                                <div class="booking-item-raiting-list-title">Service</div>
                                                                <ul class="icon-group booking-item-rating-stars">
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                </ul>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <ul class="list booking-item-raiting-summary-list">
                                                            <li>
                                                                <div class="booking-item-raiting-list-title">Clearness</div>
                                                                <ul class="icon-group booking-item-rating-stars">
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                </ul>
                                                            </li>
                                                            <li>
                                                                <div class="booking-item-raiting-list-title">Rooms</div>
                                                                <ul class="icon-group booking-item-rating-stars">
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                </ul>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="booking-item-review-expand"><span class="booking-item-review-expand-more">More <i class="fa fa-angle-down"></i></span><span class="booking-item-review-expand-less">Less <i class="fa fa-angle-up"></i></span>
                                            </div>
                                            <p class="booking-item-review-rate">Was this review helpful?
                                                <a class="fa fa-thumbs-o-up box-icon-inline round" href="#"></a><b class="text-color"> 13</b>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="row">
                                    <div class="col-md-2">
                                        <div class="booking-item-review-person">
                                            <a class="booking-item-review-person-avatar round" href="#">
                                                <img src="img/70x70.png" alt="Image Alternative text" title="Good job" />
                                            </a>
                                            <p class="booking-item-review-person-name"><a href="#">Cyndy Naquin</a>
                                            </p>
                                            <p class="booking-item-review-person-loc">Palm Beach, FL</p><small><a href="#">146 Reviews</a></small>
                                        </div>
                                    </div>
                                    <div class="col-md-10">
                                        <div class="booking-item-review-content">
                                            <h5>"Faucibus in litora"</h5>
                                            <ul class="icon-group booking-item-rating-stars">
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
                                            <p>Lectus viverra nascetur neque vivamus per eleifend cras volutpat bibendum proin nibh nascetur libero ullamcorper ultricies fames magna consectetur nisi fames justo dictum neque cum vel ligula habitant varius faucibus rutrum suspendisse est duis<span class="booking-item-review-more"> Massa netus egestas tincidunt lorem malesuada integer aliquet adipiscing auctor tristique torquent vulputate eros felis cursus purus montes proin auctor condimentum tincidunt quis gravida lacus quisque lobortis dictumst morbi convallis litora feugiat senectus lobortis sodales vivamus bibendum pulvinar dis taciti phasellus justo nulla dolor libero lobortis</span>
                                            </p>
                                            <div class="booking-item-review-more-content">
                                                <p>Porttitor posuere purus hendrerit montes nisl interdum at proin nisl ridiculus ante hendrerit ut porta etiam aliquet faucibus mattis egestas sociosqu vehicula auctor suspendisse hendrerit</p>
                                                <p>Nascetur potenti ornare posuere imperdiet eu mus litora convallis conubia aptent primis ac bibendum consequat blandit purus magnis dui orci nam dui facilisis viverra dapibus nec suspendisse donec sagittis laoreet sollicitudin turpis cubilia consequat</p>
                                                <p class="text-small mt20">Stayed March 2014, traveled as a couple</p>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <ul class="list booking-item-raiting-summary-list">
                                                            <li>
                                                                <div class="booking-item-raiting-list-title">Sleep</div>
                                                                <ul class="icon-group booking-item-rating-stars">
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                </ul>
                                                            </li>
                                                            <li>
                                                                <div class="booking-item-raiting-list-title">Location</div>
                                                                <ul class="icon-group booking-item-rating-stars">
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o text-gray"></i>
                                                                    </li>
                                                                </ul>
                                                            </li>
                                                            <li>
                                                                <div class="booking-item-raiting-list-title">Service</div>
                                                                <ul class="icon-group booking-item-rating-stars">
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o text-gray"></i>
                                                                    </li>
                                                                </ul>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <ul class="list booking-item-raiting-summary-list">
                                                            <li>
                                                                <div class="booking-item-raiting-list-title">Clearness</div>
                                                                <ul class="icon-group booking-item-rating-stars">
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                  </li>
                                                                </ul>
                                                            </li>
                                                            <li>
                                                                <div class="booking-item-raiting-list-title">Rooms</div>
                                                                <ul class="icon-group booking-item-rating-stars">
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                </ul>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="booking-item-review-expand"><span class="booking-item-review-expand-more">More <i class="fa fa-angle-down"></i></span><span class="booking-item-review-expand-less">Less <i class="fa fa-angle-up"></i></span>
                                            </div>
                                            <p class="booking-item-review-rate">Was this review helpful?
                                                <a class="fa fa-thumbs-o-up box-icon-inline round" href="#"></a><b class="text-color"> 11</b>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="row">
                                    <div class="col-md-2">
                                        <div class="booking-item-review-person">
                                            <a class="booking-item-review-person-avatar round" href="#">
                                                <img src="img/70x70.png" alt="Image Alternative text" title="Chiara" />
                                            </a>
                                            <p class="booking-item-review-person-name"><a href="#">Carol Blevins</a>
                                            </p>
                                            <p class="booking-item-review-person-loc">Palm Beach, FL</p><small><a href="#">123 Reviews</a></small>
                                        </div>
                                    </div>
                                    <div class="col-md-10">
                                        <div class="booking-item-review-content">
                                            <h5>"Purus diam leo magna mauris nisi lacinia"</h5>
                                            <ul class="icon-group booking-item-rating-stars">
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
                                            <p>Tempor nullam eu euismod convallis ante semper quisque nibh enim facilisi arcu congue dis faucibus tristique ad hendrerit vel massa dapibus praesent senectus nibh turpis pretium accumsan imperdiet auctor habitant congue nibh ac auctor duis leo mus suscipit ultricies<span class="booking-item-review-more"> Ornare at cursus fermentum lacus iaculis vestibulum ac mattis sociis purus auctor commodo eu ligula consectetur ultricies at natoque egestas dis aenean arcu vulputate orci massa in metus lorem habitasse mi integer ipsum turpis vel pretium phasellus ad nulla bibendum volutpat adipiscing a natoque nascetur ridiculus auctor rutrum conubia nisi facilisis semper tempus hac ornare erat nam imperdiet neque donec id mi bibendum erat aptent convallis nostra malesuada</span>
                                            </p>
                                            <div class="booking-item-review-more-content">
                                                <p>Sed aliquet cubilia mi habitant nibh cras lectus turpis nunc nascetur sit dolor mattis tortor risus leo</p>
                                                <p>Arcu condimentum torquent hac odio parturient est curae bibendum mattis maecenas natoque primis curabitur ornare sed lacus mollis habitasse neque molestie cubilia placerat conubia tellus urna elementum curabitur sapien iaculis consectetur tempus cubilia lectus tristique aenean est nisi porta semper ac semper blandit velit porttitor nascetur diam phasellus dolor sem</p>
                                                <p class="text-small mt20">Stayed March 2014, traveled as a couple</p>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <ul class="list booking-item-raiting-summary-list">
                                                            <li>
                                                                <div class="booking-item-raiting-list-title">Sleep</div>
                                                                <ul class="icon-group booking-item-rating-stars">
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                </ul>
                                                            </li>
                                                            <li>
                                                                <div class="booking-item-raiting-list-title">Location</div>
                                                                <ul class="icon-group booking-item-rating-stars">
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                </ul>
                                                            </li>
                                                            <li>
                                                                <div class="booking-item-raiting-list-title">Service</div>
                                                                <ul class="icon-group booking-item-rating-stars">
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                </ul>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <ul class="list booking-item-raiting-summary-list">
                                                            <li>
                                                                <div class="booking-item-raiting-list-title">Clearness</div>
                                                                <ul class="icon-group booking-item-rating-stars">
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                </ul>
                                                            </li>
                                                            <li>
                                                                <div class="booking-item-raiting-list-title">Rooms</div>
                                                                <ul class="icon-group booking-item-rating-stars">
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                    <li><i class="fa fa-smile-o"></i>
                                                                    </li>
                                                                </ul>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
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
                           
                        </ul>
                        <div class="row wrap">
                            <div class="col-md-5">
                                <p><small>1108 reviews on this hotel. &nbsp;&nbsp;Showing 1 to 7</small>
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
                            <h3>Write a Review</h3>
                      
                                <div class="row">
                                    <div class="col-md-8">
                                        <div class="form-group">
                                            <label>Review Title</label>
                                            <asp:TextBox ID="txtFeedbackTitle" runat="server" CssClass="form-control"></asp:TextBox>
                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Review Text</label>
                                            <asp:TextBox ID="txtFeedbackDetails" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                    <ul class="icon-list icon-group booking-item-rating-stars">
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
                                        <ul class="list booking-item-raiting-summary-list stats-list-select">
                                            <li>
                                                <div class="booking-item-raiting-list-title">Excellent</div>
                                                <ul class="icon-group booking-item-rating-stars">
                                                    <li><i class="fa fa-smile-o"></i>
                                                    </li>
                                                    <li><i class="fa fa-smile-o"></i>
                                                    </li>
                                                    <li><i class="fa fa-smile-o"></i>
                                                    </li>
                                                    <li><i class="fa fa-smile-o"></i>
                                                    </li>
                                                    <li><i class="fa fa-smile-o"></i>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>
                                                <div class="booking-item-raiting-list-title">Very Good</div>
                                                <ul class="icon-group booking-item-rating-stars">
                                                    <li><i class="fa fa-smile-o"></i>
                                                    </li>
                                                    <li><i class="fa fa-smile-o"></i>
                                                    </li>
                                                    <li><i class="fa fa-smile-o"></i>
                                                    </li>
                                                    <li><i class="fa fa-smile-o"></i>
                                                    </li>
                                                    <li><i class="fa fa-smile-o"></i>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>
                                                <div class="booking-item-raiting-list-title">Average</div>
                                                <ul class="icon-group booking-item-rating-stars">
                                                    <li><i class="fa fa-smile-o"></i>
                                                    </li>
                                                    <li><i class="fa fa-smile-o"></i>
                                                    </li>
                                                    <li><i class="fa fa-smile-o"></i>
                                                    </li>
                                                    <li><i class="fa fa-smile-o"></i>
                                                    </li>
                                                    <li><i class="fa fa-smile-o"></i>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>
                                                <div class="booking-item-raiting-list-title">Poor</div>
                                                <ul class="icon-group booking-item-rating-stars">
                                                    <li><i class="fa fa-smile-o"></i>
                                                    </li>
                                                    <li><i class="fa fa-smile-o"></i>
                                                    </li>
                                                    <li><i class="fa fa-smile-o"></i>
                                                    </li>
                                                    <li><i class="fa fa-smile-o"></i>
                                                    </li>
                                                    <li><i class="fa fa-smile-o"></i>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>
                                                <div class="booking-item-raiting-list-title">Terrible</div>
                                                <ul class="icon-group booking-item-rating-stars">
                                                    <li><i class="fa fa-smile-o"></i>
                                                    </li>
                                                    <li><i class="fa fa-smile-o"></i>
                                                    </li>
                                                    <li><i class="fa fa-smile-o"></i>
                                                    </li>
                                                    <li><i class="fa fa-smile-o"></i>
                                                    </li>
                                                    <li><i class="fa fa-smile-o"></i>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                     <asp:Button ID="btnfeedback" runat="server" CssClass="btn btn-primary" OnClick="btnfeedback_Click" Text="Leave a Review"/>
                                           
                                    </div>
                                </div>
                          
                        </div>
                    </div>
                    <div class="col-md-4">
                        <h4>More Tours</h4>
                        <ul class="booking-list">
                            <li>
                                <div class="booking-item booking-item-small">
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <img src="img/800x600.png" alt="Image Alternative text" title="hotel PORTO BAY SERRA GOLF living room" />
                                        </div>
                                        <div class="col-xs-5">
                                            <h5 class="booking-item-title">Waldorf Astoria New York</h5>
                                            <ul class="icon-group booking-item-rating-stars">
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
                                        </div>
                                        <div class="col-xs-3"><span class="booking-item-price-from">from</span><span class="booking-item-price">$345</span>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="booking-item booking-item-small">
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <img src="img/800x600.png" alt="Image Alternative text" title="hotel PORTO BAY LIBERDADE" />
                                        </div>
                                        <div class="col-xs-5">
                                            <h5 class="booking-item-title">Holiday Inn Express Kennedy Airport</h5>
                                            <ul class="icon-group booking-item-rating-stars booking-item-rating">
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
                                        </div>
                                        <div class="col-xs-3"><span class="booking-item-price-from">from</span><span class="booking-item-price">$223</span>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="booking-item booking-item-small">
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <img src="img/800x600.png" alt="Image Alternative text" title="hotel THE CLIFF BAY spa suite" />
                                        </div>
                                        <div class="col-xs-5">
                                            <h5 class="booking-item-title">Wellington Hotel</h5>
                                            <ul class="icon-group booking-item-rating-stars">
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
                                        </div>
                                        <div class="col-xs-3"><span class="booking-item-price-from">from</span><span class="booking-item-price">$395</span>
                                        </div>
                                    </div>
                                </div>
                            </li>
                           
                        </ul>
                    </div>
                </div>
            </div>
            <div class="gap gap-small"></div>
        </div>

</asp:Content>

