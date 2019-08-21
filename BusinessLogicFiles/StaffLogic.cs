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
    public class StaffLogic
    {
        public static int Insert(Staff CD)
        {
            string query = "INSERT INTO Staff Values(@Name,@Gender, @EmailID,@MobileNo,@Address,@City, @Photo, @Username, @Password,@StaffType)";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@Name", CD.Name));
            par.Add(new SqlParameter("@Gender", CD.Gender));
            par.Add(new SqlParameter("@EmailID", CD.EmailID));
            par.Add(new SqlParameter("@MobileNo", CD.MobileNO));
            par.Add(new SqlParameter("@Address", CD.Address));
            par.Add(new SqlParameter("@City", CD.City));
            par.Add(new SqlParameter("@Photo", CD.Photo));
            par.Add(new SqlParameter("@Username", CD.Username));
            par.Add(new SqlParameter("@Password", CD.Password));
            par.Add(new SqlParameter("@StaffType",CD.StaffType));
            return DBUtility.ModifyData(query, par);
        }

        public static Staff Validate(string Username, string Password)
        {
            string query = @"SELECT * FROM Staff WHERE Username = @Username AND Password = @Password";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@Username", Username));
            par.Add(new SqlParameter("@Password", Password));

            DataTable dt = DBUtility.SelectData(query, par);

            if (dt.Rows.Count == 1)
            {
                Staff CM = new Staff();
                CM.StaffID = Convert.ToInt32(dt.Rows[0]["StaffID"]);
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
                return new Staff();
            }
        }


        public static DataTable Search(string Name)
        {
            string query = "SELECT * FROM Staff WHERE Name LIKE @Name + '%'";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@Name", Name));
            return DBUtility.SelectData(query, par);
        }
    }
}
