<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdoptionRequest.aspx.cs" Inherits="prjWebCsPurrfectMatch.UI.AdoptionRequest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">

        <title>Purrfect Match | Request for Adoption</title>

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

                <!-- REQUEST SECTION -->
                <div class="request_section">

                    <!-- TITRE -->
                    <p class="request_title">Adoption Request</p>

                    <!-- SELECT A CAT -->
                    <div class="request_field">
                        <asp:Label ID="lblSelectCat" runat="server" CssClass="request_label" Text="Select a cat :"></asp:Label>
                        <asp:DropDownList ID="ddLstCats" runat="server" CssClass="request_input"></asp:DropDownList>
                    </div>

                    <!-- APPLICATION LETTER -->
                    <div class="request_field">
                        <asp:Label ID="lblApplicationLetter" runat="server" CssClass="request_label" Text="Application Letter :"></asp:Label>
                        <asp:TextBox ID="txtLetter" runat="server" CssClass="request_textarea" TextMode="MultiLine" Rows="8"></asp:TextBox>
                    </div>

                    <asp:Label ID="lblMessage" runat="server" CssClass="message_confirmation"></asp:Label>

                    <!-- SUBMIT BUTTON -->
                    <asp:Button ID="btnSubmit" runat="server" CssClass="request_button" Text="Submit Request" />

                </div>

                <!-- REQUEST HISTORY PANEL -->
                <asp:Panel ID="pnlRequestHistory" runat="server"  CssClass="section_request_adoption" Visible="false">

                    <p class="request_title">My Previous Adoption Requests</p>

                    <!-- Un Repeater pour afficher chaque demande -->
                    <asp:Repeater ID="rptrRequests" runat="server">
                        <HeaderTemplate>
                            <div class="history_list">
                                </HeaderTemplate>
        
                                <ItemTemplate>
                                    <div class="history_item">
                                        <p><strong>Cat :</strong> <%# Eval("CatDisplay") %></p>
                                        <p><strong>Submitted :</strong> <%# Eval("SubmittedDate", "{0:yyyy-MM-dd}") %></p>
                                        <p><strong>Status :</strong> <%# Eval("RequestStatus") %></p>

                                        <asp:Panel runat="server" Visible='<%# Eval("ReviewedDate") != null %>'>
                                            <p><strong>Reviewed :</strong> <%# Eval("ReviewedDate", "{0:yyyy-MM-dd}") %></p>
                                        </asp:Panel>

                                        <hr />
                                    </div>
                                </ItemTemplate>
                        <FooterTemplate>
                            </div>
                        </FooterTemplate>
                    </asp:Repeater>
                </asp:Panel>

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
