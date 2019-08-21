using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogicLayer;
using DataAccessLayer;
using System.Data;

public partial class UserPhotoGallery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
            Member m = (Member)Session["member"];
            Place p =  new Place();

            lblMemberName.Text = m.Name;
           // DataTable dt = GalleryPhotoLogic.SelectAll();
           // DataTable dt = GalleryPhotoLogic.getAllPhotosByPlaceID(Convert.ToInt32(Request.QueryString["PlaceID"]));
            DataTable dt = GalleryPhotoLogic.getAllPhotosByPlaceID(p.PlaceID);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();

            imgPhoto.ImageUrl = "uploads/" + m.Photo;


           
        }
            
    
}