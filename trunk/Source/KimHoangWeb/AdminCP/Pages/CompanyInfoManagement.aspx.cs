using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KimHoangWeb.AdminCP.Pages
{
    public partial class CompanyInfoManagement : KimHoangBasePage// System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetLanguageToDropDownList(ref ddl_Language);
                //LoadIntroductionInfo(Convert.ToInt32(ddl_Language.SelectedValue));
            }
        }


        private void LoadIntroductionInfo(int arg_Language_Id)
        {
            KimHoangDAO.CCompanyInfoDAO info=new KimHoangDAO.CCompanyInfoDAO();
            IList<KimHoangOBJ.CCompanyInfo> list = info.GetCompanyInfo(arg_Language_Id);
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

        protected void ddl_Language_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList l_DropDownList = (DropDownList)sender;
            if (l_DropDownList.SelectedIndex == -1) return;
            LoadIntroductionInfo(Convert.ToInt32(l_DropDownList.SelectedValue));
        }
    }
}