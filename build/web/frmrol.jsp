<%@page import="com.emergentes.modelo.*"%>
<%@page import="com.emergentes.dao.*"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet" >
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">

        <title>Formulario Rol</title>
    </head>
    <body>
        <div class="container">
            <jsp:include page="menu.jsp" />
            <hr>
            <div class="card text-center">
                <div class="card-header">
                    <h1>
                        <c:if test="${objeto.id == 0}">Nuevo </c:if>
                        <c:if test="${objeto.id > 0}">Editar </c:if>
                            Rol    
                        </h1>
                    </div>
                </div>

                <form action="RolControlador" method="post">
                    <input type="hidden" name="id" value="${objeto.id}">
                <table width="311">       
                    <tr>
                        <td>Descripcion</td>
                        <td ><input name="descripcion" type="text" value="${objeto.descripcion}" required></td>                   
                    </tr>

                    <tr>
                        <td></td>
                        <td><input type="submit" value="enviar" class="btn btn-primary"></td>
                    </tr>

                </table>
            </form>
            <p><a href="RolControlador">Volver</a></p>
        </div>        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
    </body>
</html>
