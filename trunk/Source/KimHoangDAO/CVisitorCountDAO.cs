using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using KimHoangOBJ;
using System.Data;
using KimHoangUtil;

namespace KimHoangDAO
{
    public class CVisitorCountDAO
    {
        /// <summary>
        /// Get Application By Application ID
        /// </summary>
        /// <param name="parentControlID">parentControlID</param>
        ///  <param name="languageID">languageID</param>
        /// <returns>List<CControl></returns>    
        public IList<CVisitorCount> GetVistorCount()
        {
            IList<CVisitorCount> list = null;
            try
            {
                DataTable dt = new DataAccess().GetDataByStoredProcedure("USP_ADMIN_UDP_VISITOR_COUNT");
                list = CDb.MapList<CVisitorCount>(dt);
            }
            catch (Exception ex)
            {
                CLogManager.WriteDAL("KimHoangDAO.SupportDAO.GetVistorCount()", ex.Message);
            }
            return list;
        }
    }
}
