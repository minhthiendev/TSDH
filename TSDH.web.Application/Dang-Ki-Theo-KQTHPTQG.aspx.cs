using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Collections;

namespace TSDH.web.Application
{
    public partial class page1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        bool check_exist_info(string cmnd)
        {

            DataConnection dataConect1 = new DataConnection();
            SqlConnection sqlconnect1 = dataConect1.getConnect();
            sqlconnect1.Open();
            string sql1 = "select cmnd from TSbyTHPTQG where cmnd='" + cmnd + "'";
            SqlDataAdapter sqlda = new SqlDataAdapter(sql1, sqlconnect1);
            DataTable myDataTable = new DataTable();
            sqlda.Fill(myDataTable);
            sqlconnect1.Close();

            DataConnection dataConect2 = new DataConnection();
            SqlConnection sqlconnect2 = dataConect1.getConnect();
            sqlconnect1.Open();
            string sql2 = "select cmnd from TSbyHOCBA where cmnd='" + cmnd + "'";
            SqlDataAdapter sqlda2 = new SqlDataAdapter(sql2, sqlconnect2);
            DataTable myDataTable2 = new DataTable();
            sqlda2.Fill(myDataTable2);
            sqlconnect1.Close();

            if (myDataTable.Rows.Count > 0 || myDataTable2.Rows.Count > 0)
            {
                return false;
            }
            return true;
        }
        bool check_nganh(string manganh)
        {

            DataConnection dataConect = new DataConnection();
            SqlConnection sqlconnect = dataConect.getConnect();
            sqlconnect.Open();
            string sql = "select * from NganhTuyenSinh where manganh='" + manganh + "'";
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

        protected void Button2_Click(object sender, EventArgs e)
        {

            string cmnd = Request.Form.Get("cmnd");
            string hoten = Request.Form.Get("hoten");
            string gioitinh = Request.Form.Get("gioitinh");
            string ngaysinh = Request.Form.Get("ngaysinh");
            string noisinh = Request.Form.Get("noisinh");
            string dantoc = Request.Form.Get("dantoc");
            string hokhau = Request.Form.Get("hokhau");
            string doituongUT = Request.Form.Get("doituongUT");
            string email = Request.Form.Get("email");
            string phone = Request.Form.Get("phone");
            string namtotnghiep = Request.Form.Get("namtotnghiep");
            string hk10 = Request.Form.Get("hk10");
            string hk11 = Request.Form.Get("hk11");
            string hk12 = Request.Form.Get("hk12");
            string truong10 = Request.Form.Get("truong10");
            string truong11 = Request.Form.Get("truong11");
            string truong12 = Request.Form.Get("truong12");
            string nv1 = Request.Form.Get("nv1");
            string nv2 = Request.Form.Get("nv2");
            string tohop1 = Request.Form.Get("tohop1");
            string tohop2 = Request.Form.Get("tohop2");
            string m1nv1 = Request.Form.Get("m1nv1");
            string m2nv1 = Request.Form.Get("m2nv1");
            string m3nv1 = Request.Form.Get("m3nv1");
            string m1nv2 = Request.Form.Get("m1nv2");
            string m2nv2 = Request.Form.Get("m2nv2");
            string m3nv2 = Request.Form.Get("m3nv2");
            float diemnv1 = float.Parse(m1nv1) + float.Parse(m2nv1) + float.Parse(m3nv1) + get_diemUT(doituongUT);
            float diemnv2 = float.Parse(m1nv2) + float.Parse(m2nv2) + float.Parse(m3nv2) + get_diemUT(doituongUT);

            try
            {

                if (check_exist_info(cmnd))
                {

                    DataConnection dataConect = new DataConnection();
                    SqlConnection sqlconnect = dataConect.getConnect();
                    sqlconnect.Open();
                    string sql3 = "insert into TsbyTHPTQG values(@cmnd,@hoten,@ngaysinh,@gioitinh,@noisinh,@dantoc,@hokhau," +
                        "@doituongUT,@email,@phone,@truonglop10,@truonglop11,@truonglop12,@namtotnghiep,@hanhkiem10,@hanhkiem11," +
                        "@hanhkiem12,@nv1,@tohopnv1,@diemnv1,@nv2,@tohopnv2,@diemnv2)";
                    if (nv1 != nv2)
                    {
                        if (check_nganh(nv1) && check_nganh(nv2))
                        {

                            SqlCommand scm = new SqlCommand(sql3, sqlconnect);
                            scm.Parameters.Add("@cmnd", SqlDbType.NChar).Value = cmnd;
                            scm.Parameters.Add("@hoten", SqlDbType.NVarChar).Value = hoten;
                            scm.Parameters.Add("@ngaysinh", SqlDbType.Date).Value = ngaysinh;
                            scm.Parameters.Add("@gioitinh", SqlDbType.NVarChar).Value = gioitinh;
                            scm.Parameters.Add("@noisinh", SqlDbType.NVarChar).Value = noisinh;
                            scm.Parameters.Add("@dantoc", SqlDbType.NVarChar).Value = dantoc;
                            scm.Parameters.Add("@hokhau", SqlDbType.NVarChar).Value = hokhau;
                            scm.Parameters.Add("@doituongUT", SqlDbType.NVarChar).Value = doituongUT;
                            scm.Parameters.Add("@email", SqlDbType.NVarChar).Value = email;
                            scm.Parameters.Add("@phone", SqlDbType.NVarChar).Value = phone;
                            scm.Parameters.Add("@truonglop10", SqlDbType.NVarChar).Value = truong10;
                            scm.Parameters.Add("@truonglop11", SqlDbType.NVarChar).Value = truong11;
                            scm.Parameters.Add("@truonglop12", SqlDbType.NVarChar).Value = truong12;
                            scm.Parameters.Add("@namtotnghiep", SqlDbType.NVarChar).Value = namtotnghiep;
                            scm.Parameters.Add("@hanhkiem10", SqlDbType.NVarChar).Value = hk10;
                            scm.Parameters.Add("@hanhkiem11", SqlDbType.NVarChar).Value = hk11;
                            scm.Parameters.Add("@hanhkiem12", SqlDbType.NVarChar).Value = hk12;
                            scm.Parameters.Add("@nv1", SqlDbType.NVarChar).Value = nv1;
                            scm.Parameters.Add("@tohopnv1", SqlDbType.NVarChar).Value = tohop1;
                            scm.Parameters.Add("@diemnv1", SqlDbType.Float).Value = diemnv1;
                            scm.Parameters.Add("@nv2", SqlDbType.NVarChar).Value = nv2;
                            scm.Parameters.Add("@tohopnv2", SqlDbType.NVarChar).Value = tohop2;
                            scm.Parameters.Add("@diemnv2", SqlDbType.Float).Value = diemnv2;

                            scm.ExecuteNonQuery();
                            sqlconnect.Close();
                            Response.Write("<script> alert('Đăng kí thành công')</script>");
                        }
                        else if (!check_nganh(nv1) && check_nganh(nv2))
                        {
                            Response.Write("<script> alert('nguyện vọng 1 Không chính xác !!!')</script>");
                        }
                        else if (check_nganh(nv1) && !check_nganh(nv2))
                        {
                            Response.Write("<script> alert('nguyện vọng 2 Không chính xác !!!')</script>");
                        }
                        else
                        {
                            Response.Write("<script> alert('Cả 2 nguyện vọng Không chính xác !!!')</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script> alert('2 nguyện vọng không được trùng !!!')</script>");
                    }
                }
                else
                {
                    Response.Write("<script> alert('your info is existed !!!')</script>");
                }
            }
            catch
            {
                Response.Write("<script> alert('server error')</script>");
            }
        }

    }
}