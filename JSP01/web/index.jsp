<%--
  Created by IntelliJ IDEA.
  User: chris
  Date: 3/28/19
  Time: 5:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.chris.jps.*" contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>JSP</title>
  </head>
  <body>

  <jsp:include page="header.html" />

  <%
    String helloWorld = "Hello world!";
    out.println(helloWorld);
  %>

  <br>
  <br>

  The time on the server is: <%= new java.util.Date() %>

  <br>
  <br>

  Converting a string to uppercase: <%= new String(helloWorld).toUpperCase() %>

  <br>
  <br>

  Multiplication: 25 x 4 = <%= 25*4 %>

  <br>
  <br>

  JSP Scriptlet:
  <%
  for (int i = 0; i <= 5 ; i++) {
    out.println(i);
  }
  %>

  <br>
  <br>

  JSP Declaration:
  <%!
    String makeITLower(String data) {
      return data.toLowerCase();
    }
  %>
  <%= makeITLower(helloWorld)%>

  <br>
  <br>

  MVC:
  <%= Utils.makeITLower("Using method from another class")%>
  <%--  must include (see top of file): <%@ page import="com.chris.jps.*"--%>

  <br>
  <br>

  JSP Built-in Objects: <br>
  - Request user agent: <%= request.getHeaders("User-Agent") %>
  <br>
  - Request language: <%= request.getLocale() %>

  <br>
  <br>

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



  <br>
  <br>

  <jsp:include page="footer.jsp" />

  </body>
</html>
