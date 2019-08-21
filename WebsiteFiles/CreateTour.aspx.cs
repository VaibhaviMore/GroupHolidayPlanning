using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogicLayer;

public partial class CreateTour : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Tour t = new Tour();
        t.Title = txtTitle.Text;

        DateTime dtStart=DateTime.Today;
        DateTime dtEnd = DateTime.Today;

        if (!DateTime.TryParseExact(txtStartTime.Text, "dd-MM-yyyy", null, System.Globalization.DateTimeStyles.None, out dtStart))
        {
            Response.Write("<script>alert('Invalid Date1')</script>");
            return;
        }
        if (!DateTime.TryParseExact(txtEndTime.Text, "dd-MM-yyyy", null, System.Globalization.DateTimeStyles.None, out dtEnd))
        {
            Response.Write("<script>alert('Invalid Date2')</script>");
            return;
        }
        t.StartTime = dtStart;
        t.EndTime = dtEnd;
        t.StaffID = 0;
        t.Status = "Created";

        string prefix = DateTime.Now.Ticks.ToString();
        fuPhoto.SaveAs(Server.MapPath("uploads\\" + prefix + fuPhoto.FileName));
        t.Photo = prefix + fuPhoto.FileName;
        t.Description = txtDescription.Text;
       int tid =  TourLogic.Insert(t);
       Response.Redirect("ViewSchedule.aspx?TourID="+tid+"&Tour=new");
       //Response.Redirect("InviteMembers.aspx?TourID=" + tid);


    }
}