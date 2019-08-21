using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogicLayer;
using System.Data;
using System.Data.SqlClient;


public partial class UserCurrentTour : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        if (!IsPostBack)
        {
            Member m = (Member)Session["member"];
            lblMemberName.Text = m.Name;
            imgPhoto.ImageUrl = "uploads/" + m.Photo;
            
            
            int mid = Convert.ToInt32(Request.QueryString["MemberID"]);
            DataTable dt = TourMemberLogic.getCurrentTourOfMember(mid);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();



        }

    }
    protected void btnAddPhoto_Click(object sender, EventArgs e)
    {
         //Response.Redirect("UserAddPhoto.aspx");
        Response.Redirect("UserAddPhoto.aspx?MemberID=" + Request.QueryString["MemberID"]);
      
    }
}