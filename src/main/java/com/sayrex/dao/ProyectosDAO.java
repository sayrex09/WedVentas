package com.sayrex.dao;

import com.sayrex.dto.ProyectosDTO;
import java.sql.*;
import java.util.*;

public class ProyectosDAO {
    private Connection conn;

    public ProyectosDAO(Connection conn) {
        this.conn = conn;
    }

    public List<ProyectosDTO> listar(int idUsuario, int offset, int limit) throws SQLException {
        String sql = "SELECT * FROM proyectos WHERE id_usuario = ? ORDER BY fecha_publicacion DESC LIMIT ? OFFSET ?";
        List<ProyectosDTO> lista = new ArrayList<>();

        try (PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, idUsuario);
            ps.setInt(2, limit);
            ps.setInt(3, offset);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                ProyectosDTO p = new ProyectosDTO();
                p.setIdProyecto(rs.getInt("id_proyecto"));
                p.setTitulo(rs.getString("titulo"));
                p.setDescripcion(rs.getString("descripcion"));
                p.setLenguajeProgramacion(rs.getString("lenguaje_programacion"));
                p.setPrecio(rs.getDouble("precio"));
                p.setGratuito(rs.getBoolean("gratuito"));
                p.setArchivoUrl(rs.getString("archivo_url"));
                p.setEstado(rs.getString("estado"));
                p.setFechaPublicacion(rs.getTimestamp("fecha_publicacion"));
                lista.add(p);
            }
        }
        return lista;
    }

    public int contar(int idUsuario) throws SQLException {
        String sql = "SELECT COUNT(*) FROM proyectos WHERE id_usuario = ?";
        try (PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, idUsuario);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) return rs.getInt(1);
        }
        return 0;
    }

    public void insertar(ProyectosDTO p) throws SQLException {
        String sql = "INSERT INTO proyectos (titulo, descripcion, lenguaje_programacion, precio, es_gratuito, id_usuario, estado, fecha_publicacion) " +
                     "VALUES (?, ?, ?, ?, ?, ?, 'activo', NOW())";
        try (PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, p.getTitulo());
            ps.setString(2, p.getDescripcion());
            ps.setString(3, p.getLenguajeProgramacion());
            ps.setDouble(4, p.getPrecio());
            ps.setBoolean(5, p.isGratuito());
            ps.setInt(6, p.getIdUsuario());
            ps.executeUpdate();
        }
    }
    

    // Métodos insertar, actualizar, eliminar (te los doy luego)
}
