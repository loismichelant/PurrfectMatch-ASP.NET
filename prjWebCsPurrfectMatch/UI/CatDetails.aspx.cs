using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using prjWebCsPurrfectMatch.Models;
using prjWebCsPurrfectMatch.Services;

namespace prjWebCsPurrfectMatch.UI
{
    public partial class CatDetails : System.Web.UI.Page
    {

        UserService userService = new UserService();
        CatService catService = new CatService();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadProfile();

                LoadCat();
            }
        }

        private void LoadProfile()
        {
            User currentUser = Session["CurrentUser"] as User;

            if (currentUser == null)
            {
                Response.Redirect("~/UI/Login.aspx");
                return;
            }

            lblName.Text = $"Welcome, {currentUser.FirstName}!";
            lblRole.Text = currentUser.UserRole.ToString();
        }

        private void LoadCat()
        {
            if (!int.TryParse(Request.QueryString["id"], out int catId))
            {
                Response.Redirect("~/UI/Home.aspx");
                return;
            }

            var cat = catService.GetCat(catId);

            if (cat == null)
            {
                Response.Redirect("~/UI/Home.aspx");
                return;
            }

            lblCatName.Text = cat.Name;
            lblGenderAndAge.Text = cat.FormattedAgeAndGender;
            imgCat.ImageUrl = cat.PictureURL;
            lblFurColor.Text = cat.FurColor?.ToString() ?? "Unknown";
            lblFurLength.Text = cat.FurLength?.ToString() ?? "Unknown";
            lblEnergy.Text = cat.EnergyLevel?.ToString() ?? "Unknown";
            lblKids.Text = $"Kids: {(cat.CompatibilityKids == true ? "Yes" : "No")}";
            lblCats.Text = $"Cats: {(cat.CompatibilityCats == true ? "Yes" : "No")}";
            lblDogs.Text = $"Dogs: {(cat.CompatibilityDogs == true ? "Yes" : "No")}";
            lblDescription.Text = string.IsNullOrWhiteSpace(cat.Description)
                ? "No description provided."
                : cat.Description;

            btnAdoption.NavigateUrl = $"~/GUI/Forms/AdoptionRequest.aspx?id={cat.CatId}";
        }

        protected void lnkBtnLogout_Click(object sender, EventArgs e)
        {
            userService.Logout();
            Response.Redirect("~/UI/Login.aspx");
        }
    }
}