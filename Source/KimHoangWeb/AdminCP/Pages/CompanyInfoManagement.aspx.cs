using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;
using KimHoangOBJ;
using KimHoangDAO;

namespace KimHoangWeb.AdminCP.Pages
{
    public partial class CompanyInfoManagement : KimHoangBasePage// System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetLanguageToDropDownList(ref ddl_Language);
                ResetForm();
                LoadIntroductionInfo(Convert.ToInt32(ddl_Language.SelectedValue));
                
            }
        }


        private void LoadIntroductionInfo(int arg_Language_Id)
        {
            KimHoangDAO.CCompanyInfoDAO info = new KimHoangDAO.CCompanyInfoDAO();
            IList<KimHoangOBJ.CCompanyInfo> list = info.GetCompanyInfo(arg_Language_Id);
            if (list .Count > 0)
            {
                hdf_Introduction_id.Value = Convert.ToString(list[0].Id);
                hdf_Language_Id.Value = Convert.ToString(list[0].Language_Id);
                txt_IntroductionInfo.Value = list[0].Introduction_Info;
                txt_Address.Text = list[0].Address;
                txt_Address1.Text = list[0].Address1;
                txt_Address2.Text = list[0].Address2;
                txt_CompanyName.Text = list[0].Company_Name;
                txt_Email.Text = list[0].Email;
                txt_Email1.Text = list[0].Email1;
                txt_Email2.Text = list[0].Email2;
                txt_Tel.Text = list[0].Tel;
                txt_Tel1.Text = list[0].Tel1;
                txt_Tel2.Text = list[0].Tel2;
            }
            else
            {
                hdf_Introduction_id.Value = "0";
            }
        }

        private CCompanyInfo GetIntroductionInfo()
        {
            CCompanyInfo rs = new CCompanyInfo();
            rs.Id = Convert.ToInt32(hdf_Introduction_id.Value);
            rs.Language_Id = Convert.ToInt32(ddl_Language.SelectedValue);
            rs.Introduction_Info = txt_IntroductionInfo.Value;
            rs.Address = txt_Address.Text;
            rs.Address1 = txt_Address1.Text;
            rs.Address2 = txt_Address2.Text;
            rs.Company_Name = txt_CompanyName.Text;
            rs.Email = txt_Email.Text;
            rs.Email1 = txt_Email1.Text;
            rs.Email2 = txt_Email2.Text;
            rs.Tel = txt_Tel.Text;
            rs.Tel1 = txt_Tel1.Text;
            rs.Tel2 = txt_Tel2.Text;
            return rs;
        }

        protected void btn_Save_Click(object sender, EventArgs e)
        {
            CCompanyInfo _CompanyInfo = GetIntroductionInfo();
            CCompanyInfoDAO _CompanyInfoDAO = new CCompanyInfoDAO();
            if (_CompanyInfo.Id.ToString().Equals("0"))
            {
                _CompanyInfoDAO.UpdateCompanyInfo(_CompanyInfo, Session[Session_LoginUserName].ToString());
            }
            else
            {
                _CompanyInfoDAO.InsertCompanyInfo(_CompanyInfo, Session[Session_LoginUserName].ToString());
            }
        }

        private void ResetForm()
        {
            hdf_Introduction_id.Value = "0";
            hdf_Language_Id.Value = Convert.ToString(ddl_Language.SelectedValue);
            txt_IntroductionInfo.Value = string.Empty;
            txt_Address.Text = string.Empty;
            txt_Address1.Text = string.Empty;
            txt_Address2.Text = string.Empty;
            txt_CompanyName.Text = string.Empty;
            txt_Email.Text = string.Empty;
            txt_Email1.Text = string.Empty;
            txt_Email2.Text = string.Empty;
            txt_Tel.Text = string.Empty;
            txt_Tel1.Text = string.Empty;
            txt_Tel2.Text = string.Empty;
        }

        protected void ddl_Language_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList l_DropDownList = (DropDownList)sender;
            if (l_DropDownList.SelectedIndex == -1) return;
            ResetForm();
            LoadIntroductionInfo(Convert.ToInt32(l_DropDownList.SelectedValue));
        }
    }
}