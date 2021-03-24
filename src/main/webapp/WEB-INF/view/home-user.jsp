<%--
  Created by IntelliJ IDEA.
  User: brunow
  Date: 24/03/2021
  Time: 11:27
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:template title="Conversor">
    <jsp:body>
        <h1>Conversor de Cores</h1>

        <div class="row">
            <form id="form-converter" action="#" method="post">
                <div class="col s12">
                    <label for="input-hexadecimal">Cor Hexadecimal</label>
                    <input class="input-field" type="text" id="input-hexadecimal" name="hexadecimal" placeholder="#FFFFFF">
                </div>
            </form>
        </div>

        <div class="row">
            <div class="col s12">
                <button type="submit" class="btn waves-effect waves-light" id="button-convert">Enviar</button>
            </div>
        </div>

        <div class="row">
            <div class="col s12 m4">
                <label for="input-red">R</label>
                <input type="text" class="input-field" id="input-red" name="result-red" placeholder="255" disabled>
            </div>

            <div class="col s12 m4">
                <label for="input-green">G</label>
                <input type="text" class="input-field" id="input-green" name="result-green" placeholder="255" disabled>
            </div>

            <div class="col s12 m4">
                <label for="input-blue">B</label>
                <input type="text" class="input-field" id="input-blue" name="result-blue" placeholder="255" disabled>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12">
                <canvas id="canvas-border"></canvas>
            </div>
        </div>
    </jsp:body>
</t:template>

