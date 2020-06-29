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
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            string cm = Session["cmnd"].ToString();
            DataConnection dataConect = new DataConnection();
            SqlConnection sqlconnect = dataConect.getConnect();
            sqlconnect.Open();
            string sql = "select * from TrungTuyen where cmnd='" + cm + "'";
            SqlDataAdapter sqlda = new SqlDataAdapter(sql, sqlconnect);
            DataTable myDataTable = new DataTable();
            sqlda.Fill(myDataTable);
            sqlconnect.Close();
            if (myDataTable.Rows.Count > 0)
            {
                cmnd.Text = myDataTable.Rows[0][0].ToString();
                hoten.Text = myDataTable.Rows[0][1].ToString();
                ngaysinh.Text = myDataTable.Rows[0][2].ToString();
                gioitinh.Text = myDataTable.Rows[0][3].ToString();
                noisinh.Text = myDataTable.Rows[0][4].ToString();
                dantoc.Text = myDataTable.Rows[0][5].ToString();
                hokhau.Text = myDataTable.Rows[0][6].ToString();
                dtut.Text = myDataTable.Rows[0][7].ToString();
                email.Text = myDataTable.Rows[0][8].ToString();
                phone.Text = myDataTable.Rows[0][9].ToString();
                
                nganh.Text = myDataTable.Rows[0][10].ToString();
                diem.Text = myDataTable.Rows[0][11].ToString();
            }
        }
    }
}