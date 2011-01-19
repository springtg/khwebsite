using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.HtmlControls;
using System.Web.UI;

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
        protected IList<KimHoangOBJ.CLanguage> Lst_Language_Object;


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
            if (Session[Session_LoginUserID] == null)
            {
                Response.Redirect(Login_Page);
            }
            InitLanguage();
            base.OnLoad(e);

        }

        //void Page_Error(object sender, EventArgs e)
        //{
        //    Response.Redirect(Error_Page);
            
        //}

        protected Control KH_FindControl(ControlCollection arg_CtrlPage, string arg_CtrlName)
        {
            foreach (Control c in arg_CtrlPage)
            {
                if (c.ID != null)
                {
                    if (c.ID == arg_CtrlName)
                    {
                        return c;
                    }
                }

                if (c.HasControls())
                {
                    return KH_FindControl(c.Controls, arg_CtrlName);
                }
            }
            return null;
        }

        protected void SetLanguageToDropDownList(ref System.Web.UI.WebControls.DropDownList arg_DropDownList)
        {
            if (Lst_Language_Object == null)
            {
                InitLanguage();
            }
            arg_DropDownList.DataSource = Lst_Language_Object;
            arg_DropDownList.DataTextField="Language_Name";
            arg_DropDownList.DataValueField = "Id";
            arg_DropDownList.DataBind();
            arg_DropDownList.SelectedIndex = 1;
        }

        protected void InitLanguage()
        {
            if (Lst_Language_Object == null)
            {
                KimHoangDAO.CLanguageDAO _lang = new KimHoangDAO.CLanguageDAO();
                Lst_Language_Object = _lang.GetLanguageList();
            }
        }


    }
}