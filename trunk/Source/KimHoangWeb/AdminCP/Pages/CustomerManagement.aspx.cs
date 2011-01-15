using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KimHoangWeb.AdminCP.Pages
{
    public partial class CustomerManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void gvCustomer_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //string strValue = Page.Request.Form["ctl00$ContentPlaceHolder1$gvCustomer$ctl03$txt_I_Company_Name"].ToString();
            //img_Logo
            string l_Id = string.Empty;
            string l_NickId = string.Empty;
            string l_Support_Type_Id = string.Empty;
            string l_Display_Name = string.Empty;
            if (e.CommandName == "Add")
            {
                if (gvCustomer.HeaderRow == null)
                {
                    l_NickId = Convert.ToString(Page.Request.Form["name of the control"]);
                    l_Support_Type_Id = Convert.ToString(Page.Request.Form["name of the control"]);
                    l_Display_Name = Convert.ToString(Page.Request.Form["name of the control"]);

                }
                else
                {
                    l_NickId = ((TextBox)gvCustomer.FooterRow.FindControl("txt_I_NickId")).Text;
                    l_Support_Type_Id = ((TextBox)gvCustomer.FooterRow.FindControl("txt_I_Support_Type_Id")).Text;
                    l_Display_Name = ((TextBox)gvCustomer.FooterRow.FindControl("txt_I_Display_Name")).Text;
                }
                SqlDataSource1.InsertParameters["NickId"].DefaultValue
                                                           = l_NickId;
                SqlDataSource1.InsertParameters["Support_Type_Id"].DefaultValue
                                                           = l_Support_Type_Id;
                SqlDataSource1.InsertParameters["Display_Name"].DefaultValue
                                                           = l_Display_Name;
                SqlDataSource1.InsertParameters["Crt_By"].DefaultValue = "sysdamin";
                SqlDataSource1.InsertParameters["Language_Id"].DefaultValue = 1.ToString();
                SqlDataSource1.Insert();
            }
            if (e.CommandName == "Edit")
            {
                l_NickId = ((TextBox)gvCustomer.SelectedRow.FindControl("lblID")).Text;
                l_NickId = ((TextBox)gvCustomer.SelectedRow.FindControl("txt_I_NickId")).Text;
                l_NickId = ((TextBox)gvCustomer.SelectedRow.FindControl("txt_I_NickId")).Text;
                l_Support_Type_Id = ((TextBox)gvCustomer.SelectedRow.FindControl("txt_I_Support_Type_Id")).Text;
                l_Display_Name = ((TextBox)gvCustomer.SelectedRow.FindControl("txt_I_Display_Name")).Text;

                SqlDataSource1.UpdateParameters["Id"].DefaultValue
                                                               = l_Id;
                SqlDataSource1.UpdateParameters["NickId"].DefaultValue
                                                               = l_NickId;
                SqlDataSource1.UpdateParameters["Support_Type_Id"].DefaultValue
                                                           = l_Support_Type_Id;
                SqlDataSource1.UpdateParameters["Display_Name"].DefaultValue
                                                           = l_Display_Name;
                SqlDataSource1.UpdateParameters["Crt_By"].DefaultValue = "sysdamin";
                SqlDataSource1.UpdateParameters["Language_Id"].DefaultValue = 1.ToString();
                SqlDataSource1.Update();
            }
        }
    }
}