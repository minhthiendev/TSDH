using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TSDH.web.Application.Con_lau_moi_tim_duoc_trang_admin_nay_nha
{
    public partial class THPTQG : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (Session["user"] == null )
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}