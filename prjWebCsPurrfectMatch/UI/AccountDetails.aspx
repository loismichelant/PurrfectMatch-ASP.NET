<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccountDetails.aspx.cs" Inherits="prjWebCsPurrfectMatch.UI.AccountDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">

        <title>Purrfect Match | Account Details</title>

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

                <div class="panel_account">

                    <p class="account_details_title">My Profile</p>
    

                    <div class="account_details_section">

                        <p class="account_details_subtitle">Your Informations</p>

                        <div class="account_details_item">
                            <asp:Label ID="lblFirstName" runat="server" Text="First Name :" class="account_details_label"></asp:Label>
                            <asp:Label ID="txtFirstName" runat="server" CssClass="account_details_value"></asp:Label>
                        </div>

                        <div class="account_details_item">
                            <asp:Label ID="lblLastName" runat="server" Text="Last Name :" class="account_details_label"></asp:Label>
                            <asp:Label ID="txtLastName" runat="server" CssClass="account_details_value"></asp:Label>
                        </div>

                        <div class="account_details_item">
                            <asp:Label ID="lblBirthdate" runat="server" Text="Birthdate :" class="account_details_label"></asp:Label>
                            <asp:Label ID="txtBirthdate" runat="server" CssClass="account_details_value"></asp:Label>
                        </div>
                    </div>


                    <div class="account_actions_section">

                        <p class="account_details_subtitle">Change Email</p>

                        <div class="account_details_item">
                            <asp:Label ID="lblNewEmail" runat="server" Text="New Email :" class="account_details_label"></asp:Label>
                            <asp:TextBox ID="txtNewEmail" runat="server" CssClass="account_details_input"></asp:TextBox>
                        </div>

                        <asp:Button ID="btnChangeEmail" runat="server" Text="Update Email" CssClass="btn_account" />
                        <asp:Label ID="lblEmailMessage" runat="server" CssClass="message account_confirmation"></asp:Label>

                    </div>

                    <div class="account_actions_section">

                        <p class="account_details_subtitle">Change Password</p>

                        <div class="account_details_item">
                            <asp:Label ID="lblOldPassword" runat="server" Text="Old Password :" class="account_details_label"></asp:Label>
                            <asp:TextBox ID="txtOldPassword" runat="server" TextMode="Password" CssClass="account_details_input"></asp:TextBox>
                        </div>

                        <div class="account_details_item">
                            <asp:Label ID="lblNewPassword" runat="server" Text="New Password :" class="account_details_label"></asp:Label>
                            <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" CssClass="account_details_input"></asp:TextBox>
                        </div>
                        <div class="account_details_item">
                            <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm New Password :" class="account_details_label"></asp:Label>
                            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="account_details_input"></asp:TextBox>
                        </div>

                        <asp:Button ID="btnChangePassword" runat="server" Text="Update Password" CssClass="btn_account" />
                        <asp:Label ID="lblPwdMessage" runat="server" CssClass="message account_confirmation"></asp:Label>

                    </div>

                    <div class="account_actions_section danger_zone">

                        <p class="account_details_subtitle danger">Danger Zone</p>

                        <asp:Button ID="btnDeleteAccount" runat="server" Text="Delete My Account" CssClass="btn_account_danger" OnClientClick="return confirm('Are you sure you want to delete your account? This action cannot be undone.');" />
                        <asp:Label ID="lblDeleteAccountMessage" runat="server" CssClass="message account_confirmation"></asp:Label>

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
