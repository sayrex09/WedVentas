<%@ page import="java.util.*, com.sayrex.dto.ProyectosDTO" %>
<%@ page session="true" %>
<%
    List<ProyectosDTO> lista = (List<ProyectosDTO>) request.getAttribute("lista");
    Integer paginaObj = (Integer) request.getAttribute("pagina");
    Integer totalObj = (Integer) request.getAttribute("total");
    Integer limitObj = (Integer) request.getAttribute("limit");

    int pagina = (paginaObj != null) ? paginaObj : 1;
    int total = (totalObj != null) ? totalObj : 0;
    int limit = (limitObj != null) ? limitObj : 10;

    int paginas = (int) Math.ceil((double) total / limit);
%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mis Proyectos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-dark text-white">
    <div class="container mt-4">
        <h2>Mis Proyectos</h2>
        <a href="formProyecto.jsp" class="btn btn-success mb-3">Nuevo Proyecto</a>

        <table class="table table-dark table-hover">
            <thead>
                <tr>
                    <th>Título</th>
                    <th>Lenguaje</th>
                    <th>Precio</th>
                    <th>Estado</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="i" begin="1" end="${paginas}">
                    <li class="page-item ${i == pagina ? 'active' : ''}">
                        <a class="page-link" href="ProyectoServlet?pagina=${i}">${i}</a>
                    </li>
                </c:forEach>

            </tbody>
        </table>

        <nav>
            <ul class="pagination">
                <c:forEach var="i" begin="1" end="${paginas}">
                    <li class="page-item ${i == pagina ? 'active' : ''}">
                        <a class="page-link" href="ProyectoServlet?pagina=${i}">${i}</a>
                    </li>
                </c:forEach>
            </ul>
        </nav>
    </div>
</body>
</html>
