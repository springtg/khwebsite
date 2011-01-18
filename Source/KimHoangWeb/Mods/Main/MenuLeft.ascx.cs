using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using KimHoangWeb.Mods.Main.Class;

namespace KimHoangWeb.Mods.Main
{
    public partial class MenuLeft : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadMenu();
        }
        private void LoadMenu()
        {
            LeftMenuUI ui = new LeftMenuUI();
            ltrMenuLeft.Text = ui.GetHTMLCat(129);
        }
    }
}