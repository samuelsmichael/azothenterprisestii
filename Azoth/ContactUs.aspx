<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Azoth.ContactUs" %>

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
    <title>Contact Us</title>
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
<form runat="server" action="_gdForm/webformmailer.asp" method="POST">
<center>
        <div class="otherthanmainpage"  style="height:607px;position:relative;">
                        <div class="BodyTitle2" style="margin-top:1em;margin-bottom:1em;">Contact Us</div>

<input type="hidden" name="subject" value="Azoth Enterprises Contact-Us Form Submittal" />
<input type="hidden" name="redirect" value='<%= CurrentPage + "?From=Email" %>' />

<table cellpadding="3" cellspacing="0" border="1">
    <tr>
        <td>First Name:
        </td>
        <td><input type="text" name="FirstName" />
        </td>
    </tr>
    <tr>
        <td>Last Name:
        </td>
        <td><input type="text" name="LastName" />
        </td>
    </tr>
    <tr>
        <td>Email:
        </td>
        <td><input type="text" name="email" size="53" />
        </td>
    </tr>
    <tr>
        <td>Comments:
        </td>
        <td><textarea name="comments" cols="55" rows="10"></textarea>
        </td>
    </tr>
</table>
<input class="styledbuttons" style="margin-top:.75em;" type="submit" name="submit" value="submit"/>
<input type="hidden" name="form_order" value="default"/>
<input type="hidden" name="form_interval" value="default"/>
<input type="hidden" name="form_format" value="html"/>
            <div style="position:absolute; bottom:15px;">
                <hr />
                <table width="980px"><tr>
                <td align="left">
                    <input class="styledbuttons" onclick="location.href='default.htm'" style="margin-left:.1em;" type="button" name="gohome" value="Home"/>
                </td>
                <td align="right">
                    <input class="styledbuttons" onclick="location.href='WorkGuides2.aspx'" style="margin-right:.1em;" type="button" name="gotoworkguides" value="Work Guides"/>
                </td>
                </tr></table>
            </div>

</div>
</center>
<center>
</center>
</form>
</body>
</html>
