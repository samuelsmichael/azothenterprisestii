<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WorkGuidesMembership.aspx.cs" Inherits="Azoth.WorkGuidesMembership" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Membership</title>
    <link href="page.css" type="text/css" rel="stylesheet" />
    <link href="navbar.css" type="text/css" rel="stylesheet" />
    <link href="text.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        html, body{
            height:627px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <center>
    <div class="otherthanmainpage" style="height:607px;position:relative;">
        <div class="BodyTitle2">Work Guides Membership</div>    
        <div style="position:absolute; bottom:15px;">
            <hr />
            <table width="980px"><tr>
            <td align="left">
                <asp:Button class="styledbuttons" style="margin-left:1em;" ID="btnHome1" 
                    runat="server" Text="Home" 
                    onclick="btnHome1_Click" />
            </td>
            <td align="right">
                <asp:Button class="styledbuttons" style="margin-right:1em;" 
                    ID="btnToActualWorkGuides" runat="server" Text="Work Guides" 
                    onclick="btnToActualWorkGuides_Click" />
            </td>
            </tr></table>
        </div>
    </div>
    </center>
    </form>
</body>
</html>
