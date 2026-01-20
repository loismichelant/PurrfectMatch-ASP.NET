using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using prjWebCsPurrfectMatch.Helpers;
using prjWebCsPurrfectMatch.Services;

namespace prjWebCsPurrfectMatch.UI
{
    public partial class Login : System.Web.UI.Page
    {

        UserService service = new UserService();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string userEmail = txtEmail.Text.Trim();
            string userPassword = txtPassword.Text.Trim();

            if (!InputValidator.AreNotEmpty(userEmail, userPassword))
            {
                lblMessage.Text = "Please enter both email and password.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            if (!InputValidator.IsValidEmail(userEmail))
            {
                lblMessage.Text = "Please enter a valid email address.";
                return;
            }

            string hashedPassword = PasswordHelper.HashPassword(userPassword);

            var user = service.Login(userEmail, hashedPassword);

            if (user != null)
            {
                Session["CurrentUser"] = user;

                Response.Redirect("~/UI/Home.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid email or password.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}