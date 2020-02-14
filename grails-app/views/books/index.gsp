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
<div class="container">
    <p>Books</p>
    <br>
    <ul>
        <g:each in="${bkList}">
            <g:if test="${it?.cover}">
                <img class="property-value bookCover" alt="Missing Cover"
                     src="${createLink(controller: 'book', action: 'showCover', id: "${it?.id}")}">
            </g:if>
            <p>${it.title} (${it.publishYear}) by ${it.author}</p>
            <br>
        </g:each>
    </ul>
</div>
</body>
</html>