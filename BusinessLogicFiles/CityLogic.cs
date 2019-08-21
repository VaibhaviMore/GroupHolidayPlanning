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
    public class CityLogic
    {
        public static int Insert(City CD)
        {
            string query = "INSERT INTO City Values(@CityName,@CityDetails, @SummerTemperature,@WinterTemperature,@RainyTemperature,@Climate,@Currency, @Country, @AudioDetails, @Photo)";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@CityName", CD.CityName));
            par.Add(new SqlParameter("@CityDetails", CD.CityDetails));
            par.Add(new SqlParameter("@SummerTemperature", CD.SummerTemperature));
            par.Add(new SqlParameter("@WinterTemperature", CD.WinterTemperature));
            par.Add(new SqlParameter("@RainyTemperature", CD.RainyTemperature));
            par.Add(new SqlParameter("@Climate", CD.Climate));
            par.Add(new SqlParameter("@Currency", CD.Currency));
            par.Add(new SqlParameter("@Country", CD.Country));
            par.Add(new SqlParameter("@AudioDetails", CD.AudioDetails));
            par.Add(new SqlParameter("@Photo", CD.Photo));

            return DBUtility.ModifyData(query, par);
        }

        public static int Update(City CD)
        {
            string query = "UPDATE City SET CityName = @CityName,CityDetails = @CityDetails, SummerTemperature = @SummerTemperature,WinterTemperature = @WinterTemperature, RainyTemperature = @RainyTemperature, Climate = @Climate,Currency = @Currency,Country = @Country, AudioDetails = @AudioDetails, Photo = @Photo WHERE CityID = @CityID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@CityID", CD.CityID));
            par.Add(new SqlParameter("@CityName", CD.CityName));
            par.Add(new SqlParameter("@CityDetails", CD.CityDetails));
            par.Add(new SqlParameter("@SummerTemperature", CD.SummerTemperature));
            par.Add(new SqlParameter("@WinterTemperature", CD.WinterTemperature));
            par.Add(new SqlParameter("@RainyTemperature", CD.RainyTemperature));
            par.Add(new SqlParameter("@Climate", CD.Climate));
            par.Add(new SqlParameter("@Currency", CD.Currency));
            par.Add(new SqlParameter("@Country", CD.Country));
            par.Add(new SqlParameter("@AudioDetails", CD.AudioDetails));
            par.Add(new SqlParameter("@Photo", CD.Photo));


            return DBUtility.ModifyData(query, par);
        }

        public static int Delete(int ID)
        {
            string query = "DELETE City WHERE CityID = @CityID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@CityID", ID));

            return DBUtility.ModifyData(query, par);
        }

        public static City SelectByID(int ID)
        {
            string query = "SELECT * FROM City WHERE CityID = @CityID";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@CityID", ID));
            DataTable dt = DBUtility.SelectData(query, par);

            if (dt.Rows.Count == 1)
            {
                City CD = new City();
                CD.CityID = Convert.ToInt32(dt.Rows[0]["CityID"]);
                CD.CityName = dt.Rows[0]["CityName"].ToString();
                CD.CityDetails = dt.Rows[0]["CityDetails"].ToString();
                CD.SummerTemperature = Convert.ToInt32(dt.Rows[0]["SummerTemperature"]);
                CD.WinterTemperature = Convert.ToInt32(dt.Rows[0]["WinterTemperature"]);
                CD.RainyTemperature = Convert.ToInt32(dt.Rows[0]["RainyTemperature"]);
                CD.Climate = dt.Rows[0]["Climate"].ToString();
                CD.Currency = dt.Rows[0]["Currency"].ToString();
                CD.Country = dt.Rows[0]["Country"].ToString();
                CD.AudioDetails = dt.Rows[0]["AudioDetails"].ToString();
                CD.Photo = dt.Rows[0]["Photo"].ToString();
                return CD;
            }
            else
            {
                return new City();
            }
        }

        public static DataTable SelectAll()
        {
            string query = "SELECT * FROM City";
            List<SqlParameter> par = new List<SqlParameter>();
            return DBUtility.SelectData(query, par);
        }

        public static DataTable Search(string CityName)
        {
            string query = "SELECT * FROM City WHERE CityName LIKE '%'+@CityName+'%'";
            List<SqlParameter> par = new List<SqlParameter>();
            par.Add(new SqlParameter("@CityName", CityName));
            return DBUtility.SelectData(query, par);
        }

    }
}


