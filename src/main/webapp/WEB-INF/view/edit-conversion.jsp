<%--
  Created by IntelliJ IDEA.
  User: brunow
  Date: 05/04/2021
  Time: 20:53
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:template title="Editar" current_pag="editar">
    <jsp:body>
        <h1>Atualizar Conversão</h1>

        <table>
            <thead>
                <tr>
                    <th>Cor</th>
                    <th>Cor Hexadecimal</th>
                    <th>Cor RGB</th>
                    <th>Atualizar Cor</th>
                </tr>
            </thead>
            <tbody>
                <td>N/A</td>
                <td>${conversion.hexadecimal}</td>
                <td>${conversion.rgb}</td>
            <td> <!-- Modal Trigger -->
                <a class="btn-floating btn-large waves-effect waves-light blue modal-trigger" href="#modal1"><i class="material-icons">add</i></a>
            </td>
            </tbody>
        </table>

        <div class="row">
            <div class="col s12">
                <a href="relatorio" class="btn waves-effect waves-light red" id="button-cancel-edit">Cancelar</a>
            </div>
        </div>


        <!-- Modal Structure -->
        <div id="modal1" class="modal">
            <div class="modal-content">
                <form action="editar" method="post">
                    <h4>Adicionar Nome da Cor</h4>
                    <label for="input-new-color">Nome da Cor</label>
                    <input name="input-new-color" id="input-new-color" type="text">
                    <input  class="hide" type="text" name="id-current-conversion" value="${conversion.id}">
                    <button class="modal-close waves-effect waves-light btn-small center blue">Atualizar</button>
                </form>
            </div>
        </div>


    </jsp:body>
</t:template>
