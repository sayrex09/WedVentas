package com.sayrex.dao;

import com.sayrex.dto.UsuarioDTO;
import java.sql.*;

public class UsuarioDAO {
    private Connection conn;

    public UsuarioDAO(Connection conn) {
        this.conn = conn;
    }

    // 🔐 LOGIN
    public UsuarioDTO validarLogin(String correo, String clave) throws SQLException {
        String sql = "SELECT u.id_usuario, u.nombre, u.correo, r.nombre_rol " +
                     "FROM usuarios u " +
                     "JOIN usuario_rol ur ON u.id_usuario = ur.id_usuario " +
                     "JOIN roles r ON ur.id_rol = r.id_rol " +
                     "WHERE u.correo = ? AND u.contrasena_hash = ?";

        try (PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, correo);
            ps.setString(2, clave); // Aplica hash si lo implementas

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                UsuarioDTO u = new UsuarioDTO();
                u.setIdUsuario(rs.getInt(1));
                u.setNombre(rs.getString(2));
                u.setCorreo(rs.getString(3));
                u.setIDRol(rs.getString(4));
                return u;
            }
        }
        return null;
    }

    // 🔑 REGISTRO con asignación de rol "usuario"
    public boolean registrarUsuario(UsuarioDTO usuario) throws SQLException {
        String sqlUsuario = "INSERT INTO usuarios (nombre, correo, contrasena_hash) VALUES (?, ?, ?)";

        try (PreparedStatement psUsuario = conn.prepareStatement(sqlUsuario, Statement.RETURN_GENERATED_KEYS)) {
            psUsuario.setString(1, usuario.getNombre());
            psUsuario.setString(2, usuario.getCorreo());
            psUsuario.setString(3, usuario.getContrasenaHash());

            int rows = psUsuario.executeUpdate();
            if (rows > 0) {
                // Obtener id_usuario generado
                ResultSet generatedKeys = psUsuario.getGeneratedKeys();
                if (generatedKeys.next()) {
                    int idUsuario = generatedKeys.getInt(1);

                    // Obtener id_rol de "usuario"
                    int idRol = obtenerIdRolPorNombre("usuario");
                    if (idRol == -1) {
                        throw new SQLException("Rol 'usuario' no existe en la tabla roles.");
                    }

                    // Insertar en usuario_rol
                    String sqlRol = "INSERT INTO usuario_rol (id_usuario, id_rol) VALUES (?, ?)";
                    try (PreparedStatement psRol = conn.prepareStatement(sqlRol)) {
                        psRol.setInt(1, idUsuario);
                        psRol.setInt(2, idRol);
                        psRol.executeUpdate();
                    }
                    return true;
                }
            }
        }
        return false;
    }

    // 🎯 Obtener id_rol por nombre (ej: 'usuario')
    public int obtenerIdRolPorNombre(String nombreRol) throws SQLException {
        String sql = "SELECT id_rol FROM roles WHERE nombre_rol = ?";
        try (PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, nombreRol);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt("id_rol");
            }
        }
        return -1;
    }
}
