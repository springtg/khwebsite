using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using KimHoangOBJ;
using System.Data;
using KimHoangUtil;

namespace KimHoangDAO
{
   public class SubCatDao
    {
        /// <summary>
        /// Get Application By Application ID
        /// </summary>
        /// <param name="parentControlID">parentControlID</param>
        ///  <param name="languageID">languageID</param>
        /// <returns>List<CCat></returns>    
        public IList<CSubCat> GetSubCatBy_langID(int catID,int languageID)
        {
            IList<CSubCat> list = null;
            try
            {
                DataTable dt = new DataAccess().GetDataByStoredProcedure("usp_SelectCATEGORY",
                    new string[] { "@LanguageID" },
                    new object[] { languageID });
                list = CDb.MapList<CSubCat>(dt);
            }
            catch (Exception ex)
            {
                CLogManager.WriteDAL("DataObject.CControl.GetSubCatBy_langID(int,int)", ex.Message);
            }
            return list;
        }
    }
}
