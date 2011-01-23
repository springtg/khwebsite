using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using KimHoangOBJ;
using System.Data;
using KimHoangUtil;

namespace KimHoangDAO
{
   public class NewsDAO
    {
        /// <summary>
        /// Lay danh sach tin tuc ung voi ngon ngu hien hanh
        /// </summary>
        ///  <param name="languageID">languageID</param>
        /// <returns>List<CControl></returns>    
        public  IList<CNews> GetNewsList(int languageID)
        {
            IList<CNews> list = null;
            try
            {
                DataTable dt = new DataAccess().GetDataByStoredProcedure("USP_USER_SEL_LIST_NEWS",
                    new string[] { "@language_Id"},
                    new object[] {  languageID });
                list = CDb.MapList<CNews>(dt);
            }
            catch (Exception ex)
            {
                CLogManager.WriteDAL("KimHoangDAO.SupportDAO.GetNewsList(int)", ex.Message);
            }
            return list;
        }
        /// <summary>
        /// Lay 1 mau tin tuc ung voi ngon ngu hien hanh
        /// </summary>
        ///  <param name="languageID">languageID</param>
        /// <returns>List<CControl></returns>    
        public CNews GetNews(int arg_Id,int arg_languageID)
        {
            IList<CNews> list = null;
            try
            {
                DataTable dt = new DataAccess().GetDataByStoredProcedure("USP_USER_SEL_NEWS",
                    new string[] { "@Id", "@language_Id" },
                    new object[] { arg_Id, arg_languageID });
                list = CDb.MapList<CNews>(dt);
            }
            catch (Exception ex)
            {
                CLogManager.WriteDAL("KimHoangDAO.SupportDAO.GetNewsList(int)", ex.Message);
            }
            if (list != null)
                return list[0];
            return null;
        }
    }
}
