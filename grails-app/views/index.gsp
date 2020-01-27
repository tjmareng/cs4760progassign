<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="site"/>
    <title>Book Store Home</title>
</head>

<body>
<div class="jumbotron jumb-margin">

    <div class="container">
        <p>Book Store</p>

        <ul>
            <!-- Simple Ajax link to show time -->
            <g:link controller="home" action="showTime" elementId="timeLink">Show the time!</g:link>
            <div id="time">time</div>

            <br>

            <p>Most Recent Book</p>

            <div id="recentBook">recent book</div>
        </ul>
    </div>

</div>

<p>Under construction</p>

<p>
    <g:link controller="controllerList">Go to ControllerList</g:link>
</p>

</body>
</html>
