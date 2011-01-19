using System;
using System.Collections.Generic;
using KimHoangOBJ;
using System.Data;
using KimHoangUtil;

namespace KimHoangDAO
{
    public class CLanguageDAO
    {
        /// <summary>
        /// Get Application By Application ID
        /// </summary>
        /// <param name="parentControlID">parentControlID</param>
        ///  <param name="languageID">languageID</param>
        /// <returns>List<CControl></returns>    
       public IList<CLanguage> GetLanguageList()
        {
            IList<CLanguage> list = null;
            try
            {
                DataTable dt = new DataAccess().GetDataByStoredProcedure("USP_ADMIN_SEL_LANGUAGE");
                list = CDb.MapList<CLanguage>(dt);
            }
            catch (Exception ex)
            {
                CLogManager.WriteDAL("KimHoangDAO.SupportDAO.GetLanguageList(int)", ex.Message);
            }
            return list;
        }
    }
}
