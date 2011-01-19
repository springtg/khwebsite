using System;
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
            string l_Id = string.Empty;
            string l_NickId = string.Empty;
            string l_Support_Type_Id = string.Empty;
            string l_Display_Name = string.Empty;
            if (e.CommandName == "Add")
            {
                if (GridView1.HeaderRow == null)
                {
                    l_NickId = Convert.ToString(Page.Request.Form["name of the control"]);
                    l_Support_Type_Id = Convert.ToString(Page.Request.Form["name of the control"]);
                    l_Display_Name = Convert.ToString(Page.Request.Form["name of the control"]);

                }
                else
                {
                    l_NickId = ((TextBox)GridView1.FooterRow.FindControl("txt_I_NickId")).Text;
                    l_Support_Type_Id = ((TextBox)GridView1.FooterRow.FindControl("txt_I_Support_Type_Id")).Text;
                    l_Display_Name = ((TextBox)GridView1.FooterRow.FindControl("txt_I_Display_Name")).Text;
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
                l_NickId = ((TextBox)GridView1.SelectedRow.FindControl("lblID")).Text;
                l_NickId = ((TextBox)GridView1.SelectedRow.FindControl("txt_I_NickId")).Text;
                l_NickId = ((TextBox)GridView1.SelectedRow.FindControl("txt_I_NickId")).Text;
                l_Support_Type_Id = ((TextBox)GridView1.SelectedRow.FindControl("txt_I_Support_Type_Id")).Text;
                l_Display_Name = ((TextBox)GridView1.SelectedRow.FindControl("txt_I_Display_Name")).Text;

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

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DropDownList cmbType = (DropDownList)e.Row.FindControl("cmbType");

                if (cmbType != null)
                {
                    //cmbType.DataSource = customer.FetchCustomerType();
                    cmbType.DataBind();
                    cmbType.SelectedValue = GridView1.DataKeys[e.Row.RowIndex].Values[1].ToString();
                }

            }
        }
    }
}
