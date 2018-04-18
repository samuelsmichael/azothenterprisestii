<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WorkGuidesMembership.aspx.cs"
    Inherits="Azoth.WorkGuidesMembership" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<!-- Google Analytics -->
<script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date(); a = s.createElement(o),
m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

    ga('create', 'UA-52884112-2', 'auto');
    ga('send', 'pageview');
</script>
<!-- End Google Analytics -->
    <title>Membership</title>
    <link href="page.css" type="text/css" rel="stylesheet" />
    <link href="navbar.css" type="text/css" rel="stylesheet" />
    <link href="text.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        html, body
        {
            height: 627px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <center>
        <div class="otherthanmainpage" style="height: 607px; position: relative;">
            <div class="BodyTitle2">
                Work Guides Membership</div>
            <asp:Panel runat="server" ID="pnlNotMember">
                <div class="BodyText" style="font-size: 12pt; margin-top: 2em; padding-left: 100px;
                    padding-right: 100px;">
                    There are a year's worth of weekly Work Guides. In order to view the rest of them, and if you are a member, please key
                    in the password. Otherwise, to become a member, there is a one-time fee of $10.00 (USD), which you can
                    pay by clicking the Pay Now button, below.</div>
            </asp:Panel>
            <asp:Panel runat="server" ID="pnlJustPaid" Visible="false">
                <div class="BodyText" style="font-size: 12pt; margin-top: 2em; padding-left: 100px;
                    padding-right: 100px;">
                    <asp:Label runat="server" ID="lblSuccessPaymentMessage"></asp:Label>
                </div>
            </asp:Panel>
            <asp:Panel Style="margin-top: 2em;" ID="pnlValidate" runat="server" Visible="true">
                <table>
                    <tr>
                        <td>
                            Member password:
                        </td>
                        <td>
                            <asp:TextBox ID="tbPasscode" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="btnEnterPasscode" runat="server" Text="Go" OnClick="btnEnterPasscode_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblError" Text="Invalid passcode" runat="server" Visible="false" ForeColor="Red"
                                Font-Bold="true"></asp:Label>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Panel runat="server" ID="pnlPaymentButtons">


                       <asp:ImageButton style="margin-top:3em;" ID="ImageButton1DiamondSoftware" runat="server" 
                       ImageUrl="https://www.paypalobjects.com/en_US/i/btn/btn_paynowCC_LG.gif" PostBackUrl="https://www.paypal.com/cgi-bin/webscr" />
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="NNBZSSULKCSSN">
<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">

<!--
<asp:ImageButton Style="margin-top: 3em;" ID="ImageButton2Sandbox" runat="server" ImageUrl="https://www.sandbox.paypal.com/en_US/i/btn/btn_buynowCC_LG.gif"
                    PostBackUrl="https://www.sandbox.paypal.com/cgi-bin/webscr" />
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="UHKERL2FYB7YC">
<img alt="" border="0" src="https://www.sandbox.paypal.com/en_US/i/scr/pixel.gif" width="1" height="1">

-->

<!--
<asp:ImageButton Style="margin-top: 3em;" ID="ImageButton2DiamondSoftwareAzoth" runat="server" ImageUrl="https://www.sandbox.paypal.com/en_US/i/btn/btn_buynowCC_LG.gif"
                    PostBackUrl="https://www.sandbox.paypal.com/cgi-bin/webscr" />
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="P77M8L4BNSAA2">
<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">

-->









                
            </asp:Panel>
            <div style="position: absolute; bottom: 15px;">
                <hr />
                <table width="980px">
                    <tr>
                        <td align="left" style="width: 20%;">
                            <asp:Button class="styledbuttons" Style="margin-left: 1em;" ID="btnHome1" runat="server"
                                Text="Home" OnClick="btnHome1_Click" />
                            <asp:Button class="styledbuttons" Style="margin-left: 1em;" ID="btnContactUs" runat="server"
                                Text="Contact Us" OnClick="btnContactUs_Click" />
                        </td>
                        <td align="center" style="width: 60%;">
                            <asp:Label Style="font-weight: bold;" ID="lblThankYou" runat="server" Visible="false"
                                ForeColor="#ee4803" Text="Thank you for contacting us. We will get back to you."></asp:Label>
                        </td>
                        <td align="right" style="width: 20%;">
                            <asp:Button class="styledbuttons" Style="margin-right: 1em;" ID="btnToActualWorkGuides"
                                runat="server" Text="Work Guides" OnClick="btnToActualWorkGuides_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </center>
    </form>
</body>
</html>
