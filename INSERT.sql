-- Active: 1747267210513@@127.0.0.1@3306@wed
SELECT *FROM usuarios;
SELECT *FROM proyectos;

USE wed;
-- Roles
INSERT INTO roles (nombre_rol) VALUES
('admin'),
('usuario'),
('vendedor');

-- Usuarios
INSERT INTO usuarios (nombre, correo, contrasena_hash, foto_perfil, estado) VALUES
('Juan Pérez', 'juan@example.com', 'hash1', NULL, 'activo'),
('Ana López', 'ana@example.com', 'hash2', NULL, 'activo'),
('Carlos Ruiz', 'carlos@example.com', 'hash3', NULL, 'activo');

-- Asociación usuario_rol
INSERT INTO usuario_rol (id_usuario, id_rol) VALUES
(1, 1), -- Juan es admin
(2, 2), -- Ana es usuario
(3, 3); -- Carlos es vendedor
-- Proyectos
INSERT INTO proyectos (titulo, descripcion, lenguaje_programacion, precio, gratuito, archivo_url, repositorio_url, estado, id_usuario) VALUES
('Sistema de Inventario', 'Gestiona productos, stock y proveedores', 'Java', 45.00, FALSE, 'url/inventario.zip', 'https://github.com/maria/inventario', 'activo', 3),
('Gestor de Tareas', 'Organizador de tareas y recordatorios', 'JavaScript', 0.00, TRUE, 'url/tareas.zip', 'https://github.com/carlos/tareas', 'activo', 3),
('API RESTful para Biblioteca', 'Backend REST con Spring Boot', 'Java', 65.00, FALSE, 'url/api_biblioteca.zip', 'https://github.com/julio/biblioteca-api', 'activo', 3),
('Landing Page', 'Sitio web simple para negocio local', 'HTML/CSS', 0.00, TRUE, 'url/landing.zip', 'https://github.com/laura/landingpage', 'activo', 3),
('Sistema de Matriculas', 'Módulo académico para colegios', 'PHP', 55.00, FALSE, 'url/matriculas.zip', 'https://github.com/david/matriculas', 'activo', 3),
('App de Recetas', 'Aplicación móvil con recetas saludables', 'Kotlin', 0.00, TRUE, 'url/recetas.zip', 'https://github.com/ines/recetas', 'activo', 3),
('Panel Administrativo', 'Dashboard con estadísticas en tiempo real', 'React', 70.00, FALSE, 'url/adminpanel.zip', 'https://github.com/jose/panel', 'activo', 3),
('E-commerce Frontend', 'Interfaz web para tienda online', 'Vue.js', 40.00, FALSE, 'url/ecommerce.zip', 'https://github.com/alex/ecommerce', 'activo', 3),
('Gestor de Finanzas', 'Sistema para seguimiento de gastos personales', 'Python', 0.00, TRUE, 'url/finanzas.zip', 'https://github.com/sofia/finanzas', 'activo', 3);

-- Comentarios
INSERT INTO comentarios (id_usuario, id_proyecto, contenido) VALUES
(2, 1, '¡Excelente proyecto!'),
(1, 2, 'Muy interesante, felicidades.');

-- Valoraciones
INSERT INTO valoraciones (id_usuario, id_proyecto, puntuacion, comentario) VALUES
(2, 1, 5, 'Muy útil'),
(1, 2, 4, 'Buen trabajo');

-- Favoritos
INSERT INTO favoritos (id_usuario, id_proyecto) VALUES
(2, 1),
(1, 2);

-- Carrito
INSERT INTO carrito (id_usuario, id_proyecto) VALUES
(2, 1);

-- Métodos de pago
INSERT INTO metodos_pago (nombre_metodo, detalles) VALUES
('PayPal', 'Cuenta PayPal'),
('Tarjeta de Crédito', 'Visa/Mastercard');

-- Ventas
INSERT INTO ventas (id_comprador, id_proyecto, monto, estado, id_metodo) VALUES
(2, 1, 50.00, 'pagado', 1);

-- Descargas
INSERT INTO descargas (id_usuario, id_proyecto, es_compra) VALUES
(2, 1, TRUE),
(1, 2, FALSE);

-- Mensajes
INSERT INTO mensajes (id_remitente, id_destinatario, contenido) VALUES
(1, 2, 'Hola Ana, ¿cómo estás?'),
(2, 1, '¡Hola Juan! Todo bien, gracias.');

-- Versiones de proyecto
INSERT INTO versiones_proyecto (id_proyecto, nombre_version, descripcion, archivo_url) VALUES
(1, 'v1.0', 'Versión inicial', 'url/archivo1_v1.zip'),
(2, 'v1.0', 'Primera versión', 'url/archivo2_v1.zip');

-- Tags
INSERT INTO tags (nombre_tag) VALUES
('web'),
('python'),
('java');

-- Relación proyecto-tag
INSERT INTO proyecto_tag (id_proyecto, id_tag) VALUES
(1, 3), -- Sistema de Ventas - java
(2, 2); -- Blog Personal - python

-- Reportes
INSERT INTO reportes (id_usuario, id_proyecto, tipo, descripcion) VALUES
(2, 1, 'bug', 'Error en la descarga'),
(1, 2, 'contenido inapropiado', 'Comentario ofensivo');

-- Logs del sistema
INSERT INTO logs_sistema (nivel, mensaje) VALUES
('INFO', 'Sistema iniciado'),
('ERROR', 'Fallo en la conexión a la base de datos');

-- Notificaciones
INSERT INTO notificaciones (id_usuario, contenido) VALUES
(1, 'Tienes una nueva venta'),
(2, 'Tu proyecto fue comentado');

-- Configuración general
INSERT INTO configuracion (clave, valor) VALUES
('moneda', 'USD'),
('soporte_email', 'soporte@webventas.com');

-- Auditoría
INSERT INTO auditoria (id_usuario, accion, descripcion) VALUES
(1, 'login', 'Inicio de sesión'),
(2, 'compra', 'Realizó una compra');

-- Suscripciones
INSERT INTO suscripciones (id_usuario, id_proyecto) VALUES
(2, 1);

-- Historial de pagos
INSERT INTO historial_pagos (id_usuario, monto, metodo_pago) VALUES
(2, 50.00, 'PayPal');