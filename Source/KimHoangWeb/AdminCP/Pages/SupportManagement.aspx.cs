using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KimHoangWeb.AdminCP.Pages
{
    public partial class SupportManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Add")
            {
                string l_NickId = ((TextBox)GridView1.FooterRow.FindControl("txt_I_NickId")).Text;

                string l_Support_Type_Id = ((TextBox)GridView1.FooterRow.FindControl("txt_I_Support_Type_Id")).Text;

                string l_Display_Name = ((TextBox)GridView1.FooterRow.FindControl("txt_I_Display_Name")).Text;

                SqlDataSource1.InsertParameters["NickId"].DefaultValue
                                                           = l_NickId;
                SqlDataSource1.InsertParameters["Support_Type_Id"].DefaultValue
                                                           = l_Support_Type_Id;
                SqlDataSource1.InsertParameters["Display_Name"].DefaultValue
                                                           = l_Display_Name;
                SqlDataSource1.InsertParameters["Crt_By"].DefaultValue = "sysdamin";
                SqlDataSource1.InsertParameters["Language_Id"].DefaultValue = 1.ToString();
                SqlDataSource1.Insert();

                //if (GridView1.FooterRow == null)
                //{
                //    string a;
                //    if (Request.Form["txt_I_NickId"] != null)
                //        a = Request.Form["txt_I_NickId"].ToString();
                //    string a = ((TextBox)KH_FindControl(this.Controls, "txt_I_NickId")).Text;

                //}

            }

        }
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
    }
}