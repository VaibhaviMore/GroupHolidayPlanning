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
    public class MemberLogic
    {
        public static int Insert(Member m)
        {
            string query = "INSERT INTO Member Values(@Name,@Gender, @EmailID, @MobileNO, @Address, @City ,@Photo, @Username, @Password)";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@Name", m.Name));
            par.Add(new SqlParameter("@Gender", m.Gender));
            par.Add(new SqlParameter("@EmailID", m.EmailID));
            par.Add(new SqlParameter("@MobileNO", m.MobileNO));
            par.Add(new SqlParameter("@Address", m.Address));
            par.Add(new SqlParameter("@City", m.City));
            par.Add(new SqlParameter("@Photo", m.Photo));
            par.Add(new SqlParameter("@Username", m.Username));
            par.Add(new SqlParameter("@Password", m.Password));
           
            return DBUtility.ModifyData(query, par);
        }
        public static Member Validate(string Username, string Password)
        {
            string query = @"SELECT * FROM Member WHERE Username = @Username AND Password = @Password";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@Username", Username));
            par.Add(new SqlParameter("@Password", Password));

            DataTable dt = DBUtility.SelectData(query, par);

            if (dt.Rows.Count == 1)
            {
                Member CM = new Member();
                CM.MemberID = Convert.ToInt32(dt.Rows[0]["MemberID"]);
                CM.Name = dt.Rows[0]["Name"].ToString();
                CM.EmailID = dt.Rows[0]["EmailID"].ToString();
                CM.Gender = dt.Rows[0]["Gender"].ToString();
                CM.MobileNO = dt.Rows[0]["MobileNO"].ToString();
                CM.Username = dt.Rows[0]["Username"].ToString();
                CM.Password = dt.Rows[0]["Password"].ToString();
                CM.Photo = dt.Rows[0]["Photo"].ToString();
                CM.Address = dt.Rows[0]["Address"].ToString();
                CM.City = dt.Rows[0]["City"].ToString();

                return CM;
            }
            else
            {
                return new Member();
            }
        }

        public static Member ValidateEmailID(string EmailID)
        {
            string query = @"SELECT * FROM Member WHERE EmailID = @EmailID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@EmailID", EmailID));
            
            DataTable dt = DBUtility.SelectData(query, par);

            if (dt.Rows.Count == 1)
            {
                Member CM = new Member();
                CM.MemberID = Convert.ToInt32(dt.Rows[0]["MemberID"]);
                CM.Username = dt.Rows[0]["Username"].ToString();
                CM.Password = dt.Rows[0]["Password"].ToString();
                
                return CM;
            }
            else
            {
                return new Member();
            }
        }

        public static DataTable SelectAll()
        {
            string query = "SELECT * FROM Member";
            List<SqlParameter> par = new List<SqlParameter>();
            return DBUtility.SelectData(query, par);
        }

        public static DataTable Search(string Name) {
            string query = "SELECT * FROM Member WHERE Name LIKE @Name + '%'";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@Name", Name));
            return DBUtility.SelectData(query, par);
        }

        public static Member SelectByMemberId(int memberId)
        {
            string query = "SELECT * FROM Member WHERE MemberID = @MemberID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@MemberID", memberId));
            DataTable dt = DBUtility.SelectData(query, par);

            if (dt.Rows.Count == 1)
            {
                Member m = new Member();
               
                m.Username = dt.Rows[0]["Username"].ToString();
                m.Name = dt.Rows[0]["Name"].ToString();
                m.Gender = dt.Rows[0]["Gender"].ToString();
                m.EmailID = dt.Rows[0]["EmailID"].ToString();
                m.Address = dt.Rows[0]["Address"].ToString();
                m.City = dt.Rows[0]["City"].ToString();
                m.Photo = dt.Rows[0]["Photo"].ToString();
                return m;
            }
            else
            {
                return new Member();
            }
        }


        public static DataTable SelectOtherTourMembers(int TourID)
        {
            string query = "SELECT MemberID,Name,MobileNO,EmailID FROM Member WHERE MemberID NOT IN (SELECT MemberID FROM TourMember WHERE TourMember.TourID=@TourID)";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@TourID", TourID));

            return DBUtility.SelectData(query, par);
        }
        public static Member SelectByEmailID(String EmailID)
        {
            string query = "SELECT * FROM Member WHERE EmailID = @EmailID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@EmailID", EmailID));
            DataTable dt = DBUtility.SelectData(query, par);

            if (dt.Rows.Count == 1)
            {
                Member m = new Member();

                m.Username = dt.Rows[0]["Username"].ToString();
                m.Name = dt.Rows[0]["Name"].ToString();
                m.Gender = dt.Rows[0]["Gender"].ToString();
                m.Password = dt.Rows[0]["Password"].ToString();
                m.Address = dt.Rows[0]["Address"].ToString();
                m.City = dt.Rows[0]["City"].ToString();
                m.Photo = dt.Rows[0]["Photo"].ToString();
                return m;
            }
            else
            {
                return new Member();
            }
        }


    }
}
