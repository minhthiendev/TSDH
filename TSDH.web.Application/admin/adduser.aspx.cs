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
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string username = Request.Form.Get("username");
                string email = Request.Form.Get("email");
                string password = Request.Form.Get("password");
                DataConnection dataConect = new DataConnection();
                SqlConnection sqlconnect = dataConect.getConnect();
                sqlconnect.Open();


                string sql = "insert into Admin values(@username,@email,@password)";
                SqlCommand scm = new SqlCommand(sql, sqlconnect);
                scm.Parameters.Add("@username", SqlDbType.NChar).Value = username;

                scm.Parameters.Add("@email", SqlDbType.NVarChar).Value = email;
                scm.Parameters.Add("@password",SqlDbType.NVarChar).Value = password;
                
                scm.ExecuteNonQuery();

                sqlconnect.Close();
                Response.Write("<script> alert('Thêm thành công')</script>");
            }
       
            catch
            {
                Response.Write("<script> alert('Tài khoản này đã tồn tại')</script>");
            }
}
    }
}