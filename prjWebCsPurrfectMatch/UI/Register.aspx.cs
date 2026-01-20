using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using prjWebCsPurrfectMatch.Helpers;
using prjWebCsPurrfectMatch.Models;
using prjWebCsPurrfectMatch.Services;

namespace prjWebCsPurrfectMatch.UI
{
    public partial class Register : System.Web.UI.Page
    {

        UserService service = new UserService();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string userFirstName = txtFirstName.Text.Trim();
            string userLastName = txtLastName.Text.Trim();
            string userEmail = txtEmail.Text.Trim();
            string userPassword = txtPassword.Text.Trim();
            string userPasswordConfirm = txtConfirmPassword.Text.Trim();


            if (!InputValidator.AreNotEmpty(userFirstName, userLastName, userEmail, userPassword, userPasswordConfirm, txtBirthDate.Text))
            {
                lblMessage.Text = "Please fill in all fields.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            if (!InputValidator.IsValidName(userFirstName))
            {
                lblMessage.Text = "Please enter a valid first name.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            if (!InputValidator.IsValidName(userLastName))
            {
                lblMessage.Text = "Please enter a valid last name.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            if (!InputValidator.IsValidEmail(userEmail))
            {
                lblMessage.Text = "Please enter a valid email address.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            if (!InputValidator.PasswordsMatch(userPassword, userPasswordConfirm))
            {
                lblMessage.Text = "Passwords do not match.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            if (!DateTime.TryParse(txtBirthDate.Text, out DateTime userBirthDate))
            {
                lblMessage.Text = "Please enter a valid birth date.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            User newUser = new User
            {
                FirstName = userFirstName,
                LastName = userLastName,
                Email = userEmail,
                PasswordHash = PasswordHelper.HashPassword(userPassword),
                BirthDate = userBirthDate,
                AccountCreated = DateTime.Now,
                UserRole = Models.Enums.UserRole.Adopter
            };

            string result = service.Register(newUser);

            lblMessage.Text = (result == "Success") ? "Account created successfully!" : result;
            lblMessage.ForeColor = (result == "Success") ? System.Drawing.Color.Green : System.Drawing.Color.Red;
        }
    }
}