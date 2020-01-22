<%--
  Created by IntelliJ IDEA.
  User: Tyler
  Date: 1/21/2020
  Time: 7:19 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="site"/>
    <title>Book Store Authors</title>
</head>

<body>
<div class="container">
    <p>Authors</p>
    <br>
    <ul>
        <g:each in="${authorList}">
            <p>${it.author}</p>
            <g:each in="${it.books}">
                <p class="tab">${it}</p>
            </g:each>
        </g:each>
    </ul>
</div>

</body>
</html>