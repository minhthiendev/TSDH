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
    public partial class WebForm2 : System.Web.UI.Page
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
            string sql = "select * from TSbyHOCBA where cmnd='" + cm + "'";
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
                nv.Text = myDataTable.Rows[0][17].ToString();
                tohop.Text = myDataTable.Rows[0][18].ToString();
                diem.Text = myDataTable.Rows[0][19].ToString();
                string x = "/Upload/" + cm + "-" + myDataTable.Rows[0][20].ToString();
                string x1 = "/Upload/" + cm + "-" + myDataTable.Rows[0][21].ToString();
                string x2 = "/Upload/" + cm + "-" + myDataTable.Rows[0][22].ToString();
                x = x.Replace(" ", "");
                x1 = x1.Replace(" ", "");
                x2 = x2.Replace(" ", "");
                Image1.ImageUrl = x;
                Image2.ImageUrl = x1;
                Image3.ImageUrl = x2;


            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string nganh = "";
                DataConnection dataConect = new DataConnection();
                SqlConnection sqlconnect = dataConect.getConnect();
                sqlconnect.Open();

                string sql1 = "select tennganh from NganhTuyenSinh where manganh='" + nv.Text + "'";
                SqlDataAdapter sqlda = new SqlDataAdapter(sql1, sqlconnect);
                DataTable myDataTable = new DataTable();
                sqlda.Fill(myDataTable);

                if (myDataTable.Rows.Count > 0)
                {
                    nganh = myDataTable.Rows[0][0].ToString();
                }
                string sql = "insert into TrungTuyen values(@cmnd,@hoten,@ngaysinh,@gioitinh,@noisinh,@dantoc,@hokhau," +
                "@doituongUT,@email,@phone,@Nganh,@Diemtrungtuyen,@hinhthucdkxt)";
                SqlCommand scm = new SqlCommand(sql, sqlconnect);
                scm.Parameters.Add("@cmnd", SqlDbType.NChar).Value = cmnd.Text;
                scm.Parameters.Add("@hoten", SqlDbType.NVarChar).Value = hoten.Text;
                scm.Parameters.Add("@ngaysinh", SqlDbType.Date).Value = ngaysinh.Text;
                scm.Parameters.Add("@gioitinh", SqlDbType.NVarChar).Value = gioitinh.Text;
                scm.Parameters.Add("@noisinh", SqlDbType.NVarChar).Value = noisinh.Text;
                scm.Parameters.Add("@dantoc", SqlDbType.NVarChar).Value = dantoc.Text;
                scm.Parameters.Add("@hokhau", SqlDbType.NVarChar).Value = hokhau.Text;
                scm.Parameters.Add("@doituongUT", SqlDbType.NVarChar).Value = dtut.Text;
                scm.Parameters.Add("@email", SqlDbType.NVarChar).Value = email.Text;
                scm.Parameters.Add("@phone", SqlDbType.NVarChar).Value = phone.Text;
                scm.Parameters.Add("@Nganh", SqlDbType.NVarChar).Value = nganh;
                scm.Parameters.Add("@Diemtrungtuyen", SqlDbType.NVarChar).Value = diem.Text;
                scm.Parameters.Add("@hinhthucdkxt", SqlDbType.NVarChar).Value = "HOCBA";
                scm.ExecuteNonQuery();

                sqlconnect.Close();
                Response.Write("<script> alert('Xác nhận thành công')</script>");
            }
            catch
            {
                Response.Write("<script> alert('Thí sinh này đã có trong danh sách trúng tuyển')</script>");
            }
           
        }
    }
}