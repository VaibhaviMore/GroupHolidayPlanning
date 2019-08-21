using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogicLayer;
using System.Data;

public partial class NewSchedule : System.Web.UI.Page
{ 
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
       
        if (!IsPostBack) {
            DataTable dt = CityLogic.SelectAll();
            ddlAllCity.DataSource = dt;
            ddlAllCity.DataTextField = "CityName";
            ddlAllCity.DataValueField = "CityID";
            ddlAllCity.DataBind();

            List<int> hours = new List<int>();
            for (int i = 00; i <= 23; i++)
                hours.Add(i);
            ddlhour.DataSource = hours;
            ddlhour2.DataSource = hours;
            ddlhour.DataBind();
            ddlhour2.DataBind();

    
        
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {


        DateTime dt1 = DateTime.Now;
        DateTime dt2 = DateTime.Now;
        
        if (!DateTime.TryParseExact(txtDate.Text, "dd-MM-yyyy", null, System.Globalization.DateTimeStyles.None, out dt1))
        {
            Response.Write("<script>alert('Invalid Date !!')</script>");
            return;
        }

        if (!DateTime.TryParseExact(txtDate.Text, "dd-MM-yyyy", null, System.Globalization.DateTimeStyles.None, out dt2))
        {
            Response.Write("<script>alert('Invalid Date !!')</script>");
            return;
        }
        
        dt1 = dt1.AddHours(Convert.ToInt32(ddlhour.SelectedItem.Text));
        dt1 = dt1.AddMinutes(Convert.ToInt32(ddlMins.SelectedItem.Text));
        
        dt2 = dt2.AddHours(Convert.ToInt32(ddlhour2.SelectedItem.Text));
        dt2 = dt2.AddMinutes(Convert.ToInt32(ddlmin2.SelectedItem.Text));


        Schedule s = new Schedule();
        s.TourID=Convert.ToInt32(Request.QueryString["TourID"]);
        s.PlaceID = Convert.ToInt32(ddlPlaces.SelectedItem.Value);
        s.EntryTime = dt1;
        s.ExitTime = dt2;
        s.TimeToReach = Convert.ToInt32(txtTimeToReach.Text);
        s.ScheduleOrder = "";
        int sid = ScheduleLogic.Insert(s);
        Response.Redirect("ViewSchedule.aspx?TourID=" + Request.QueryString["TourID"]);
      


            //if (Request.QueryString["TourID"] != null)
            //{

            //    int id = Convert.ToInt32(Request.QueryString["TourID"]);

            //    DataTable dt = ScheduleLogic.SelectPlacesByTourID(id);
            //    ScheduleRepeater.DataSource = dt;
            //    ScheduleRepeater.DataBind();

            //}
        
    }
    protected void ddlAllCity_SelectedIndexChanged(object sender, EventArgs e)
    {
        int cityid = Convert.ToInt32(ddlAllCity.SelectedValue);
        DataTable dt = PlaceLogic.SearchPlacesByCityID(cityid);
        ddlPlaces.DataSource = dt;
        ddlPlaces.DataTextField = "PlaceName";
        ddlPlaces.DataValueField = "PlaceID";
        ddlPlaces.DataBind();

    
    }
} 