using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogicLayer;
using System.Data;
using DataAccessLayer;

public partial class MemberHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        if (!IsPostBack)
        {
            if (Session["member"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            Member m = (Member)Session["member"];
           // Tour t = (Tour)Session["tour"];
            //TourMember tm = (TourMember)Session["conform memeber"];

            lblMemberName.Text = m.Name;
            DataTable dt = TourMemberLogic.getAllToursByMemberID(m.MemberID);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();

            imgPhoto.ImageUrl = "uploads/" + m.Photo;
            //imgTour.ImageUrl = "uploads/" + t.Photo;

            //lblTours.Text = tm.TourID.ToString();
            //dt = TourMemberLogic.getAllToursByMemberID(tm.TourMemberID);
        }
            
    }
}