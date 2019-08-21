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
    public class TourLogic
    {
        public static int Insert(Tour obj) {
            string query = "INSERT INTO Tour(Title, StartTime, EndTime, StaffID, Status,Photo,Description) Values(@Title,@StartTime,@EndTime, @StaffID, @Status,@Photo,@Description); select @@IDENTITY;";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@Title",obj.Title));
            par.Add(new SqlParameter("@StartTime",obj.StartTime));
            par.Add(new SqlParameter("@EndTime", obj.EndTime));
            par.Add(new SqlParameter("@StaffID",obj.StaffID));
            par.Add(new SqlParameter("@Status", obj.Status));
            par.Add(new SqlParameter("@Photo", obj.Photo));
            par.Add(new SqlParameter("@Description", obj.Description));
            DataTable dt = DBUtility.SelectData(query, par);
            return Convert.ToInt32(dt.Rows[0][0]);
        }

        public static int Update(Tour obj)
        {
            string query = "UPDATE Tour SET Title=@Title, StartTime=@StartTime, EndTime=@EndTime, StaffID=@StaffID,Photo=@Photo,Description=@Description WHERE TourID = @TourID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@Title", obj.Title));
            par.Add(new SqlParameter("@StartTime", obj.StartTime));
            par.Add(new SqlParameter("@EndTime", obj.EndTime));
            par.Add(new SqlParameter("@StaffID", obj.StaffID));
            par.Add(new SqlParameter("@Status", obj.Status));
            par.Add(new SqlParameter("@Photo", obj.Photo));
            par.Add(new SqlParameter("@Description", obj.Description));
            par.Add(new SqlParameter("@TourID", obj.TourID));


           return DBUtility.ModifyData(query, par);
        }
  

        public static DataTable SelectAll()
        {
            string query = "SELECT * FROM Tour";
            List<SqlParameter> par = new List<SqlParameter>();
            return DBUtility.SelectData(query, par);
        }

        public static Tour SelectByID(int ID)
        {
            string query = "SELECT * FROM Tour WHERE TourID = @TourID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@TourID", ID));
            DataTable dt = DBUtility.SelectData(query, par);

            if (dt.Rows.Count == 1)
            {
                Tour TD = new Tour();
                TD.TourID = Convert.ToInt32(dt.Rows[0]["TourID"]);
                TD.Title = dt.Rows[0]["Title"].ToString();
                TD.StaffID = Convert.ToInt32(dt.Rows[0]["StaffID"]);
                TD.Status = dt.Rows[0]["Status"].ToString();
                TD.Photo = dt.Rows[0]["Photo"].ToString();
                TD.Description=dt.Rows[0]["Description"].ToString();
                TD.StartTime = (DateTime)dt.Rows[0]["StartTime"];
                TD.EndTime = (DateTime)dt.Rows[0]["EndTime"];
                return TD;
            }
            else
            {
                return new Tour();
            }
        }


        public static DataTable SelectAllTours()
        {
            string query = "SELECT Title,StartTime,EndTime,Photo,Description FROM Tour";

            List<SqlParameter> par = new List<SqlParameter>();
           
            return DBUtility.SelectData(query, par);
        }


        public static DataTable Search(string Title)
        {
            string query = "SELECT * FROM Tour WHERE Title LIKE '%'+@Title+'%'";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@Title", Title));
            return DBUtility.SelectData(query, par);
        }

        public static int Delete(int TourID)
        {
            string query = "DELETE Tour WHERE TourID = @TourID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@TourID", TourID));

            return DBUtility.ModifyData(query, par);
        }
       

    }
}
