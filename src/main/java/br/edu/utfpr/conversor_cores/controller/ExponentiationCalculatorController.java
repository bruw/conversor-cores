package br.edu.utfpr.conversor_cores.controller;
import br.edu.utfpr.conversor_cores.model.dao.ConversionDAO;
import br.edu.utfpr.conversor_cores.service.ConversionService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;


@WebServlet(name = "ExponentiationCalculatorController", value = "/converter")
public class ExponentiationCalculatorController extends HttpServlet {
    ConversionService conversion_service = new ConversionService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String hexadecimal = request.getParameter("hexadecimal");

        if(hexadecimal != ""){
            String result = conversion_service.calculateExponentiation(hexadecimal);
            request.setAttribute("hexadecimal", hexadecimal);
            request.setAttribute("result", result);

            request.getRequestDispatcher("/soma-conversao").forward(request, response);
        }else{
            response.sendRedirect("/conversao-cores");
        }

    }
}
