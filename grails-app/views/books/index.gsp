<%--
  Created by IntelliJ IDEA.
  User: Tyler
  Date: 1/21/2020
  Time: 6:59 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="site"/>
    <title>Book Store Books</title>
</head>

<body>
<h1> BOOKS </h1>
<ul>
    <g:each in="${bkList}">
        <li> ${it.title} by ${it.author} </li>
    </g:each>
</ul>
</body>
</html>