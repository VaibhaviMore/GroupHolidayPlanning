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
    public class PlaceLogic
    {
        public static int Insert(Place PD)
        {
            string query = "insert INTO Place Values(@PlaceName,@PlaceDetails, @CityID,@Photo1,@Photo2,@Photo3,@AudioDetails)";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@PlaceName", PD.PlaceName));
            par.Add(new SqlParameter("@PlaceDetails", PD.PlaceDetails));
            par.Add(new SqlParameter("@CityID", PD.CityID));
            par.Add(new SqlParameter("@Photo1", PD.Photo1));
            par.Add(new SqlParameter("@Photo2", PD.Photo2));
            par.Add(new SqlParameter("@Photo3", PD.Photo3));
            par.Add(new SqlParameter("@AudioDetails", PD.AudioDetails));

            return DBUtility.ModifyData(query, par);
        }

        public static int Update(Place PD)
        {
            string query = "UPDATE Place SET PlaceName = @PlaceName,PlaceDetails = @PlaceDetails,CityID = @CityID, Photo1 = @Photo1,Photo2 = @Photo2,Photo3 = @Photo3,AudioDetails = @AudioDetails WHERE PlaceID = @PlaceID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@PlaceID", PD.PlaceID));
            par.Add(new SqlParameter("@PlaceName", PD.PlaceName));
            par.Add(new SqlParameter("@PlaceDetails", PD.PlaceDetails));
            par.Add(new SqlParameter("@CityID", PD.CityID));
            par.Add(new SqlParameter("@Photo1", PD.Photo1));
            par.Add(new SqlParameter("@Photo2", PD.Photo2));
            par.Add(new SqlParameter("@Photo3", PD.Photo3));
            par.Add(new SqlParameter("@AudioDetails", PD.AudioDetails));



            return DBUtility.ModifyData(query, par);
        }

        public static int Delete(int ID)
        {
            string query = "DELETE Place WHERE PlaceID = @PlaceID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@PlaceID", ID));

            return DBUtility.ModifyData(query, par);
        }


        public static Place SelectByID(int ID)
        {
            string query = "SELECT * FROM Place WHERE PlaceID = @PlaceID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@PlaceID", ID));
            DataTable dt = DBUtility.SelectData(query, par);

            if (dt.Rows.Count == 1)
            {
                Place PD = new Place();
                PD.PlaceID = Convert.ToInt32(dt.Rows[0]["PlaceID"]);
                PD.PlaceName = dt.Rows[0]["PlaceName"].ToString();
                PD.PlaceDetails = dt.Rows[0]["PlaceDetails"].ToString();
                PD.CityID = Convert.ToInt32(dt.Rows[0]["CityID"]);
                PD.Photo1 = dt.Rows[0]["Photo1"].ToString();
                PD.Photo2 = dt.Rows[0]["Photo2"].ToString();
                PD.Photo3 = dt.Rows[0]["Photo3"].ToString();
                PD.AudioDetails = dt.Rows[0]["AudioDetails"].ToString();

                return PD;
            }
            else
            {
                return new Place();
            }
        }

        public static DataTable SelectAll()
        {
            string query = "SELECT * FROM Place as P INNER JOIN City as C ON P.CityID = C.CityID";
            List<SqlParameter> par = new List<SqlParameter>();
            return DBUtility.SelectData(query, par);
        }

        public static DataTable Search(string PlaceName)
        {
            string query = @"SELECT P.*, C.CityName FROM 
                            Place as P
                            INNER JOIN City as C ON P.CityID = C.CityID 
                            WHERE P.PlaceName LIKE @PlaceName + '%'";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@PlaceName", PlaceName));
            return DBUtility.SelectData(query, par);
        }

        public static DataTable SearchPlacesByCityID(int cityid)
        {
            string query = "SELECT * FROM Place WHERE CityID = @CityID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@CityID",cityid));
            return DBUtility.SelectData(query, par);
        }

        public static DataTable SearchPlacesByTourID(int tourid)
        {
            string query = "";
                                
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@TourID", tourid));
            return DBUtility.SelectData(query, par);
        }


      
    }
}
