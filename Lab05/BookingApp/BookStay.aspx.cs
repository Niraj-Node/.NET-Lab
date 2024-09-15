using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookingApp
{
    public partial class BookStay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            Response.Write("active users are " + Application["userOnline"]);
            Response.Write("<br/>");
            Response.Write("user logged in is " + Session["user"]);
            Response.Write("<br/>");

            if (Request.QueryString["que"] != null)
            {
                string q = Request.QueryString["que"];
                string a = Request.QueryString["ans"];
                Response.Write($"Your question was : {q} and your answer was: {a}");
            }
        }

        protected void tbACount0_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = tbName.Text;
            Session["user"] = name;
            int pax = Int32.Parse(tbACount.Text);
            ViewState["pax"] = pax;
            string roomType = rblistRoomType.SelectedItem.Value;
            List<ListItem> opFeat = new List<ListItem>();
            foreach (ListItem item in cklistOpFacility.Items) 
            {
                if (item.Selected)
                {
                    opFeat.Add(item);
                }   
            }
            string foodPref;
            if (ddlFoodPref.SelectedItem.Value == "0") 
            {
                foodPref = "you have not selecetd food preference. Kindly oblige.";
            }
            else
            {
                foodPref = ddlFoodPref.SelectedItem.Value;
            }
            string secret = tbPassword.Text;
            Response.Write($"Thank you, {name} for your booking.<br/>");
            Response.Write($"{name} your booking for {pax} people in " +
                $"our {roomType} room is confirmed. <br/>");
            Response.Write($"{name} your food preference is {foodPref}. <br/>");
            Response.Write($"{name} your secret is {tbPassword.Text}. <br/>");
            Response.Write($"{name}, thank you for choosing following facilities. <br/>");
            foreach (ListItem temp in opFeat)
            {
                Response.Write(temp.Text + "<br/>");
            }
            Response.Write("Take care.");
            Response.Write($"ViewState:<b>{ViewState["pax"]}</b><br/>");
        }

        protected void ddlFoodPref_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void cklistOpFacility_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}