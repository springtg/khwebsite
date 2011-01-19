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
                    new string[] { "@language_Id"},
                    new object[] {  languageID });
                list = CDb.MapList<CCompanyInfo>(dt);
            }
            catch (Exception ex)
            {
                CLogManager.WriteDAL("KimHoangDAO.SupportDAO.GetCompanyInfo(int)", ex.Message);
            }
            return list;
        }

    }
}
