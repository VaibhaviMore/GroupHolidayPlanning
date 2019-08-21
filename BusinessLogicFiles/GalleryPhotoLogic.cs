using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DataAccessLayer;

namespace BusinessLogicLayer
{
    public class GalleryPhotoLogic
    {
        public static int Insert(GalleryPhoto GD)
        {
            string query = "insert INTO GalleryPhoto Values(@Title,@Photo, @TourMemberID,@Type,@UploadTime,@PlaceID)";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@Title", GD.Title));
            par.Add(new SqlParameter("@Photo", GD.Photo));
            par.Add(new SqlParameter("@TourMemberID", GD.TourMemberID));
            //par.Add(new SqlParameter("@TourID", GD.TourID));
            par.Add(new SqlParameter("@Type", GD.Type));
            par.Add(new SqlParameter("@UploadTime", GD.UploadTime));
            par.Add(new SqlParameter("@PlaceID", GD.PlaceID));


            return DBUtility.ModifyData(query, par);
        }

        public static int Update(GalleryPhoto GD)
        {
            string query = "UPDATE GalleryPhoto SET Title = @Title,Photo = @Photo,TourMemberID = @TourMemberID ,Type = @Type,UploadTime = @UploadTime,PlaceID = @PlaceID WHERE GalleryPhotoID = @GalleryPhotoID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@GalleryPhotoID", GD.GalleryPhotoID));
            par.Add(new SqlParameter("@Title", GD.Title));
            par.Add(new SqlParameter("@Photo", GD.Photo));
            par.Add(new SqlParameter("@TourMemberID", GD.TourMemberID));
            //par.Add(new SqlParameter("@TourID", GD.TourID));
            par.Add(new SqlParameter("@Type", GD.Type));
            par.Add(new SqlParameter("@UploadTime", GD.UploadTime));
            par.Add(new SqlParameter("@PlaceID", GD.PlaceID));


            return DBUtility.ModifyData(query, par);
        }

        public static int Delete(int ID)
        {
            string query = "DELETE GalleryPhoto WHERE GalleryPhotoID = @GalleryPhotoID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@GalleryPhotoID", ID));

            return DBUtility.ModifyData(query, par);
        }

        public static GalleryPhoto SelectByID(int ID)
        {
            string query = "SELECT * FROM GalleryPhoto WHERE GalleryPhotoID = @GalleryPhotoID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@GalleryPhotoID", ID));
            DataTable dt = DBUtility.SelectData(query, par);

            if (dt.Rows.Count == 1)
            {
                GalleryPhoto GD = new GalleryPhoto();
                GD.GalleryPhotoID = Convert.ToInt32(dt.Rows[0]["GalleryPhotoID"]);
                GD.Title = dt.Rows[0]["Title"].ToString();
                GD.Photo = dt.Rows[0]["Photo"].ToString();
                GD.TourMemberID = Convert.ToInt32(dt.Rows[0]["TourMemberID"]);
                //GD.TourID = Convert.ToInt32(dt.Rows[0]["TourID"]);
                GD.Type = dt.Rows[0]["Type"].ToString();
                GD.UploadTime = (DateTime)dt.Rows[0]["UploadTime"];
                GD.PlaceID = Convert.ToInt32(dt.Rows[0]["PlaceID"]);
                return GD;
            }
            else
            {
                return new GalleryPhoto();
            }
        }

        public static DataTable SelectAll()
        {
            string query = "SELECT * FROM GalleryPhoto";
            List<SqlParameter> par = new List<SqlParameter>();
            return DBUtility.SelectData(query, par);
        }

        public static DataTable Search(string Name)
        {
            string query = "SELECT * FROM GalleryPhoto WHERE Name LIKE @Name + '%'";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@Name", Name));
            return DBUtility.SelectData(query, par);
        }

        public static DataTable getAllPhotosByPlaceID(int pid)
        {
            string query = @"SELECT G.* , P.PlaceID
                                    FROM Place as P
                                    inner join GalleryPhoto as G  on G.PlaceID = P.PlaceID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@PlaceID", pid));
            return DBUtility.SelectData(query, par);
        }

    }
}
