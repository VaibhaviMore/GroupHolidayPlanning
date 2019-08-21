using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccessLayer;

namespace BusinessLogicLayer
{
    public class FeedbackLogic
    {
        public static int Insert(Feedback FD)
        {
            string query = "insert INTO Feedback Values(@Title, @MemberID,@TourID,@Details,@FeedbackTime)";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@Title", FD.Title));
            par.Add(new SqlParameter("@MemberID", FD.MemberID));
            par.Add(new SqlParameter("@TourID", FD.TourID));
            par.Add(new SqlParameter("@Details", FD.Details));
            par.Add(new SqlParameter("@FeedbackTime", FD.FeedbackTime));

            return DBUtility.ModifyData(query, par);
        }

        public static int Update(Feedback FD)
        {
            string query = "UPDATE Feedback SET Title = @Title, MemberID = @MemberID,TourID = @TourID,Details = @Details,FeedbackTime = @FeedbackTime";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@FeedbackID", FD.FeedbackID));
            par.Add(new SqlParameter("@Title", FD.Title));
            par.Add(new SqlParameter("@MemberID", FD.MemberID));
            par.Add(new SqlParameter("@TourID", FD.TourID));
            par.Add(new SqlParameter("@Details", FD.Details));
            par.Add(new SqlParameter("@FeedbackTime", FD.FeedbackTime));


            return DBUtility.ModifyData(query, par);
        }

        public static int Delete(int ID)
        {
            string query = "DELETE Feedback WHERE FeedbackID = @FeedbackID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@FeedbackID", ID));

            return DBUtility.ModifyData(query, par);
        }

        public static Feedback SelectByID(int ID)
        {
            string query = "SELECT * FROM Feedback WHERE FeedbackID = @FeedbackID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@FeedbackID", ID));
            DataTable dt = DBUtility.SelectData(query, par);

            if (dt.Rows.Count == 1)
            {
                Feedback FD = new Feedback();
                FD.FeedbackID = Convert.ToInt32(dt.Rows[0]["FeedbackID"]);
                FD.Title = dt.Rows[0]["Title"].ToString();
                FD.MemberID = Convert.ToInt32(dt.Rows[0]["MemberID"]);
                FD.TourID = Convert.ToInt32(dt.Rows[0]["TourID"]);
                FD.Details = dt.Rows[0]["Details"].ToString();
                FD.FeedbackTime = Convert.ToDateTime(dt.Rows[0]["FeedbackTime"].ToString());

                return FD;
            }
            else
            {
                return new Feedback();
            }
        }

        public static DataTable SelectAll()
        {
            string query = "SELECT * FROM Feedback";
            List<SqlParameter> par = new List<SqlParameter>();
            return DBUtility.SelectData(query, par);
        }

        public static DataTable Search(string Name)
        {
            string query = "SELECT * FROM Feedback WHERE Title LIKE @Title + '%'";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@Name", Name));
            return DBUtility.SelectData(query, par);
        }


    }
}


