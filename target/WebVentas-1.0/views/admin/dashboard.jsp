<%@ page import="com.sayrex.dto.UsuarioDTO" %>
<%@ page session="true" %>
<%
    UsuarioDTO u = (UsuarioDTO) session.getAttribute("usuario");
    if (u == null || !"admin".equals(u.getIDRol())) {
        response.sendRedirect("/views/usuario/login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Panel de Administrador</title>
</head>
<body style="background:#111; color:white; font-family:sans-serif;">
    <h1>Bienvenido al Panel de Administración</h1>
    <p>UsuarioDTO: <strong><%= u.getNombre() %></strong></p>
    <p>Rol: <%= u.getIDRol() %></p>

    <ul>
        <li><a href="#">Gestionar Usuarios</a></li>
        <li><a href="#">Ver Reportes</a></li>
        <li><a href="#">Estadísticas</a></li>
        <li><a href="/WebVentas-1.0/views/usuario/login.jsp">Cerrar sesión</a></li>
    </ul>
</body>
</html>
