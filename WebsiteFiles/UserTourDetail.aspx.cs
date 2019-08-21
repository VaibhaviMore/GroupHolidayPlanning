using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogicLayer;
using System.Data;
using System.Data.SqlClient;

public partial class UserTourDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack){
            if(Session["member"]==null){
                Response.Redirect("Login.aspx");
            }
            if (Request.QueryString["TourID"] != null)
            {
                Tour m = TourLogic.SelectByID(Convert.ToInt32(Request.QueryString["TourID"]));
                lblTitle.Text = m.Title;
                lblDescription.Text = m.Description;
                imgTour.ImageUrl = "uploads/" + m.Photo;

                int members = TourMemberLogic.getTotalMembersVisitedTour(Convert.ToInt32(Request.QueryString["TourID"]));
                lblTotalTourMembers.Text = members.ToString();
                DataTable dt = ScheduleLogic.SelectPlacesByTourID(Convert.ToInt32(Request.QueryString["TourID"]));
                ScheduleRepeater.DataSource = dt;
                ScheduleRepeater.DataBind();
                
            }
        }
    }
    protected void btnExplore_Click(object sender, EventArgs e)
    {
        
    }
    protected void btnfeedback_Click(object sender, EventArgs e)
    {
        Member m = (Member)Session["member"];
        int tid = Convert.ToInt32(Request.QueryString["TourID"]);
        int mid = m.MemberID;
        Feedback f = new Feedback();
        f.Title = txtFeedbackTitle.Text;
        f.Details = txtFeedbackDetails.Text;
        f.TourID = tid;
        f.MemberID = mid;
        f.FeedbackTime = DateTime.Now;
        FeedbackLogic.Insert(f);
    }
}