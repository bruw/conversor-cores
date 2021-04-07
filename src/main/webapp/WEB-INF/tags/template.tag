<%--
  Created by IntelliJ IDEA.
  User: brunow
  Date: 23/03/2021
  Time: 11:27
  To change this template use File | Settings | File Templates.
--%>

<%@tag description="Template principal" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@attribute name="title" %>
<%@attribute name="current_pag" %>

<html>
<head>
    <title>${title}</title>
    <link rel="stylesheet" href="assets/libraries/materialize/css/materialize.min.css">
    <link rel="stylesheet" href="assets/resources/styles/main.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>

<body>
<div class="navbar">
    <nav>
        <div class="container">
            <div class="nav-wrapper">
                <a href="/conversor-cores" class="brand-logo">ConversorDeCores</a>
                <a href="#" data-target="mobile-demo" class="sidenav-trigger">
                    <i class="material-icons">menu</i>
                </a>
                <ul class="right hide-on-med-and-down">
                    <c:if test="${current_pag == 'inicio'}">
                        <li>
                            <a href="listar-conversoes"><i class="material-icons left">assignment</i>Relatório</a>
                        </li>
                    </c:if>

                    <c:if test="${current_pag == 'relatorio'}">
                        <li>
                            <a href="/conversor-cores"><i class="material-icons left">home</i>Início</a>
                        </li>
                    </c:if>

                    <c:if test="${current_pag == 'editar'}">
                        <li>
                            <a href="listar-conversoes"><i class="material-icons left">assignment</i>Relatório</a>
                        </li>
                        <li>
                            <a href="/conversor-cores"><i class="material-icons left">home</i>Início</a>
                        </li>
                    </c:if>
                </ul>

                <ul class="sidenav" id="mobile-demo">
                    <c:if test="${current_pag == 'inicio'}">
                        <li><a href="listar-conversoes"><i class="material-icons left">assignment</i>Relatório</a></li>
                    </c:if>

                    <c:if test="${current_pag == 'relatorio'}">
                        <li><a href="/conversor-cores"><i class="material-icons left">home</i>Início</a></li>
                    </c:if>

                    <c:if test="${current_pag == 'editar'}">
                        <li>
                            <a href="listar-conversoes"><i class="material-icons left">assignment</i>Relatório</a>
                        </li>
                        <li>
                            <a href="/conversor-cores"><i class="material-icons left">home</i>Início</a>
                        </li>
                    </c:if>
                </ul>
            </div>
        </div>
    </nav>
</div>

<main>
    <div class="container">
        <jsp:doBody></jsp:doBody>
    </div>
</main>

<footer>
    <div class="row">
        <div class="col s12">
            <p>ConversorDeCores - 2021</p>
        </div>
    </div>

    <c:if test="${ip_session != null}">
        <div class="row">
            <div class="col s12">
                <p>IP cliente: ${ip_session}</p>
            </div>
        </div>
    </c:if>
</footer>

<script src="assets/libraries/jquery/jquery-3.6.0.js"></script>
<script src="assets/libraries/materialize/js/materialize.min.js"></script>
<script src="assets/resources/scripts/main.js"></script>
</body>
</html>
