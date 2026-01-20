<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="prjWebCsPurrfectMatch.UI.Register" MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">

        <title>Purrfect Match | Register</title>

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
                        <asp:HyperLink ID="lnkLogin1" runat="server" NavigateUrl="~/UI/Login.aspx" Text="Log In" CssClass="header_link"></asp:HyperLink>
                        <asp:HyperLink ID="lnkIndex" runat="server" NavigateUrl="~/UI/Index.aspx" Text="Return" CssClass="header_link"></asp:HyperLink>
                    </div>
                </div>
            </div>

            <!-- MAIN CONTENT -->
            <div id="content" class="content">
                <div class="form_register">
                    <div class="register_form_container">
    
                        <p class="form_title">JOIN OUR COMMUNITY</p>
                        <p class="form_subtitle">Create your account to connect, share, and help animals find loving homes.</p>

                        <!-- Champs de saisie -->
                        <div class="form_line_double">
                            <asp:TextBox ID="txtFirstName" runat="server" placeholder="First Name" CssClass="form_input_inline"></asp:TextBox>
                            <asp:TextBox ID="txtLastName" runat="server" placeholder="Last Name" CssClass="form_input_inline"></asp:TextBox>
                        </div>
                    
                        <div class="form_line_horizontal">
                            <asp:Label ID="lblBirthDate" AssociatedControlID="txtBirthDate" runat="server" Text="Birth Date :" CssClass="form_label_inline"></asp:Label>
                            <asp:TextBox ID="txtBirthDate" runat="server" TextMode="Date" CssClass="form_input_inline"></asp:TextBox>
                        </div>

                        <div class="form_line">
                            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" placeholder="Email" CssClass="form_input_inline"></asp:TextBox>
                        </div>
                    
                        <div class="form_line">
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password" CssClass="form_input_inline"></asp:TextBox>
                        </div>

                        <div class="form_line">
                            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" placeholder="Confirm Password" CssClass="form_input_inline"></asp:TextBox>
                        </div>

                        <div class="form_line">
                            <asp:Button ID="btnRegister" OnClick="btnRegister_Click" runat="server" Text="Create Account" CssClass="btn_form" />
                        </div>

                        <!-- Message de validation / erreur -->
                        <div class="message form_message">
                            <asp:Label ID="lblMessage" runat="server"></asp:Label>
                        </div>
                    
                        <!-- Lien vers l’inscription -->
                        <div class="form_link">
                            <asp:HyperLink ID="lnkLogin2" runat="server" NavigateUrl="~/UI/Login.aspx" Text="Already have an account? Log in here!"></asp:HyperLink>
                        </div>

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
