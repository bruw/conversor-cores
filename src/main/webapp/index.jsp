<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:template title="Login">
    <jsp:body>
        <h1>Acesso ao Sistema</h1>

        <div class="row">
            <form id="form-login" action="login" method="post">
                <div class="row">
                    <label for="email">Endereço de email</label>
                    <input type="text" class="input-field col s12" id="email" name="email" placeholder="exemplo@email.com">
                </div>
                <div class="row">
                    <label for="senha">Senha</label>
                    <input type="password" class="input-field col s12" id="senha" name="senha" placeholder="digite sua senha">
                </div>
                <div class="row">
                    <div class="col s12">
                        <button class="btn waves-effect waves-light">Enviar</button>
                    </div>
                </div>
            </form>
        </div>

        <div class="row col s12" id="a-new-user">
            <a href="">Novo usuário</a>
        </div>




    </jsp:body>
</t:template>