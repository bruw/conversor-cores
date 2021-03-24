<%--
  Created by IntelliJ IDEA.
  User: brunow
  Date: 23/03/2021
  Time: 11:27
  To change this template use File | Settings | File Templates.
--%>

<%@tag description="Template principal" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@attribute name="title"%>

<html >
<head>
    <title>${title}</title>
    <base href="${pageContext.request.contextPath}/">
    <link rel="stylesheet" href="assets/libraries/materialize/css/materialize.min.css">
    <link rel="stylesheet" href="assets/resources/styles/main.css">
</head>
<body>
<header>
    <nav>
        <div class="nav-wrapper">
            <a href="#" class="brand-logo">ConversorDeCores</a>
            <ul id="nav-mobile" class="right hide-on-med-and-down">
                <li><a href="#">Admin</a></li>
                <li><a href="#">Usuário</a></li>
                <li><a href="#">Sair</a></li>
            </ul>
        </div>
    </nav>
</header>
<main>
    <div class="container">
        <jsp:doBody></jsp:doBody>
    </div>
</main>

<footer>
    <p>ConversorDeCores - 2021</p>
</footer>

<script src="assets/libraries/materialize/js/materialize.min.css"></script>
<script src="assets/libraries/jquery/jquery-3.6.0.js"></script>
<script src="assets/resources/scripts/main.js"></script>
</body>
</html>
