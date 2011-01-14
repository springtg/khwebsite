using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KimHoangWeb.AdminCP.Pages
{
    public partial class CustomerManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void gvCustomer_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string strValue = Page.Request.Form["ctl00$ContentPlaceHolder1$gvCustomer$ctl03$txt_I_Company_Name"].ToString();

        }
    }
}