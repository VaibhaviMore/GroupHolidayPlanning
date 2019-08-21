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
    public class ScheduleLogic
    {
        public static int Insert(Schedule SD)
        {
            string query = "insert INTO Schedule Values(@TourID,@PlaceID, @EntryTime,@ExitTime,@TimeToReach,@ScheduleOrder)";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@TourID", SD.TourID));
            par.Add(new SqlParameter("@PlaceID", SD.PlaceID));
            par.Add(new SqlParameter("@EntryTime", SD.EntryTime));
            par.Add(new SqlParameter("@ExitTime", SD.ExitTime));
            par.Add(new SqlParameter("@TimeToReach", SD.TimeToReach));
            par.Add(new SqlParameter("@ScheduleOrder", SD.ScheduleOrder));

            return DBUtility.ModifyData(query, par);
        }

        public static int Update(Schedule SD)
        {
            string query = "UPDATE Schedule SET TourID = @TourID,PlaceID = @PlaceID,EntryTime = @EntryTime, ExitTime = @ExitTime,TimeToReach = @TimeToReach,ScheduleOrder = @ScheduleOrder WHERE ScheduleID = @ScheduleID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@ScheduleID", SD.ScheduleID));
            par.Add(new SqlParameter("@TourID", SD.TourID));
            par.Add(new SqlParameter("@PlaceID", SD.PlaceID));
            par.Add(new SqlParameter("@EntryTime", SD.EntryTime));
            par.Add(new SqlParameter("@ExitTime", SD.ExitTime));
            par.Add(new SqlParameter("@TimeToReach", SD.TimeToReach));
            par.Add(new SqlParameter("@ScheduleOrder", SD.ScheduleOrder));


            return DBUtility.ModifyData(query, par);
        }

        public static int Delete(int ID)
        {
            string query = "DELETE Schedule WHERE ScheduleID = @ScheduleID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@ScheduleID", ID));

            return DBUtility.ModifyData(query, par);
        }

        public static Schedule SelectByID(int ID)
        {
            string query = "SELECT * FROM Schedule WHERE ScheduleID = @ScheduleID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@ScheduleID", ID));
            DataTable dt = DBUtility.SelectData(query, par);

            if (dt.Rows.Count == 1)
            {
                Schedule SD = new Schedule();
                SD.ScheduleID = Convert.ToInt32(dt.Rows[0]["ScheduleID"]);
                SD.TourID = Convert.ToInt32(dt.Rows[0]["TourID"]);
                SD.PlaceID = Convert.ToInt32(dt.Rows[0]["PlaceID"]);
                SD.EntryTime = (DateTime)dt.Rows[0]["EntryTime"];
                SD.ExitTime = (DateTime)dt.Rows[0]["ExitTime"];
                SD.TimeToReach = Convert.ToInt32(dt.Rows[0]["TimeToReach"]);
                SD.ScheduleOrder = dt.Rows[0]["ScheduleOrder"].ToString();

                return SD;
            }
            else
            {
                return new Schedule();
            }
        }

        public static DataTable SelectAll()
        {
            string query = "SELECT * FROM Schedule";
            List<SqlParameter> par = new List<SqlParameter>();
            return DBUtility.SelectData(query, par);
        }

        public static DataTable Search(string Name)
        {
            string query = "SELECT * FROM Schedule WHERE Name LIKE @Name + '%'";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@Name", Name));
            return DBUtility.SelectData(query, par);
        }

        public static DataTable SelectPlacesByTourID(int TourID)
        {
            string query = "SELECT * FROM Schedule Inner Join Place ON Schedule.PlaceID=Place.PlaceID WHERE TourID = @TourID ORDER BY Schedule.EntryTime ";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@TourID", TourID));
           

           return DBUtility.SelectData(query, par);
            

            
        }
    }
}
