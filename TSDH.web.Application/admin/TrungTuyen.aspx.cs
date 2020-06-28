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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
           
        }

       

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            System.Diagnostics.Debug.WriteLine("---------------------");
            if (e.CommandName.Equals("Select"))
            {
              
                int index = Convert.ToInt32(e.CommandArgument);
                
                GridViewRow row = GridView1.Rows[index];
                Session["cmnd"] = row.Cells[0].Text;
                System.Diagnostics.Debug.WriteLine("---------------------" + index + row.Cells[0].Text);
                Response.Redirect("studentDetail.aspx");


            }

        }

    
     
    }
}