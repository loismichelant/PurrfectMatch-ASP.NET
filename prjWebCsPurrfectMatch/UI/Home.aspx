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
            <div id="header" class="header">
                <div class="header_box">

                    <!-- Logo -->
                    <div class="header_block header_logo">
                        <a href="#header">
                            <img src="../Resources/Images/logo_name.png" class="logo" alt="Purrfect Match" />
                        </a>
                    </div>
                     
                    <!-- Navigation Links -->
                    <div class="header_block header_links">
                        <asp:LinkButton ID="lnkBtnLogout" runat="server" Text="Log Out" CssClass="header_link"></asp:LinkButton>
                    </div>
                </div>
            </div>

            <!-- SIDEBAR MENU -->
            <div id="sidebar" class="sidebar">

                <div class="sidebar_account">
                    <a href="#" id="lnkAccount">
                        <img src="../Resources/Icons/account.svg" id="img_account" />
                    </a>
                    <div class="account_text">
                        <asp:Label ID="lblName" runat="server" CssClass="account_name"></asp:Label>
                        <asp:Label ID="lblRole" runat="server" CssClass="account_role"></asp:Label>
                    </div>
                </div>

                <asp:HyperLink ID="lnkHome" NavigateUrl="~/UI/Home.aspx" runat="server" CssClass="sidebar_link"><span>Our Cats</span></asp:HyperLink>
                <asp:HyperLink ID="lnkAdopt" NavigateUrl="~/UI/AdoptionRequest.aspx" runat="server" CssClass="sidebar_link"><span>Adoption Application</span></asp:HyperLink>
                <asp:HyperLink ID="lnkDonate" runat="server" CssClass="sidebar_link"><span>Make a donation</span></asp:HyperLink>
            </div>

            <!-- CONTENT -->
            <div id="content" class="content">

                <!-- CRITERIA SELECTION BOX -->
                <div class="panel_filters">

                    <!-- GENDER -->
                    <div class="filter">
                        <asp:Label ID="lblCriteriaGender" runat="server" CssClass="filter_label" Text="Gender"></asp:Label>
                        <asp:DropDownList ID="ddlGender" runat="server" CssClass="filter_input"></asp:DropDownList>
                    </div>

                    <!-- AGE GROUP -->
                    <div class="filter">
                        <asp:Label ID="lblCriteriaAge" runat="server" CssClass="filter_label" Text="Age Group"></asp:Label>
                        <asp:DropDownList ID="ddlAgeGroup" runat="server" CssClass="filter_input"></asp:DropDownList>
                    </div>

                    <!-- FUR LENGTH -->
                    <div class="filter">
                        <asp:Label ID="lblCriteriaFurLength" runat="server" CssClass="filter_label" Text="Fur Length"></asp:Label>
                        <asp:DropDownList ID="ddlFurLength" runat="server" CssClass="filter_input"></asp:DropDownList>
                    </div>

                    <!-- FUR COLOR -->
                    <div class="filter">
                        <asp:Label ID="lblCriteriaFurColor" runat="server" CssClass="filter_label" Text="Fur Color"></asp:Label>
                        <asp:DropDownList ID="ddlFurColor" runat="server" CssClass="filter_input"></asp:DropDownList>
                    </div>

                    <!-- ENERGY LEVEL -->
                    <div class="filter">
                        <asp:Label ID="lblCriteriaEnergyLevel" runat="server" CssClass="filter_label" Text="Energy Level"></asp:Label>
                        <asp:DropDownList ID="ddlEnergyLevel" runat="server" CssClass="filter_input"></asp:DropDownList>
                    </div>

                    <!-- COMPATIBILITIES -->
                    <div class="filter filter_checkboxes">
                        <asp:Label ID="lblCriteriaCompatibility" runat="server" CssClass="filter_label" Text="Compatibility"></asp:Label>
                        <asp:CheckBoxList ID="cblCompatibility" runat="server" RepeatDirection="Horizontal" CssClass="filter_input"></asp:CheckBoxList>
                    </div>

                    <!-- BUTTON FILTER -->
                    <div class="filters_actions">
                        <asp:Button ID="btnApplyFilters" runat="server" Text="Apply Filters" CssClass="btn_filter" />
                    </div>
                </div>

                <!-- CAT CARDS -->
                <div class="panel cats_grid">
                    <asp:Repeater ID="rptCats" runat="server">
                        <ItemTemplate>
                            <div class="cat_card">
                                <img src='<%# Eval("PictureURL") %>' class="img_card_cat" alt="Cat Picture" />
                                <div class="cat_card_info">
                                    <p class="cat_card_name"><%# Eval("Name") %></p>
                                    <p class="cat_card_gender">
                                        <span class="cat_card_icon_paw"></span>
                                        <%# Eval("Gender") %>
                                    </p>
                                    <p class="cat_card_age">
                                        <span class="cat_card_icon_paw"></span>
                                        <%# Eval("FormattedAge") %>
                                    </p>
                                </div>
                                <asp:HyperLink ID="lnkCatDetails" runat="server" CssClass="btn_card_cats" NavigateUrl='<%# "~/UI/CatDetails.aspx?id=" + Eval("CatId") %>' Text="View Details" />
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>

            </div>

            <!-- FOOTER -->
            <div id="footer" class="footer">
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
