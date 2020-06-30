using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TSDH.web.Application
{
    public partial class Danh_Ki_Hoc_Ba : System.Web.UI.Page
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

            string nv = Request.Form.Get("nv");
            string tohop = Request.Form.Get("tohop");

            string m1101 = Request.Form.Get("m1101");
            string m1102 = Request.Form.Get("m1102");
            string m2101 = Request.Form.Get("m2101");
            string m2102 = Request.Form.Get("m2102");
            string m3101 = Request.Form.Get("m3101");
            string m3102 = Request.Form.Get("m3102");

            string m1111 = Request.Form.Get("m1111");
            string m1112 = Request.Form.Get("m1112");
            string m2111 = Request.Form.Get("m2111");
            string m2112 = Request.Form.Get("m2112");
            string m3111 = Request.Form.Get("m3111");
            string m3112 = Request.Form.Get("m3112");

            string m1121 = Request.Form.Get("m1121");
            string m2121 = Request.Form.Get("m2121");
            string m3121 = Request.Form.Get("m3121");

            string images10 = FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath("/Upload/" + cmnd + "-" + images10));
            string images11 = FileUpload2.FileName;
            FileUpload1.SaveAs(MapPath("/Upload/" + cmnd + "-" + images11));
            string images12 = FileUpload3.FileName;
            FileUpload1.SaveAs(MapPath("/Upload/" + cmnd + "-" + images12));

            float mon1 = (float.Parse(m1101) + float.Parse(m1102) + float.Parse(m1111) + float.Parse(m1112) + float.Parse(m1121))/5;
            float mon2 = (float.Parse(m2101) + float.Parse(m2102) + float.Parse(m2111) + float.Parse(m2112) + float.Parse(m2121))/5;
            float mon3 = (float.Parse(m3101) + float.Parse(m3102) + float.Parse(m3111) + float.Parse(m3112) + float.Parse(m3121))/5;

            float diem = mon1 + mon2 + mon3 + get_diemUT(doituongUT);




            //try
            //{
                if (check_exist_info(cmnd))
                {

                    if (check_exist_info(nv))
                    {
                        DataConnection dataConect = new DataConnection();
                        SqlConnection sqlconnect = dataConect.getConnect();
                        sqlconnect.Open();
                        string sql = "insert into TSbyHOCBA values(@cmnd,@hoten,@ngaysinh,@gioitinh,@noisinh,@dantoc,@hokhau," +
                            "@doituongUT,@email,@phone,@truonglop10,@truonglop11,@truonglop12,@namtotnghiep,@hanhkiem10,@hanhkiem11," +
                            "@hanhkiem12,@nv,@tohop,@diem,@images10,@images11,@images12)";
                        SqlCommand scm = new SqlCommand(sql, sqlconnect);
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
                        scm.Parameters.Add("@nv", SqlDbType.NVarChar).Value = nv;
                        scm.Parameters.Add("@tohop", SqlDbType.NVarChar).Value = tohop;
                        scm.Parameters.Add("@diem", SqlDbType.Float).Value = diem;
                        scm.Parameters.Add("@images10", SqlDbType.NVarChar).Value = images10;
                        scm.Parameters.Add("@images11", SqlDbType.NVarChar).Value = images11;
                        scm.Parameters.Add("@images12", SqlDbType.NVarChar).Value = images12;


                        scm.ExecuteNonQuery();

                        sqlconnect.Close();
                        Response.Write("<script> alert('Đăng kí thành công')</script>");
                    }
                    else
                    {
                        Response.Write("<script> alert('nguyện vọng không được bỏ trống!!!')</script>");
                    }
                }
                else
                {
                    Response.Write("<script> alert('your info is existed !!!')</script>");
                }
            //}
            //catch
            //{
            //    Response.Write("<script> alert('server error')</script>");
            //}
        }

    }
}