<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="ASPNETProject.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Form 2</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Form2    
        <% Response.Redirect("http://ukr.net"); %>
    </div>
    </form>
</body>
</html>
