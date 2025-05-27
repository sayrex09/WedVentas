package com.sayrex.security;

import com.sayrex.dto.UsuarioDTO;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.*;
import java.io.IOException;

@WebFilter("/views/*")
public class SesionFilter implements Filter {

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        String uri = req.getRequestURI();

        // Permitir acceso libre a login.jsp y register.jsp
        if (uri.endsWith("login.jsp") || uri.endsWith("register.jsp") || uri.contains("/static/")) {
            chain.doFilter(request, response);
            return;
        }

        HttpSession sesion = req.getSession(false);
        UsuarioDTO usuario = (sesion != null) ? (UsuarioDTO) sesion.getAttribute("usuario") : null;

        if (usuario == null) {
            // Usuario no logueado: redirigir a login
            res.sendRedirect(req.getContextPath() + "/views/usuario/login.jsp");
            return;
        }

        // Usuario logueado: permitir acceso
        chain.doFilter(request, response);
    }
}
