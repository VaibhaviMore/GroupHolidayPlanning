using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using BusinessLogicLayer;

public partial class UserViewFeedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        if (!IsPostBack)
        {
           
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["TourID"] != null && Request.QueryString["MemberID"] != null)
        {
            Feedback fb = new Feedback();

            fb.Title = txtTitle.Text;
            fb.Details = txtDetails.Text;

            DateTime dtuploadTime = DateTime.Now;
            fb.FeedbackTime = dtuploadTime;

            FeedbackLogic.Insert(fb);
            lblTime.Text = dtuploadTime.ToString();

        }

    }
}