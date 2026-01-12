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
            <div class="header">

                <!-- Logo -->
                <div class="header_component" id="comp_logo">
                    <a href="Home.aspx">
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

                <!-- DETAILS SECTION -->
                <div class="details_section">
                    <p class="cat_name">
                        <asp:Label ID="lblCatName" runat="server"></asp:Label>
                    </p>
    
                    <div id="section_row">
        
                        <!-- IMAGE DU CHAT -->
                        <asp:Image ID="imgCat" runat="server" CssClass="cat_img" />

                        <!-- INFO PRINCIPALE -->
                        <div class="cat_info">

                            <p class="cat_line">
                                <img src="../Resources/Images/logo_paw.png" class="paw_icon" />
                                <asp:Label ID="lblGenderAndAge" runat="server"></asp:Label>
                            </p>

                            <p class="cat_line">
                                <img src="../Resources/Images/logo_paw.png" class="paw_icon" />
                                Fur Color :
                                <asp:Label ID="lblFurColor" runat="server"></asp:Label>
                            </p>

                            <p class="cat_line">
                                <img src="../Resources/Images/logo_paw.png" class="paw_icon" />
                                Fur Length :
                                <asp:Label ID="lblFurLength" runat="server"></asp:Label>
                            </p>

                            <p class="cat_line">
                                <img src="../Resources/Images/logo_paw.png" class="paw_icon" />
                                Energy Level :
                                <asp:Label ID="lblEnergy" runat="server"></asp:Label>
                            </p>

                            <!-- COMPATIBILITÉS -->
                            <p class="cat_compat">
                                <img src="../Resources/Images/logo_paw.png" class="paw_icon" />
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

                    <div id="section_last">
                        <!-- DESCRIPTION -->
                        <p class="cat_description">
                            <asp:Label ID="lblDescription" runat="server"></asp:Label>
                        </p>

                        <!-- DEMANDE D’ADOPTION -->
                        <asp:HyperLink ID="btnAdoption" runat="server" CssClass="button" Text="Apply for Adoption" />
                    </div>
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
