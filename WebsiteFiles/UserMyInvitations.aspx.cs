using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogicLayer;
using System.Data;
using System.Data.SqlClient;


public partial class UserMyInvitations : System.Web.UI.Page
{
    Member m;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
             m= (Member)Session["member"];
            if (Session["member"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            
            lblMemberName.Text = m.Name;
            imgPhoto.ImageUrl = "uploads/" + m.Photo;

            DataTable dt = MemberInvitationLogic.SelectAllToursByMemberID(m.MemberID);
            InvitedRepeater.DataSource = dt;
            InvitedRepeater.DataBind();
           
        }
    }
    protected void btnJoinTour_Command(object sender, CommandEventArgs e)
    {
        m = (Member)Session["member"];
        int mid = m.MemberID;
        int tid = Convert.ToInt32(e.CommandArgument);
        int t = MemberInvitationLogic.UpdateStatus(mid, tid);
        TourMember tourmember = new TourMember();
        tourmember.TourID = tid;
        tourmember.MemberID = mid;
        tourmember.JoiningTime = DateTime.Now;
        TourMemberLogic.Insert(tourmember);
        
    }
}