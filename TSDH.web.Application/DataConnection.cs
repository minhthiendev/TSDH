using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TSDH.web.Application
{
    public class DataConnection
    {
        string sql;
        public SqlConnection getConnect()
        {
            sql ="Data Source =.; Initial Catalog = TSDH; Persist Security Info = True; User ID = sa; Password = 123";
            return new SqlConnection(sql);
        }
    }
}