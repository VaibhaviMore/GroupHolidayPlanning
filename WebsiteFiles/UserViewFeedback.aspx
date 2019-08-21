<%@ Page Language="C#"  MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserViewFeedback.aspx.cs" Inherits="UserViewFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    
   
     <div class="global-wrap">
        <!-- TOP AREA -->
        <div class="top-area show-onload">
            <div class="bg-holder full">
                <div class="bg-mask"></div>
                <div class="bg-parallax" style="background-image:url(images/bcksearchpage.jpg);"></div>
                <div class="bg-content">


    <div class="container">
       
         <div class="row">
                            <div class="col-md-8">
                                <div class="search-tabs search-tabs-bg mt50">
                                    <h1> Now Its Your Time!!</h1>
                                    <div class="tabbable">
                                        <ul class="nav nav-tabs" id="myTab">
                                            <li class="active"><a href="#tab-1" data-toggle="tab"><i class="fa fa-building-o"></i> <span > Add Feedback</span></a>
                                            </li>
                                           

                                        </ul>
                                        <div class="tab-content">
                                            <div class="tab-pane fade in active" id="tab-1">
                                                <h2> Your Feedback </h2>
                                               
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
                                                                    <label> Member Name </label>
                                                                      <asp:TextBox ID="txtMember" runat="server" class="typeahead form-control"></asp:TextBox>
                                                                              
                                                                </div>
                                                            </div> 

                                                                 <div class="col-md-6">
                                                                <div class="form-group form-group-lg form-group-icon-left">
                                                                    <label> Details </label>
                                                                      <asp:TextBox ID="txtDetails" runat="server" class="typeahead form-control" TextMode="MultiLine"></asp:TextBox>
                                                                </div>
                                                            </div> 
  
                                                           
                                                               
                     <div class="form-group">                            
                 <asp:Label ID="lblTime" runat="server" Text=""></asp:Label>                    
                   </div>

                                                             <div class="col-md-3"     style="padding-top: 30px;">
                                                       <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="btn btn-primary btn-lg" OnClick="btnSubmit_Click" />                                              
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