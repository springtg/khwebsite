using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using KimHoangUtil;
using KimHoangOBJ;

namespace KimHoangDAO
{
   public class CatDao
    {
        /// <summary>
        /// Get Application By Application ID
        /// </summary>
        /// <param name="parentControlID">parentControlID</param>
        ///  <param name="languageID">languageID</param>
        /// <returns>List<CCat></returns>    
        public IList<CCat> GetCatBy_langID(int languageID)
        {
            IList<CCat> list = null;
            try
            {
                DataTable dt = new DataAccess().GetDataByStoredProcedure("usp_SelectCATEGORY",
                    new string[] { "@LanguageID" },
                    new object[] { languageID });
                list = CDb.MapList<CCat>(dt);
            }
            catch (Exception ex)
            {
                CLogManager.WriteDAL("DataObject.CControl.GetCatBy_langID(int,int,int)", ex.Message);
            }
            return list;
        }

    }
}
