<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.sayrex.dto.ProyectosDTO" %>
<%@ page session="true" %>
<%
    ProyectosDTO p = (ProyectosDTO) request.getAttribute("proyecto");
    boolean esEdicion = (p != null);
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title><%= esEdicion ? "Editar Proyecto" : "Nuevo Proyecto" %> | WebVentas</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #121212;
            color: #fff;
            font-family: 'Segoe UI', sans-serif;
        }
        .form-label {
            color: #ddd;
        }
        .form-control,
        .form-check-input {
            background-color: #1f1f1f;
            color: #fff;
            border-color: #444;
        }
        .form-control::placeholder {
            color: #aaa;
        }
        .card {
            background-color: #212529;
            border: 1px solid #444;
        }
        .btn-info {
            background-color: #17a2b8;
            border: none;
        }
        .btn-info:hover {
            background-color: #138496;
        }
        .btn-outline-light:hover {
            background-color: #fff;
            color: #000;
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <div class="card shadow-lg">
        <div class="card-header text-center text-info">
            <h3><%= esEdicion ? "✏️ Editar Proyecto" : "🆕 Nuevo Proyecto" %></h3>
        </div>
        <div class="card-body">
            <form action="<%= request.getContextPath() %>/ProyectosServlet" method="post">
                <input type="hidden" name="accion" value="<%= esEdicion ? "actualizar" : "insertar" %>">
                <input type="hidden" name="idProyecto" value="<%= esEdicion ? p.getIdProyecto() : "" %>">

                <div class="mb-3">
                    <label class="form-label">Título</label>
                    <input type="text" name="titulo" class="form-control" required
                           placeholder="Ej: Sistema de Ventas"
                           value="<%= esEdicion ? p.getTitulo() : "" %>">
                </div>

                <div class="mb-3">
                    <label class="form-label">Lenguaje de Programación</label>
                    <input type="text" name="lenguaje_programacion" class="form-control" required
                           placeholder="Ej: Java, Python"
                           value="<%= esEdicion ? p.getLenguajeProgramacion() : "" %>">
                </div>

                <div class="mb-3">
                    <label class="form-label">Descripción</label>
                    <textarea name="descripcion" rows="4" class="form-control" required
                              placeholder="Describe tu proyecto..."><%= esEdicion ? p.getDescripcion() : "" %></textarea>
                </div>

                <div class="mb-3">
                    <label class="form-label">Precio (0 si es gratuito)</label>
                    <input type="number" step="0.01" name="precio" class="form-control"
                           value="<%= esEdicion ? p.getPrecio() : "0.00" %>">
                </div>

                <div class="mb-3 form-check">
                    <input type="checkbox" name="gratuito" class="form-check-input"
                        <%= esEdicion && p.isGratuito() ? "checked" : "" %>>
                    <label class="form-check-label">¿Es gratuito?</label>
                </div>

                <div class="mb-3">
                    <label class="form-label">URL del archivo (opcional)</label>
                    <input type="text" name="archivo_url" class="form-control"
                           placeholder="https://ejemplo.com/archivo.zip"
                           value="<%= esEdicion ? p.getArchivoUrl() : "" %>">
                </div>

                <div class="d-grid gap-2">
                    <button type="submit" class="btn btn-info">
                        <%= esEdicion ? "💾 Actualizar Proyecto" : "🚀 Registrar Proyecto" %>
                    </button>
                    <a href="listaProyectos.jsp" class="btn btn-outline-light">Cancelar</a>
                </div>

                <% if (request.getAttribute("error") != null) { %>
                    <div class="alert alert-danger mt-3 text-center">
                        <%= request.getAttribute("error") %>
                    </div>
                <% } %>
            </form>
        </div>
    </div>
</div>
</body>
</html>
