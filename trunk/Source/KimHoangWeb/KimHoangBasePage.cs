using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.HtmlControls;

namespace KimHoangWeb
{
    public class KimHoangBasePage : System.Web.UI.Page
    {
        protected const string Session_LoginUserID = "LoginUserID";
        protected const string Session_LoginUserName = "LoginUserName";
        protected const string Session_Language = "Language";
        protected const string Session_LoginOK = "LoginOK";
        protected const string Login_Page = "Login.aspx";
        protected const string Error_Page = "Error.aspx";


        private string _metakeywords;
        private string _metadescription;

        public string MetaKeywords
        {
            get
            {
                return _metakeywords;
            }
            set
            {
                _metakeywords = value;
            }
        }

        public string MetaDescription
        {
            get
            {
                return _metadescription;
            }
            set
            {
                _metadescription = value;
            }
        }

        protected override void OnLoad(EventArgs e)
        {
            if (!String.IsNullOrEmpty(MetaKeywords))
            {
                HtmlMeta tag = new HtmlMeta();
                tag.Name = "keywords";
                tag.Content = MetaKeywords;
                Header.Controls.Add(tag);
            }
            if (!String.IsNullOrEmpty(MetaDescription))
            {
                HtmlMeta tag = new HtmlMeta();
                tag.Name = "description";
                tag.Content = MetaDescription;
                Header.Controls.Add(tag);
            }
            //if (Session[Session_LoginUserID] == null)
            //{
            //    Response.Redirect(Login_Page);
            //}
            base.OnLoad(e);

        }

        void Page_Error(object sender, EventArgs e)
        {
            Response.Redirect(Error_Page);
        }
    

    }
}