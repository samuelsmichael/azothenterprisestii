<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WorkGuides.aspx.cs" Inherits="Azoth.WorkGuides" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
    <div>
    <asp:Panel ID="pnlValidate" runat="server" Visible="true">
        <table>
            <tr>
                <td>Member passcode:</td>
                <td><asp:TextBox ID="tbPasscode" runat="server"></asp:TextBox></td>
                <td><asp:Button ID="btnEnterPasscode" runat="server" Text="Go" 
                        onclick="btnEnterPasscode_Click" /></td>
            </tr>       
        </table>
        <div>There are 53 Work Guides. If you are not a member and would like to obtain other ones, please call Mike Samuels (720.255.8568) or Lari Mangum (303.480.9277)</div>
    </asp:Panel>
        
    <asp:Panel ID="pnlDownloadAll" runat="server" Visible="false">
        <table>
            <tr>
                <td>Download all Work Guides in a .zip file</td>
                <td><asp:Button ID="btnDownloadZipFileOfAllFiles" runat="server" Text="Go" 
            onclick="btnDownloadZipFileOfAllFiles_Click" /></td>
            </tr>
        </table>
    </asp:Panel>
    </div>
    <asp:DataList ID="dlWorkGuides" CellPadding="7" BorderStyle="Solid" runat="server" RepeatColumns="3">
        <ItemTemplate>
            <asp:LinkButton ID="lbWorkGuide" OnCommand="LinkButton1_Command" CommandName="DownloadIt" Text='<%# Eval("FileName")%>' runat="server">
            </asp:LinkButton>
        </ItemTemplate>
    </asp:DataList>
    </form>
</body>
</html>
