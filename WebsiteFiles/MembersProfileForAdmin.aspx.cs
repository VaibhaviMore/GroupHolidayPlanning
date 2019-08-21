using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogicLayer;

public partial class MembersProfileForAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["MemberID"] != null) {
          Member m = MemberLogic.SelectByMemberId(Convert.ToInt32(Request.QueryString["MemberID"]));
          lblUsername.Text = m.Username;
          lblName.Text = m.Name;
          lblGender.Text=m.Gender; 
          lblEmailID.Text=m.EmailID;
          lblAddres.Text=m.Address;
          lblCity.Text=m.City;
          imgDP.ImageUrl = "uploads/" + m.Photo;
         
           }
        else
        {
            
        }

    }
}