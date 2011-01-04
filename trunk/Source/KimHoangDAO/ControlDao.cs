using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using KimHoangOBJ;
using System.Data;
using KimHoangUtil;

namespace KimHoangDAO
{
   public class ControlDao
    {

        /// <summary>
        /// Get Application By Application ID
        /// </summary>
        /// <param name="parentControlID">parentControlID</param>
        ///  <param name="languageID">languageID</param>
        /// <returns>List<CControl></returns>    
        public IList<CControl> GetControlChildOf(int parentControlID, int languageID)
        {                
            IList<CControl> list = null;
            try
            {
                DataTable dt = new DataAccess().GetDataByStoredProcedure("usp_SelectCONTROL",
               // string result = new iMarket_DBFunction().CallActionPublic(1, CStoreProcedure.Core.GetControlChildOf,
                    new string[] { "@ParentId", "@LanguageID" },
                    new object[] { parentControlID, languageID });
                list = CDb.MapList<CControl>(dt);
            }
            catch (Exception ex)
            {
                CLogManager.WriteDAL("DataObject.CControl.GetControlChildOf(int,int,int)", ex.Message);
            }
            return list;
        }
    }
}
