<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WorkGuides2.aspx.cs" Inherits="Azoth.WorkGuides2" %>

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
    <title>Practical Work Guides</title>
    <link href="page.css" type="text/css" rel="stylesheet" />
    <link href="navbar.css" type="text/css" rel="stylesheet" />
    <link href="text.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <center>
        <div class="otherthanmainpage" style="height: 607px; position: relative; overflow:auto;">
            <asp:DataList ID="dlWorkGuides" Width="80%" RepeatDirection="Vertical" Style="padding-left: 5px;
                padding-right: 5px;" RepeatLayout="Table" ItemStyle-BorderStyle="Solid" ItemStyle-BorderWidth="0"
                runat="server" OnItemDataBound="dlWorkGuides_ItemDataBound">
                <ItemTemplate>
                    <div itemscope="" itemtype="http://schema.org/CreativeWork" style="text-align: center; padding-left: 5px; padding-right: 5px;">
                        <meta itemprop="creator" content="Lari Mangum" />
                        <div id="WGHeading" class="workguidesectionheading">
                            <div class="BodyTitle2a">
                                Work Guide</div>
                            <div class="workguideheadingweekbeginning">
                                Week Beginning
                                <span itemprop="dateCreated"><%# Eval("DateString")%></span></div>
                        </div>
                        <div id="WGPonderence" class="workguidesectionponderence">
                            <div class="workguidebodyheading">
                                Ponderence</div>
                            <div  class="ponderence">
                                <asp:Label itemprop="about" ID="lblToPonder" runat="server" Text='<%# Eval("ToPonder")%>'></asp:Label>
                            </div>
                            <div itemprop="contributor" itemscope="" itemtype="http://schema.org/Person">
                                <div class="ponderenceauthor">
                                    <asp:Label itemprop="name"  ID="lblToPonderAuthor" runat="server" Text='<%# Eval("ToPonderAuthor")%>'></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div id="WGToRead" class="workguidesectiontoread">
                            <div itemprop="citation" itemtype="http://schema.org/CreativeWork" itemscope="" >
                                <div class="workguidebodyheading">
                                    To Read</div>
                                <div class="toread">
                                    <meta itemprop="url" content='<%# Eval("ToReadURL") %>' />
                                    <asp:Label  ID="lblToRead" runat="server" Text='<%# Eval("ToRead")%>'></asp:Label>
                                </div>
                                <div class="toreadpages">
                                    <asp:Label itemprop="mainEntityOfPage" ID="lblToReadPages" runat="server" Text='<%# Eval("ToReadPages")%>'></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div id="WGPractice" class="workguidesectiontopractice">
                            <div class="workguidebodyheading">
                                To Practice</div>
                            <div itemprop="potentialAction" itemtype="http://schema.org/Action" itemscope="" class="topractice">
                                <asp:Label itemprop="description" ID="lblToPractice" runat="server" Text='<%# Eval("ToPractice")%>'></asp:Label>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
            <asp:Panel runat="server" ID="pnlBottom">
            <div style="position: absolute; bottom: 55px;">
                <table width="980px" cellpadding="0" cellspacing="0">
                    <tr align="center">
                        <td align="center">
                            <asp:LinkButton CssClass="workguidelink2" Style="font-size: smaller;" ID="lbWorkGuide"
                                ToolTip='Download' OnCommand="LinkButton1_Command" CommandName='Download It'
                                Text='Download document' runat="server">
                            </asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </div>
            <div style="position: absolute; bottom: 15px;">
                <hr />
                <table width="980px" cellpadding="0" cellspacing="0">
                    <tr>
                        <td align="left" style="width: 20%;">
                            <asp:Button CssClass="styledbuttons" Style="margin-left: 1em;" ID="btnPrevious" runat="server"
                                Text="Previous" OnClick="btnPrevious_Click" />
                            <asp:Button class="styledbuttons" Style="margin-left: 1em;" ID="btnHome1" runat="server"
                                Text="Home" OnClick="btnHome1_Click" />
                        </td>
                        <td align="center" style="width: 60%;">
                            <asp:Label Style="font-weight: bold; margin-right: 1em;" ID="lblThankYou" runat="server"
                                Visible="false" ForeColor="#ee4803" Text="Thank you for contacting us. We will get back to you."></asp:Label>
                            <asp:Button CssClass="styledbuttons" Visible="false" ID="btnDAll" runat="server"
                                Text="Download all Work Guides in a zip file" OnClick="btnDownloadZipFileOfAllFiles_Click" />
                        </td>
                        <td align="right" style="width: 20%;">
                            <asp:Button class="styledbuttons" Style="margin-right: 1em;" ID="btnContactUs" runat="server"
                                Text="Contact Us" OnClick="btnContactUs_Click" />
                            <asp:Button CssClass="styledbuttons" Style="margin-right: 1em;" ID="btnNext" runat="server"
                                Text="Next" OnClick="btnNext_Click" />
                        </td>
                    </tr>
                </table>
            </div>
            </asp:Panel>
        </div>
    </center>
    </form>
</body>
</html>
