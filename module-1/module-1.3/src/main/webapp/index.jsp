<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>My First JSP</title>
</head>
<body>

<h1>My First JSP Page</h1>

<%
    String name = "Suresh Shrestha";
    String course = "CSD-430";
    int module = 1;
%>

<p>Hello, my name is <%= name %>.</p>
<p>This JSP page was created for <%= course %>.</p>
<p>This is Module <%= module %>.</p>

</body>
</html>