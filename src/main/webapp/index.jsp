<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:template title="Conversor" current_pag="inicio">
    <jsp:body>
        <h1>Conversor de Cores</h1>

        <div class="row">
            <form id="form-converter" action="converter" method="post">
                <div class="input-field">
                    <input type="text" id="input-hexadecimal" name="hexadecimal" value="${hexadecimal}"
                           pattern="^[0-9a-fA-F]{6}$" placeholder="FFFFFF" required>
                    <label for="input-hexadecimal">Cor Hexadecimal</label>
                </div>
                <div class="row">
                    <div class="col s12">
                        <button type="submit" class="btn waves-effect waves-light" id="button-convert">Enviar</button>
                    </div>
                </div>
            </form>
        </div>

        <c:if test="${toDisplay == true}">
            <div class="row">
                <div class="col s12 m4">
                    <label for="input-red">R</label>
                    <input type="text" class="input-field"
                           id="input-red" name="result-red" placeholder="255" value="${red}" disabled>
                </div>

                <div class="col s12 m4">
                    <label for="input-green">G</label>
                    <input type="text" class="input-field" id="input-green" name="result-green" placeholder="255"
                           value="${green}" disabled>
                </div>

                <div class="col s12 m4">
                    <label for="input-blue">B</label>
                    <input type="text" class="input-field" id="input-blue" name="result-blue" placeholder="255" disabled
                           value="${blue}">
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12">
                    <h5 id="color-name">${color_name}</h5>
                    <canvas id="canvas-border" style="background-color: rgb(${red}, ${green}, ${blue})"></canvas>
                </div>
            </div>

        </c:if>
    </jsp:body>
</t:template>