using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using KimHoangOBJ;
using System.Text;
using System.Configuration;

namespace KimHoangWeb.Mods.Main
{
    public partial class ucSupport : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadData();
            }
        }

        private void LoadData()
        {
            string strSpace = " <div style='padding-bottom: 3px;'>    </div>";
            StringBuilder ret = new StringBuilder();
            KimHoangDAO.SupportDAO s = new KimHoangDAO.SupportDAO();
            IList<CSupport> l_Support = s.GetSupportList(1);
            if (l_Support.Count > 0)
            {
                foreach (CSupport item in l_Support)
                {
                    if (item.Support_Type_Id == 1)//Yahoo
                    {
                        ret.Append(string.Format(@"<div style='width: 100%;'>
                                                     <a href='ymsgr:sendim?{0}'>
                                                         <img border='0' src='http://opi.yahoo.com/online?u=kimhoangad&amp;m=g&amp;t=1' alt='{1}'></a>
                                                     <span style='padding-top: 0px; border: 1px solid white;'>{2}</span>
                                                 </div>
                                                 ", item.NickId, item.NickId, item.Display_Name));
                    }
                    if (item.Support_Type_Id == 2)//Skype
                    {
                        ret.Append(string.Format(@"<div style='width: 100%;'>
                                                    <script src='http://download.skype.com/share/skypebuttons/js/skypeCheck.js' type='text/javascript'></script>
                                                    <a href='skype:{0}?call'
                                                        <img border='0' alt='{2}' src='http://mystatus.skype.com/smallclassic/{3}'></a></div>",
                        item.NickId, item.Display_Name, item.NickId));
                    }
                    ret.Append(strSpace);
                }
                Literal1.Text = ret.ToString();
            }
            else
            {
                Literal1.Text = ConfigurationManager.AppSettings["EmptyData"];
            }
            
            /*
             <div style="width: 100%;">
         <a href="ymsgr:sendim?kimhoangad">
             <img border="0" src="http://opi.yahoo.com/online?u=kimhoangad&amp;m=g&amp;t=1" alt="kimhoangad"></a>
         <span style="padding-top: 0px; border: 1px solid white;">kimhoangad</span>
     </div>
     <div style="padding-bottom: 3px;">
     </div>*/
        }
    }
}