using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;
using System.Data;
using System.Data.SqlClient;
using BusinessLogicLayer;

public partial class UserMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

            Member m = (Member)Session["member"];
            lblMemberName.Text = m.Name;

            imgMember.ImageUrl = "uploads/" + m.Photo;
        }
    }
}
