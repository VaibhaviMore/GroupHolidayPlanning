<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserRegistration.aspx.cs" Inherits="UserRegistration" %>

<!DOCTYPE HTML>
<html class="full">

<head>
    <title>Registration Form </title>


    <meta content="text/html;charset=utf-8" http-equiv="Content-Type">
    <meta name="keywords" content="Template, html, premium, themeforest" />
    <meta name="description" content="Traveler - Premium template for travel companies">
    <meta name="author" content="Tsoy">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- GOOGLE FONTS -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,300,600' rel='stylesheet' type='text/css'>
    <!-- /GOOGLE FONTS -->
    <link rel="stylesheet" href="styles/ucss/bootstrap.css" />
    <link rel="stylesheet" href="styles/ucss/font-awesome.css" />
    <link rel="stylesheet" href="styles/ucss/icomoon.css" />
    <link rel="stylesheet" href="styles/ucss/styles.css" />
    <link rel="stylesheet" href="styles/ucss/mystyles.css" />
    <script src="js/modernizr.js"></script>
    <%-- <style>
    .btn-primary
    {background-color:#1f68b1;
     border-color:#1f68b1;
    }</style>--%>
</head>

<body class="full">

    <%--  <div class="global-wrap">--%>

    <div class="full-page">
        <div class="bg-holder full">
            <div class="bg-mask"></div>
            <div class="bg-img" style="background-image: url(images/homepage.jpg);"></div>
            <div class="bg-holder-content full text-white">
               
                 <h3 class="mb15" style="margin-top: 40px; margin-left:550px">Welcome!!</h3>
               <div style="margin-top: 10px; margin-left:350px">
                   

                    <form id="form1" runat="server">
                        <div class="row">
                                <div class="col-md-3">
                                <asp:Label ID="lblName" class="form-group form-group-ghost form-group-icon-left" runat="server" Text="Name"></asp:Label>
                                <asp:TextBox ID="txtName" class="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="Submit" ControlToValidate="txtName" runat="server" ErrorMessage="Please Enter Member Name!"></asp:RequiredFieldValidator>
                            </div> <div class="col-md-3">
                               <asp:Button ID="LoginBtn" class="btn btn-primary" runat="server" Text="Login" Style="float: right" OnClick="LoginBtn_Click" />
                        </div></div> 
                          <div class="row">    <div class="col-md-3">
                                <asp:Label ID="lblGender" class="form-group form-group-ghost form-group-icon-left" runat="server" Text="Gender:"></asp:Label>
                                <asp:RadioButton ID="rbMale" runat="server" class="radio-inline" Text="Male" GroupName="Gender" />
                                <asp:RadioButton ID="rbFemale" runat="server" class="radio-inline" Text="Female" GroupName="Gender" />
                                <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="Gender" runat="server" ErrorMessage="Please Select your Gender!"></asp:RequiredFieldValidator>--%>
                            </div></div>
                      
                          <div class="row">
                            <div class="col-lg-3">
                                <asp:Label ID="lblEmail" class="form-group form-group-ghost form-group-icon-left" runat="server" Text="Email ID"></asp:Label>
                                <asp:TextBox ID="txtEmail" class="form-control" runat="server"></asp:TextBox>
                                <%-- <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Please Enter Accurate EmailID!" ></asp:RangeValidator>--%>
                            </div></div>
                          <div class="row">
                            <div class="col-lg-3">
                                <asp:Label ID="lblMobile" class="form-group form-group-ghost form-group-icon-left" runat="server" Text="Mobile No"></asp:Label>
                                <asp:TextBox ID="txtMobile" class="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="Submit" ControlToValidate="txtMobile" runat="server" ErrorMessage="Please Enter MobileNo"></asp:RequiredFieldValidator>
                            </div>

                                 <div class="col-lg-3">
                            <asp:Label ID="lblUsername" class="form-group form-group-ghost form-group-icon-left" runat="server" Text="Username"></asp:Label>
                            <asp:TextBox ID="txtUsername" class="form-control" runat="server" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="Submit" ControlToValidate="txtUsername" runat="server" ErrorMessage="Please Enter Username"></asp:RequiredFieldValidator>
                        </div>
                     
                          </div>
                       
                          <div class="row">
                        <div class="col-lg-3">
                            <asp:Label ID="lblAddress" class="form-group form-group-ghost form-group-icon-left" runat="server" Text="Address"></asp:Label>
                            <asp:TextBox ID="txtAddress" class="form-control" runat="server"  TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="Submit" ControlToValidate="txtAddress" runat="server" ErrorMessage="Please Enter Address!"></asp:RequiredFieldValidator>
                        </div>
                                   <div class="col-lg-3">
                            <asp:Label ID="lblPssword" class="form-group" runat="server" Text="Password"></asp:Label>
                            <asp:TextBox ID="txtPassword" class="form-control" TextMode="Password" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="Submit" ControlToValidate="txtPassword" runat="server" ErrorMessage="Please Enter Password!"></asp:RequiredFieldValidator>
                        </div>

                          </div>
                          <div class="row">
                        <div class="col-lg-3">
                            <asp:Label ID="lblCity" class="form-group form-group-ghost form-group-icon-left" runat="server" Text="City"></asp:Label>
                            <asp:TextBox ID="txtCity" class="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="Submit" ControlToValidate="txtCity" runat="server" ErrorMessage="Please Enter City Name!"></asp:RequiredFieldValidator>
                        </div>
                               <div class="col-lg-3">
                            <asp:Label ID="lblConfirmPassword" class="form-group" runat="server" Text="Confirm Password"></asp:Label>
                            <asp:TextBox ID="txtConfirmPassword" class="form-control" TextMode="Password" runat="server"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1"  ValidationGroup="Submit" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Please Enter Confirm Password" ControlToCompare="txtPassword"></asp:CompareValidator>
                        </div>

                          </div>
                          <div class="row">
                        <div class="col-lg-3">
                            <asp:Label ID="lblPhoto" class="form-group form-group-ghost form-group-icon-left" runat="server" Text="Photo"></asp:Label>
                            <asp:FileUpload ID="fuPhoto" runat="server" />
                        </div>
                                <div class="col-lg-3">
                            <asp:Button ID="btnSubmit" class="btn btn-primary" runat="server" Text="Submit" ValidationGroup="Submit" Style="clear: both" OnClick="btnSubmit_Click" />
                        </div>

                          </div>
                   
                       
                      

                    </form>
                   
               </div>

            </div>
        </div>
    </div>
</body>
</html>
