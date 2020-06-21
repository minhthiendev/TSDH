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
            ArrayList rows = new ArrayList();
            DataConnection dataConect = new DataConnection();
            SqlConnection sqlconnect = dataConect.getConnect();
            sqlconnect.Open();

            string sql = "SELECT DISTINCT manganh FROM NganhTuyenSinh";
            SqlDataAdapter sqlda = new SqlDataAdapter(sql, sqlconnect);
            DataTable myDataTable = new DataTable();
            sqlda.Fill(myDataTable);

            foreach (DataRow dataRow in myDataTable.Rows)
                rows.Add(string.Join(";", dataRow.ItemArray.Select(item => item.ToString())));
           
            foreach (string x in rows)
            {
                DropDownList1.Items.Add(x);

            }
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

            string nv = DropDownList1.SelectedItem.Text;
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
            FileUpload1.SaveAs(MapPath("/Upload/" +cmnd+"-"+ images10));
            string images11 = FileUpload2.FileName;
            FileUpload1.SaveAs(MapPath("/Upload/" + cmnd + "-" + images11));
            string images12 = FileUpload3.FileName;
            FileUpload1.SaveAs(MapPath("/Upload/" + cmnd + "-" + images12));

            float m110 = (float.Parse(m1101) + float.Parse(m1102)) / 2;
            float m210 = (float.Parse(m2101) + float.Parse(m2102)) / 2;
            float m310 = (float.Parse(m3101) + float.Parse(m3102)) / 2; 
            
            float m111 = (float.Parse(m1111) + float.Parse(m1112)) / 2;
            float m211 = (float.Parse(m2111) + float.Parse(m2112)) / 2;
            float m311 = (float.Parse(m3111) + float.Parse(m3112)) / 2;

            float m112 = float.Parse(m1121) ;
            float m212 = float.Parse(m2121) ;
            float m312 = float.Parse(m3121) ;
            System.Diagnostics.Debug.WriteLine("--------------------------------------------"+nv);
            try
            {
                DataConnection dataConect1 = new DataConnection();
                SqlConnection sqlconnect1 = dataConect1.getConnect();
                sqlconnect1.Open();
                string sql1 = "select cmnd from XetTuyenByHTPTQG where cmnd='" + cmnd + "'";
                SqlDataAdapter sqlda = new SqlDataAdapter(sql1, sqlconnect1);
                DataTable myDataTable = new DataTable();
                sqlda.Fill(myDataTable);
                sqlconnect1.Close();

                DataConnection dataConect2 = new DataConnection();
                SqlConnection sqlconnect2 = dataConect1.getConnect();
                sqlconnect1.Open();
                string sql2 = "select cmnd from XetTuyenByHocBa where cmnd='" + cmnd + "'";
                SqlDataAdapter sqlda2 = new SqlDataAdapter(sql2, sqlconnect2);
                DataTable myDataTable2 = new DataTable();
                sqlda2.Fill(myDataTable2);
                sqlconnect1.Close();

                if (myDataTable.Rows.Count == 0 && myDataTable2.Rows.Count == 0)
                {
                    DataConnection dataConect = new DataConnection();
                    SqlConnection sqlconnect = dataConect.getConnect();
                    sqlconnect.Open();
                    string sql = "insert into ThongTinThiSinh values(@cmnd,@hoten,@ngaysinh,@gioitinh,@noisinh,@dantoc,@hokhau,@doituongUT,@email,@phone,@lop10,@lop11,@lop12,@namtotnghiep,@hanhkiem10,@hanhkiem11,@hanhkiem12)";
                    SqlCommand cmd = new SqlCommand(sql, sqlconnect);
                    cmd.Parameters.Add("@cmnd", SqlDbType.Char).Value = cmnd;
                    cmd.Parameters.Add("@hoten", SqlDbType.NVarChar).Value = hoten;
                    cmd.Parameters.Add("@ngaysinh", SqlDbType.DateTime).Value = ngaysinh;
                    cmd.Parameters.Add("@gioitinh", SqlDbType.NChar).Value = gioitinh;
                    cmd.Parameters.Add("@noisinh", SqlDbType.Char).Value = noisinh;
                    cmd.Parameters.Add("@dantoc", SqlDbType.Char).Value = dantoc;
                    cmd.Parameters.Add("@hokhau", SqlDbType.NVarChar).Value = hokhau;
                    cmd.Parameters.Add("@doituongUT", SqlDbType.Char).Value = doituongUT;
                    cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = email;
                    cmd.Parameters.Add("@phone", SqlDbType.Char).Value = phone;
                    cmd.Parameters.Add("@lop10", SqlDbType.Char).Value = truong10;
                    cmd.Parameters.Add("@lop11", SqlDbType.Char).Value = truong11;
                    cmd.Parameters.Add("@lop12", SqlDbType.Char).Value = truong12;
                    cmd.Parameters.Add("@hanhkiem10", SqlDbType.Char).Value = hk10;
                    cmd.Parameters.Add("@hanhkiem11", SqlDbType.Char).Value = hk11;
                    cmd.Parameters.Add("@hanhkiem12", SqlDbType.Char).Value = hk12;
                    cmd.Parameters.Add("@namtotnghiep", SqlDbType.Int).Value = namtotnghiep;


                    DataConnection dataConect3 = new DataConnection();
                    SqlConnection sqlconnect3 = dataConect3.getConnect();
                    sqlconnect3.Open();
                    string sql3 = "";

                    if (nv != "Chọn Ngành")
                    {
                        sql3 = "insert into XetTuyenByHocBa values(@cmnd,@nv,@tohop,@m110,@m210,@m310,@m111,@m211,@m311,@m112,@m212,@m312,@images10,@images11,@images12)";
                        SqlCommand scm = new SqlCommand(sql3, sqlconnect3);
                        scm.Parameters.Add("@cmnd", SqlDbType.Char).Value = cmnd;
                        scm.Parameters.Add("@nv", SqlDbType.Char).Value = nv;
                        scm.Parameters.Add("@tohop", SqlDbType.Char).Value = tohop;
                        scm.Parameters.Add("@m110", SqlDbType.Char).Value = m110;
                        scm.Parameters.Add("@m210", SqlDbType.Char).Value = m210;
                        scm.Parameters.Add("@m310", SqlDbType.Char).Value = m310;
                        scm.Parameters.Add("@m111", SqlDbType.Char).Value = m111;
                        scm.Parameters.Add("@m211", SqlDbType.Char).Value = m211;
                        scm.Parameters.Add("@m311", SqlDbType.Char).Value = m311;
                        scm.Parameters.Add("@m112", SqlDbType.Char).Value = m112;
                        scm.Parameters.Add("@m212", SqlDbType.Char).Value = m212;
                        scm.Parameters.Add("@m312", SqlDbType.Char).Value = m312;
                        scm.Parameters.Add("@images10", SqlDbType.Char).Value = images10;
                        scm.Parameters.Add("@images11", SqlDbType.Char).Value = images11;
                        scm.Parameters.Add("@images12", SqlDbType.Char).Value = images12;

                       
                        scm.ExecuteNonQuery();
                        cmd.ExecuteNonQuery();
                        sqlconnect.Close();
                        sqlconnect3.Close();
                        Response.Write("<script> alert('Đăng kí thành công')</script>");
                    }else
                    {
                        Response.Write("<script> alert('nguyện vọng không được bỏ trống!!!')</script>");
                    }
                }
                else
                {
                    System.Diagnostics.Trace.WriteLine("-----------------------------" + nv);
                    Response.Write("<script> alert('your info is existed !!!')</script>");
                }
        }
            catch
            {
                Response.Write("<script> alert('please fill all field')</script>");
            }
}

    }
}