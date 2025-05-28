package com.sayrex.controller;

import com.sayrex.dao.UsuarioDAO;
import com.sayrex.dto.UsuarioDTO;
import com.sayrex.util.MySQLConexion;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String correo = request.getParameter("correo");
        String clave = request.getParameter("clave");

        try (Connection conn = MySQLConexion.getConnection()) {
            UsuarioDAO dao = new UsuarioDAO(conn);
            UsuarioDTO u = dao.validarLogin(correo, clave);

            if (u != null) {
                HttpSession ses = request.getSession();
                ses.setAttribute("usuario", u);

                // Redirigir por rol
                switch (u.getIDRol()) {
                    case "admin": response.sendRedirect("views/admin/dashboard.jsp"); break;
                    case "vendedor": response.sendRedirect("views/vendedor/dashboard.jsp"); break;
                    case "usuario": response.sendRedirect("views/usuario/dashboard.jsp"); break;
                    default: response.sendRedirect("login.jsp"); break;
                }
            } else {
                request.setAttribute("error", "Correo o contraseña incorrectos");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Error de servidor");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}


