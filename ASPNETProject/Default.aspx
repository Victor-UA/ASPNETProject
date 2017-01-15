<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASPNETProject.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      Привіт!
        <p>Example 1</p>
        <% Response.Write("I'm ASP! Hello!"); %>
        <p>Example 2</p>
        <% Response.Write("<div style='background: black; color:white;'>Tag work</div>"); %>
        <p>Example 3</p>
        <% Response.Write("3+2="+(3+2)); %>
    </div>
    </form>
</body>
</html>
