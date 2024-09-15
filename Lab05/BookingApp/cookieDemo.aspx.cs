using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookingApp
{
    public partial class cookiedemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lb.Text = "";
                HttpCookie ck = Request.Cookies["name"];
                if (ck == null)
                {
                    ck = new HttpCookie("name");
                    Response.Cookies.Add(ck);
                }
            }
        }

        protected void save(object sender, EventArgs e)
        {
            HttpCookie ck = Request.Cookies["name"];
            if (ck == null)
            {
                ck = new HttpCookie("store");
                Response.Cookies.Add(ck);
            }
            if (ck != null)
            {
                ck["name"] = tbName.Text;
                ck.Expires = DateTime.Now.AddMinutes(10); // Set expiration time
                Response.Cookies.Add(ck); // Save changes to the cookie
                lb.Text = "Name saved to cookie";
            }
        }

        protected void retrive(object sender, EventArgs e)
        {
            HttpCookie ck = Request.Cookies["name"];
            if (ck != null && ck["name"] != null)
            {
                lb.Text = "Hello, " + ck["name"].ToString() + "! Welcome back!";
            }
            else
            {
                lb.Text = "Cookie not found!";
            }
        }

        protected void delete(object sender, EventArgs e)
        {
            HttpCookie ck = Request.Cookies["name"];

            if (ck != null)
            {
                // Set the expiration date to a past date to delete the cookie
                ck.Expires = DateTime.Now.AddDays(-1);

                // Update the response to delete the cookie
                Response.Cookies.Add(ck);

                lb.Text = "Cookie deleted!";
            }
            else
            {
                lb.Text = "Cookie not found!";
            }
        }
    }
}