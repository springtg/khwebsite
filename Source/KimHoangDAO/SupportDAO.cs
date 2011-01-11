using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using KimHoangOBJ;
using System.Data;
using KimHoangUtil;

namespace KimHoangDAO
{
   public class SupportDAO
    {
        /// <summary>
        /// Get Application By Application ID
        /// </summary>
        /// <param name="parentControlID">parentControlID</param>
        ///  <param name="languageID">languageID</param>
        /// <returns>List<CControl></returns>    
        public  IList<CSupport> GetSupportList(int languageID)
        {
            IList<CSupport> list = null;
            try
            {
                DataTable dt = new DataAccess().GetDataByStoredProcedure("USP_FRONT_SEL_SUPPORT",
                    new string[] { "@language_Id"},
                    new object[] {  languageID });
                list = CDb.MapList<CSupport>(dt);
            }
            catch (Exception ex)
            {
                CLogManager.WriteDAL("KimHoangDAO.SupportDAO.GetSupportList(int)", ex.Message);
            }
            return list;
        }
    }
}
