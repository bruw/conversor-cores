package br.edu.utfpr.conversor_cores.controller;

import br.edu.utfpr.conversor_cores.service.ConversionService;
import br.edu.utfpr.conversor_cores.util.Constants;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "SumCalculatorController", value = "/soma-conversao")
public class SumCalculatorController extends HttpServlet {
    ConversionService conversion_service = new ConversionService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String data = (String) request.getAttribute("result");
        String result = conversion_service.calculateSum(data);
        String[] rgb = result.split(",");
        String red = rgb[0];
        String green = rgb[1];
        String blue = rgb[2];
        String toDisplay = "true";
        String hexadecimal = request.getParameter("hexadecimal");

        request.setAttribute("rgb", result);
        request.setAttribute("flash.red", red);
        request.setAttribute("flash.green", green);
        request.setAttribute("flash.blue", blue);
        request.setAttribute("flash.toDisplay", toDisplay);
        request.setAttribute("flash.hexadecimal", hexadecimal);

        String ip_session = request.getRemoteAddr();
        request.getSession(true).setAttribute(Constants.IP_SESSION, ip_session);

        Cookie cookie_ip = new Cookie("ip_session", ip_session);
        response.addCookie(cookie_ip);

        String gandalf = "https://www.youtube.com/watch?v=G1IbRujko-A&ab_channel=10Hours";

        Cookie cookie_test = new Cookie("gandalf", gandalf);
        cookie_test.setMaxAge(60*60*24);
        response.addCookie(cookie_test);

        request.getRequestDispatcher("criar-conversao").forward(request, response);
    }

}
