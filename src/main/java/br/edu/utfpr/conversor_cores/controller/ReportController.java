package br.edu.utfpr.conversor_cores.controller;

import br.edu.utfpr.conversor_cores.model.domain.Color;
import br.edu.utfpr.conversor_cores.service.ColorService;
import br.edu.utfpr.conversor_cores.service.ConversionService;
import br.edu.utfpr.conversor_cores.model.domain.Conversion;
import lombok.SneakyThrows;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "ReportController", value = "/relatorio")
public class ReportController extends HttpServlet {
    ConversionService conversion_service = new ConversionService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Conversion> conversions = conversion_service.findAll();
        request.setAttribute("conversions", conversions);

        request.getRequestDispatcher("/WEB-INF/view/report.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
