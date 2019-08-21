using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogicLayer;
public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        if(!IsPostBack){
            Session.RemoveAll();
           // Session["member"] = null;
        }
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    { 
        Member  m = MemberLogic.Validate(txtEmailId.Text, txtPassword.Text);
        if (m.MemberID > 0)
        {
            Session["member"] = m;
            // valid user
            Response.Redirect("MemberHome.aspx");
        }
        else
        {
            // error msg
        }
    }

   
}