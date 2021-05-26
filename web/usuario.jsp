<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuario</title>
    </head>
    <body>
        <h1>Usuarios</h1>
        <a href="UsuarioControlador?action=add">Nuevo </a>
        <p align="right">
            <a href="RolControlador">Roles</a>
            <a href="PermisosControlador">Permisos</a>
        </p>
        <br>
        <table border="1" cellspacing="0" cellpadding="2">
            <tr>
                <th>Id</th>
                <th>Usuario</th>
                <th>Correo</th>
                <th>Clave</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${usuario}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.usuarios}</td>
                    <td>${item.correo}</td>
                    <td>${item.clave}</td>
                    <td><a href="UsuarioControlador?action=edit&id=${item.id}">Editar</td>
                    <td><a href="UsuarioControlador?action=delete&id=${item.id}">Eliminar</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
