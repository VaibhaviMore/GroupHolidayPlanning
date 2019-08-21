<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        @import url(http://fonts.googleapis.com/css?family=Tenor+Sans);
html {
  /*background-color: #5D92BA;*/
  background-color:maroon;
  font-family: "Tenor Sans", sans-serif;
}

.container {
  width: 500px;
  height: 400px;
  margin: 0 auto;
}

.login {
  margin-top: 50px;
  width: 450px;
}

.login-heading {
  font: 1.8em/48px "Tenor Sans", sans-serif;
  color: white;
}

.input-txt {
  width: 100%;
  padding: 20px 10px;
  /*background: #5D92BA;*/
  background-color: firebrick;
  border: none;
  font-size: 1em;
  color: white;
  border-bottom: 1px dotted rgba(250, 250, 250, 0.4);
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -moz-transition: background-color 0.5s ease-in-out;
  -o-transition: background-color 0.5s ease-in-out;
  -webkit-transition: background-color 0.5s ease-in-out;
  transition: background-color 0.5s ease-in-out;
}
.input-txt:-moz-placeholder {
  color: #81aac9;
}
.input-txt:-ms-input-placeholder {
  color: #81aac9;
}
.input-txt::-webkit-input-placeholder {
  color: #81aac9;
}
.input-txt:focus {
 /*background-color: #4478a0;*/
  background-color: maroon;
}

.login-footer {
  margin: 10px 0;
  overflow: hidden;
  float: left;
  width: 100%;
}

.btn {
  padding: 15px 30px;
  border: none;
  background: white;
  color: #5D92BA;
}

.btn--right {
  float: right;
  
    color: black;
    background-color: white;
 
}

.icon {
  display: inline-block;
}

.icon--min {
  font-size: .9em;
}

.lnk {
  font-size: .8em;
  line-height: 3em;
  color: white;
  text-decoration: none;
}
   .page-title {
        color:white;
        background-color:black;
         width: 100%;
         border:0px;
         height:50px;
         display:block;
         font-weight:lighter;
         font-size:30px;
 
        margin:-7px 0px -7px 17px;
        }

    </style>
</head>
    
<body>
    <form id="form1" runat="server">
          <div class="page-title">
                <asp:Label ID="lblHEading" runat="server"  Text="Traveloholic"></asp:Label>
              
        
        <div class="clearfix">       </div>
    </div>
   
    <div class="container">
        
  <div class="login">
  	<h1 class="login-heading">
      <strong>Welcome.</strong> Please login.</h1>

       <h2 runat="server" id="failMsg" visible="false">Invalid Credentials!! Please Try Again!!</h2>

      <asp:TextBox ID="txtUsername" CssClass="input-txt" ForeColor="White"  placeholder="Username" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtUsername" runat="server" ErrorMessage="Please enter username"></asp:RequiredFieldValidator>
                               
      <asp:TextBox ID="txtPassword" CssClass="input-txt" TextMode="Password" ForeColor="White" placeholder="Password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtPassword" runat="server" ErrorMessage="Please enter Password"></asp:RequiredFieldValidator>
                              
          <div class="login-footer">
             <a href="#" class="lnk">
              I've forgotten something
            </a><asp:Button ID="btnSignIn" runat="server" Text="Sign in" Font-Bold="true" CssClass="btn--right btn" OnClick="btnSignIn_Click"/>
          </div>
      
  </div>
</div>
    </form>
</body>
</html>
