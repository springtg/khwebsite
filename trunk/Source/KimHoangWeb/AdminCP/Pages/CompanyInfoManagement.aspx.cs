using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KimHoangWeb.AdminCP.Pages
{
    public partial class CompanyInfoManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadIntroductionInfo(Convert.ToInt32(ddl_Language.SelectedValue));
            }
        }

        private void LoadIntroductionInfo(int arg_Language_Id)
        {
            KimHoangDAO.CIntroductionInfoDAO info=new KimHoangDAO.CIntroductionInfoDAO();
            IList<KimHoangOBJ.CIntroductionInfo> list = info.GetIntroductionInfo(arg_Language_Id);
            if (list != null)
            {
                hdf_Introduction_id.Value = Convert.ToString(list[0].Id);
                hdf_Language_Id.Value = Convert.ToString(list[0].Language_Id);
                FCKeditor1.Value = list[0].Introduction_Info;
            }
        }

        protected void btn_Save_Click(object sender, EventArgs e)
        {

        }
    }
}