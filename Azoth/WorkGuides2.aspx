<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WorkGuides2.aspx.cs" Inherits="Azoth.WorkGuides2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Practical Work Guides</title>
    <link href="page.css" type="text/css" rel="stylesheet" />
    <link href="navbar.css" type="text/css" rel="stylesheet" />
    <link href="text.css" type="text/css" rel="stylesheet" />


</head>
<body>
    <form id="form1" runat="server">
    <center>
        <div class="otherthanmainpage"  style="height:607px;position:relative;">
            <asp:DataList ID="dlWorkGuides" Width="80%" RepeatDirection="Vertical"  Style="padding-left: 5px;
                padding-right: 5px;" RepeatLayout="Table" ItemStyle-BorderStyle="Solid" ItemStyle-BorderWidth="0"
                runat="server" onitemdatabound="dlWorkGuides_ItemDataBound">
                <ItemTemplate>
                    <div style="text-align: center; padding-left: 5px; padding-right:5px;">
                        <div id="WGHeading" class="workguidesection">
                            <div class="BodyTitle2">
                                Work Guide</div>
                            <div class="workguideheadingweekbeginning">
                                Week Beginning
                                <%# Eval("DateString")%></div>
                        </div>
                        <div id="WGPonderence" class="workguidesection">
                            <div class="workguidebodyheading">
                                Ponderence</div>
                            <div class="ponderence">
                                <asp:Label ID="lblToPonder" runat="server" Text='<%# Eval("ToPonder")%>'></asp:Label>
                            </div>
                            <div class="ponderenceauthor">
                                <asp:Label ID="lblToPonderAuthor" runat="server" Text='<%# Eval("ToPonderAuthor")%>'></asp:Label>
                            </div>
                        </div>
                        <div id="WGToRead" class="workguidesection">
                            <div class="workguidebodyheading">
                                To Read</div>
                            <div class="toread">
                                <asp:Label ID="lblToRead" runat="server" Text='<%# Eval("ToRead")%>'></asp:Label>
                            </div>
                            <div class="toreadpages">
                                <asp:Label ID="lblToReadPages" runat="server" Text='<%# Eval("ToReadPages")%>'></asp:Label>
                            </div>
                        </div>
                        <div id="WGPractice" class="workguidesection">
                            <div class="workguidebodyheading">
                                To Practice</div>
                            <div class="topractice">
                                <asp:Label ID="lblToPractice" runat="server" Text='<%# Eval("ToPractice")%>'></asp:Label>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
            <center>
            <div class="workguidelink2" style="margin-top:20px;">
                <asp:LinkButton ID="lbWorkGuide" ToolTip='Download' OnCommand="LinkButton1_Command" 
                    CommandName='Download It' Text='Download document' runat="server">
                </asp:LinkButton>
            </div>
            </center>
            <div  style="position:absolute; bottom:15px;" >
                <hr />
                <table width="980px" cellpadding="0" cellspacing="0">
                    <tr>
                        <td align="left" style="width:40%;">
                            <asp:Button CssClass="styledbuttons" style="margin-left:1em;" ID="btnPrevious" runat="server" Text="Previous" OnClick="btnPrevious_Click" />
                        </td>
                        <td align="center" style="width:20%;">
                            <asp:Button CssClass="styledbuttons"  Visible="false" ID="btnDAll" runat="server" Text="Download all Work Guides in a zip file" OnClick="btnDownloadZipFileOfAllFiles_Click" />
                        </td>
                        <td align="right" style="width:40%;">
                            <asp:Button CssClass="styledbuttons" style="margin-right:1em;" ID="btnNext" runat="server" Text="Next" OnClick="btnNext_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </center>
    </form>
</body>
</html>
