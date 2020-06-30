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

        bool check_exist_info(string cmnd)
        {

            DataConnection dataConect = new DataConnection();
            SqlConnection sqlconnect = dataConect.getConnect();
            sqlconnect.Open();
            string sql = "select cmnd from ThongTinBoGDDT where cmnd='" + cmnd + "'";
            SqlDataAdapter sqlda = new SqlDataAdapter(sql, sqlconnect);
            DataTable myDataTable = new DataTable();
            sqlda.Fill(myDataTable);
            sqlconnect.Close();



            if (myDataTable.Rows.Count > 0)
            {
                return true;
            }
            return false;
        }

        float get_diemUT(string makv)
        {
            DataConnection dataConect = new DataConnection();
            SqlConnection sqlconnect = dataConect.getConnect();
            sqlconnect.Open();
            string sql = "select diemUT from KVUT where makv='" + makv + "'";
            SqlDataAdapter sqlda = new SqlDataAdapter(sql, sqlconnect);
            DataTable myDataTable = new DataTable();
            sqlda.Fill(myDataTable);
            sqlconnect.Close();


            if (myDataTable.Rows.Count > 0)
            {
                return float.Parse(myDataTable.Rows[0][0].ToString());
            }
            return 0;
        }
        float get_diem(string tohop, string cmnd)
        {
            DataConnection dataConect = new DataConnection();
            SqlConnection sqlconnect = dataConect.getConnect();
            sqlconnect.Open();
            string sql = "select * from ThongTinBoGDDT where cmnd='" + cmnd + "'";
            SqlDataAdapter sqlda = new SqlDataAdapter(sql, sqlconnect);
            DataTable myDataTable = new DataTable();
            sqlda.Fill(myDataTable);
            sqlconnect.Close();


            if (myDataTable.Rows.Count > 0)
            {
                float toan = float.Parse(myDataTable.Rows[0][10].ToString());
                float ly = float.Parse(myDataTable.Rows[0][11].ToString());
                float hoa = float.Parse(myDataTable.Rows[0][12].ToString());
                float sinh = float.Parse(myDataTable.Rows[0][13].ToString());
                float van = float.Parse(myDataTable.Rows[0][14].ToString());
                float su = float.Parse(myDataTable.Rows[0][15].ToString());
                float dia = float.Parse(myDataTable.Rows[0][16].ToString());
                float gd = float.Parse(myDataTable.Rows[0][17].ToString());
                float anhvan = float.Parse(myDataTable.Rows[0][18].ToString());
                float diemut = get_diemUT(dtut.Text);
                if (tohop.Contains("A00"))
                {
                    return toan + ly + hoa + diemut;
                }
                else if (tohop.Contains("B00"))
                {
                    return toan + sinh + hoa + diemut;
                }
                else if (tohop.Contains("C00"))
                {
                    return van + su + dia + diemut;
                }
                else if (tohop.Contains("D00"))
                {
                    return toan + van + anhvan + diemut;
                }
                else if (tohop.Contains("D01"))
                {
                    return toan + ly + anhvan + diemut;
                }
                return 0;
            }  
            return 0;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                if (!check_exist_info(cmnd.Text))
                {
                    Response.Write("<script> alert('Thí sinh này trốn thi trung học phổ thông quốc gia')</script>");
                }

                string nganh = "";
                float diemsan = 0;
                DataConnection dataConect = new DataConnection();
                SqlConnection sqlconnect = dataConect.getConnect();
                sqlconnect.Open();

                string sql1 = "select tennganh,diemsan from NganhTuyenSinh where manganh='" + nv1.Text + "'";
                SqlDataAdapter sqlda = new SqlDataAdapter(sql1, sqlconnect);
                DataTable myDataTable = new DataTable();
                sqlda.Fill(myDataTable);

                if (myDataTable.Rows.Count > 0)
                {
                    nganh = myDataTable.Rows[0][0].ToString();
                    diemsan = float.Parse(myDataTable.Rows[0][1].ToString());
                }
                cmnd.Text = cmnd.Text.Replace(" ", "");
                if (float.Parse(diem1.Text) > diemsan && float.Parse(diem1.Text) <= get_diem(tohop1.Text,cmnd.Text))
                {


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
                    scm.Parameters.Add("@Diemtrungtuyen", SqlDbType.NVarChar).Value = diem1.Text;
                    scm.Parameters.Add("@hinhthucdkxt", SqlDbType.NVarChar).Value = "HOCBA";
                    scm.ExecuteNonQuery();

                    sqlconnect.Close();
                    Response.Write("<script> alert('Xác nhận thành công')</script>");
                }
                else
                {
                    Response.Write("<script> alert('Chúc bé may mắn lần sau')</script>");
                }

            }
            catch
            {
                Response.Write("<script> alert('Thí sinh này đã có trong danh sách trúng tuyển')</script>");
            }
        }
    }
}