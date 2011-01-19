using System;
using System.Collections.Generic;
using KimHoangOBJ;
using System.Data;
using KimHoangUtil;

namespace KimHoangDAO
{
    public class CIntroductionInfoDAO
    {
        /// <summary>
        /// Get Application By Application ID
        /// </summary>
        /// <param name="parentControlID">parentControlID</param>
        ///  <param name="languageID">languageID</param>
        /// <returns>List<CControl></returns>    
       public IList<CIntroductionInfo> GetIntroductionInfo(int languageID)
        {
            IList<CIntroductionInfo> list = null;
            try
            {
                DataTable dt = new DataAccess().GetDataByStoredProcedure("USP_ADMIN_SEL_INTRODUCTION_INFO",
                    new string[] { "@language_Id"},
                    new object[] {  languageID });
                list = CDb.MapList<CIntroductionInfo>(dt);
            }
            catch (Exception ex)
            {
                CLogManager.WriteDAL("KimHoangDAO.SupportDAO.GetIntroductionInfo(int)", ex.Message);
            }
            return list;
        }
    }
}
