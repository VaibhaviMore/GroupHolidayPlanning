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
    public class LostRequestLogic
    {
        public static int Insert(LostRequest LD)
        {
            string query = "insert INTO LostRequest Values(@MemberID,@Location, @TourID,@RequestTime,@Status)";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@MemberID", LD.MemberID));
            par.Add(new SqlParameter("@Location", LD.Location));
            par.Add(new SqlParameter("@TourID", LD.TourID));
            par.Add(new SqlParameter("@RequestTime", LD.RequestTime));
            par.Add(new SqlParameter("@Status", LD.Status));

            return DBUtility.ModifyData(query, par);
        }

        public static int Update(LostRequest LD)
        {
            string query = "UPDATE Member SET MemberID = @MemberID,Location = @Location,TourID = @TourID, RequestTime = @RequestTime,Status = @Status WHERE LostRequestID = @LostRequestID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@LostRequestID", LD.LostRequestID));
            par.Add(new SqlParameter("@MemberID", LD.MemberID));
            par.Add(new SqlParameter("@Location", LD.Location));
            par.Add(new SqlParameter("@TourID", LD.TourID));
            par.Add(new SqlParameter("@RequestTime", LD.RequestTime));
            par.Add(new SqlParameter("@Status", LD.Status));


            return DBUtility.ModifyData(query, par);
        }


        public static int Delete(int ID)
        {
            string query = "DELETE LostRequest WHERE LostRequestID = @LostRequestID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@LostRequestID", ID));

            return DBUtility.ModifyData(query, par);
        }

        public static LostRequest SelectByID(int ID)
        {
            string query = "SELECT * FROM LostRequest WHERE LostRequestID = @LostRequestID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@LostRequestID", ID));
            DataTable dt = DBUtility.SelectData(query, par);

            if (dt.Rows.Count == 1)
            {
                LostRequest LD = new LostRequest();
                LD.LostRequestID = Convert.ToInt32(dt.Rows[0]["LostRequestID"]);
                LD.MemberID = Convert.ToInt32(dt.Rows[0]["MemberID"]);
                LD.Location = dt.Rows[0]["Location"].ToString();
                LD.TourID = Convert.ToInt32(dt.Rows[0]["TourID"]);
                LD.RequestTime = (DateTime)dt.Rows[0]["RequestTime"];
                LD.Status = dt.Rows[0]["Status"].ToString();

                return LD;
            }
            else
            {
                return new LostRequest();
            }
        }

        public static DataTable SelectAll()
        {
            string query = "SELECT * FROM LostRequest";
            List<SqlParameter> par = new List<SqlParameter>();
            return DBUtility.SelectData(query, par);
        }

        public static DataTable Search(string Name)
        {
            string query = "SELECT * FROM LostRequest WHERE Name LIKE @Name + '%'";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@Name", Name));
            return DBUtility.SelectData(query, par);
        }



    }
}
