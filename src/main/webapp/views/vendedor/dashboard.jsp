<%@ page import="com.sayrex.dto.UsuarioDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<%
    UsuarioDTO u = (UsuarioDTO) session.getAttribute("usuario");
    if (u == null || !"vendedor".equals(u.getIDRol())) {
        response.sendRedirect("/WebVentas-1.0/views/usuario/login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Panel del Vendedor</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #1a1a1a;
            color: white;
        }
        .sidebar {
            height: 100vh;
            background-color: #2c2c2c;
            padding-top: 1rem;
            position: fixed;
            width: 250px;
        }
        .sidebar a {
            display: block;
            padding: 0.75rem 1rem;
            color: #ccc;
            text-decoration: none;
            transition: all 0.2s ease;
        }
        .sidebar a:hover {
            background-color: #444;
            color: #17a2b8;
        }
        .content {
            margin-left: 250px;
            padding: 2rem;
        }
        .card {
            background-color: #292929;
            border: none;
            color: white;
        }
        .card-title {
            color: #17a2b8;
        }
    </style>
</head>
<body>

<div class="sidebar">
    <h4 class="text-center text-info">👨‍💻 Vendedor</h4>
    <hr class="text-light">
    <div class="px-3 mb-2">👤 <strong><%= u.getNombre() %></strong></div>
    <a href="#">📁 Mis Proyectos</a>
    <a href="formProyecto.jsp">⬆️ Subir Proyecto</a>
    <a href="#">📊 Estadísticas</a>
    <hr class="text-light">
    <a href="<%=request.getContextPath()%>/views/usuario/login.jsp">🚪 Cerrar sesión</a>
</div>

<div class="content">
    <h2 class="mb-4">📋 Panel del Vendedor</h2>

    <div class="row g-4">
        <div class="col-md-4">
            <div class="card p-3 shadow">
                <h5 class="card-title">📁 Proyectos Subidos</h5>
                <p class="card-text fs-3">12</p> <!-- Conéctalo al DAO más adelante -->
            </div>
        </div>
        <div class="col-md-4">
            <div class="card p-3 shadow">
                <h5 class="card-title">⬇️ Descargas</h5>
                <p class="card-text fs-3">37</p>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card p-3 shadow">
                <h5 class="card-title">💰 Ganancias</h5>
                <p class="card-text fs-3">$275.00</p>
            </div>
        </div>
    </div>
</div>

</body>
</html>
