<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ASPNETProject.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/normalize.css" type="text/css" rel="stylesheet"/>
    <link href="css/style.css" type="text/css" rel="stylesheet"/>
    <title>myBlog/mainPage</title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="blog">
        <% = header %>
        <div id="content">
            <div id="authorisation" class="left">
                <div style="padding: 10px">
                    <h3>Authorisation</h3>
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="email" Width="30%"></asp:Label>
                    <asp:TextBox ID="tb_email" runat="server" Width="65%"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Пароль"  Width="30%"></asp:Label>
                    <asp:TextBox ID="tb_password" runat="server" Width="65%" TextMode="Password"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="ButtonAuthorisation" runat="server" Text="Увійти" Width="100%" OnClick="ButtonAuthorisation_Click"/>
                    <br />
                    <br />
                    <asp:Label ID="LabelTest" runat="server" Text="[]"></asp:Label>
                </div>
            </div>
            <article id="main">
                <% = main %>
            </article>
        </div>
        <div id="footer">Footer</div>
    </div>
    </form>
</body>
</html>
