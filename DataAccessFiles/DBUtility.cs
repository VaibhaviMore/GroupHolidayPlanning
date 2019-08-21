using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
   public class DBUtility
    {
       public static int ModifyData(string query, List<SqlParameter> par)
       {
           SqlConnection connection = new SqlConnection();
          //connection.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename='|DataDirectory|\MainDatabase.mdf';Integrated Security=True";
           connection.ConnectionString = @"workstation id=MyDatabase.mssql.somee.com;packet size=4096;user id=Priyanka_SQLLogin_1;pwd=a595ue738i;data source=MyDatabase.mssql.somee.com;persist security info=False;initial catalog=MyDatabase";
           SqlCommand command = new SqlCommand();
           command.CommandText = query;
           command.Parameters.AddRange(par.ToArray());
           command.Connection = connection;

           connection.Open();
           int x = command.ExecuteNonQuery();
           connection.Close();

           return x;
       }


       public static DataTable SelectData(string query, List<SqlParameter> parameters)
       {
           SqlConnection connection = new SqlConnection();
          // connection.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename='|DataDirectory|\MainDatabase.mdf';Integrated Security=True";
           connection.ConnectionString = @"workstation id=MyDatabase.mssql.somee.com;packet size=4096;user id=Priyanka_SQLLogin_1;pwd=a595ue738i;data source=MyDatabase.mssql.somee.com;persist security info=False;initial catalog=MyDatabase";
           SqlCommand command = new SqlCommand();
           command.CommandText = query;
           command.Parameters.AddRange(parameters.ToArray());
           command.Connection = connection;

           DataTable dt = new DataTable();
           SqlDataAdapter adapter = new SqlDataAdapter(command);
           connection.Open();
           adapter.Fill(dt);
           connection.Close();

           return dt;
       }

    }
}
