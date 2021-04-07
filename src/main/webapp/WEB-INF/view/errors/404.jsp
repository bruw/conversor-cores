<%--
  Created by IntelliJ IDEA.
  User: brunow
  Date: 24/03/2021
  Time: 19:11
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:template title="Ops...">
    <jsp:body>
        <h1>Ops.... Algo de errado não está certo!</h1>
        <div class="row">
            <div class="col s12">
                <div class="card grey darken-1">
                    <div class="card-content white-text">
                        <span class="card-title center"><i class="material-icons ">error</i>400</span>
                        <p><i class="material-icons">error_outline</i> Código do Erro: ${requestScope['javax.servlet.error.status_code']}</p>
                        <p><i class="material-icons">error_outline</i> Mensagem: Página não encontrada...</p>
                        <p><i class="material-icons">error_outline</i> Url Causadora: ${requestScope['javax.servlet.error.request_uri']}</p>
                    </div>
                    <div class="card-action black center">
                        <a href="/conversor-cores">Voltar a página inicial</a>
                    </div>
                </div>
            </div>
        </div>

    </jsp:body>
</t:template>
