<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CatDetails.aspx.cs" Inherits="prjWebCsPurrfectMatch.UI.CatDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">

        <title>Purrfect Match | View Cat</title>

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
                        <a href="<%= ResolveUrl("~/UI/Home.aspx") %>">
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
                    <a href="<%= ResolveUrl("~/UI/AccountDetails.aspx") %>" id="lnkAccount">
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

                <!-- DETAILS SECTION -->
                <div class="panel panel_details">
                    <p class="cat_details_name">
                        <asp:Label ID="lblCatName" runat="server"></asp:Label>
                    </p>
    
                    <div id="panel_row">
        
                        <!-- IMAGE DU CHAT -->
                        <asp:Image ID="imgCat" runat="server" CssClass="cat_details_img" />

                        <!-- INFO PRINCIPALE -->
                        <div class="cat_details_info">

                            <p class="cat_row">
                                <img src="../Resources/Images/logo_paw.png" class="paw_details_icon" />
                                <asp:Label ID="lblGenderAndAge" runat="server"></asp:Label>
                            </p>

                            <p class="cat_row">
                                <img src="../Resources/Images/logo_paw.png" class="paw_details_icon" />
                                Fur Color :
                                <asp:Label ID="lblFurColor" runat="server"></asp:Label>
                            </p>

                            <p class="cat_row">
                                <img src="../Resources/Images/logo_paw.png" class="paw_details_icon" />
                                Fur Length :
                                <asp:Label ID="lblFurLength" runat="server"></asp:Label>
                            </p>

                            <p class="cat_row">
                                <img src="../Resources/Images/logo_paw.png" class="paw_details_icon" />
                                Energy Level :
                                <asp:Label ID="lblEnergy" runat="server"></asp:Label>
                            </p>

                            <!-- COMPATIBILITÉS -->
                            <p class="cat_compat">
                                <img src="../Resources/Images/logo_paw.png" class="paw_details_icon" />
                                Compatibility :

                            </p>

                            <ul class="compat_list">
                                <li>
                                    <asp:Label ID="lblKids" runat="server"></asp:Label>
                                </li>

                                <li>
                                    <asp:Label ID="lblCats" runat="server"></asp:Label>
                                </li>

                                <li>
                                    <asp:Label ID="lblDogs" runat="server"></asp:Label>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="panel_end">
                        <!-- DESCRIPTION -->
                        <p class="cat_details_description">
                            <asp:Label ID="lblDescription" runat="server"></asp:Label>
                        </p>

                        <!-- DEMANDE D’ADOPTION -->
                        <asp:HyperLink ID="btnAdoption" runat="server" CssClass="btn_details_cats" Text="Apply for Adoption" />
                    </div>
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
