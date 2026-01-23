using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using prjWebCsPurrfectMatch.Models;
using prjWebCsPurrfectMatch.Models.Enums;
using prjWebCsPurrfectMatch.Services;

namespace prjWebCsPurrfectMatch.UI
{
    public partial class Home : System.Web.UI.Page
    {

        UserService userService = new UserService();
        CatService catService = new CatService();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadProfile();

                LoadCats();

                LoadListCatGenders();
                LoadListCatAgeGroups();
                LoadListCatFurLengths();
                LoadListCatFurColors();
                LoadListCatEnergyLevels();
                LoadListCatCompatibilities();
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

        private void LoadCats()
        {
            var cats = catService.GetCatsReadyForAdoption();

            if (cats == null || !cats.Any())
            {
                rptCats.Visible = false;
                lblMessageCats.Text = "There are no cats available for adoption.";
                lblMessageCats.Visible = true;
            }
            else
            {
                rptCats.Visible = true;
                lblMessageCats.Visible = false;

                rptCats.DataSource = cats;
                rptCats.DataBind();
            }
        }

        private void LoadListCatGenders()
        {
            ddlGender.Items.Clear();
            ddlGender.Items.Add(new ListItem("Any", ""));

            foreach (CatGender val in Enum.GetValues(typeof(CatGender)))
            {
                ddlGender.Items.Add(new ListItem(val.ToString(), ((int)val).ToString()));
            }
        }

        private void LoadListCatAgeGroups()
        {
            ddlAgeGroup.Items.Clear();
            ddlAgeGroup.Items.Add(new ListItem("Any", ""));
            ddlAgeGroup.Items.Add(new ListItem("Young (< 2 years)", "Young"));
            ddlAgeGroup.Items.Add(new ListItem("Adult (2-7 years)", "Adult"));
            ddlAgeGroup.Items.Add(new ListItem("Senior (7+ years)", "Senior"));
        }

        private void LoadListCatFurLengths()
        {
            ddlFurLength.Items.Clear();
            ddlFurLength.Items.Add(new ListItem("Any", ""));

            foreach (CatFurLength val in Enum.GetValues(typeof(CatFurLength)))
            {
                ddlFurLength.Items.Add(new ListItem(val.ToString(), ((int)val).ToString()));
            }
        }

        private void LoadListCatFurColors()
        {
            ddlFurColor.Items.Clear();
            ddlFurColor.Items.Add(new ListItem("Any", ""));

            foreach (CatFurColor val in Enum.GetValues(typeof(CatFurColor)))
            {
                ddlFurColor.Items.Add(new ListItem(val.ToString(), ((int)val).ToString()));
            }
        }

        private void LoadListCatEnergyLevels()
        {
            ddlEnergyLevel.Items.Clear();
            ddlEnergyLevel.Items.Add(new ListItem("Any", ""));

            foreach (CatEnergyLevel val in Enum.GetValues(typeof(CatEnergyLevel)))
            {
                ddlEnergyLevel.Items.Add(new ListItem(val.ToString(), ((int)val).ToString()));
            }
        }

        private void LoadListCatCompatibilities()
        {
            cblCompatibility.Items.Clear();
            cblCompatibility.Items.Add(new ListItem("Kids", "Kids"));
            cblCompatibility.Items.Add(new ListItem("Cats", "Cats"));
            cblCompatibility.Items.Add(new ListItem("Dogs", "Dogs"));
        }

        protected void btnApplyFilters_Click(object sender, EventArgs e)
        {
            var filtered = catService.SearchCats(
                ddlGender.SelectedValue,
                ddlAgeGroup.SelectedValue,
                ddlFurLength.SelectedValue,
                ddlFurColor.SelectedValue,
                ddlEnergyLevel.SelectedValue,
                cblCompatibility.Items.FindByValue("Kids")?.Selected == true ? true : (bool?)null,
                cblCompatibility.Items.FindByValue("Cats")?.Selected == true ? true : (bool?)null,
                cblCompatibility.Items.FindByValue("Dogs")?.Selected == true ? true : (bool?)null
            );

            if (!filtered.Any())
            {
                rptCats.Visible = false;
                lblMessageCats.Text = "No cats match your search criteria. Try adjusting the filters.";
                lblMessageCats.Visible = true;
            }
            else
            {
                rptCats.Visible = true;
                lblMessageCats.Visible = false;

                rptCats.DataSource = filtered;
                rptCats.DataBind();
            }
        }

        protected void lnkBtnLogout_Click(object sender, EventArgs e)
        {
            userService.Logout();
            Response.Redirect("~/UI/Login.aspx");
        }
    }
}