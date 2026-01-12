<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="prjWebCsPurrfectMatch.UI.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">

        <title>Purrfect Match | Home</title>

        <!-- CSS Sheet(s) -->
        <link rel="stylesheet" type="text/css" href="../Resources/Styles/Home.css" />

    </head>
    <body>
        <form id="form1" runat="server">

            <!-- HEADER -->
            <div class="header" id="top">

                <!-- Logo -->
                <div class="header_component" id="comp_logo">
                    <a href="#top">
                        <img src="../Resources/Images/logo_name.png" class="logo" alt="Purrfect Match" />
                    </a>
                </div>

                <!-- Navigation Links -->
                <div class="header_component" id="comp_links">
                    <asp:LinkButton ID="lnkBtnLogout" runat="server" Text="Log Out" CssClass="header_option"></asp:LinkButton>
                </div>
            </div>

            <!-- MENU -->
            <div class="menu">

                <div class="profile_section">
                    <a href="#" id="lnk_account">
                        <img src="../Resources/Images/icon_account.svg" id="img_account" />
                    </a>
                    <div class="profile_text">
                        <asp:Label ID="lblName" runat="server" CssClass="profile_name"></asp:Label>
                        <asp:Label ID="lblRole" runat="server" CssClass="profile_role"></asp:Label>
                    </div>
                </div>

                <asp:HyperLink ID="lnkViewCats" NavigateUrl="Home.aspx" runat="server" CssClass="menu_link"><span>View Cats</span></asp:HyperLink>
                <asp:HyperLink ID="lnkAdopt" NavigateUrl="AdoptionRequest.aspx" runat="server" CssClass="menu_link"><span>Adoption Application</span></asp:HyperLink>
                <asp:HyperLink ID="lnkDonate" runat="server" CssClass="menu_link"><span>Make a donation</span></asp:HyperLink>
            </div>

            <!-- MAIN CONTENT -->
            <div class="main_content">

                <!-- CRITERIA SELECTION BOX -->
                <div class="criteria_selection_box">

                    <!-- GENDER -->
                    <div class="criteria_box">
                        <asp:Label ID="lblCriteriaGender" runat="server" CssClass="criteria_input_label" Text="Gender"></asp:Label>
                        <asp:DropDownList ID="ddLstGender" runat="server" CssClass="criteria_input"></asp:DropDownList>
                    </div>

                    <!-- AGE GROUP -->
                    <div class="criteria_box">
                        <asp:Label ID="lblCriteriaAge" runat="server" CssClass="criteria_input_label" Text="Age Group"></asp:Label>
                        <asp:DropDownList ID="ddLstAgeGroup" runat="server" CssClass="criteria_input"></asp:DropDownList>
                    </div>

                    <!-- FUR LENGTH -->
                    <div class="criteria_box">
                        <asp:Label ID="lblCriteriaFurLength" runat="server" CssClass="criteria_input_label" Text="Fur Length"></asp:Label>
                        <asp:DropDownList ID="ddLstFurLength" runat="server" CssClass="criteria_input"></asp:DropDownList>
                    </div>

                    <!-- FUR COLOR -->
                    <div class="criteria_box">
                        <asp:Label ID="lblCriteriaFurColor" runat="server" CssClass="criteria_input_label" Text="Fur Color"></asp:Label>
                        <asp:DropDownList ID="ddLstFurColor" runat="server" CssClass="criteria_input"></asp:DropDownList>
                    </div>

                    <!-- ENERGY LEVEL -->
                    <div class="criteria_box">
                        <asp:Label ID="lblCriteriaEnergyLevel" runat="server" CssClass="criteria_input_label" Text="Energy Level"></asp:Label>
                        <asp:DropDownList ID="ddLstEnergyLevel" runat="server" CssClass="criteria_input"></asp:DropDownList>
                    </div>

                    <!-- COMPATIBILITIES -->
                    <div class="criteria_box_checkbox">
                        <asp:Label ID="lblCriteriaCompatibility" runat="server" CssClass="criteria_input_label" Text="Compatibility"></asp:Label>
                        <asp:CheckBoxList ID="chkBxLstCompatibility" RepeatDirection="Horizontal" runat="server" CssClass="criteria_input"></asp:CheckBoxList>
                    </div>

                    <!-- BUTTON FILTER -->
                    <div class="criteria_row_button">
                        <asp:Button ID="btnApplyFilters" runat="server" Text="Apply Filters" CssClass="btn_main" />
                    </div>
                </div>

                <!-- CAT CARDS -->
                <div class="criteria_selection_box">
                    <asp:Repeater ID="rptrCatProfiles" runat="server">
                        <ItemTemplate>
                            <div class="cat_card">
                                <img src='<%# Eval("PictureURL") %>' alt="Cat Picture" class="cat_img" />
                                <div class="cat_info">
                                    <p class="cat_name"><%# Eval("Name") %></p>
                                    <p class="cat_gender">
                                        <span class="cat_icon_paw"></span>
                                        <%# Eval("Gender") %>
                                    </p>
                                    <p class="cat_age">
                                        <span class="cat_icon_paw"></span>
                                        <%# Eval("FormattedAge") %>
                                    </p>
                                </div>
                                <asp:HyperLink ID="lnkViewCatDetails" runat="server" CssClass="btn_go_catdetails" NavigateUrl='<%# "~/UI/CatDetails.aspx?id=" + Eval("CatId") %>' Text="View Details" />
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>

            </div>

            <!-- FOOTER -->
            <div class="footer">
                <p class="footer_text_top">Find your purrfect match.</p>

                <div class="media_links">
                    <div class="media_link">
                        <img src="https://upload.wikimedia.org/wikipedia/commons/5/57/X_logo_2023_%28white%29.png?20230728230735" alt="Twitter Logo" class="logo_link_image" />
                        <p>Follow us on X</p>
                    </div>

                    <div class="media_link">
                        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Facebook_white_icon_svg.svg/1024px-Facebook_white_icon_svg.svg.png?20230420144829" alt="Facebook Logo" class="logo_link_image" />
                        <p>Follow us on Facebook</p>
                    </div>

                    <div class="media_link">
                        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/Instagram_white.svg/1024px-Instagram_white.svg.png?20250523144816" alt="Instagram Logo" class="logo_link_image" />
                        <p>Follow us on Instagram</p>
                    </div>
                </div>

                <p class="footer_text_bottom">Purrfect Match is a registered charity.</p>
                <p class="footer_text_bottom">Our charitable identification number is: 123456789 PM 0007</p>
                <p class="footer_text_copyright">&#169; 2025 Purrfect Match</p>
            </div>

        </form>
    </body>
</html>
