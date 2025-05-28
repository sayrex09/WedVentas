<%@ page import="com.sayrex.dto.ProyectosDTO" %>
<%@ page session="true" %>
<%
    ProyectosDTO p = (ProyectosDTO) request.getAttribute("proyecto");
    boolean esEdicion = (p != null);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title><%= esEdicion ? "Editar ProyectosDTO" : "Nuevo ProyectosDTO" %></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="bg-dark text-white">
    <div class="container mt-5">
        <h2><%= esEdicion ? "Editar ProyectosDTO" : "Registrar ProyectosDTO" %></h2>

            <form action="<%=request.getContextPath()%>/ProyectosServlet" method="post">
                <input type="hidden" name="idProyecto" value="<%= esEdicion ? p.getIdProyecto() : "" %>">
                <input type="hidden" name="accion" value="<%= esEdicion ? "actualizar" : "insertar" %>">
            
                <div class="mb-3">
                    <label class="form-label">Título</label>
                    <input type="text" name="titulo" class="form-control" required value="<%= esEdicion ? p.getTitulo() : "" %>">
                </div>
                <div class="mb-3">
                    <label class="form-label">Lenguaje</label>
                    <input type="text" name="lenguaje_programacion" class="form-control" required value="<%= esEdicion ? p.getLenguajeProgramacion() : "" %>">

                </div>
                <div class="mb-3">
                    <label class="form-label">Descripción</label>
                    <textarea name="descripcion" class="form-control" rows="4"><%= esEdicion ? p.getDescripcion() : "" %></textarea>
                </div>
                <div class="mb-3">
                    <label class="form-label">Precio (0 si es gratuito)</label>
                    <input type="number" name="precio" step="0.01" class="form-control" value="<%= esEdicion ? p.getPrecio() : "0.00" %>">
                </div>
                <div class="mb-3 form-check">
                    <input class="form-check-input" type="checkbox" name="gratuito" <%= esEdicion && p.isGratuito() ? "checked" : "" %> >
                    <label class="form-check-label">¿Es gratuito?</label>
                </div>
            
                <button type="submit" class="btn btn-primary">Guardar</button>
                <a href="listaProyectos.jsp" class="btn btn-secondary">Cancelar</a>
            </form>


    </div>
</body>
</html>
