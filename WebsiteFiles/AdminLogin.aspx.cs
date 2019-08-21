using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogicLayer;
using System.Data;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        if(!IsPostBack)
        {
            Session["Member"] = null;
        }
    }

    protected void btnSignIn_Click(object sender, EventArgs e)
    {
       if (txtUsername.Text =="admin" && txtPassword.Text=="admin")
        {
            //admin identified
            //Session["Member"] = m;
            //Response.Redirect("StaffDetail.aspx");
        }


        //Staff m = StaffLogic.Validate(txtUsername.Text,txtPassword.Text);
        
        //if ()
        //{
        //    //Valid Member
        //    Session["Member"] = m;
        //    Response.Redirect("StaffDetail.aspx");
        //}
        //else
        //{
        //    //Invalid Member
        //    failMsg.Visible = true;
        //}
    }
}