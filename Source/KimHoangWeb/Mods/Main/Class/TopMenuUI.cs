using System;
using System.Collections.Generic;

using System.Web;
using System.Text;

/// <summary>
/// Summary description for TopUI
/// </summary>
public class TopMenuUI
{
    public string GetHTML()
    {
        StringBuilder ret = new StringBuilder();
        string tempalte = "<li><a class='{0}' href='javascript:void(0);' tabid='{1}' link='{2}' ><span class='t'>{3}</span></a></li>";
        string sep = " <li class='art-menu-li-separator'><span class='art-menu-separator'></span></li>";
        KimHoangDAO.ControlDao Dao = new KimHoangDAO.ControlDao();
        IList<KimHoangOBJ.CControl> listControl = Dao.GetControlChildOf(1, 1);
        if (listControl.Count > 0)
        {
            for (int i = 0; i < listControl.Count; i++)
            {
                if (listControl[i].Name != "")
                {
                    string cssClass = (i == 0 ? "active" : "");
                    ret.Append(string.Format(tempalte, cssClass, listControl[i].PK, listControl[i].Link, listControl[i].Name));
                    string _sep = (i ==  listControl.Count - 1 ? "" : sep);
                    ret.Append(_sep);
                }
            }
        }
        return ret.ToString();
    }
}