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
    public class GuideLogic
    {
        public static int Insert(Guide GD)
        {
            string query = "insert INTO Guide Values(@Name,@Gender, @EmailID,@MobileNO,@Address,@City,@Photo, @Username, @Password)";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@Name", GD.Name));
            par.Add(new SqlParameter("@Gender", GD.Gender));
            par.Add(new SqlParameter("@EmailID", GD.EmailID));
            par.Add(new SqlParameter("@MobileNO", GD.MobileNO));
            par.Add(new SqlParameter("@Address", GD.Address));
            par.Add(new SqlParameter("@City", GD.City));
            par.Add(new SqlParameter("@Photo", GD.Photo));
            par.Add(new SqlParameter("@Username", GD.Username));
            par.Add(new SqlParameter("@Password", GD.Password));

            return DBUtility.ModifyData(query, par);
        }

        public static int Update(Guide GD)
        {
            string query = "UPDATE Guide SET Name = @Name,Gender = @Gender,EmailID = @EmailID, MobileNO = @MobileNO,Address = @Address,City = @City,Photo = @Photo, Username = @Username, Password = @Password WHERE MemberID = @MemberID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@GuideID", GD.GuideID));
            par.Add(new SqlParameter("@Name", GD.Name));
            par.Add(new SqlParameter("@Gender", GD.Gender));
            par.Add(new SqlParameter("@EmailID", GD.EmailID));
            par.Add(new SqlParameter("@MobileNO", GD.MobileNO));
            par.Add(new SqlParameter("@Address", GD.Address));
            par.Add(new SqlParameter("@City", GD.City));
            par.Add(new SqlParameter("@Photo", GD.Photo));
            par.Add(new SqlParameter("@Username", GD.Username));
            par.Add(new SqlParameter("@Password", GD.Password));


            return DBUtility.ModifyData(query, par);
        }

        public static int Delete(int ID)
        {
            string query = "DELETE Guide WHERE GuideID = @GuideID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@GuideID", ID));

            return DBUtility.ModifyData(query, par);
        }

        public static Guide SelectByID(int ID)
        {
            string query = "SELECT * FROM Guide WHERE GuideID = @GuideID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@GuideID", ID));
            DataTable dt = DBUtility.SelectData(query, par);

            if (dt.Rows.Count == 1)
            {
                Guide GD = new Guide();
                GD.GuideID = Convert.ToInt32(dt.Rows[0]["GuideID"]);
                GD.Name = dt.Rows[0]["Name"].ToString();
                GD.Gender = dt.Rows[0]["Gender"].ToString();
                GD.EmailID = dt.Rows[0]["EmailID"].ToString();
                GD.MobileNO = dt.Rows[0]["MobileNO"].ToString();
                GD.Address = dt.Rows[0]["Address"].ToString();
                GD.City = dt.Rows[0]["City"].ToString();
                GD.Photo = dt.Rows[0]["Photo"].ToString();
                GD.Username = dt.Rows[0]["Username"].ToString();
                GD.Password = dt.Rows[0]["Password"].ToString();
                return GD;
            }
            else
            {
                return new Guide();
            }
        }

        public static DataTable SelectAll()
        {
            string query = "SELECT * FROM Guide";
            List<SqlParameter> par = new List<SqlParameter>();
            return DBUtility.SelectData(query, par);
        }

        public static DataTable Search(string Name)
        {
            string query = "SELECT * FROM Guide WHERE Name LIKE @Name + '%'";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@Name", Name));
            return DBUtility.SelectData(query, par);
        }


    }
}
