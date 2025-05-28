<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registro - WebVentas</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(135deg, #121212, #1f1f1f);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
        }
        .register-card {
            background-color: #2c2c2c;
            padding: 2rem;
            border-radius: 1rem;
            box-shadow: 0 0 15px rgba(0,0,0,0.7);
            width: 100%;
            max-width: 400px;
            animation: fadeIn 0.5s ease;
        }
        .form-label {
            color: #ccc;
        }
        .btn-info {
            background-color: #17a2b8;
            border: none;
        }
        .btn-info:hover {
            background-color: #138496;
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>

<div class="register-card">
    <h2 class="text-center mb-4">📝 Crear una cuenta</h2>

    <form action="<%=request.getContextPath()%>/RegisterServlet" method="post">
        <div class="mb-3">
            <label for="nombre" class="form-label">Nombre completo</label>
            <input type="text" name="nombre" id="nombre" class="form-control" placeholder="Juan Pérez" required>
        </div>
        <div class="mb-3">
            <label for="correo" class="form-label">Correo electrónico</label>
            <input type="email" name="correo" id="correo" class="form-control" placeholder="correo@ejemplo.com" required>
        </div>
        <div class="mb-3">
            <label for="clave" class="form-label">Contraseña</label>
            <input type="password" name="clave" id="clave" class="form-control" placeholder="********" required>
        </div>
        <button type="submit" class="btn btn-info w-100">Registrarse</button>

        <% if (request.getAttribute("error") != null) { %>
            <div class="alert alert-danger mt-3 text-center"><%= request.getAttribute("error") %></div>
        <% } %>
    </form>

    <p class="mt-3 text-center text-light">
        ¿Ya tienes cuenta?
        <a href="login.jsp" class="text-info text-decoration-none">Inicia sesión</a>
    </p>
</div>

</body>
</html>
