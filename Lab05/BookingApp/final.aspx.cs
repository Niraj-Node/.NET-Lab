using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookingApp
{
    public partial class final : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Retrieve the selected items and total amount from session variables
            List<string> selectedItems = Session["SelectedItems"] as List<string>;
            int totalAmount = Session["TotalAmount"] != null ? (int)Session["TotalAmount"] : 0;

            if (selectedItems != null && selectedItems.Count > 0)
            {
                lblItems.Text = "Selected Items:<br/>";
                foreach (string item in selectedItems)
                {
                    lblItems.Text += item + "<br/>";
                }
            }
            else
            {
                lblItems.Text = "No items selected.";
            }

            lblTotalAmount.Text = "Total Amount: $" + totalAmount.ToString();
        }
    }
}