using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TSDH.web.Application.admin
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            DataConnection dataConect = new DataConnection();
            SqlConnection sqlconnect = dataConect.getConnect();
            sqlconnect.Open();

            string sql2 = "select * from Admin where username='" + Session["user"].ToString() + "'";
            SqlDataAdapter sqlda = new SqlDataAdapter(sql2, sqlconnect);
            DataTable myDataTable = new DataTable();
            sqlda.Fill(myDataTable);

            if (myDataTable.Rows.Count > 0)
            {

                username.Text = myDataTable.Rows[0][0].ToString();
                email.Text = myDataTable.Rows[0][1].ToString();
                password.Text = myDataTable.Rows[0][2].ToString();
            }
        }
    }
}