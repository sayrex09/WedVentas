<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*, com.sayrex.dto.ProyectosDTO" %>
<%@ page session="true" %>

<%
    List<ProyectosDTO> lista = (List<ProyectosDTO>) request.getAttribute("lista");
    int pagina = (request.getAttribute("pagina") != null) ? (Integer) request.getAttribute("pagina") : 1;
    int total = (request.getAttribute("total") != null) ? (Integer) request.getAttribute("total") : 0;
    int limit = (request.getAttribute("limit") != null) ? (Integer) request.getAttribute("limit") : 10;
    int paginas = (request.getAttribute("paginas") != null) ? (Integer) request.getAttribute("paginas") : 1;
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mis Proyectos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-dark text-white">
<div class="container mt-5">
    <h2 class="mb-4 text-center">📁 Mis Proyectos</h2>
    
    <div class="d-flex justify-content-end mb-3">
        <a href="formProyecto.jsp" class="btn btn-success">➕ Nuevo Proyecto</a>
    </div>

    <c:if test="${empty lista}">
        <div class="alert alert-warning text-center">No tienes proyectos registrados.</div>
    </c:if>

    <c:if test="${not empty lista}">
        <table class="table table-dark table-hover table-bordered">
            <thead class="table-secondary text-dark text-center">
                <tr>
                    <th>Título</th>
                    <th>Lenguaje</th>
                    <th>Precio</th>
                    <th>Gratuito</th>
                    <th>Estado</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody class="text-center">
                <c:forEach var="p" items="${lista}">
                    <tr>
                        <td>${p.titulo}</td>
                        <td>${p.lenguajeProgramacion}</td>
                        <td>$${p.precio}</td>
                        <td>
                            <span class="badge bg-${p.gratuito ? 'success' : 'warning'}">
                                ${p.gratuito ? 'Sí' : 'No'}
                            </span>
                        </td>
                        <td>${p.estado}</td>
                        <td>
                            <a href="ProyectosServlet?accion=editar&id=${p.idProyecto}" class="btn btn-warning btn-sm">Editar</a>
                            <a href="ProyectosServlet?accion=eliminar&id=${p.idProyecto}" class="btn btn-danger btn-sm"
                               onclick="return confirm('¿Estás seguro de eliminar este proyecto?');">Eliminar</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <!-- Paginación -->
        <nav aria-label="Page navigation" class="mt-4">
            <ul class="pagination justify-content-center">
                <c:forEach var="i" begin="1" end="${paginas}">
                    <li class="page-item ${i == pagina ? 'active' : ''}">
                        <a class="page-link" href="ProyectosServlet?pagina=${i}">${i}</a>
                    </li>
                </c:forEach>
            </ul>
        </nav>

    </c:if>

    <!-- Mensaje de error -->
    <c:if test="${not empty error}">
        <div class="alert alert-danger mt-3 text-center">
            ${error}
        </div>
    </c:if>
</div>
</body>
</html>
