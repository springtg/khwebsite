using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KimHoangUtil
{
    public class CLogManager
    {
        public static void Init()
        {
            TLog.LogDir = "";
            TLog.LogByHour = true;
            string urlSetting = System.Configuration.ConfigurationManager.AppSettings["LogPath"];
            if ((urlSetting != null))
                TLog.LogDir = urlSetting;
        }
        static CLogManager()
        {
            Init();
        }

   
        /// <summary>
        /// Write log
        /// </summary>
        /// <param name="logTitle"></param>
        /// <param name="logDetail"></param>
        /// <param name="group"></param>
        public static void Write(string logTitle, string logDetail, string group)
        {
            TLog.Write(logTitle, logDetail, group);
        }

        /// <summary>
        /// Write log - Data Access Layer
        /// </summary>
        /// <param name="logTitle"></param>
        /// <param name="logDetail"></param>
        public static void WriteDAL(string logTitle, string logDetail)
        {
            TLog.Write(logTitle, logDetail, "DAL");
        }

        /// <summary>
        /// Write log - Business Access Layer
        /// </summary>
        /// <param name="logTitle"></param>
        /// <param name="logDetail"></param>
        public static void WriteBAL(string logTitle, string logDetail)
        {
            TLog.Write(logTitle, logDetail, "BAL");
        }

        /// <summary>
        /// Write log - Presentation Layer
        /// </summary>
        /// <param name="logTitle"></param>
        /// <param name="logDetail"></param>
        public static void WritePL(string logTitle, string logDetail)
        {
            TLog.Write(logTitle, logDetail, "PL");
        }

        /// <summary>
        /// Write log - Framework
        /// </summary>
        /// <param name="logTitle"></param>
        /// <param name="logDetail"></param>
        public static void WriteFW(string logTitle, string logDetail)
        {
            TLog.Write(logTitle, logDetail, "FW");
        }

        /// <summary>
        /// Write log - Service Layer
        /// </summary>
        /// <param name="logTitle"></param>
        /// <param name="logDetail"></param>
        public static void WriteSL(string logTitle, string logDetail)
        {
            TLog.Write(logTitle, logDetail, "SL");
        }
        /// <summary>
        /// Write log - JavaScript
        /// </summary>
        /// <param name="logTitle"></param>
        /// <param name="logDetail"></param>
        public static void WriteJS(string logTitle, string logDetail)
        {
            TLog.Write(logTitle, logDetail, "JS");
        }
    }
}
