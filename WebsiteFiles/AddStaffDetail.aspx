<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddStaffDetail.aspx.cs" Inherits="AddStaffDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Name:<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br />
        <br />
        Gender:<asp:TextBox ID="txtGender" runat="server"></asp:TextBox>
        <br />
        <br />
        Email ID:<asp:TextBox ID="txtEmailID" runat="server"></asp:TextBox>
<br />
        <br />
        Mobile Number:<asp:TextBox ID="txtMobileNo" runat="server"></asp:TextBox>
        <br />
        <br />
        Address:<asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
        <br /><br />
        City:<asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
        <br /><br />
         Photo:<asp:FileUpload ID="PhotoUpload" runat="server" />
        <br /><br />
        Username:<asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        <br /><br />
        Password:<asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        <br /><br />
        
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    
    </div>
    </form>
</body>
</html>
