<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="prjWebCsPurrfectMatch.UI.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">

        <title>Purrfect Match | Login</title>
        
        <!-- CSS Sheet(s) -->
        <link rel="stylesheet" type="text/css" href="../Resources/Styles/Global.css" />

    </head>
    <body>
        <form id="form1" runat="server">
            
            <!-- HEADER -->
            <div class="header">
                <div class="header_box">
    
                    <!-- Logo -->
                    <div class="header_block header_logo_form">
                        <a href="Index.aspx">
                            <img src="../Resources/Images/logo_name.png" class="logo_form" alt="Purrfect Match" />
                        </a>
                    </div>
    
                    <!-- Navigation Links -->
                    <div class="header_block header_links_form">
                        <asp:HyperLink ID="lnkRegister1" runat="server" NavigateUrl="~/UI/Register.aspx" Text="Register" CssClass="header_link"></asp:HyperLink>
                        <asp:HyperLink ID="lnkIndex" runat="server" NavigateUrl="~/UI/Index.aspx" Text="Return" CssClass="header_link"></asp:HyperLink>
                    </div>
                </div>
            </div>

            <!-- MAIN CONTENT -->
            <div id="content" class="content">
                <div class="form_login">
    
                    <p class="login_title">WELCOME BACK !</p>
                    <p class="login_subtitle">Log in to continue caring, sharing, and adopting with us.</p>
    
                    <!-- Champs de saisie -->
                    <div class="form_lines">
                        <div class="form_line">
                            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" placeholder="Email"></asp:TextBox>
                        </div>
        
                        <div class="form_line">
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                        </div>

                        <div class="form_line">
                            <asp:Button ID="btnLogin" runat="server" Text="Log In" CssClass="btn_third" />
                        </div>
                    </div>

                    <!-- Message de validation / erreur -->
                    <div class="form_message">
                        <asp:Label ID="lblMessage" runat="server"></asp:Label>
                    </div>

                    <!-- Lien vers l’inscription -->
                    <div class="form_link_register">
                        <asp:HyperLink ID="lnkRegister2" runat="server" NavigateUrl="~/UI/Register.aspx" Text="Not registered yet? Create an account"></asp:HyperLink>
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
