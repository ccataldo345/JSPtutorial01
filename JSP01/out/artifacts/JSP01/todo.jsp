<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: chris
  Date: 4/2/19
  Time: 1:32 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP SESSIONS</title>
</head>
<body>

    <br>

    <form action="todo.jsp">
        Add new item: <input type="text" name="theItem"/>
        <input type="submit" value="Submit"/>
    </form>
    <br>

    <%
        // if items list don't exists, create a new one
        List<String> items = (List<String>) session.getAttribute("myTodoList");
        if (items == null) {
            items = new ArrayList<>();
            session.setAttribute("myTodoList", items);
        }

        // see if there is form data to add
        String theItem = request.getParameter("theItem");
        if (theItem != null) {
            items.add(theItem);
        }
    %>


    <hr>
    <b>Todo List items:</b>
    <br>

    <ol>
        <%
            for (String item : items) {
                out.println("<li>" + item + "</li>");
            }
        %>
    </ol>

</body>
</html>
