<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Iniciar Sesión - WebVentas</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="bg-dark text-white">
    <div class="container mt-5">
        <h2 class="text-center mb-4">Iniciar Sesión</h2>

        <form action="<%=request.getContextPath()%>/LoginServlet" method="post" class="p-4 bg-secondary rounded shadow-lg">
            <div class="mb-3">
                <label for="correo" class="form-label">Correo</label>
                <input type="email" name="correo" id="correo" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="clave" class="form-label">Contraseña</label>
                <input type="password" name="clave" id="clave" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-info w-100">Ingresar</button>

            <% if (request.getAttribute("error") != null) { %>
                <div class="alert alert-danger mt-3 text-center"><%= request.getAttribute("error") %></div>
            <% } %>
        </form>

        <p class="mt-3 text-center">¿No tienes cuenta? <a href="register.jsp" class="text-info">Regístrate aquí</a></p>
    </div>
</body>
</html>
