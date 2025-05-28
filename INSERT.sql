SELECT * FROM proyectos;

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
('Carlos Ruiz', 'carlos@example.com', 'hash3', NULL, 'activo'),
('Laura Gómez', 'laura@example.com', 'hash4', NULL, 'activo'),
('Mario Díaz', 'mario@example.com', 'hash5', NULL, 'activo'),
('Elena Ríos', 'elena@example.com', 'hash6', NULL, 'activo'),
('Sergio Campos', 'sergio@example.com', 'hash7', NULL, 'activo'),
('Lucía Herrera', 'lucia@example.com', 'hash8', NULL, 'activo'),
('Tomás Paredes', 'tomas@example.com', 'hash9', NULL, 'activo'),
('Patricia Romero', 'patricia@example.com', 'hash10', NULL, 'activo'),
('Jorge Molina', 'jorge@example.com', 'hash11', NULL, 'activo'),
('Isabel Torres', 'isabel@example.com', 'hash12', NULL, 'activo'),
('Ricardo León', 'ricardo@example.com', 'hash13', NULL, 'activo'),
('Valeria Silva', 'valeria@example.com', 'hash14', NULL, 'activo'),
('Diego Méndez', 'diego@example.com', 'hash15', NULL, 'activo'),
('Carmen Navarro', 'carmen@example.com', 'hash16', NULL, 'activo'),
('Andrés Poma', 'andres@example.com', 'hash17', NULL, 'activo'),
('Paula Aguirre', 'paula@example.com', 'hash18', NULL, 'activo'),
('Héctor Salas', 'hector@example.com', 'hash19', NULL, 'activo'),
('Natalia Chávez', 'natalia@example.com', 'hash20', NULL, 'activo'),
('Fabio Gutiérrez', 'fabio@example.com', 'hash21', NULL, 'activo'),
('Diana Quispe', 'diana@example.com', 'hash22', NULL, 'activo'),
('Oscar Linares', 'oscar@example.com', 'hash23', NULL, 'activo'),
('Roxana Alvarado', 'roxana@example.com', 'hash24', NULL, 'activo'),
('Esteban Soto', 'esteban@example.com', 'hash25', NULL, 'activo'),
('Luisa Ramírez', 'luisa@example.com', 'hash26', NULL, 'activo'),
('Emilio Cárdenas', 'emilio@example.com', 'hash27', NULL, 'activo'),
('Fernanda Meza', 'fernanda@example.com', 'hash28', NULL, 'activo'),
('Mateo Rivera', 'mateo@example.com', 'hash29', NULL, 'activo'),
('Sofía Luna', 'sofia@example.com', 'hash30', NULL, 'activo'),
('Bruno Cáceres', 'bruno@example.com', 'hash31', NULL, 'activo'),
('Renata Núñez', 'renata@example.com', 'hash32', NULL, 'activo'),
('Iván Miranda', 'ivan@example.com', 'hash33', NULL, 'activo');

