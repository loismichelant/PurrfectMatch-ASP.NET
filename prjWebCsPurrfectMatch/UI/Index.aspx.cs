using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using prjWebCsPurrfectMatch.Helpers;

namespace prjWebCsPurrfectMatch.UI
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGoLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UI/Login.aspx");
        }

        protected void btnGoRegister1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UI/Register.aspx");
        }

        protected void btnGoRegister2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UI/Register.aspx");
        }

        protected void btnGoRegister3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UI/Register.aspx");
        }

        protected void btnGoRegister4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UI/Register.aspx");
        }

        protected void btnGoRegister5_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UI/Register.aspx");
        }

        protected void btnSubscribe_Click(object sender, EventArgs e)
        {
            string visitorEmail = txtEmail.Text.Trim();

            if (!InputValidator.IsValidEmail(visitorEmail))
            {
                lblNotification.Text = "Please enter a valid email address.";
                lblNotification.ForeColor = System.Drawing.Color.Red;
                return;
            }

            lblNotification.Text = "Thank you for subscribing to our newsletter!";
            lblNotification.ForeColor = System.Drawing.Color.Green;
            txtEmail.Text = "";
        }
    }
}