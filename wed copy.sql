CREATE DATABASE IF NOT EXISTS wed;
USE wed;

-- Tabla de usuarios
CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    contrasena_hash VARCHAR(255) NOT NULL,
    foto_perfil VARCHAR(255),
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    estado ENUM('activo', 'inactivo', 'baneado') DEFAULT 'activo'
);
-- Tabla de roles
CREATE TABLE roles (
    id_rol INT AUTO_INCREMENT PRIMARY KEY,
    nombre_rol VARCHAR(50) NOT NULL UNIQUE
);

-- Asociación de usuarios con roles
CREATE TABLE usuario_rol (
    id_usuario INT,
    id_rol INT,
    PRIMARY KEY (id_usuario, id_rol),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario) ON DELETE CASCADE,
    FOREIGN KEY (id_rol) REFERENCES roles(id_rol)
);

-- Actividad del usuario
CREATE TABLE actividad_usuario (
    id_actividad INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    accion VARCHAR(100),
    descripcion TEXT,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    INDEX(id_usuario)
);

-- Tabla de proyectos
CREATE TABLE proyectos (
    id_proyecto INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    descripcion TEXT,
    lenguaje_programacion VARCHAR(50),
    precio DECIMAL(10,2) DEFAULT 0.00 CHECK (precio >= 0),
    gratuito BOOLEAN DEFAULT FALSE,
    archivo_url VARCHAR(255),
    repositorio_url VARCHAR(255),
    estado ENUM('activo', 'oculto', 'suspendido') DEFAULT 'activo',
    id_usuario INT NOT NULL,
    fecha_publicacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    INDEX(id_usuario),
    INDEX(estado),
    INDEX(lenguaje_programacion)
);

-- Comentarios sobre proyectos
CREATE TABLE comentarios (
    id_comentario INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_proyecto INT NOT NULL,
    contenido TEXT,
    fecha_comentario TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_proyecto) REFERENCES proyectos(id_proyecto),
    INDEX(id_proyecto),
    INDEX(id_usuario)
);

-- Valoraciones
CREATE TABLE valoraciones (
    id_valoracion INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_proyecto INT NOT NULL,
    puntuacion TINYINT CHECK (puntuacion BETWEEN 1 AND 5),
    comentario TEXT,
    fecha_valoracion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (id_usuario, id_proyecto),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_proyecto) REFERENCES proyectos(id_proyecto)
);

-- Favoritos
CREATE TABLE favoritos (
    id_favorito INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_proyecto INT NOT NULL,
    fecha_agregado TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (id_usuario, id_proyecto),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_proyecto) REFERENCES proyectos(id_proyecto)
);

-- Carrito
CREATE TABLE carrito (
    id_carrito INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_proyecto INT NOT NULL,
    fecha_agregado TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (id_usuario, id_proyecto),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_proyecto) REFERENCES proyectos(id_proyecto)
);

-- Métodos de pago
CREATE TABLE metodos_pago (
    id_metodo INT AUTO_INCREMENT PRIMARY KEY,
    nombre_metodo VARCHAR(50) NOT NULL UNIQUE,
    detalles TEXT,
    estado ENUM('activo', 'inactivo') DEFAULT 'activo',
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- Ventas
CREATE TABLE ventas (
    id_venta INT AUTO_INCREMENT PRIMARY KEY,
    id_comprador INT NOT NULL,
    id_proyecto INT NOT NULL,
    monto DECIMAL(10,2) CHECK (monto >= 0),
    estado ENUM('pagado', 'pendiente', 'fallido') DEFAULT 'pagado',
    id_metodo INT,
    fecha_venta TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_comprador) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_proyecto) REFERENCES proyectos(id_proyecto),
    FOREIGN KEY (id_metodo) REFERENCES metodos_pago(id_metodo)
);

-- Descargas
CREATE TABLE descargas (
    id_descarga INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_proyecto INT NOT NULL,
    es_compra BOOLEAN DEFAULT FALSE,
    fecha_descarga TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_proyecto) REFERENCES proyectos(id_proyecto)
);
-- Mensajes privados
CREATE TABLE mensajes (
    id_mensaje INT AUTO_INCREMENT PRIMARY KEY,
    id_remitente INT NOT NULL,
    id_destinatario INT NOT NULL,
    contenido TEXT,
    leido BOOLEAN DEFAULT FALSE,
    fecha_mensaje TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_remitente) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_destinatario) REFERENCES usuarios(id_usuario)
);
-- Versiones de proyecto
CREATE TABLE versiones_proyecto (
    id_version INT AUTO_INCREMENT PRIMARY KEY,
    id_proyecto INT NOT NULL,
    nombre_version VARCHAR(50),
    descripcion TEXT,
    archivo_url VARCHAR(255),
    fecha_publicacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_proyecto) REFERENCES proyectos(id_proyecto) ON DELETE CASCADE
);

-- Tags
CREATE TABLE tags (
    id_tag INT AUTO_INCREMENT PRIMARY KEY,
    nombre_tag VARCHAR(50) UNIQUE
);

-- Relación proyecto-tag
CREATE TABLE proyecto_tag (
    id_proyecto INT,
    id_tag INT,
    PRIMARY KEY (id_proyecto, id_tag),
    FOREIGN KEY (id_proyecto) REFERENCES proyectos(id_proyecto) ON DELETE CASCADE,
    FOREIGN KEY (id_tag) REFERENCES tags(id_tag)
);

-- Reportes
CREATE TABLE reportes (
    id_reporte INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_proyecto INT NOT NULL,
    tipo ENUM('bug', 'contenido inapropiado', 'otro') NOT NULL,
    descripcion TEXT NOT NULL,
    estado ENUM('pendiente', 'resuelto') DEFAULT 'pendiente',
    fecha_reporte TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_proyecto) REFERENCES proyectos(id_proyecto)
);

-- Logs del sistema
CREATE TABLE logs_sistema (
    id_log INT AUTO_INCREMENT PRIMARY KEY,
    nivel ENUM('INFO', 'WARNING', 'ERROR') NOT NULL,
    mensaje TEXT,
    fecha_log TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Notificaciones
CREATE TABLE notificaciones (
    id_notificacion INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    contenido TEXT,
    leido BOOLEAN DEFAULT FALSE,
    fecha_notificacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);

-- Configuración general
CREATE TABLE configuracion (
    id_configuracion INT AUTO_INCREMENT PRIMARY KEY,
    clave VARCHAR(50) UNIQUE,
    valor TEXT
);

-- Auditoría del sistema
CREATE TABLE auditoria (
    id_auditoria INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    accion VARCHAR(100),
    descripcion TEXT,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);

-- Suscripciones
CREATE TABLE suscripciones (
    id_suscripcion INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_proyecto INT NOT NULL,
    fecha_suscripcion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (id_usuario, id_proyecto),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_proyecto) REFERENCES proyectos(id_proyecto)
);

-- Historial de pagos
CREATE TABLE historial_pagos (
    id_historial INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    monto DECIMAL(10,2) CHECK (monto >= 0),
    metodo_pago VARCHAR(50),
    fecha_pago TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);