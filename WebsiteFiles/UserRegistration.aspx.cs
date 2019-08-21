using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogicLayer;


public partial class UserRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
         Member c = new Member();
        c.Name = txtName.Text;
       
         if (rbMale.Checked)
        {
            c.Gender = "Male";
        }
        else
        {
            c.Gender = "Female";
        }
        c.EmailID = txtEmail.Text;
        c.MobileNO = txtMobile.Text;
        c.Address = txtAddress.Text;
        c.City = txtCity.Text;
        
        if (fuPhoto.HasFile)
        {
            string prefix = DateTime.Now.Ticks.ToString();
            fuPhoto.SaveAs(Server.MapPath("uploads\\" + prefix + fuPhoto.FileName));
            c.Photo = prefix + fuPhoto.FileName;
        }
        else
        {
            c.Photo = "";
        }
        c.Username = txtUsername.Text;
        c.Password = txtPassword.Text;
        int x = MemberLogic.Insert(c);
        Response.Redirect("Login.aspx");
    }
    protected void LoginBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}
