using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookingApp
{
    public partial class items : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int totalAmount = 0;
            List<string> selectedItems = new List<string>();

            // Iterate through each selected item in the CheckBoxList
            foreach (ListItem item in cbListMenuItems.Items)
            {
                if (item.Selected)
                {
                    selectedItems.Add(item.Text); // Store the selected item text
                    totalAmount += int.Parse(item.Value); // Add the value of the selected item to the total amount
                }
            }

            // Store selected items and total amount in session variables
            Session["SelectedItems"] = selectedItems;
            Session["TotalAmount"] = totalAmount;

            // Redirect to the final.aspx page
            Response.Redirect("final.aspx");
        }
    }
}