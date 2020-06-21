using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TSDH.web.Application
{
    public partial class TraCuu_TuVan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Search(object sender, EventArgs e)
        {
            string cmnd = Request.Form.Get("cmnd");

            DataConnection dataConect = new DataConnection();
            SqlConnection sqlconnect = dataConect.getConnect();
            sqlconnect.Open();

            string sql = "SELECT *  FROM TrungTuyen where cmnd='" + cmnd + "'";
            SqlDataAdapter sqlda = new SqlDataAdapter(sql, sqlconnect);
            DataTable myDataTable = new DataTable();
            sqlda.Fill(myDataTable);
            if (myDataTable.Rows.Count > 0)
            {
                Label1.Text = "congratulations to bé " + myDataTable.Rows[0][1];
                GridView1.DataSource = myDataTable;
                GridView1.DataBind();
            }
            else
            {
                Label1.Text = "Loading --------------------";
            }
           
            sqlconnect.Close();
           
        }
    }
}