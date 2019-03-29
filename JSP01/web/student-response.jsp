<%--
  Created by IntelliJ IDEA.
  User: chris
  Date: 3/29/19
  Time: 3:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Confirmation</title>
</head>

<body>

    The student name is: ${param.firstName} ${param.lastName}

    <br><br>

    The student country is: ${param.country}

    <br><br>

    The student favourite programming languages are:
    <br>
    <ul>
        <%
            String[] langs = request.getParameterValues("favLang");
            for (String lang : langs) {
                out.print("<li>" + lang + "</li>");
            }
        %>
    </ul>

</body>
</html>
