using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using BusinessLogicLayer;

public partial class UserForgetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        lblmsg.Visible = true;
        try
        {
            Member m = MemberLogic.ValidateEmailID(txtEmailId.Text);
            if (m.MemberID > 0)
            {
                MailMessage mailmsg = new MailMessage();
                mailmsg.To.Add(txtEmailId.Text);
                mailmsg.Subject = "Reset Password";
                mailmsg.Body = "You have requested for reseting password. Here is your Username: "+m.Username+" and Password: "+m.Password;
                SmtpClient smtpclient = new SmtpClient("smtp.your-isp.com");//server address from hosting site
                smtpclient.Send(mailmsg);

                lblmsg.Text = "We will mail you your credentials!!";
            }
            else {
                lblmsg.Text = "This email address is not registered.";
            }
        }
        catch (Exception ex) {
            lblmsg.Text = "Could not send email. Try Again.";
        }
    }
}