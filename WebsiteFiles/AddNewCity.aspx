<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true"
    CodeFile="AddNewCity.aspx.cs" Inherits="AddNewCity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <style>
        div.block {
            background-color:white;
            padding:10px;
            margin:5px;
            width:45%;
            float:left;
        }
            div.block .title {
                color:black;
                font-weight:bold;
            }
            div.block .desc {
                color:#444444;
            }



    </style>


    <div id="title-breadcrumb-option-demo" class="page-title-breadcrumb">
        <div class="page-header pull-left">
            <div class="page-title">
                <asp:Label ID="lblHEading" runat="server" Text="Add New City"></asp:Label>
                <a id="linkPlaces" runat="server" href="#places" style="padding: 5px" class="badge badge-green">Show Places</a>

            </div>
        </div>
        
        <div class="clearfix">       </div>
    </div>
        <div class="row mbl">
            <div class="col-lg-12">
                <div class="col-md-12">
                    <div id="area-chart-spline" style="width: 100%; height: 300px; display: none;">
                    </div>
                </div>
            </div>
            <div class="page-content" style="padding: 0px">
                <div class="form-body pal">
                    <div class="row">
                        <div class="col-md-10">
                            <div class="form-group">
                                <label for="inputName" class="control-label">
                                    Name</label>
                                <div class="input-icon right">
                                    <asp:TextBox ID="txtName" runat="server" placeholder="City Name" class="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtName" runat="server" ErrorMessage="Please enter name of city"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-10">
                            <div class="form-group">
                                <label for="inputEmail" class="control-label">
                                    Country</label>
                                <div class="input-icon right">

                                    <asp:TextBox ID="txtCountry" runat="server" class="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtCountry" runat="server" ErrorMessage="Please Enter country name"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="inputName" class="control-label">
                                    Winter Temperature</label>
                                <div class="input-icon right">
                                    <asp:TextBox ID="txtWinter" runat="server"  class="form-control" ></asp:TextBox>
                                    <asp:CompareValidator ID="CompareWtemp" runat="server" ControlToValidate="txtWinter" Type="Integer"
                                        Operator="DataTypeCheck" ErrorMessage="Value must be an integer!" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="inputEmail" class="control-label">
                                    Summer Temperature</label>
                                <div class="input-icon right">

                                    <asp:TextBox ID="txtSummer" runat="server" class="form-control"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareStemp" runat="server" ControlToValidate="txtSummer" Type="Integer"
                                        Operator="DataTypeCheck" ErrorMessage="Value must be an integer!" />

                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="inputEmail" class="control-label">
                                    Rainy Temperature</label>
                                <div class="input-icon right">
                                    <asp:TextBox ID="txtRainy" runat="server" class="form-control"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareRtemp" runat="server" ControlToValidate="txtRainy" Type="Integer"
                                        Operator="DataTypeCheck" ErrorMessage="Value must be an integer!" ForeColor="Red" SetFocusOnError="true" EnableClientScript="true" />

                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-5">
                            <div class="form-group">
                                <label for="inputSubject" class="control-label">
                                    Climate</label>
                                <div class="input-icon right">
                                    <asp:DropDownList ID="ddlClimate" runat="server" class="form-control">
                                        <asp:ListItem Text="" Value="0"></asp:ListItem>
                                        <asp:ListItem Text="Cloudy" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="Sunny" Value="2"></asp:ListItem>
                                        <asp:ListItem Text="cold" Value="3"></asp:ListItem>

                                    </asp:DropDownList>


                                </div>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="form-group">
                                <label for="inputSubject" class="control-label">
                                    Currency</label>
                                <div class="input-icon right">


                                    <asp:TextBox ID="txtCurrency" runat="server" placeholder="" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-10">
                            <div class="form-group">
                                <label for="inputMessage" class="control-label">
                                    City Details</label>
                                <asp:TextBox ID="txtCityDetails" runat="server" placeholder="City Details" TextMode="MultiLine" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-10">
                            <div class="form-group">
                                <label for="inputMessage" class="control-label">
                                    Audio Details</label>
                                <asp:TextBox ID="txtAudio" runat="server" placeholder="Audio Details" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-10">
                            <div class="form-group">
                                <label for="inputMessage" class="control-label">
                                    Photo</label>
                                <asp:FileUpload ID="FileUpload" runat="server" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="text-left pal">

                            <asp:Button ID="btnAdd" runat="server" Text="Create New City" class="btn btn-primary" data-toggle="tooltip" data-placement="bottom" title="Click to Save City"
                                OnClick="btnAdd_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <asp:PlaceHolder ID="EditMode" runat="server">
    
  <div class="row">
                    <div class="col-lg-12">
                            <div class="panel-body">
                   <h1><a name="places">Places in <asp:Label ID="lblCityName" runat="server"></asp:Label></a> 
       
                       <asp:HyperLink ID="HyperLink1" runat="server"   class="btn-dark">Add New Place</asp:HyperLink>

                   </h1>
                                              <asp:Repeater ID="Repeater1" runat="server">
                               
                                          <ItemTemplate>
                                     <div class="block">
                                       
                                         <%--<asp:HyperLink ID="hlPlaceDetails" NavigateUrl="AddNewPlace.aspx?PlaceID=<%# Eval("PlaceID") %>>" runat="server"><%# Eval("PlaceName") %></asp:HyperLink>--%>
                                            
                                          
                                          <p class="desc"> <%# Eval("PlaceName") %></p>
                                         </div>
                                    </ItemTemplate>
                                 </asp:Repeater>
                                 
                                                           </div>
                   </div>
               
                         </div>
    </asp:PlaceHolder>

    
</asp:Content>
