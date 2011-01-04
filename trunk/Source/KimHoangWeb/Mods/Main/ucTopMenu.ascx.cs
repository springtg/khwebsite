using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KimHoangWeb.Mods.Main
{
    public partial class ucTopMenu : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadMenu();
        }
        private void LoadMenu()
        {
          //  TopMenuUI ui = new TopMenuUI();
           // ltrMenuTop.Text = ui.GetHTML();
        }
    }
}