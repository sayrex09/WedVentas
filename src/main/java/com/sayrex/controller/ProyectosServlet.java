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

@WebServlet("/ProyectosServlet")
public class ProyectosServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        HttpSession ses = request.getSession(false);
        UsuarioDTO usuario = (UsuarioDTO) ses.getAttribute("usuario");
        if (usuario == null || !"vendedor".equals(usuario.getIDRol())) {
            response.sendRedirect("views/usuario/login.jsp");
            return;
        }

        String action = request.getParameter("action");

        try (Connection conn = MySQLConexion.getConnection()) {
            ProyectosDAO dao = new ProyectosDAO(conn);

            if ("editar".equals(action)) {
                int id = Integer.parseInt(request.getParameter("id"));
                ProyectosDTO proyecto = dao.obtenerPorId(id);
                request.setAttribute("proyecto", proyecto);
                request.getRequestDispatcher("views/vendedor/formProyecto.jsp").forward(request, response);
                return;
            }

            if ("eliminar".equals(action)) {
                int id = Integer.parseInt(request.getParameter("id"));
                dao.eliminar(id);
                response.sendRedirect("ProyectosServlet");
                return;
            }

            // Si no hay acción, mostrar la lista con paginación
            int pagina = 1;
            int limit = 8;
            if (request.getParameter("pagina") != null) {
                pagina = Integer.parseInt(request.getParameter("pagina"));
            }
            int offset = (pagina - 1) * limit;

            List<ProyectosDTO> lista = dao.listar(usuario.getIdUsuario(), offset, limit);
            int total = dao.contar(usuario.getIdUsuario());
            int paginas = (int) Math.ceil((double) total / limit);

            request.setAttribute("lista", lista);
            request.setAttribute("pagina", pagina);
            request.setAttribute("total", total);
            request.setAttribute("limit", limit);
            request.setAttribute("paginas", paginas);

            request.getRequestDispatcher("views/vendedor/listaProyectos.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Error al procesar la solicitud");
            request.getRequestDispatcher("views/vendedor/listaProyectos.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        HttpSession ses = request.getSession(false);
        UsuarioDTO usuario = (UsuarioDTO) ses.getAttribute("usuario");
        if (usuario == null || !"vendedor".equals(usuario.getIDRol())) {
            response.sendRedirect("views/usuario/login.jsp");
            return;
        }

        String accion = request.getParameter("accion");

        try (Connection conn = MySQLConexion.getConnection()) {
            ProyectosDAO dao = new ProyectosDAO(conn);

            ProyectosDTO p = new ProyectosDTO();
            p.setTitulo(request.getParameter("titulo"));
            p.setDescripcion(request.getParameter("descripcion"));
            p.setLenguajeProgramacion(request.getParameter("lenguaje_programacion"));
            p.setPrecio(Double.parseDouble(request.getParameter("precio")));
            p.setGratuito(request.getParameter("gratuito") != null);
            p.setArchivoUrl(request.getParameter("archivo_url")); // opcional
            p.setIdUsuario(usuario.getIdUsuario());

            if ("insertar".equals(accion)) {
                dao.insertar(p);
            } else if ("actualizar".equals(accion)) {
                p.setIdProyecto(Integer.parseInt(request.getParameter("idProyecto")));
                dao.actualizar(p);
            }

            response.sendRedirect("ProyectosServlet");

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Error al guardar el proyecto");
            request.getRequestDispatcher("views/vendedor/formProyecto.jsp").forward(request, response);
        }
    }
}
