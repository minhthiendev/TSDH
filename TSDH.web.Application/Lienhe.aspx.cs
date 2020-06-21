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
    public partial class Lienhe1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            string hoten = Request.Form.Get("hoten");
            string email = Request.Form.Get("email");
            string message = Request.Form.Get("message");

            System.Diagnostics.Debug.WriteLine("-----------------------" + hoten + email + message);
            DataConnection dataConect = new DataConnection();
            SqlConnection sqlconnect = dataConect.getConnect();
            sqlconnect.Open();
            string sql = "insert into Contact values(@hoten,@email,@Message)";
            SqlCommand cmd = new SqlCommand(sql, sqlconnect);
            cmd.Parameters.AddWithValue("@hoten", hoten);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@Message", message);
            cmd.ExecuteNonQuery();
            Response.Write("<script> alert('em yên tâm trường Sẽ \"nhanh chóng\" phản hồi cho em.')</script>");
            sqlconnect.Close();
        }
    }
}