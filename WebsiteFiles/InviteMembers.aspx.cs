using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BusinessLogicLayer;

public partial class InviteMembers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack){
            int TourId = Convert.ToInt32(Request.QueryString["TourID"]);

            if (Request.QueryString["Tour"] == "new")
            {
                AllMembersTable.Visible = false;
                TourMembersTable.Visible = false;
               
            }
            else {
                
                DataTable dt1 = MemberInvitationLogic.SelectMemberByTourID(TourId);
                RepeaterForInvitedMembers.DataSource = dt1;
                RepeaterForInvitedMembers.DataBind();
            
                }

            DataTable dt = MemberInvitationLogic.SelectOtherMembers(TourId);
            if (dt != null && dt.Rows.Count > 0)
            {
                RepeaterForAllMembers.DataSource = dt;
                RepeaterForAllMembers.DataBind();
                lblMsg.Visible = false;
            }
            else {
                lblMsg.Text = "No Members to invite!!";
                lblMsg.Visible = true;
                lblAlertDiv.Visible = true;
                fulltable.Visible = false;
              }
        
        }
       
    }


    protected void RepeaterForAllMembers_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "Invite")
        {
            int mid = Convert.ToInt32(e.CommandArgument);
            int tid = Convert.ToInt32(Request.QueryString["TourID"]);

            MemberInvitation mi = new MemberInvitation();
            mi.TourID = tid;
            mi.MemberID = mid;
            mi.InvitationTime = DateTime.Now;
            mi.Status = "Pending";

            MemberInvitationLogic.Insert(mi);
            Response.Redirect("InviteMembers.aspx?TourID=" + Request.QueryString["TourID"]);
        }
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        DataTable dt = MemberLogic.Search(txtSearch.Text);
        if (dt != null && dt.Rows.Count > 0)
        {
            RepeaterForAllMembers.DataSource = dt;
            RepeaterForAllMembers.DataBind();
            lblMsg.Text = dt.Rows.Count + " Matching Results Found !! ";
            lblMsg.Visible = true;
            lblAlertDiv.Visible = true;
            fulltable.Visible = true;
        }
        else
        {
            lblMsg.Text = "Sorry!No Member with " + txtSearch.Text + " Found.\n.";
            lblMsg.Visible = true;
            lblAlertDiv.Visible = true;
            fulltable.Visible = false;
        }

    }

    protected void btnNext_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewSchedule.aspx?TourID=" + Request.QueryString["TourID"]);
    }
    protected void imgInvitedMembers_Click(object sender, ImageClickEventArgs e)
    {
       AllMembersTable.Visible = true;
       TourMembersTable.Visible = false;
       
    }
    protected void imgTourMembers_Click(object sender, ImageClickEventArgs e)
    {
        TourMembersTable.Visible = true;
        AllMembersTable.Visible = false;
    }
}