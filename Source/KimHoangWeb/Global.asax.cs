using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.IO;
using System.Data;

namespace KimHoangWeb
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            //cau hinh cho editor
            Application["FCKeditor:UserFilesPath"] = "../../../../../../img/";
            Application["HomNay"] = 0;
            Application["HomQua"] = 0;
            Application["TuanNay"] = 0;
            Application["TuanTruoc"] = 0;
            Application["ThangNay"] = 0;
            Application["ThangTruoc"] = 0;
            Application["TatCa"] = 0;
            Application["visitors_online"] = 0;

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            //thiet lap sesion
            Session.Timeout = 150;
            Session["LoginUserID"] = null;
            Session["LoginUserName"] = "Guest";
            Session["Language"] = "VN";
            Session["LanguageId"] = 1;
            Session["LoginOK"] = false;
            //thiet lap dem so luong
            Application.Lock();
            Application["visitors_online"] = Convert.ToInt32(Application["visitors_online"]) + 1;
            Application.UnLock();
            try
            {
                
                KimHoangDAO.CVisitorCountDAO _vcd = new KimHoangDAO.CVisitorCountDAO();
                IList<KimHoangOBJ.CVisitorCount> _lvc = _vcd.GetVistorCount();
                if (_lvc != null)
                {
                    Application["HomNay"] = _lvc[0].HomNay.ToString("#,###");
                    Application["HomQua"] = _lvc[0].HomQua.ToString("#,###");
                    Application["TuanNay"] = _lvc[0].TuanNay.ToString("#,###");
                    Application["TuanTruoc"] = _lvc[0].TuanTruoc.ToString("#,###");
                    Application["ThangNay"] = _lvc[0].ThangNay.ToString("#,###");
                    Application["ThangTruoc"] = _lvc[0].ThangTruoc.ToString("#,###");
                    Application["TatCa"] = _lvc[0].TatCa.ToString("#,###");
                }
                _lvc = null;
            }
            catch { }

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Application.Lock();
	        Application["visitors_online"] = Convert.ToUInt32(Application["visitors_online"]) - 1;
	        Application.UnLock();
        }

        protected void Application_End(object sender, EventArgs e)
        {
            Session["LoginUserID"] = null;
            Session["LoginUserName"] = string.Empty;
            Session["Language"] = "VN";
            Session["LanguageId"] = 1;
            Session["LoginOK"] = false;

            //// Code that runs on application shutdown
            string path = Server.MapPath("~") + "visitor.txt";
            File.WriteAllText(path, Application["SLtruycap"].ToString());
        }
    }
}