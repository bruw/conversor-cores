package br.edu.utfpr.conversor_cores.controller;

import br.edu.utfpr.conversor_cores.model.domain.Color;
import br.edu.utfpr.conversor_cores.service.ColorService;
import com.google.gson.Gson;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ColorNameController", value = "/nome-cor")
public class ColorNameController extends HttpServlet {
    ColorService color_service = new ColorService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String hexadecimal = request.getParameter("hexadecimal");
        Color color = color_service.getByProperty("hexadecimal", hexadecimal);

        String json = new Gson().toJson(color);
        response.setContentType("aplication/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(json);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
