<%--
  Created by IntelliJ IDEA.
  User: brunow
  Date: 24/03/2021
  Time: 18:49
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:template title="Relatório" current_pag="relatorio">
    <jsp:body>
        <c:if test="${not empty conversions}">
            <h1>Conversões</h1>

            <table class="striped centered">
                <thead>
                <tr>
                    <th>Cor</th>
                    <th>Cor Hexadecimal</th>
                    <th>Cor RGB</th>
                    <th>Gerenciar</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="conv" items="${conversions}">
                    <tr>
                        <c:if test="${conv.color != null}">
                            <td>${conv.color.name}</td>
                        </c:if>
                        <c:if test="${conv.color == null}">
                            <td>N/A</td>
                        </c:if>
                        <td>${conv.hexadecimal}</td>
                        <td>${conv.rgb}</td>
                        <td>
                            <c:if test="${conv.color != null}">
                                <a class="waves-effect waves-light btn-small blue disabled">Atualizar</a>
                            </c:if>

                            <c:if test="${conv.color == null}">
                                <a href="/conversor-cores/editar?id=${conv.id}"
                                   class="waves-effect waves-light btn-small blue">Atualizar</a>
                            </c:if>
                            <a href="/conversor-cores/remover?id=${conv.id}"
                               class="waves-effect waves-light btn-small red">Apagar</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </c:if>

        <c:if test="${empty conversions}">
            <h1>Você ainda não fez conversões</h1>
        </c:if>

    </jsp:body>
</t:template>

