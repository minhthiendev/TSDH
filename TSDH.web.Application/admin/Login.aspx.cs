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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["user"] = null;
            Session["allow"] = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = Request.Form.Get("username");
            string password = Request.Form.Get("password");

            DataConnection dataConect = new DataConnection();
            SqlConnection sqlconnect = dataConect.getConnect();
            sqlconnect.Open();
            System.Diagnostics.Debug.WriteLine("--------------1-----------------" + username + password);
            string sql = "SELECT *  FROM Admin where username='" + username + "' and password='"+ password+"'";
            SqlDataAdapter sqlda = new SqlDataAdapter(sql, sqlconnect);
            DataTable myDataTable = new DataTable();
            sqlda.Fill(myDataTable);
            if (myDataTable.Rows.Count > 0)
            {
               
                Session["user"] = username;
                Session["allow"] = true;
                Response.Redirect("dashboard.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }

            sqlconnect.Close();
        }
    }
}