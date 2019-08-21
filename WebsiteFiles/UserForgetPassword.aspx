<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserForgetPassword.aspx.cs" Inherits="UserForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700' rel='stylesheet' type='text/css'/>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,300,600' rel='stylesheet' type='text/css'/>
    <!-- /GOOGLE FONTS -->
   <link rel="stylesheet" href="styles/ucss/bootstrap.css"/>
    <link rel="stylesheet" href="styles/ucss/font-awesome.css"/>
    <link rel="stylesheet" href="styles/ucss/icomoon.css"/>
    <link rel="stylesheet" href="styles/ucss/styles.css"/>
    <link rel="stylesheet" href="styles/ucss/mystyles.css"/>
    <title>  Forgot Password </title>
</head>


    <body class="full" style="background-image:url(images/homepage.jpg);">
                    <center>
                        <div style="width:300px;margin-top:50px">
                                   <h3 class="mb15"> Forgot Password ?? </h3>
                                     <form id="sdfsf" runat="server"> 
                                       <div class="form-group form-group-ghost form-group-icon-left">
                                           <label>Email-ID</label> 
                                           <asp:TextBox ID="txtEmailId" runat="server" class="form-control" placeholder="e.g. johndoe@gmail.com" style="padding-left:10px;"></asp:TextBox> 
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtEmailID" runat="server" ErrorMessage="Please Enter Email"></asp:RequiredFieldValidator>
                                           <asp:RegularExpressionValidator ForeColor="White" ID="RegularExpressionValidator1" ValidationExpression="[a-z][A-Z][0-9][_]@[a-z].[a-z]" ControlToValidate="txtEmailID" runat="server" ErrorMessage="Please Enter valid email address" style="color:black"></asp:RegularExpressionValidator>
                                        </div>
                                       
                                        <asp:Button ID="btnSubmit" runat="server" class="btn btn-primary" Text="Submit" OnClick="btnSubmit_Click" />
                           </form>
                            </div>
                        </center>
                    <asp:Label ID="lblmsg" runat="server" Visible="false"></asp:Label>
               
         
   </body>

</html>
