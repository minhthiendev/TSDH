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
    public partial class WebForm10 : System.Web.UI.Page
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
                string oldpassword = Request.Form.Get("oldpassword");
                string newpassword = Request.Form.Get("newpassword");
                string repassword = Request.Form.Get("repassword");
                DataConnection dataConect = new DataConnection();
                SqlConnection sqlconnect = dataConect.getConnect();
                sqlconnect.Open();

                string sql2 = "select password from Admin where username='"+ Session["user"].ToString()+"'and password='" + oldpassword + "'";
                SqlDataAdapter sqlda = new SqlDataAdapter(sql2, sqlconnect);
                DataTable myDataTable = new DataTable();
                sqlda.Fill(myDataTable);
             
                if (myDataTable.Rows.Count <= 0)
                {
                    Response.Write("<script> alert('your old password incorrect')</script>");
                }
                else if (newpassword!=repassword)
                {
                    Response.Write("<script> alert('two password field is not match')</script>");
                }
                else
                {
                    string sql = "update  Admin set password=" + newpassword + "where username='" + Session["user"].ToString() + "'";
                    SqlCommand scm = new SqlCommand(sql, sqlconnect);

                    scm.ExecuteNonQuery();

                    sqlconnect.Close();
                    Response.Write("<script> alert('Thay đổi thành công')</script>");
                    Response.Redirect("Login.aspx");
            }
        }
            catch
            {
                Response.Write("<script> alert('Có lỗi xảy ra')</script>");
            }
}
    
    }
}