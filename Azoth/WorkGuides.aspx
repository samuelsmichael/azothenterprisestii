﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WorkGuides.aspx.cs" Inherits="Azoth.WorkGuides" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Practical Work Guides</title>
    <link href="style/page.css" type="text/css" rel="stylesheet" />
    <link href="style/navbar.css" type="text/css" rel="stylesheet" />
    <link href="style/text.css" type="text/css" rel="stylesheet" />

</head>
<body 
    style="background-image: url('../images/background.jpg');
    background-size:     cover;                   
    background-repeat:   no-repeat;
    background-position: center center;" 
>
    
<form id="form1" runat="server">
<div>
<center>
    <asp:Panel ID="pnlValidate" runat="server" Visible="true">
        <table>
            <tr>
                <td>Member passcode:</td>
                <td><asp:TextBox ID="tbPasscode" runat="server"></asp:TextBox></td>
                <td><asp:Button ID="btnEnterPasscode" runat="server" Text="Go" 
                        onclick="btnEnterPasscode_Click" /></td>
            </tr>       
            <tr>
                <td>
                    <asp:Label ID="lblError" Text="Invalid passcode" runat="server" Visible="false" ForeColor="Red" Font-Bold="true"></asp:Label>
                    
                </td>
            </tr>
        </table>
        <div style="margin-bottom:1em;margin-top:1em;">There several more Work Guides. If you are not a member and would like to obtain other ones, please call Mike Samuels (720.255.8568) or Lari Mangum (303.480.9277)</div>
    </asp:Panel>
</center>
        
    <asp:Panel style="margin-top:5px;margin-bottom:5px;" ID="pnlDownloadAll" runat="server" Visible="false">
        <table>
            <tr>
                <td>Download all of the Work Guides in a single .zip file</td>
                <td><asp:Button ID="btnDownloadZipFileOfAllFiles" runat="server" Text="Go" 
            onclick="btnDownloadZipFileOfAllFiles_Click" /></td>
            </tr>
        </table>
    </asp:Panel>
    </div>
    <asp:DataList ID="dlWorkGuides" RepeatLayout="Table" ItemStyle-BorderStyle="Solid" ItemStyle-BorderWidth="1" runat="server" ItemStyle-Width="33%" RepeatColumns="3">
        <ItemTemplate>
            <div style="text-align:center; padding:5px;">
                <asp:Label  style="font-weight:bold;" ID="lblToPonder" runat="server" Text='<%# Eval("ToPonder")%>'></asp:Label>
                <div>
                    <asp:LinkButton style="font-size:smaller;margin-top:4px;" ID="lbWorkGuide" OnCommand="LinkButton1_Command" CommandName="DownloadIt" Text='<%# Eval("FileName")%>' runat="server">
                    </asp:LinkButton>
                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>
    <br />
<center>
<div>Books to Have for Readings Referred to in each Work Guide</div>
<table>
    <tr>
        <td>1.	<a style="text-decoration:underline;"  href="https://www.bythewaybooks.com/pages/books/545/john-fuchs/forty-years-after-gurdjieff-a-guide-to-practical-work">Forty Years After Gurdjieff – John Fuchs</a>
        </td>
    </tr>
    <tr>
        <td>2.	<a style="text-decoration:underline;" href="https://www.bythewaybooks.com/pages/books/235/p-d-ouspensky/in-search-of-the-miraculous">In Search of the Miraculous – P.D. Ouspensky</a>
        </td>
    </tr>
    <tr>
        <td>3.	<a style="text-decoration:underline;" href="https://www.bythewaybooks.com/pages/books/75/g-i-gurdjieff/views-from-the-real-world">Views From the Real World* – G.I. Gurdjieff</a>
        <div style="margin-left:4em;">(*Rewrite of Views is called “<a href="https://www.bythewaybooks.com/pages/books/16391/g-i-gurdjieff/in-search-of-being-the-fourth-way-to-consciousness">In Search of Being”</a>)</div>
        </td>
    </tr>
    <tr>
        <td>4.	<a  style="text-decoration:underline;" href="https://www.bythewaybooks.com/pages/books/13720/jeanne-de-salzmann/the-reality-of-being-the-fourth-way-of-gurdjieff">Reality of Being – Jeanne de Salzmann</a>
        </td>
    </tr>
</table>
<a  style="text-decoration:underline;" href="default_alpha.htm">Home</a>
</center>
    </form>
</body>
</html>
