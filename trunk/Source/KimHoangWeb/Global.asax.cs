using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.IO;

namespace KimHoangWeb
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            //Code that runs on application startup
            string path = Server.MapPath("~") + "visitor.txt";
            if (!File.Exists(path))
                File.WriteAllText(path, "0");
            Application["SLtruycap"] = int.Parse(File.ReadAllText(path)); 
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["LoginUserID"] = null;
            Session["LoginUserName"] = "Guest";
            Session["Language"] = "VN";
            Session["LoginOK"] = false;


            //// Code that runs when a new session is started
            if (Application["SLonline"] == null)
                Application["SLonline"] = 1;
            else
                Application["SLonline"] = (int)Application["SLonline"] + 1;
            Application["SLtruycap"] = (int)Application["SLtruycap"] + 1; 

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
            // Code that runs when a session ends.
            // Note: The Session_End event is raised only when the sessionstate mode
            // is set to InProc in the Web.config file. If session mode is set to StateServer
            // or SQLServer, the event is not raised.
            int i = (int)Application["SLonline"];
            if (i > 1)
                Application["SLonline"] = i - 1;
            string path = Server.MapPath("~") + "visitor.txt";
            File.WriteAllText(path, Application["SLtruycap"].ToString());

        }

        protected void Application_End(object sender, EventArgs e)
        {
            Session["LoginUserID"] = null;
            Session["LoginUserName"] = string.Empty;
            Session["Language"] = string.Empty;
            Session["LoginOK"] = false;

            //// Code that runs on application shutdown
            string path = Server.MapPath("~") + "visitor.txt";
            File.WriteAllText(path, Application["SLtruycap"].ToString()); 
        }
    }
}