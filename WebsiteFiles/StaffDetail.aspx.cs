using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using BusinessLogicLayer;

public partial class StaffDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.AppendHeader("Refresh", "30");
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
       
    }
    protected void btnSubmit_Click1(object sender, EventArgs e)
    {
       // Staff s = new Staff();
       // s.Name = txtName.Text;
       // s.Gender = ddlGender.SelectedItem.ToString();
       // s.EmailID = txtEmail.Text;
       // s.MobileNO = txtContactNo.Text;
       // s.Address = txtAddress.Text;
       // s.City = txtCity.Text;

       // s.Username = txtUsername.Text;
       // s.Password = txtPassword.Text;
       //// s.ConfirmPassword = txtConfirmPassword.Text;
       // s.StaffType = ddlStaffType.Text;

       // string prefix = DateTime.Now.Ticks.ToString();
       // PhotoUpload.SaveAs(Server.MapPath("uploads\\" + prefix + PhotoUpload.FileName));
       // s.Photo = prefix + PhotoUpload.FileName;

       // StaffLogic.Insert(s);
       // Response.Redirect("Login.aspx");
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Staff s = new Staff();
        s.Name = txtName.Text;
        //s.Gender = rbMale.Checked;
        if (rbMale.Checked)
        {
            s.Gender = "Male";
        }
        else
        {
            s.Gender = "Female";
        }
        s.EmailID = txtEmailID.Text;
        s.MobileNO = txtMobileNo.Text;
        s.Address = txtAddress.Text;
        s.City = txtCity.Text;

        s.Username = txtUsername.Text;
        s.Password = txtPassword.Text;
        //// s.ConfirmPassword = txtConfirmPassword.Text;
        s.StaffType = ddlStaffType.SelectedItem.Text;
        
        if (PhotoUpload.HasFile)
        {
        string prefix = DateTime.Now.Ticks.ToString();
        PhotoUpload.SaveAs(Server.MapPath("uploads\\" + prefix + PhotoUpload.FileName));
        s.Photo = prefix + PhotoUpload.FileName;
        s.Photo = prefix + PhotoUpload.FileName;
        }
        else
        {
            s.Photo = "";
        }

      int x=  StaffLogic.Insert(s);
        Response.Redirect("Login.aspx");
    }
}