using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TSDH.web.Application.admin
{
    public partial class WebForm5 : System.Web.UI.Page
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
            string sql = "select * from TSbyTHPTQG where cmnd='" + cm + "'";
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
                truong10.Text = myDataTable.Rows[0][10].ToString();
                truong11.Text = myDataTable.Rows[0][11].ToString();
                truong12.Text = myDataTable.Rows[0][12].ToString();
                namtn.Text = myDataTable.Rows[0][13].ToString();
                hanhkiem10.Text = myDataTable.Rows[0][14].ToString();
                hanhkiem11.Text = myDataTable.Rows[0][15].ToString();
                hanhkiem12.Text = myDataTable.Rows[0][16].ToString();
                nv1.Text = myDataTable.Rows[0][17].ToString();
                tohop1.Text = myDataTable.Rows[0][18].ToString();
                diem1.Text = myDataTable.Rows[0][19].ToString();
                nv2.Text = myDataTable.Rows[0][20].ToString();
                tohop2.Text = myDataTable.Rows[0][21].ToString();
                diem2.Text = myDataTable.Rows[0][22].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}