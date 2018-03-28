<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WorkGuides2.aspx.cs" Inherits="Azoth.WorkGuides2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Practical Work Guides</title>
    <link href="style/page.css" type="text/css" rel="stylesheet" />
    <link href="style/navbar.css" type="text/css" rel="stylesheet" />
    <link href="style/text.css" type="text/css" rel="stylesheet" />
    <link href="/style/page.css" type="text/css" rel="stylesheet" />
    <link href="/style/navbar.css" type="text/css" rel="stylesheet" />
    <link href="/style/text.css" type="text/css" rel="stylesheet" />
    <link href="~/style/page.css" type="text/css" rel="stylesheet" />
    <link href="~/style/navbar.css" type="text/css" rel="stylesheet" />
    <link href="~/style/text.css" type="text/css" rel="stylesheet" />
    <style>
.topractice
{
    font-weight:normal;
}
.toreadpages 
{
    font-weight:normal;
}
.toread 
{
    font-weight:normal;
}
.ponderenceauthor
{
    font-style: italic;
}
.ponderence 
{
    font-weight:normal;
}
.workguideheading 
{
    font-weight:bold; font-size:16pt;
}
.workguideheadingweekbeginning 
{
    font-weight:normal; font-size:12pt;
}
.workguidelink 
{
    font-size:smaller;margin-top:1em;text-decoration:underline;margin-bottom:5px;
}
.workguidebodyheading
{
    font-family: Georgia;
    font-size: 14pt;
    font-weight: bold;
    margin-bottom:.5em;
    margin-top:2em;
}
.BodyTitle {
	color: #000000;
	font-family: Harrington, Arial, Helvetica, sans-serif;
	font-size: 46px;
	font-weight:700;
}

.BodySubTitle {
	color: #000000;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 22px;
}

.BodyText {
	color: #000000;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 14px;
}

.inverselink:hover {
	color: #000000;
	text-decoration: none;
	font-family: Arial, Helvetica, sans-serif;
	font-weight: normal;
}

.inverselink:link {
	color:#000000;
	text-decoration: none;
	font-family: Arial, Helvetica, sans-serif;
	font-weight: normal;
}

.inverselink:visited {
	color:#000000;
	text-decoration: none;
}

.inverselink:active {
	color:#000000;
	text-decoration: none;
	font-family: Arial, Helvetica, sans-serif;
	}

a:hover {
	color: #ff9d00 !important;
	text-decoration: none;
	font-family: Arial, Helvetica, sans-serif;
	font-weight: normal;
}

a:link {
	color:#683200 !important;
	text-decoration: none;
	font-family: Arial, Helvetica, sans-serif;
	font-weight: normal;
}

a:visited {
	color:#683200 !important;
	text-decoration: none;
}

a:active {
	color:#683200 !important;
	text-decoration: none;
	font-family: Arial, Helvetica, sans-serif;
	}

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center>
        <asp:DataList ID="dlWorkGuides" Width="80%" RepeatDirection="Vertical" Style="padding-left: 5px;  padding-right: 5px;"  RepeatLayout="Table" ItemStyle-BorderStyle="Solid" ItemStyle-BorderWidth="0"
            runat="server" >
            <ItemTemplate>
                    <div style="text-align: center; padding: 5px;">
                        <div class="workguideheading">Work Guide</div>
                        <div class="workguideheadingweekbeginning">Week Beginning <%# Eval("DateString")%></div>
                        <div class="workguidebodyheading">Ponderence</div>
                        <div class="ponderence">
                        <asp:Label ID="lblToPonder" runat="server" Text='<%# Eval("ToPonder")%>'></asp:Label>
                        </div>
                        <div class="ponderenceauthor">
                            <asp:Label ID="lblToPonderAuthor" runat="server" Text='<%# Eval("ToPonderAuthor")%>'></asp:Label>
                            </div>
                        <div class="workguidebodyheading">To Read</div>
                        <div class="toread">
                            <asp:Label ID="lblToRead" runat="server" Text='<%# Eval("ToRead")%>'></asp:Label>
                        </div>
                        <div class="toreadpages">
                            <asp:Label ID="lblToReadPages" runat="server" Text='<%# Eval("ToReadPages")%>'></asp:Label>
                        </div>
                        <div class="workguidebodyheading">To Practice</div>
                        <div class="topractice">
                            <asp:Label ID="lblToPractice" runat="server" Text='<%# Eval("ToPractice")%>'></asp:Label>
                        </div>
                        <div class="workguidelink">
                            <asp:LinkButton ID="lbWorkGuide" ToolTip='Download' OnCommand="LinkButton1_Command" CommandName='<%# Eval("FileName")%>'
                                Text='Download' runat="server">
                            </asp:LinkButton>
                        </div>
                        <hr />
                    </div>
                
            </ItemTemplate>
        </asp:DataList>
        </center>
    </div>
    <div class="buttons">
        <table width="95%">
            <tr>
                <td align="left"><asp:Button ID="btnPrevious" runat="server" Text="Previous" 
                        onclick="btnPrevious_Click" /></td>
                <td align="right"><asp:Button ID="btnNext" runat="server" Text="Next" 
                        onclick="btnNext_Click" /></td>
            </tr>
        </table>
        
    </div>
    </form>
</body>
</html>
