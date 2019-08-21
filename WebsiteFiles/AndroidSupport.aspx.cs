using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogicLayer;

public partial class AndroidSupport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Request.QueryString["type"] == "login"){
            String un = Request.QueryString["username"];
            String pass = Request.QueryString["password"];
            Member m = MemberLogic.Validate(un,pass);
            Response.Write(m.MemberID);
        }

    }
}