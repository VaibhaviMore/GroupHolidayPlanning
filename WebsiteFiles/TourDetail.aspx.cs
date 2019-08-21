using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogicLayer;
using System.Data;
using System.Data.SqlClient;
using DataAccessLayer;


public partial class TourDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        if (!IsPostBack)
        {
            if (Request.QueryString["TourID"] != null)
            {
                int id = Convert.ToInt32(Request.QueryString["TourID"]);
                Tour c = TourLogic.SelectByID(id);
                txtTitle.Text = c.Title;
                txtStarts.Text = c.StartTime.ToString("dd-MM-yyyy");
                txtEnds.Text = c.EndTime.ToString("dd-MM-yyyy");
                txtStatus.Text = c.Status;
                txtDescription.Text = c.Description;
                lblHeading.Text =  c.Title+" Details";

            }
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        Tour t = TourLogic.SelectByID(Convert.ToInt32(Request.QueryString["TourID"]));
        t.Title = txtTitle.Text;

        DateTime dtStart = DateTime.Today;
        DateTime dtEnd = DateTime.Today;

        if (!DateTime.TryParseExact(txtStarts.Text, "dd-MM-yyyy", null, System.Globalization.DateTimeStyles.None, out dtStart))
        {
            Response.Write("<script>alert('Invalid Date1')</script>");
            return;
        }
        if (!DateTime.TryParseExact(txtEnds.Text, "dd-MM-yyyy", null, System.Globalization.DateTimeStyles.None, out dtEnd))
        {
            Response.Write("<script>alert('Invalid Date2')</script>");
            return;
        }

        t.StartTime = dtStart;
        t.EndTime = dtEnd;
        t.StaffID = 0;
        t.Status = txtStatus.Text;
        if (fuPhoto.HasFile)
        {
            string prefix = DateTime.Now.Ticks.ToString();
            fuPhoto.SaveAs(Server.MapPath("uploads\\" + prefix + fuPhoto.FileName));
            t.Photo = prefix + fuPhoto.FileName;
        }
        t.Description = txtDescription.Text;

        int tid =  TourLogic.Update(t);
    }

    //protected void imgViewTourMembers_Click(object sender, ImageClickEventArgs e)
    //{
    //    addMembersToTour.Visible = false;
    //    tourDetailsForm.Visible = false;
    //    TourMembers.Visible = true;
    //    lblAlertDiv.Visible = false;
    //    lblMsg.Visible = false;

    //    DataTable dt1 = TourMemberLogic.SelectByTourID(Convert.ToInt32(Request.QueryString["TourID"]));
    //    RepeaterForTourMembers.DataSource = dt1;
    //    RepeaterForTourMembers.DataBind();
    //}

    //protected void imgAddMembersToTour_Click(object sender, ImageClickEventArgs e)
    //{
    //    addMembersToTour.Visible = true;
    //    tourDetailsForm.Visible = false;
    //    TourMembers.Visible = false;
    //    DataTable dt = MemberLogic.SelectOtherTourMembers(Convert.ToInt32(Request.QueryString["TourID"]));
    //    if (dt != null && dt.Rows.Count > 0)
    //    {
    //        RepeaterForAllMembers.DataSource = dt;
    //        RepeaterForAllMembers.DataBind();
    //        lblMsg.Visible = false;
    //    }
    //    else
    //    {
    //        lblMsg.Text = "No Members to invite!!";
    //        lblMsg.Visible = true;
    //        lblAlertDiv.Visible = true;
    //        fulltable.Visible = false;
    //    }


    //}

    protected void RepeaterForAllMembers_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "Invite")
        {
            int mid = Convert.ToInt32(e.CommandArgument);
            int tid = Convert.ToInt32(Request.QueryString["TourID"]);

            TourMember mi = new TourMember();
            mi.TourID = tid;
            mi.MemberID = mid;
            mi.JoiningTime = DateTime.Now;
            
            TourMemberLogic.Insert(mi);
            MemberInvitationLogic.DeleteByTourAndMemberID(tid,mid);
            Response.Redirect("TourDetail.aspx?TourID=" + Request.QueryString["TourID"]);
        }
    }
    protected void btnAddMemberToTour_Click(object sender, EventArgs e)
    {
        addMembersToTour.Visible = true;
        tourDetailsForm.Visible = false;
        TourMembers.Visible = false;
        DataTable dt = MemberLogic.SelectOtherTourMembers(Convert.ToInt32(Request.QueryString["TourID"]));
        if (dt != null && dt.Rows.Count > 0)
        {
            RepeaterForAllMembers.DataSource = dt;
            RepeaterForAllMembers.DataBind();
            lblMsg.Visible = false;
        }
        else
        {
            lblMsg.Text = "No Members to invite!!";
            lblMsg.Visible = true;
            lblAlertDiv.Visible = true;
            fulltable.Visible = false;
        }

    }
    protected void btnViewTourMembers_Click(object sender, EventArgs e)
    {
        addMembersToTour.Visible = false;
       // tourDetailsForm.Visible = false;
        TourMembers.Visible = true;
        lblAlertDiv.Visible = false;
        lblMsg.Visible = false;

        DataTable dt1 = TourMemberLogic.SelectByTourID(Convert.ToInt32(Request.QueryString["TourID"]));
        RepeaterForTourMembers.DataSource = dt1;
        RepeaterForTourMembers.DataBind();
    }
    protected void btnViewSchedule_Click(object sender, EventArgs e)
    {
        addMembersToTour.Visible = false;
       // tourDetailsForm.Visible = false;
        TourMembers.Visible = false;
        ViewSchedule.Visible = true;
        lblAlertDiv.Visible = false;
        lblMsg.Visible = false;

        int id = Convert.ToInt32(Request.QueryString["TourID"]);

        DataTable dt = ScheduleLogic.SelectPlacesByTourID(id);
        RepeaterForSchedule.DataSource = dt;
        RepeaterForSchedule.DataBind();
        
    }

   

}