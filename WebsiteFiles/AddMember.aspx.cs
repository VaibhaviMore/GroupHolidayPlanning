using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogicLayer;

public partial class AddMember : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }


    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Member c = new Member();
        c.Name = txtName.Text;
        c.Gender = txtGender.Text;
        c.EmailID = txtEmailID.Text;
        c.MobileNO = txtMobileNo.Text;
        c.Address = txtAddress.Text;
        c.City = txtCity.Text;

        if (PhotoUpload.HasFile)
        {
            string prefix = DateTime.Now.Ticks.ToString();
            PhotoUpload.SaveAs(Server.MapPath("uploads\\" + prefix + PhotoUpload.FileName));
            c.Photo = prefix + PhotoUpload.FileName;
        }
        else
        {
            c.Photo = "";
        }
        c.Username = txtUsername.Text;
        c.Password = txtPassword.Text;
        int x = MemberLogic.Insert(c);
    
    }
}