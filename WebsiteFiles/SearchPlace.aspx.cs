using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BusinessLogicLayer;

public partial class SearchPlace : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      //  DataTable dt = PlaceLogic.SelectAll();
       // Repeater1.DataSource = dt;
       // Repeater1.DataBind();

        DataTable dt = PlaceLogic.SelectAll();
        Repeater1.DataSource = dt;
        if (!IsPostBack)
        {
            Repeater1.DataBind();
        }
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {

        DataTable dt = PlaceLogic.Search(txtSearch.Text);
        if (dt != null && dt.Rows.Count > 0)
        {
            Repeater1.DataSource = dt;
            Repeater1.DataBind();

        }
        else
        {
            lblMsg.Text = "Sorry!No Place with " + txtSearch.Text + " Found.\n.";
            lblMsg.Visible =true;

        }
    }
}