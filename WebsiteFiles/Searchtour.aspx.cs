using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BusinessLogicLayer;

public partial class Searchtour : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = TourLogic.SelectAll();
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        DataTable dt = TourLogic.Search(txtSearch.Text);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
    
    }
    protected void lbtnDelete_Command(object sender, CommandEventArgs e)
    {
        //e.CommandArgument
        int id = Convert.ToInt32(e.CommandArgument);
        int i = TourLogic.Delete(id);
            lblDeleteMsg.Text = "Tour Deleted Successfully!!";
            lblDeleteMsg.Visible = true;

            btnSearch_Click(new object(), new EventArgs());
    }
}