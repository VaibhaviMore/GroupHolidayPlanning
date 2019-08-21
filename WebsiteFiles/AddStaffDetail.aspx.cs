using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogicLayer;

public partial class AddStaffDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Staff c = new Staff();
        c.Name = txtName.Text;
        c.Gender = txtGender.Text;
        c.EmailID = txtEmailID.Text;
        c.MobileNO = txtMobileNo.Text;
        c.Address = txtAddress.Text;
        c.City = txtCity.Text;
        c.Photo = PhotoUpload.ToString();
        c.Username = txtUsername.Text;
        c.Password = txtPassword.Text;
        int x = StaffLogic.Insert(c);
    
    }
}