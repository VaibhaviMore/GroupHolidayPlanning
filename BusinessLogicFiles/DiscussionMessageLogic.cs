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
   public class DiscussionMessageLogic
    {
        public static int Insert(DiscussionMessage DM)
        {
            string query = "insert INTO DiscussionMessage Values(@MemberID,@SentTime, @TourID,@MessageText,@MessageImage,@MessageTitle)";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@MemberID", DM.MemberID));
            par.Add(new SqlParameter("@SentTime", DM.SentTime));
            par.Add(new SqlParameter("@TourID", DM.TourID));
            par.Add(new SqlParameter("@MessageText", DM.MessageText));
            par.Add(new SqlParameter("@MessageImage", DM.MessageImage));
            par.Add(new SqlParameter("@MessageTitle", DM.MessageTitle));

            return DBUtility.ModifyData(query, par);
        }

        public static int Update(DiscussionMessage DM)
        {
            string query = "UPDATE Guide SET MemberID = @MemberID,SentTime = @SentTime,TourID = @TourID, MessageText = @MessageText,MessageImage = @MessageImage,MessageTitle = @MessageTitle WHERE DiscussionMessageID = @DiscussionMessageID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@DiscussionMessageID", DM.DiscussionMessageID));
            par.Add(new SqlParameter("@MemberID", DM.MemberID));
            par.Add(new SqlParameter("@SentTime", DM.SentTime));
            par.Add(new SqlParameter("@TourID", DM.TourID));
            par.Add(new SqlParameter("@MessageText", DM.MessageText));
            par.Add(new SqlParameter("@MessageImage", DM.MessageImage));
            par.Add(new SqlParameter("@MessageTitle", DM.MessageTitle));


            return DBUtility.ModifyData(query, par);
        }

        public static int Delete(int ID)
        {
            string query = "DELETE DiscussionMessage WHERE DiscussionMessageID = @DiscussionMessageID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@DiscussionMessageID", ID));

            return DBUtility.ModifyData(query, par);
        }

        public static DiscussionMessage SelectByID(int ID)
        {
            string query = "SELECT * FROM DiscussionMessage WHERE DiscussionMessageID = @DiscussionMessageID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@DiscussionMessageID", ID));
            DataTable dt = DBUtility.SelectData(query, par);

            if (dt.Rows.Count == 1)
            {
                DiscussionMessage DM = new DiscussionMessage();
                DM.DiscussionMessageID = Convert.ToInt32(dt.Rows[0]["DiscussionMessageID"]);
                DM.MemberID = Convert.ToInt32(dt.Rows[0]["MemberID"]);
                DM.SentTime = (DateTime)dt.Rows[0]["SentTime"];
                DM.TourID = Convert.ToInt32(dt.Rows[0]["TourID"]);
                DM.MessageText = dt.Rows[0]["MessageText"].ToString();
                DM.MessageImage = dt.Rows[0]["MessageImage"].ToString();
                DM.MessageTitle = dt.Rows[0]["MessageTitle"].ToString();

                return DM;
            }
            else
            {
                return new DiscussionMessage();
            }
        }

        public static DataTable SelectAll()
        {
            string query = "SELECT * FROM DiscussionMessage";
            List<SqlParameter> par = new List<SqlParameter>();
            return DBUtility.SelectData(query, par);
        }

        public static DataTable Search(string Name)
        {
            string query = "SELECT * FROM DiscussionMessage WHERE Name LIKE @Name + '%'";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@Name", Name));
            return DBUtility.SelectData(query, par);
        }

        public static DataTable SelectMessageByTourID(int TourID){
            //string query = "Select dm.MessageTitle,dm.MessageText,tm.MemberID,dm.MemberID FROM DiscussionMeessage as dm 
            //                  Inner join TourMember as tm ON TourMember.MemberID=DiscussionMessage.MemberID  
            //                       WHERE TourMember.TourID=@TourID";

           String query= "SELECT * FROM DiscussionMeessage WHERE DiscussionMessage.TourID=33";

            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@TourID", TourID));
            
            return DBUtility.SelectData(query, par);
        }
    }
}
