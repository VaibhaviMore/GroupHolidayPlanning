using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BusinessLogicLayer;

public partial class ViewSchedule : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["TourID"] != null)
            {
                if (Request.QueryString["Tour"] == "new") {
                    ScheduleTable.Visible = false;
                }
                else
                {
                    int id = Convert.ToInt32(Request.QueryString["TourID"]);

                    DataTable dt = ScheduleLogic.SelectPlacesByTourID(id);
                    ScheduleRepeater.DataSource = dt;
                    ScheduleRepeater.DataBind();
                }
            }
        }
    
    }
    protected void btnAddSchedule_Click(object sender, EventArgs e)
    {
        Response.Redirect("NewSchedule.aspx?TourID=" + Request.QueryString["TourID"]);
    }
    protected void btnNextStep_Click(object sender, EventArgs e)
    {
        Response.Redirect("InviteMembers.aspx?TourID=" + Request.QueryString["TourID"]+"&Tour=new");
    }
}