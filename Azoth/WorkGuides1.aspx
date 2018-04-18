<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WorkGuides1.aspx.cs" Inherits="Azoth.WorkGuides1" %>

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
 <center>
<div style="margin-top:3em;font-size:smaller;">Books to Have for Readings Referred to in each Work Guide</div>
<table style="font-size:smaller;">
    <tr>
        <td>1.	<a style="text-decoration:underline"  href="https://www.bythewaybooks.com/pages/books/545/john-fuchs/forty-years-after-gurdjieff-a-guide-to-practical-work">Forty Years After Gurdjieff – John Fuchs</a>
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
</center>



            <div style="position:absolute; bottom:15px;">
                <hr />
                <table width="980px"><tr>
                <td align="left"  style="width:30%;">
                    <asp:Button class="styledbuttons" style="margin-left:1em;" ID="btnHome1" 
                        runat="server" Text="Home" 
                        onclick="btnHome1_Click" />
                    <asp:Button class="styledbuttons" style="margin-left:1em;" ID="btnContactUs" 
                        runat="server" Text="Contact Us" 
                        onclick="btnContactUs_Click" />
                </td>
                <td align="center"  style="width:40%;">
                    <asp:Label style="font-weight:bold;" ID="lblThankYou" runat="server" Visible="false" ForeColor="#ee4803" Text="Thank you for contacting us. We will get back to you."></asp:Label>
                </td>
                <td align="right" style="width:30%;">
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
