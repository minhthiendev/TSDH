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

            //cmnd.Value = Session["cmnd"];
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
            DropDownList1.Items.Clear();
            DropDownList3.Items.Clear();
            DropDownList1.Items.Add("Chọn Ngành");
            DropDownList3.Items.Add("Chọn Ngành");
                
            foreach (string x in rows)
            {
                DropDownList1.Items.Add(x);
                DropDownList3.Items.Add(x);
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
            string nv1 = DropDownList1.SelectedItem.Text;
            string nv2 = DropDownList3.SelectedItem.Text;
            string tohop1 = Request.Form.Get("tohop1");
            string tohop2 = Request.Form.Get("tohop2");
            string m1nv1 = Request.Form.Get("m1nv1");
            string m2nv1 = Request.Form.Get("m2nv1");
            string m3nv1 = Request.Form.Get("m3nv1");
            string m1nv2 = Request.Form.Get("m1nv2");
            string m2nv2 = Request.Form.Get("m2nv2");
            string m3nv2 = Request.Form.Get("m3nv2");

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
                    if (nv1 != nv2)
                    {
                        if (nv1 != "Chọn Ngành" && nv2 == "Chọn Ngành")
                        {
                            sql3 = "insert into XetTuyenByHTPTQG values(@cmnd,@nv1,@nv2,@tohopnv1,@tohopnv2,@mon1nv1,@mon2nv1,@mon3nv1,@mon1nv2,@mon2nv2,@mon3nv2)";


                            SqlCommand scm = new SqlCommand(sql3, sqlconnect3);
                            scm.Parameters.Add("@cmnd", SqlDbType.Char).Value = cmnd;
                            scm.Parameters.Add("@nv1", SqlDbType.Char).Value = nv1;
                            scm.Parameters.Add("@tohopnv1", SqlDbType.Char).Value = tohop1;
                            scm.Parameters.Add("@mon1nv1", SqlDbType.Char).Value = m1nv1;
                            scm.Parameters.Add("@mon2nv1", SqlDbType.Char).Value = m2nv1;
                            scm.Parameters.Add("@mon3nv1", SqlDbType.Char).Value = m3nv1;

                            scm.Parameters.Add("@nv2", SqlDbType.NVarChar).Value = DBNull.Value;
                            scm.Parameters.Add("@tohopnv2", SqlDbType.Char).Value = DBNull.Value;
                            scm.Parameters.Add("@mon1nv2", SqlDbType.Char).Value = DBNull.Value;
                            scm.Parameters.Add("@mon2nv2", SqlDbType.Char).Value = DBNull.Value;
                            scm.Parameters.Add("@mon3nv2", SqlDbType.Char).Value = DBNull.Value;
                            scm.ExecuteNonQuery();
                            cmd.ExecuteNonQuery();
                            sqlconnect.Close();
                            sqlconnect3.Close();
                            Response.Write("<script> alert('Đăng kí thành công')</script>");
                        }
                        else if (nv1 == "Chọn Ngành" && nv2 != "Chọn Ngành")
                        {
                            sql3 = "insert into XetTuyenByHTPTQG values(@cmnd,@nv1,@nv2,@tohopnv1,@tohopnv2,@mon1nv1,@mon2nv1,@mon3nv1,@mon1nv2,@mon2nv2,@mon3nv2)";
                            SqlCommand scm = new SqlCommand(sql3, sqlconnect3);
                            scm.Parameters.Add("@cmnd", SqlDbType.Char).Value = cmnd;
                            scm.Parameters.Add("@nv1", SqlDbType.NVarChar).Value = DBNull.Value;
                            scm.Parameters.Add("@tohopnv1", SqlDbType.Char).Value = DBNull.Value;
                            scm.Parameters.Add("@mon1nv1", SqlDbType.Char).Value = DBNull.Value;
                            scm.Parameters.Add("@mon2nv1", SqlDbType.Char).Value = DBNull.Value;
                            scm.Parameters.Add("@mon3nv1", SqlDbType.Char).Value = DBNull.Value;//loi

                            scm.Parameters.Add("@nv2", SqlDbType.NVarChar).Value = nv2;
                            scm.Parameters.Add("@tohopnv2", SqlDbType.Char).Value = tohop2;
                            scm.Parameters.Add("@mon1nv2", SqlDbType.Char).Value = m1nv2;
                            scm.Parameters.Add("@mon2nv2", SqlDbType.Char).Value = m2nv2;
                            scm.Parameters.Add("@mon3nv2", SqlDbType.Char).Value = m3nv2;
                            scm.ExecuteNonQuery();
                            cmd.ExecuteNonQuery();
                            sqlconnect.Close();
                            sqlconnect3.Close();
                            Response.Write("<script> alert('Đăng kí thành công')</script>");
                        }
                        else if (nv1 != "Chọn Ngành" && nv2 != "Chọn Ngành")
                        {
                            sql3 = "insert into XetTuyenByHTPTQG values(@cmnd,@nv1,@nv2,@tohopnv1,@tohopnv2,@mon1nv1,@mon2nv1,@mon3nv1,@mon1nv2,@mon2nv2,@mon3nv2)";
                            SqlCommand scm = new SqlCommand(sql3, sqlconnect3);
                            scm.Parameters.Add("@cmnd", SqlDbType.Char).Value = cmnd;
                            scm.Parameters.Add("@nv1", SqlDbType.NVarChar).Value = nv1;
                            scm.Parameters.Add("@tohopnv1", SqlDbType.Char).Value = tohop1;
                            scm.Parameters.Add("@mon1nv1", SqlDbType.Char).Value = m1nv1;
                            scm.Parameters.Add("@mon2nv1", SqlDbType.Char).Value = m2nv1;
                            scm.Parameters.Add("@mon3nv1", SqlDbType.Char).Value = m3nv1;

                            scm.Parameters.Add("@nv2", SqlDbType.NVarChar).Value = nv2;
                            scm.Parameters.Add("@tohopnv2", SqlDbType.Char).Value = tohop2;
                            scm.Parameters.Add("@mon1nv2", SqlDbType.Char).Value = m1nv2;
                            scm.Parameters.Add("@mon2nv2", SqlDbType.Char).Value = m2nv2;
                            scm.Parameters.Add("@mon3nv2", SqlDbType.Char).Value = m3nv2;

                            scm.ExecuteNonQuery();
                            cmd.ExecuteNonQuery();

                            sqlconnect.Close();
                            sqlconnect3.Close();
                            Response.Write("<script> alert('Đăng kí thành công')</script>");
                        }
                        else
                        {
                            Response.Write("<script> alert('2 nguyện vọng không được bỏ trống không được trùng !!!')</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script> alert('2 nguyện voong không được trùng !!!')</script>");
                    }
                }
                else
                {
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