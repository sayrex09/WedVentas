package com.sayrex.controller;

import com.sayrex.dao.ProyectosDAO;
import com.sayrex.dto.ProyectosDTO;
import com.sayrex.dto.UsuarioDTO;
import com.sayrex.util.MySQLConexion;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.util.List;

@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession ses = request.getSession(false);
        UsuarioDTO u = (UsuarioDTO) ses.getAttribute("usuario");

        if (u == null || !"admin".equals(u.getIDRol())) {
            response.sendRedirect("views/usuario/login.jsp");
            return;
        }

        try (Connection conn = MySQLConexion.getConnection()) {
            ProyectosDAO dao = new ProyectosDAO(conn);
            List<ProyectosDTO> lista = dao.listarTodosLosProyectos();

            request.setAttribute("proyectos", lista);
            request.getRequestDispatcher("views/admin/proyectosGraficos.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Error al cargar estadísticas");
            request.getRequestDispatcher("views/admin/dashboard.jsp").forward(request, response);
        }
    }
}
