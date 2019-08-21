using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogicLayer;

public partial class MemberList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //DataTable dt = MemberLogic.SelectAll();
        //if (dt != null && dt.Rows.Count > 0)
        //{
        //    AllMemberRepeater.DataSource = dt;
        //    AllMemberRepeater.DataBind();

        //}
        //else
        //{
        //    lblMsg.Text = "Sorry!No Members Found!!\n.";
        //    lblMsg.Visible = true;

        //}

        
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        DataTable dt ;
        if (rbMember.Checked)
        {
            showMembers.Visible = true;
            showStaff.Visible = false;
            dt = MemberLogic.Search(txtSearch.Text);
            if (dt != null && dt.Rows.Count > 0)
            {
                AllMemberRepeater.DataSource = dt;
                AllMemberRepeater.DataBind();

            }
            else
            {
                lblMsg.Text = "Sorry!No Name with " + txtSearch.Text + " Found.\n.";
                lblMsg.Visible = true;

            }
        }
        else
        {
            showStaff.Visible = true;
            showMembers.Visible = false;
          dt=StaffLogic.Search(txtSearch.Text);
          if (dt != null && dt.Rows.Count > 0)
          {
             RepeaterforStaff.DataSource = dt;
             RepeaterforStaff.DataBind();

          }
          else
          {
              lblMsg.Text = "Sorry!No Name with " + txtSearch.Text + " Found.\n.";
              lblMsg.Visible = true;

          }
        }
    }

   
}