using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TSDH.web.Application.data
{
    public class dataConnection
    {

        string sql;
        public SqlConnection getConnect()
        {
            sql = "Data Source=.;Initial Catalog=TSDH;User ID=sa;Password=***********";
            return new SqlConnection(sql);
        }

    }
}