using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;

namespace KimHoangWeb.Mods.Main.Class
{
    public class LeftMenuUI
    {

        public string GetHTMLSubCat(int catId,int langId)
        {
           //<ul style="display: block;">
           //     <li><a link="Mods/Customer/_Customer.aspx" tabid="4" href="javascript:void(0);">PivotX</a></li>
           //     <li><a href="">Thiết kế web</a></li>
           //     <li><a href="">Giải pháp Email</a></li>
           //     <li><a href="http://typosphere.org/">Domain-Hosting</a></li>
           //     <li><a href="http://typosphere.org/">Bảo trì cập nhật</a></li>
           // </ul>
            StringBuilder ret = new StringBuilder();
            string tempalte = "<li><a class='{0}' href='javascript:void(0);' tabid='{1}' link='{2}' >{3}</a></li>";
            KimHoangDAO.SubCatDao Dao = new KimHoangDAO.SubCatDao();
            IList<KimHoangOBJ.CSubCat> listSubCat = Dao.GetSubCatBy_langID(1, langId);
            if (listSubCat.Count > 0)
            {
                for (int i = 0; i < listSubCat.Count; i++)
                {
                    if (listSubCat[i].SubCategoryName != "")
                    {
                        string cssClass = (i == 0 ? "active" : "");
                        ret.Append(string.Format(tempalte, cssClass, listSubCat[i].Id, listSubCat[i].Id, listSubCat[i].SubCategoryName));
                    }
                }
            }

            return "<ul style='display: block;'>" + ret.ToString() + "</ul>";
        }
        public string GetHTMLCat(int langId)
        {               
            StringBuilder ret = new StringBuilder();
            ret.Append("<ul class='menu expandfirst' id='khMenuLeft'> ");
            string tempalte = "<li><a class='{0}' href='javascript:void(0);' tabid='{1}' link='{2}' >{3}</a>{4}</li>";
            KimHoangDAO.CatDao Dao = new KimHoangDAO.CatDao();
            IList<KimHoangOBJ.CCat> listCat = Dao.GetCatBy_langID(langId);
            if (listCat.Count > 0)
            {
                for (int i = 0; i < listCat.Count; i++)
                {
                    if (listCat[i].CategoryName != "")
                    {
                        string cssClass = (i == 0 ? "active" : "");
                        string htmlSub = GetHTMLSubCat(listCat[i].Id, langId);
                        ret.Append(string.Format(tempalte, cssClass, listCat[i].Id, listCat[i].Id, listCat[i].CategoryName, htmlSub));
                    }
                }
            }
            ret.Append("</ul>");
            return ret.ToString();
        }
    }
}