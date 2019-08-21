using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;
using BusinessLogicLayer;
using System.Data;

public partial class UserDiscussionForum : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Member m1= (Member)Session["member"];
       
        lblMemberName.Text = m1.Name;
        imgPhoto.ImageUrl = "uploads/" + m1.Photo;


    }
    protected void btnAddMessage_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["TourID"] != null)
        {
            Member m = (Member)Session["member"];
            DiscussionMessage DM = new DiscussionMessage();


            DM.MessageTitle = txtMessageTitle.Text;
            DateTime dtsentTime = DateTime.Now;
            DM.SentTime = dtsentTime;
            DM.MessageText = txtMessageText.Text;
            DM.MessageImage = "";
            DM.TourID = Convert.ToInt32(Request.QueryString["TourID"]);
            int mid = m.MemberID;
            DM.MemberID = mid;

            DiscussionMessageLogic.Insert(DM);

            //int memid = Convert.ToInt32(Request.QueryString["MemberID"]);
            DataTable dt = DiscussionMessageLogic.SelectMessageByTourID(mid);
            MessageRepeater.DataSource = dt;
            MessageRepeater.DataBind();


        }
    }
}