using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogicLayer;
using System.Data;

public partial class AddNewCity : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        if (!IsPostBack)
        {
            if (Request.QueryString["ID"] != null)
            {
                //edit mode
                lblHEading.Text = "City Details";

                int id = Convert.ToInt32(Request.QueryString["ID"]);
                City c = CityLogic.SelectByID(id);
               // Place p = PlaceLogic.SelectByID(id);
                txtName.Text = c.CityName;
                txtCountry.Text = c.Country;
                ddlClimate.SelectedValue = c.Climate;
                FileUpload.Visible = false;
                txtSummer.Text = c.SummerTemperature.ToString() ;
                txtWinter.Text = c.WinterTemperature.ToString();
                txtRainy.Text = c.RainyTemperature.ToString();
                txtCityDetails.Text = c.CityDetails.ToString();
                txtAudio.Text = c.AudioDetails.ToString();

                
                DataTable dt = PlaceLogic.SearchPlacesByCityID(id);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
                lblCityName.Text = c.CityName;
                btnAdd.Text = "Change City Details";
                HyperLink1.NavigateUrl = "AddNewPlace.aspx?CityID="+c.CityID;
                
                
            }
            else
            {
                // insert mode
                linkPlaces.Visible = false;
                EditMode.Visible = false;
            }
        }

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["ID"] == null)
        {
            City c = new City();
            c.AudioDetails = txtAudio.Text;
            c.CityDetails = txtCityDetails.Text;
            c.CityName = txtName.Text;
            c.Climate = ddlClimate.Text;
            c.Country = txtCountry.Text;
            c.Currency = txtCurrency.Text;

            if (FileUpload.HasFile)
            {
                string prefix = DateTime.Now.Ticks.ToString();
                FileUpload.SaveAs(Server.MapPath("uploads\\" + prefix + FileUpload.FileName));
                c.Photo = prefix + FileUpload.FileName;
            }
            else
            {
                c.Photo = "";
            }

            c.RainyTemperature = Convert.ToSingle(txtRainy.Text);
            c.WinterTemperature = Convert.ToSingle(txtWinter.Text);
            c.SummerTemperature = Convert.ToSingle(txtSummer.Text);
            CityLogic.Insert(c);
            Response.Redirect("SearchCity.aspx");
        }
        else
        {
            City c = CityLogic.SelectByID(Convert.ToInt32(Request.QueryString["ID"]));
            c.AudioDetails = txtAudio.Text;
            c.CityDetails = txtCityDetails.Text;
            c.CityName = txtName.Text;
            c.Climate = ddlClimate.Text;
            c.Country = txtCountry.Text;
            c.Currency = txtCurrency.Text;

            if (FileUpload.HasFile)
            {
                string prefix = DateTime.Now.Ticks.ToString();
                FileUpload.SaveAs(Server.MapPath("uploads\\" + prefix + FileUpload.FileName));
                c.Photo = prefix + FileUpload.FileName;
            }

           
            try {
                c.SummerTemperature = Convert.ToSingle(txtSummer.Text);
                c.RainyTemperature = Convert.ToSingle(txtRainy.Text);
                c.WinterTemperature = Convert.ToSingle(txtWinter.Text); 
            }
            catch (Exception ) { 
                c.WinterTemperature = 0;
                c.RainyTemperature = 0;
                c.SummerTemperature = 0;
            }
            
            CityLogic.Update(c);
        }

    }
}