-- Asociación usuario_rol
INSERT INTO usuario_rol (id_usuario, id_rol) VALUES
(1, 1),  -- Admin
(2, 2),  -- Usuario
(3, 3),  -- Vendedor
(4, 2), (5, 3), (6, 2), (7, 3), (8, 2), (9, 3), (10, 2),
(11, 3), (12, 2), (13, 3), (14, 2), (15, 3), (16, 2), (17, 3), (18, 2),
(19, 3), (20, 2), (21, 3), (22, 2), (23, 3), (24, 2), (25, 3), (26, 2),
(27, 3), (28, 2), (29, 3), (30, 2), (31, 3), (32, 2), (33, 3);


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
('Gestor de Finanzas', 'Sistema para seguimiento de gastos personales', 'Python', 0.00, TRUE, 'url/finanzas.zip', 'https://github.com/sofia/finanzas', 'activo', 3),
('CRM para PyMEs', 'Gestión de clientes y ventas', 'PHP', 60.00, FALSE, 'url/crm.zip', 'https://github.com/user/crm', 'activo', 4),
('Blog Personal', 'Sistema de publicación de artículos', 'Laravel', 0.00, TRUE, 'url/blog.zip', 'https://github.com/user/blog', 'activo', 5),
('Tienda Virtual', 'E-commerce completo con carrito', 'JavaScript', 55.00, FALSE, 'url/tienda.zip', 'https://github.com/user/tienda', 'activo', 6),
('Sistema Escolar', 'Módulo para gestión de estudiantes', 'Python', 70.00, FALSE, 'url/escolar.zip', 'https://github.com/user/escolar', 'activo', 7),
('Calculadora Financiera', 'Herramienta para cálculos contables', 'Java', 0.00, TRUE, 'url/calculadora.zip', 'https://github.com/user/calculadora', 'activo', 8),
('App Clima', 'Aplicación meteorológica móvil', 'Kotlin', 30.00, FALSE, 'url/clima.zip', 'https://github.com/user/clima', 'activo', 9),
('Gestor de Libros', 'Registro y control de biblioteca personal', 'C#', 40.00, FALSE, 'url/libros.zip', 'https://github.com/user/libros', 'activo', 10),
('Sistema de Notas', 'Registro de calificaciones por curso', 'Python', 0.00, TRUE, 'url/notas.zip', 'https://github.com/user/notas', 'activo', 11),
('Landing para Startups', 'Página moderna para nuevos negocios', 'HTML/CSS/JS', 0.00, TRUE, 'url/startup.zip', 'https://github.com/user/startup', 'activo', 12),
('API de Productos', 'API RESTful para productos', 'Node.js', 45.00, FALSE, 'url/api_prod.zip', 'https://github.com/user/api_prod', 'activo', 13),
('Gestión de Inventario Web', 'Administra productos y almacenes', 'PHP', 50.00, FALSE, 'url/inventario_web.zip', 'https://github.com/user/invweb', 'activo', 14),
('Chat en Tiempo Real', 'App de mensajería con WebSocket', 'Node.js', 35.00, FALSE, 'url/chat.zip', 'https://github.com/user/chat', 'activo', 15),
('Agenda Digital', 'Organiza tus días con eventos', 'Flutter', 25.00, FALSE, 'url/agenda.zip', 'https://github.com/user/agenda', 'activo', 16),
('Plataforma de Cursos', 'Sistema para dictado y compra de cursos', 'Django', 80.00, FALSE, 'url/cursos.zip', 'https://github.com/user/cursos', 'activo', 17),
('Gestión de Citas Médicas', 'Turnos y horarios para clínicas', 'React', 65.00, FALSE, 'url/citas.zip', 'https://github.com/user/citas', 'activo', 18),
('Sistema de Reclamos', 'Plataforma para gestionar reclamos', 'Java', 0.00, TRUE, 'url/reclamos.zip', 'https://github.com/user/reclamos', 'activo', 19),
('Buscador de Noticias', 'Consume API de noticias globales', 'Vue.js', 0.00, TRUE, 'url/noticias.zip', 'https://github.com/user/noticias', 'activo', 20),
('Gestor de Presupuestos', 'Control de ingresos y gastos', 'Python', 40.00, FALSE, 'url/presupuesto.zip', 'https://github.com/user/presupuesto', 'activo', 21),
('Sistema para Veterinaria', 'Registro de pacientes y tratamientos', 'C#', 55.00, FALSE, 'url/vet.zip', 'https://github.com/user/vet', 'activo', 22),
('Asistente de Voz', 'Reconocimiento de comandos por voz', 'Python', 0.00, TRUE, 'url/voz.zip', 'https://github.com/user/voz', 'activo', 23),
('Gestión de Eventos', 'Organizador de ferias y conferencias', 'Angular', 35.00, FALSE, 'url/eventos.zip', 'https://github.com/user/eventos', 'activo', 24),
('App de Viajes', 'Organiza tus rutas y viajes', 'React Native', 0.00, TRUE, 'url/viajes.zip', 'https://github.com/user/viajes', 'activo', 25),
('Gestor de Reportes', 'Panel de administración y estadísticas', 'PHP', 30.00, FALSE, 'url/reportes.zip', 'https://github.com/user/reportes', 'activo', 26),
('Foro Universitario', 'Plataforma de preguntas y respuestas', 'Ruby on Rails', 0.00, TRUE, 'url/foro.zip', 'https://github.com/user/foro', 'activo', 27),
('Control de Asistencia', 'Lleva registro de entradas y salidas', 'Java', 60.00, FALSE, 'url/asistencia.zip', 'https://github.com/user/asistencia', 'activo', 28),
('App de Recordatorios', 'Crea alertas y pendientes', 'Flutter', 0.00, TRUE, 'url/recordatorios.zip', 'https://github.com/user/recordatorios', 'activo', 29),
('Sistema de Encuestas', 'Crea y gestiona encuestas dinámicas', 'PHP', 20.00, FALSE, 'url/encuestas.zip', 'https://github.com/user/encuestas', 'activo', 30),
('Administrador de Archivos', 'Sube y gestiona archivos online', 'Node.js', 45.00, FALSE, 'url/archivos.zip', 'https://github.com/user/archivos', 'activo', 31),
('Gestor de Tiempos', 'Controla el tiempo dedicado a proyectos', 'Python', 0.00, TRUE, 'url/tiempo.zip', 'https://github.com/user/tiempo', 'activo', 32),
('Panel de Control IoT', 'Dashboard para dispositivos inteligentes', 'React', 50.00, FALSE, 'url/iot.zip', 'https://github.com/user/iot', 'activo', 33);

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