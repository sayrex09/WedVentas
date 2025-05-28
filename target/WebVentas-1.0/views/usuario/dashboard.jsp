<%@ page import="com.sayrex.dto.UsuarioDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<%
    UsuarioDTO u = (UsuarioDTO) session.getAttribute("usuario");
    if (u == null || !"usuario".equals(u.getIDRol())) {
        response.sendRedirect("/WebVentas-1.0/views/usuario/login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Panel Usuario</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #1c1c1c;
            color: white;
        }
        .sidebar {
            min-height: 100vh;
            background-color: #2c2c2c;
            padding: 1rem;
            position: fixed;
            width: 250px;
        }
        .sidebar a {
            color: #ddd;
            text-decoration: none;
            display: block;
            padding: 0.5rem 0;
            transition: all 0.2s ease;
        }
        .sidebar a:hover {
            color: #17a2b8;
        }
        .content {
            margin-left: 260px;
            padding: 2rem;
        }
        .username {
            font-size: 1.1rem;
            margin-bottom: 1rem;
        }
    </style>
</head>
<body>

<div class="sidebar">
    <h4 class="text-info">WebVentas</h4>
    <div class="username">👤 Hola <%= u.getNombre() %></div>
    <a href="<%=request.getContextPath()%>/CatalogoServlet">📚 Ver Catálogo</a>
    <a href="#">🛒 Mis Compras</a>
    <a href="#">❤️ Favoritos</a>
    <hr style="border-color: #444;">
    <a href="<%=request.getContextPath()%>/views/usuario/login.jsp">🚪 Cerrar sesión</a>
</div>

<div class="content">
    <h2>Bienvenido a tu panel, <%= u.getNombre() %> 👋</h2>
    <p>Desde aquí puedes explorar el catálogo, acceder a tus compras, y gestionar tus favoritos.</p>
</div>

</body>
</html>
