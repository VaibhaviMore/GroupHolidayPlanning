using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using DataAccessLayer;
using BusinessLogicLayer;

public partial class UserSearchTour : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //Member m = (Member)Session["member"];

            //DataTable dt = TourLogic.SelectAllTours();
            //Repeater1.DataSource = dt;
            //Repeater1.DataBind();
        }

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        displayTours.Visible = true;
        DataTable dt = TourLogic.Search(txtSearch.Text);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
    }
}