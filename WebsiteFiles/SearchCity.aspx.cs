using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogicLayer;
using System.Data;

public partial class SearchCity : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = CityLogic.SelectAll();
        Repeater1.DataSource = dt;
        if (!IsPostBack)
        {
            Repeater1.DataBind();
        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        DataTable dt = CityLogic.Search(txtSearch.Text);
        if (dt != null && dt.Rows.Count > 0)
        {
            Repeater1.DataSource = dt;
            Repeater1.DataBind();

        }
        else
        {
            lblMsg.Text = "Sorry!No City with " + txtSearch.Text + " Found.\n.";
            lblMsg.Visible = true;

        }

    }

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "View")
        {
            int cityID = Convert.ToInt32(e.CommandArgument);
            Response.Redirect("AddNewCity.aspx?ID=" + cityID);
        }

    }
}