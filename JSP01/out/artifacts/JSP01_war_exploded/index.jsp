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

  <jsp:include page="footer.jsp" />



  </body>
</html>