package com.sayrex.controller;

import com.sayrex.dao.UsuarioDAO;
import com.sayrex.dto.UsuarioDTO;
import com.sayrex.util.MySQLConexion;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;

public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String correo = request.getParameter("correo");
        String clave = request.getParameter("clave");

        UsuarioDTO usuario = new UsuarioDTO();
        usuario.setNombre(nombre);
        usuario.setCorreo(correo);
        usuario.setContrasenaHash(clave); // Aplica hash si corresponde

        try (Connection conn = MySQLConexion.getConnection()) {
            UsuarioDAO dao = new UsuarioDAO(conn);
            boolean registrado = dao.registrarUsuario(usuario);
            if (registrado) {
                response.sendRedirect("views/usuario/login.jsp");
            } else {
                request.setAttribute("error", "No se pudo registrar el usuario");
                request.getRequestDispatcher("views/usuario/register.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Error de servidor");
            request.getRequestDispatcher("views/usuario/register.jsp").forward(request, response);
        }
    }
}