<%@ page import="com.sayrex.dto.UsuarioDTO" %>
<%@ page session="true" %>
<%
    UsuarioDTO u = (UsuarioDTO) session.getAttribute("usuario");
    if (u == null || !"usuario".equals(u.getIDRol())) {
        response.sendRedirect("/views/usuario/login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Inicio Usuario</title>
</head>
<body style="background:#333; color:white; font-family:sans-serif;">
    <h1>Hola <%= u.getNombre() %> 👋</h1>
    <p>Rol: <%= u.getIDRol() %></p>

    <ul>
        <li><a href="#">Ver Catálogo</a></li>
        <li><a href="/WebVentas-1.0/views/vendedor/listaProyectos.jsp">Mis Compras</a></li>
        <li><a href="#">Favoritos</a></li>
        <li><a href="/WebVentas-1.0/views/usuario/login.jsp">Cerrar sesión</a></li>
    </ul>
</body>
</html>
