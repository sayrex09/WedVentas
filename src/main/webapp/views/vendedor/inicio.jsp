<%@ page import="com.sayrex.dto.UsuarioDTO" %>
<%@ page session="true" %>
<%
    UsuarioDTO u = (UsuarioDTO) session.getAttribute("usuario");
    if (u == null || !"vendedor".equals(u.getIDRol())) {
        response.sendRedirect("/views/usuario/login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Inicio Vendedor</title>
</head>
<body style="background:#222; color:white; font-family:sans-serif;">
    <h1>Bienvenido, <%= u.getNombre() %> 👨‍💻</h1>
    <p>Rol: <%= u.getIDRol() %></p>

    <ul>
        <li><a href="listaProyectos.jsp">Mis Proyectos</a></li>
        <li><a href="formProyecto.jsp">Subir Proyecto</a></li>
        <li><a href="#">Estadísticas</a></li>
        <li><a href="/WebVentas-1.0/views/usuario/login.jsp">Cerrar sesión</a></li>
    </ul>
</body>
</html>
