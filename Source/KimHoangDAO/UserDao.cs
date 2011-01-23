using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using KimHoangOBJ;
using System.Data;
using KimHoangUtil;

namespace KimHoangDAO
{
    public class UserDao
    {
        /// <summary>
        /// Get Application By Application ID
        /// </summary>
        /// <param name="parentControlID">parentControlID</param>
        ///  <param name="languageID">languageID</param>
        /// <returns>List<CControl></returns>    
        public IList<CUser> GetUserList(int languageID)
        {
            IList<CUser> list = null;
            try
            {
                DataTable dt = new DataAccess().GetDataByStoredProcedure("USP_FRONT_SEL_SUPPORT",
                    new string[] { "@language_Id" },
                    new object[] { languageID });
                list = CDb.MapList<CUser>(dt);
            }
            catch (Exception ex)
            {
                CLogManager.WriteDAL("KimHoangDAO.SupportDAO.GetUserList(int)", ex.Message);
            }
            return list;
        }

        public int Login(string arg_UserName, string arg_Password)
        {
            try
            {
                DataTable dt = new DataAccess().GetDataByStoredProcedure("USP_FRONT_SEL_SUPPORT",
                    new string[] { "@User_Name", "@Password" },
                    new object[] { arg_UserName, arg_Password });
                if (dt == null)
                {
                    return -1;//khong ton tai user
                }
                if (dt.Rows.Count < 1)
                {
                    return 0;//khong ton tai user
                }
                if (Convert.ToInt32(dt.Rows[0][0].ToString()) == 0)
                {
                    return 0;//
                }
                return 1;

            }
            catch (Exception ex)
            {
                CLogManager.WriteDAL("KimHoangDAO.SupportDAO.GetUserList(int)", ex.Message);
                return -1;
            }
        }
    }
}
