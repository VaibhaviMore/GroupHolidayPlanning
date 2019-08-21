using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogicLayer;

public partial class AddNewPlace : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        if (!IsPostBack)
        {
            if (Request.QueryString["PlaceID"] != null)
            {
                //edit mode
                lblHEading.Text = "Place Details";

                int id = Convert.ToInt32(Request.QueryString["PlaceID"]);
                Place p = PlaceLogic.SelectByID(id);
                // Place p = PlaceLogic.SelectByID(id);
                txtName.Text = p.PlaceName;
                txtPlaceDetails.Text = p.PlaceDetails;
                FileUpload1.Visible = false;
                FileUpload2.Visible = false;
                FileUpload3.Visible = false;
                img1.ImageUrl = "uploads/" + p.Photo1;
                img2.ImageUrl = "uploads/"+p.Photo2;
                img3.ImageUrl = "uploads/" + p.Photo3;
                txtAudioDetails.Text = p.AudioDetails;
                btnAdd.Text = "Change Place Details";
                photorow.Visible = false;
                displayphotorow.Visible = true;
            }
            else
            {
                // insert mode
                displayphotorow.Visible = false;
            }
        }

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["PlaceID"] == null)
        {
            Place p = new Place();
            p.PlaceName = txtName.Text;
            if (Request.QueryString["CityID"] == null)
            {
                Response.Write("<script>alert('Invalid Request (City Reference Not Found)')</script>");
                return;
            }
            p.CityID = Convert.ToInt32(Request.QueryString["CityID"]);
            string prefix = DateTime.Now.Ticks.ToString();
            FileUpload1.SaveAs(Server.MapPath("uploads\\" + prefix + FileUpload1.FileName));
            p.Photo1 = prefix + FileUpload1.FileName;
            string prefix2 = DateTime.Now.Ticks.ToString();
            FileUpload2.SaveAs(Server.MapPath("uploads\\" + prefix2 + FileUpload2.FileName));
            p.Photo2 = prefix2 + FileUpload2.FileName;
            string prefix3 = DateTime.Now.Ticks.ToString();
            FileUpload3.SaveAs(Server.MapPath("uploads\\" + prefix3 + FileUpload3.FileName));
            p.Photo3 = prefix3 + FileUpload3.FileName;


            p.PlaceDetails = txtPlaceDetails.Text.Replace("\n", "<br/>");
            p.AudioDetails = txtAudioDetails.Text.Replace("\n", "<br/>");

            PlaceLogic.Insert(p);
            Response.Redirect("AddNewCity.aspx?ID=" + Request.QueryString["CityID"] + "#places");


        }
        else {

            Place p = PlaceLogic.SelectByID(Convert.ToInt32(Request.QueryString["PlaceID"]));
            p.PlaceName = txtName.Text;
            p.PlaceDetails = txtPlaceDetails.Text;
                
            p.AudioDetails = txtAudioDetails.Text;
            
            if (FileUpload1.HasFile)
            {
                string prefix = DateTime.Now.Ticks.ToString();
                FileUpload1.SaveAs(Server.MapPath("uploads\\" + prefix + FileUpload1.FileName));
                p.Photo1 = prefix + FileUpload1.FileName;
            }
            if (FileUpload2.HasFile)
            {
                string prefix2 = DateTime.Now.Ticks.ToString();
                FileUpload2.SaveAs(Server.MapPath("uploads\\" + prefix2 + FileUpload2.FileName));
                p.Photo2 = prefix2 + FileUpload2.FileName;
            }

            if (FileUpload3.HasFile)
            {
                string prefix3 = DateTime.Now.Ticks.ToString();
                FileUpload3.SaveAs(Server.MapPath("uploads\\" + prefix3 + FileUpload3.FileName));
                p.Photo3 = prefix3 + FileUpload3.FileName;
            }


            PlaceLogic.Update(p);
        }
    }
}