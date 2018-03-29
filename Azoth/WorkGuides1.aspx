<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WorkGuides1.aspx.cs" Inherits="Azoth.WorkGuides1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Practical Work Guides - Introduction</title>
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
                <div class="BodyTitle2">What is A Work Guide?</div>
                <div class="BodyText2">
                    <p>A work guide is a condition in which I may see myself.  Just like other forms of the work, such as movements, 
                    sittings, studies of work ideas or practical work, the opportunity to see myself in relation to the condition 
                    is what opens the door to self-study.</p>
                    <p>These work guides are divided into three parts, something to ponder, something to read, 
                    and something to try.  How do I approach this?  Do I understand what it means to ponder or hold 
                    a long question? How do I read?  Have I followed Gurdjieff's advice to read the work ideas 
                    three times? (see friendly advice in the beginning of Beelzebub's Tales)  When I try a task, 
                    is it to be accomplished with some sort of end result or outcome?  Am I trying just to do the task 
                    or have I found a way to be with the task?</p>
                    <p>Enclosed are a years compilation of weekly work guides.  They can be approached over and over again 
                    and like reading the work ideas, something new may be discovered each time.</p>
                    <p>We hold a good wish for the appetite of your striving.  Thank you.</p>
                </div>
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
