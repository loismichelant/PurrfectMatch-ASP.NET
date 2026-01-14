<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="prjWebCsPurrfectMatch.UI.Index" MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">

        <title>Purrfect Match | Welcome</title>

        <!-- CSS Sheet(s) -->
        <link rel="stylesheet" type="text/css" href="../Resources/Styles/Global.css" />

    </head>
    <body>
        <form id="form1" runat="server">

            <!-- HEADER -->
            <div class="header_index" id="header">
                <div class="header_box">
                
                    <!-- Logo -->
                    <div class="header_block header_logo">
                        <a href="#header">
                            <img src="../Resources/Images/logo_name.png" class="logo" alt="Purrfect Match" />
                        </a>
                    </div>
                
                    <!-- Navigation Links -->
                    <div class="header_block header_links">
                        <asp:HyperLink ID="lnkJoin" runat="server" NavigateUrl="#top_join" Text="Join The Family" CssClass="header_link"></asp:HyperLink>
                        <asp:HyperLink ID="lnkStory" runat="server" NavigateUrl="#top_story" Text="Our Story" CssClass="header_link"></asp:HyperLink>
                        <asp:HyperLink ID="lnkContact" runat="server" NavigateUrl="#top_contact" Text="Contact Us" CssClass="header_link"></asp:HyperLink>
                    </div>
                </div>

            </div>

            <!-- MAIN CONTENT -->
            <div id="content" class="content_index">

                <!-- SECTION "Adopt Today" -->
                <div class="content_section" id="section_adopt">

                    <div class="adopt_left">
                        <p class="adopt_text" id="top_join">Adopt Today!</p>
                        <asp:Button ID="btnGoLogin" runat="server" Text="Log In" CssClass="btn_main" />
                        <asp:Button ID="btnGoRegister1" runat="server" Text="Register" CssClass="btn_main" />
                    </div>

                    <div class="adopt_right">
                        <img src="../Resources/Images/pic_cat_laying.png" class="img_fullcat" alt="Cat laying down" />
                    </div>
                </div>

                <!-- SECTION "Join The Family" -->
                <div class="content_section" id="section_join">

                    <div class="section_join_top">
                        <div class="join_card_left">
                            <asp:Button ID="btnGoRegister2" runat="server" Text="Donate" CssClass="btn_secondary" />
                            <p class="join_text">Your support helps us provide food, medical care, and a safe place for cats in need. Every contribution makes a difference.</p>
                        </div>

                        <div class="join_card_right">
                            <asp:Button ID="btnGoRegister3" runat="server" Text="Adopt" CssClass="btn_secondary" />
                            <p class="join_text">Ready to welcome a furry friend into your life?<br />Discover loving cats looking for their forever homes.</p>
                        </div>
                    </div>

                    <div class="section_join_bottom">
                        <div class="join_card_left">
                            <asp:Button ID="btnGoRegister4" runat="server" Text="Foster" CssClass="btn_secondary" />
                            <p class="join_text" id="top_story">Become a foster hero! Open your home temporarily and help a cat feel safe while awaiting adoption.</p>
                        </div>

                        <div class="join_card_right">
                            <asp:Button ID="btnGoRegister5" runat="server" Text="Volunteer" CssClass="btn_secondary" />
                            <p class="join_text">Give your time and heart. Join our volunteer team and help care for our cats, events, and community outreach.</p>
                        </div>
                    </div>
                </div>

                <!-- SECTION "Our Story" -->
                <div class="content_section" id="section_story">
                    <div class="story_left">
                        <h2 class="story_text">Our Story</h2>
                        <p><span style="color:#622815; font-weight:700;">Purrfect Match</span> began with a simple mission: to <span style="color:#ffedd4; font-weight:700;">give every cat a chance at a happy, loving life</span>. What started as a small volunteer effort has grown into a <span style="color:#ffedd4; font-style:italic;">passionate community</span> of caretakers, foster heroes, and adopters.</p>
                        <p>We rescue abandoned, neglected, and homeless cats, <span style="color:#ffedd4; font-weight:700;">offering medical care, safety, and comfort</span> while we search for the right home for each one. Whether they're shy, playful, or full of quirky charm, every cat deserves to be <span style="color:#ffedd4; font-weight:700;">seen, loved, and understood</span>.</p>
                        <p id="top_contact">With your support, we continue building a world where <span style="color:#ffedd4; font-weight:700;">every paw finds a soft place to land</span>. Together, we turn meows into second chances and create forever families - <span style="color:#ffedd4; font-weight:700; font-style:italic;">one purr at a time</span>.</p>
                    </div>

                    <div class="story_right">
                        <img src="../Resources/Images/pic_cat_face.png" class="img_catface" alt="Cat Face" />
                    </div>
                </div>

                <!-- SECTION "Contact Us" -->
                <div class="content_section" id="section_contact">
                    <p class="contact_title">Get In Touch With Us</p>
                    <p class="contact_text">Have questions about adoption, fostering, or volunteering? We’d love to hear from you.<br />Sign up for updates and stay connected with our rescue family.</p>

                    <div class="container_searchbar_and_button">
                        <div>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="searchbar"></asp:TextBox>
                            <asp:Button ID="btnSubscribe" runat="server" Text="Subscribe" CssClass="btn_secondary" />
                        </div>
                    </div>
                    <!-- Message de notification -->
                    <asp:Label ID="lblNotification" runat="server" Text=""></asp:Label>
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
