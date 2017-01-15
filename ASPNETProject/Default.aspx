<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASPNETProject.Default" %>

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
        <div id="header">
            <div id="logo" class="left">logo</div>
            <div id="top-menu" class="left">
                <ul>
                    <li class="left"><a href="#">Головна</a></li>
                    <li class="left"><a href="#">Фотогалерея</a></li>
                    <li class="left"><a href="#">Відео</a></li>
                    <li class="left"><a href="#">Контакти</a></li>
                </ul>

            </div>
        </div>
        <div id="content">
            <div id="authorisation" class="left">Authorisation</div>
            <article id="Main">
                <article class="blogAtricle">
                    <article class="article-header">Подорож до моря</article>
                    <article class="article-date">15.01.2017</article>
                    <article class="article-content">Контент статті</article>
                    <a href="#">Детальніше</a><br />
                    <a href="#">Коментарі: 10</a>
                </article>
            </article>
        </div>
        
        <div id="footer">Footer</div>
    </div>
    </form>
</body>
</html>
