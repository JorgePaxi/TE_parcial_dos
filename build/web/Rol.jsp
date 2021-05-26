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
        <title>Listado de roles</title>
    </head>
    <body>
        <div class="container">
            <jsp:include page="menu.jsp" />
            <hr>
            <div class="card text-center">
                <div class="card-header">
                    <h1>LISTADO DE ROLES</h1>
                </div>
            </div>
            
            <p><a href="RolControlador?action=add" class="btn btn-primary btn-sm"><i class="fas fa-plus-circle"></i> Nuevo</a></p>

            <table  class="table table-striped">
                <tr>
                    <th>Id</th>
                    <th>Descripcion</th>
                    <th></th>
                    <th></th>
                </tr>
                <c:forEach var="item" items="${list_obj}">        
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.descripcion}</td>
                        <th><a href="RolControlador?action=edit&id=${item.id}"><i class="fas fa-edit"></i>Editar</a></th>
                        <td><a href="RolControlador?action=delete&id=${item.id}" onclick="return(confirm('Esta seguro de eliminar??'))"><i class="fas fa-trash-alt"></i>Eliminar</a></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
    </body>
</html>

