using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookingApp
{
    public partial class checkViewState : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("No. of passengers: " + ViewState["pax"] + "<br/>");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (rbChoice.SelectedItem.Text == "YES")
            {
                string URL = "BookStay.aspx?";
                URL += "que=" + "Do you know?" + "&";
                URL += "ans=" + Server.UrlEncode(rbChoice.SelectedItem.Text) + "&";
                Response.Redirect(URL);
            }
            else
            {
                Response.Redirect("~/checkViewState.aspx");
            }
        }
    }
}