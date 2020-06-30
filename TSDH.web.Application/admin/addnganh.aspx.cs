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
    public partial class WebForm8 : System.Web.UI.Page
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
                string manganh = Request.Form.Get("manganh");
                string tennganh = Request.Form.Get("tennganh");
                string chitieu = Request.Form.Get("chitieu");
                DataConnection dataConect = new DataConnection();
                SqlConnection sqlconnect = dataConect.getConnect();
                sqlconnect.Open();


                string sql = "insert into NganhTuyenSinh values(@manganh,@tennganh,@chitieu)";
                SqlCommand scm = new SqlCommand(sql, sqlconnect);
                scm.Parameters.Add("@manganh", SqlDbType.NChar).Value = manganh;

                scm.Parameters.Add("@tennganh", SqlDbType.NVarChar).Value = tennganh;
                scm.Parameters.Add("@chitieu", SqlDbType.NVarChar).Value = chitieu;

                scm.ExecuteNonQuery();

                sqlconnect.Close();
                Response.Write("<script> alert('Thêm thành công')</script>");
            }

            catch
            {
                Response.Write("<script> alert('Ngành này đã tồn tại')</script>");
            }
        }
    
    }
}