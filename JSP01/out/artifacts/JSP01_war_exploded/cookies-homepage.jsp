<%--
  Created by IntelliJ IDEA.
  User: chris
  Date: 4/2/19
  Time: 2:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <h3>Training Portal</h3>

    <%
        String favLang = "Java";
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ("myApp.favouriteLanguage".equals(cookie.getName())) {
                    favLang = cookie.getValue();
                    break;
                }
            }
        }
    %>

    <h3>New books for <%= favLang%></h3>
    <ul>
        <li>bla bla bla</li>
        <li>bla bla bla</li>
    </ul>

    <h3>News for <%= favLang%></h3>
    <ul>
        <li>bla bla bla</li>
        <li>bla bla bla</li>
    </ul>

    <hr>
    <a href="cookies-personalized-form.html">Personaize this page</a>
    <br><br>
    <a href="index.jsp">Return to homepage</a>

</body>
</html>
