<%--
  Created by IntelliJ IDEA.
  User: chris
  Date: 3/29/19
  Time: 4:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HTML forms</title>
</head>
<body>

Building HTML Forms:<br><br>
<form action ="student-response.jsp">
    First name: <input type="text" name="firstName" />
    <br><br>
    Last name: <input type="text" name="lastName" />

    <br><br>

    <%--  Building HTML Forms - Dropdown menu: <br><br>--%>
    Country:
    <select name="country">
        <option>Estonia</option>
        <option>UK</option>
        <option>Germany</option>
        <option>USA</option>
    </select>

    <br><br>

    <%--  Building HTML Forms - Bullet chooser: <br><br>--%>
    Favourite programming languages: <br>
    <input type="checkbox" name="favLang" value="Java"> Java
    <input type="checkbox" name="favLang" value="Python"> Python
    <input type="checkbox" name="favLang" value="C++"> C++

    <br><br>

    <input type="submit" value="Submit" />
</form>

</body>
</html>
