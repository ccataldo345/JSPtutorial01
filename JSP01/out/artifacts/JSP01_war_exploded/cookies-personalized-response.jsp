<%--
  Created by IntelliJ IDEA.
  User: chris
  Date: 4/2/19
  Time: 2:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Confirmation</title>
</head>

<%
    String favLang = request.getParameter("favouriteLanguage");
    Cookie cookie = new Cookie("myApp.favouriteLanguage", favLang);
    cookie.setMaxAge(60*60*24*365);     // 1 year (in seconds)
    response.addCookie(cookie);
%>

<body>

    Thanks! We set your favourite language to: ${param.favouriteLanguage}
    <br><br>

    <a href="cookies-homepage.jsp">See cookies homepage.</a>
    <br><br>
    <a href="index.jsp">Return to homepage</a>

</body>
</html>
