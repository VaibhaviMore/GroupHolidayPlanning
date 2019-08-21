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
   public class MemberInvitationLogic
    {
        public static int Insert(MemberInvitation MD)
        {
            string query = "insert INTO MemberInvitation Values(@MemberID,@TourID, @InvitationTime,@Status)";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@MemberID", MD.MemberID));
            par.Add(new SqlParameter("@TourID", MD.TourID));
            par.Add(new SqlParameter("@InvitationTime", MD.InvitationTime));
            par.Add(new SqlParameter("@Status", "Pending"));

            return DBUtility.ModifyData(query, par);
        }


        public static int Update(MemberInvitation MD)
        {
            string query = "UPDATE MemberInvitation SET MemberID = @MemberID,TourID = @TourID,EmailID = @EmailID, MobileNO = @MobileNO,Address = @Address,City = @City,Photo = @Photo, Username = @Username, Password = @Password WHERE MemberID = @MemberID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@MemberInvitationID", MD.MemberInvitationID));
            par.Add(new SqlParameter("@MemberID", MD.MemberID));
            par.Add(new SqlParameter("@TourID", MD.TourID));
            par.Add(new SqlParameter("@InvitationTime", MD.InvitationTime));
            par.Add(new SqlParameter("@Status", MD.Status));


            return DBUtility.ModifyData(query, par);
        }

        public static int UpdateStatus(int MemberID, int TourID)
        {
            string query = "UPDATE MemberInvitation SET Status=@Status WHERE MemberID = @MemberID AND TourID = @TourID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@MemberID", MemberID));
            par.Add(new SqlParameter("@TourID", TourID));
            par.Add(new SqlParameter("@Status", "Accepted"));

            return DBUtility.ModifyData(query, par);
        }


        public static int Delete(int ID)
        {
            string query = "DELETE MemberInvitation WHERE MemberInvitationID = @MemberInvitationID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@MemberInvitationID", ID));

            return DBUtility.ModifyData(query, par);
        }
        public static int DeleteByTourAndMemberID(int TourID,int MemberID)
        {
            string query = "DELETE MemberInvitation WHERE MemberID = @MemberID AND TourID = @TourID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@MemberID", MemberID));
            par.Add(new SqlParameter("@TourID", TourID));

            return DBUtility.ModifyData(query, par);
        }


        public static MemberInvitation SelectByID(int ID)
        {//incorrect
            string query = "SELECT * FROM MemberInvitation WHERE MemberInvitationID = @MemberInvitationID";
            List<SqlParameter> par = new List<SqlParameter>();
            DataTable dt = DBUtility.SelectData(query, par);

            if (dt.Rows.Count == 1)
            {
                MemberInvitation MD = new MemberInvitation();
                MD.MemberInvitationID = Convert.ToInt32(dt.Rows[0]["MemberInvitationID"]);
                MD.MemberID = Convert.ToInt32(dt.Rows[0]["MemberID"]);
                MD.TourID = Convert.ToInt32(dt.Rows[0]["TourID"]);
                MD.InvitationTime = (DateTime)dt.Rows[0]["InvitationTime"];
                MD.Status = dt.Rows[0]["Status"].ToString();

                return MD;
            }
            else
            {
                return new MemberInvitation();
            }
        }

        public static DataTable SelectAll()
        {
            string query = "SELECT * FROM MemberInvitation";
            List<SqlParameter> par = new List<SqlParameter>();
            return DBUtility.SelectData(query, par);
        }

        public static DataTable SelectMemberByTourID(int TourID)
        {
            string query = "SELECT * FROM MemberInvitation Inner Join Member ON Member.MemberID=MemberInvitation.MemberID WHERE MemberInvitation.TourID=@TourID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@TourID", TourID));
            return DBUtility.SelectData(query, par);
        }
        public static DataTable SelectTourMembersByTourID(int TourID)
        {
            string query = "SELECT * FROM MemberInvitation Inner Join Member ON Member.MemberID=MemberInvitation.MemberID WHERE MemberInvitation.TourID=@TourID AND MemberInvitation.Status='Accepted'";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@TourID", TourID));
            return DBUtility.SelectData(query, par);
        }

        public static DataTable SelectMembersToInvite(int TourID)
        {
            string query = "SELECT * FROM MemberInvitation Inner Join Member ON Member.MemberID=MemberInvitation.MemberID WHERE MemberInvitation.TourID=@TourID AND MemberInvitation.Status='Pending'";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@TourID", TourID));
            return DBUtility.SelectData(query, par);
        }


        public static DataTable Search(string Name)
        {
            string query = "SELECT * FROM Member WHERE Name LIKE @Name + '%'";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@Name", Name));
            return DBUtility.SelectData(query, par);
        }


        public static DataTable SelectOtherMembers(int TourID)
        {
            string query = "SELECT MemberID,Name,MobileNO,EmailID FROM Member WHERE MemberID NOT IN (SELECT MemberID FROM MemberInvitation WHERE MemberInvitation.TourID=@TourID AND MemberInvitation.Status != 'Pending')";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@TourID",TourID));

            return DBUtility.SelectData(query, par);
        }

        public static DataTable SelectAllToursByMemberID(int MemberID)
        {
            string query = "SELECT * FROM MemberInvitation Inner Join Tour ON MemberInvitation.TourID=Tour.TourID WHERE MemberID = @MemberID AND MemberInvitation.Status != 'Accepted'";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@MemberID", MemberID));

            return DBUtility.SelectData(query, par);
        }

    }
}
