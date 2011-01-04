using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class Mods_Main_TopMenu : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadMenu();
    }
    private void LoadMenu()
    {
        string tempalte = "<li><a class='active' href='javascript:void(0);' tabid='{0}' link='{1}' ><span class='t'>{2}</span></a></li>";
        string sep = " <li class='art-menu-li-separator'><span class='art-menu-separator'></span></li>";
        KimHoangDAO.ControlDao Dao = new KimHoangDAO.ControlDao();
        IList<KimHoangOBJ.CControl> listControl = Dao.GetControlChildOf(1, 1);
    }
}