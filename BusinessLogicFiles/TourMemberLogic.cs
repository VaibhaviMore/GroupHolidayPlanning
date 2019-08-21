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
    public class TourMemberLogic
    {
        public static int Insert(TourMember MD)
        {
            string query = "insert INTO TourMember Values(@TourID, @MemberID, @JoiningTime)";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@TourID", MD.TourID));
            par.Add(new SqlParameter("@MemberID", MD.MemberID));
            par.Add(new SqlParameter("@JoiningTime", MD.JoiningTime));
           
            return DBUtility.ModifyData(query, par);
        }

        public static DataTable SelectByTourID(int TourID){
            string query = "Select * FROM Member Inner join TourMember ON TourMember.MemberID=Member.MemberID WHERE TourMember.TourID=@TourID;";

            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@TourID", TourID));
            
            return DBUtility.SelectData(query, par);
        }

        public static DataTable getAllToursByMemberID(int mid)
        {
            string query = @"SELECT T.* , TM.TourMemberID
                                    FROM TourMember as TM
                                    inner join Tour as T on T.TourID = TM.TourID
                                        WHERE TM.MemberID= @MemberID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@MemberID", mid));
            return DBUtility.SelectData(query, par);
        }

        public static DataTable getCurrentTourOfMember(int mid)
        {
            string query = @"SELECT T.* , TM.TourMemberID
                                    FROM TourMember as TM
                                    inner join Tour as T on T.TourID = TM.TourID
                                        WHERE TM.MemberID= @MemberID 
                                               AND T.StartTime <= @currentTIme 
                                               AND T.EndTime >= @currentTime
                                        ";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@MemberID", mid));
            par.Add(new SqlParameter("@currentTime", DateTime.Now));
            DataTable dt = DBUtility.SelectData(query, par);
            if (dt.Rows.Count == 0)
            {
                return null;
            }
            else {
                return dt;
            }
    
        }






        public static int getTourMemberID(int mid)
        {

            int tid = Convert.ToInt32( getCurrentTourOfMember(mid).Rows[0]["TourID"]);

            string query = @"SELECT TM.TourMemberID
                                    FROM TourMember as TM
                                   where TM.TourID = @TourID and TM.MemberID = @MemberID
                                        ";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@MemberID", mid));
            par.Add(new SqlParameter("@TourID", tid));
            DataTable dt = DBUtility.SelectData(query, par);
            if (dt.Rows.Count == 0)
            {
                return 0;
            }
            else
            {
                return Convert.ToInt32(dt.Rows[0][0]);
            }

        }



        public static int getTourMemberID(int mid, int tid)
        {
            string query = @"SELECT TM.TourMemberID
                                    FROM TourMember as TM
                                   where TM.TourID = @TourID and TM.MemberID = @MemberID
                                        ";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@MemberID", mid));
            par.Add(new SqlParameter("@TourID", tid));
            DataTable dt = DBUtility.SelectData(query, par);
            if (dt.Rows.Count == 0)
            {
                return 0;
            }
            else
            {
                return Convert.ToInt32(dt.Rows[0][0]);
            }

        }

        public static int getTotalMembersVisitedTour(int TourID)
        {
            String query = "Select count(*) from TourMember WHERE TourMember.TourID=@TourID";

            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@TourID", TourID));
            DataTable dt = DBUtility.SelectData(query, par);
            int members=Convert.ToInt32(dt.Rows[0][0].ToString());
            return members;
        }
    }
}
