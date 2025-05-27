<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registro - WebVentas</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="bg-dark text-white">
    <div class="container mt-5">
        <h2 class="text-center">Crear una cuenta</h2>
        <form action="<%=request.getContextPath()%>/RegisterServlet" method="post" class="p-4 bg-secondary rounded">
            <div class="mb-3">
                <label for="nombre" class="form-label">Nombre completo</label>
                <input type="text" name="nombre" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="correo" class="form-label">Correo electrónico</label>
                <input type="email" name="correo" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="clave" class="form-label">Contraseña</label>
                <input type="password" name="clave" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-info w-100">Registrarse</button>
            <% if (request.getAttribute("error") != null) { %>
                <div class="alert alert-danger mt-3"><%= request.getAttribute("error") %></div>
            <% } %>
        </form>
        <p class="mt-3 text-center">¿Ya tienes cuenta? <a href="login.jsp" class="text-info">Inicia sesión</a></p>
    </div>
</body>
</html>
