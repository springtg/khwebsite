using System;
using System.Collections.Generic;
using KimHoangOBJ;
using System.Data;
using KimHoangUtil;

namespace KimHoangDAO
{
    public class CCompanyInfoDAO
    {
        /// <summary>
        /// Get Application By Application ID
        /// </summary>
        /// <param name="parentControlID">parentControlID</param>
        ///  <param name="languageID">languageID</param>
        /// <returns>List<CControl></returns>    
        public IList<CCompanyInfo> GetCompanyInfo(int languageID)
        {
            IList<CCompanyInfo> list = null;
            try
            {
                DataTable dt = new DataAccess().GetDataByStoredProcedure("USP_ADMIN_SEL_COMPANY_INFO",
                    new string[] { "@language_Id" },
                    new object[] { languageID });
                list = CDb.MapList<CCompanyInfo>(dt);
            }
            catch (Exception ex)
            {
                CLogManager.WriteDAL("KimHoangDAO.SupportDAO.GetCompanyInfo(int)", ex.Message);
            }
            return list;
        }

        public int UpdateCompanyInfo(CCompanyInfo arg_CompanyInfo, string arg_Crt_by)
        {
            if (arg_CompanyInfo == null)
                return -1;
            string[] _strName = new string[] { "@Id", "@Company_Name", "@Language_Id", "@Introduction_Info", "@Address", "@Address1", "@Address2", "@Tel", "@Tel1", "@Tel2", "@Email", "@Email1", "@Email2", "@Crt_By" };
            object[] _objValue = new object[] { arg_CompanyInfo.Id, arg_CompanyInfo.Company_Name, arg_CompanyInfo.Language_Id, arg_CompanyInfo.Introduction_Info, arg_CompanyInfo.Address, arg_CompanyInfo.Address1, arg_CompanyInfo.Address2, arg_CompanyInfo.Tel, arg_CompanyInfo.Tel1, arg_CompanyInfo.Tel2, arg_CompanyInfo.Email, arg_CompanyInfo.Email1, arg_CompanyInfo.Email2, arg_Crt_by };
            DataAccess _provider = new DataAccess();
            return _provider.ExecuteUpdate("USP_ADMIN_UPD_COMPANY_INFO", _strName, _objValue);
        }

        public int InsertCompanyInfo(CCompanyInfo arg_CompanyInfo, string arg_Crt_by)
        {
            if (arg_CompanyInfo == null)
                return -1;
            string[] _strName = new string[] { "@Id", "@Company_Name", "@Language_Id", "@Introduction_Info", "@Address", "@Address1", "@Address2", "@Tel", "@Tel1", "@Tel2", "@Email", "@Email1", "@Email2", "@Crt_By" };
            object[] _objValue = new object[] { arg_CompanyInfo.Id, arg_CompanyInfo.Company_Name, arg_CompanyInfo.Language_Id, arg_CompanyInfo.Introduction_Info, arg_CompanyInfo.Address, arg_CompanyInfo.Address1, arg_CompanyInfo.Address2, arg_CompanyInfo.Tel, arg_CompanyInfo.Tel1, arg_CompanyInfo.Tel2, arg_CompanyInfo.Email, arg_CompanyInfo.Email1, arg_CompanyInfo.Email2, arg_Crt_by };
            DataAccess _provider = new DataAccess();
            return _provider.ExecuteUpdate("USP_ADMIN_UPD_COMPANY_INFO", _strName, _objValue);
        }

    }
}
