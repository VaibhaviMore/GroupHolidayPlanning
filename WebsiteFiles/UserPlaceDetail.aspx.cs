using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogicLayer;
using System.Data.SqlClient;
using System.Data;

public partial class UserPlaceDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Place p = PlaceLogic.SelectByID(Convert.ToInt32(Request.QueryString["PlaceID"]));
        placeName.Text = p.PlaceName;
        placeDetails.Text = p.PlaceDetails;
        pic1.ImageUrl = "uploads/"+p.Photo1;
        pic2.ImageUrl = "uploads/" + p.Photo2;
        pic3.ImageUrl = "uploads/" + p.Photo3;
        int cityId = p.CityID;
        City c = CityLogic.SelectByID(cityId);
        lblCityName.Text = c.CityName;
    }
}