using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using BusinessLogicLayer;

public partial class UserAddPhoto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        if (!IsPostBack)
        {
            DataTable dt = CityLogic.SelectAll();
            ddlAllCity.DataSource = dt;
            ddlAllCity.DataTextField = "CityName";
            ddlAllCity.DataValueField = "CityID";
            ddlAllCity.DataBind();

        } 
    }

    


    protected void btnAddPhoto_Click(object sender, EventArgs e)
    {
         if (Request.QueryString["TourMemberID"] != null)
        {
            GalleryPhoto UG = new GalleryPhoto();
          
           if(rbPublic.Checked)
                {
                    UG.Type = "Public";

                }
                else
                {
                    UG.Type = "Private";
           }

            
            if (fuPhoto.HasFile)
            {
             string prefix = DateTime.Now.Ticks.ToString();
                fuPhoto.SaveAs(Server.MapPath("uploads\\" + prefix + fuPhoto.FileName));
                UG.Photo = prefix + fuPhoto.FileName;
            }
            UG.Title = txtTitle.Text;
            DateTime dtuploadTime = DateTime.Now;
            UG.UploadTime = dtuploadTime;
            UG.TourMemberID = Convert.ToInt32(Request.QueryString["TourMemberID"]);
            UG.PlaceID = Convert.ToInt32(ddlPlaces.SelectedItem.Value);
            GalleryPhotoLogic.Insert(UG);
            lblDate.Text = dtuploadTime.ToString();
        }
    }


    protected void ddlAllCity_SelectedIndexChanged(object sender, EventArgs e)
    {
        int cityid = Convert.ToInt32(ddlAllCity.SelectedValue);
        DataTable dt = PlaceLogic.SearchPlacesByCityID(cityid);
        ddlPlaces.DataSource = dt;
        ddlPlaces.DataTextField = "PlaceName";
        ddlPlaces.DataValueField = "PlaceID";
        ddlPlaces.DataBind();
    }

}
