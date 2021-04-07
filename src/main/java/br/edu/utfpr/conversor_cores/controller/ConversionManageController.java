package br.edu.utfpr.conversor_cores.controller;

import br.edu.utfpr.conversor_cores.model.domain.Color;
import br.edu.utfpr.conversor_cores.model.domain.Conversion;
import br.edu.utfpr.conversor_cores.service.ColorService;
import br.edu.utfpr.conversor_cores.service.ConversionService;
import br.edu.utfpr.conversor_cores.util.Routes;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;


@WebServlet(name = "ConversionManageController", urlPatterns = {"/remover", "/editar", "/criar-conversao"})
public class ConversionManageController extends HttpServlet {
    ConversionService conversion_service = new ConversionService();
    ColorService color_service = new ColorService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getServletPath().contains(Routes.DELETE)){
            Long id_delete = Long.parseLong(request.getParameter("id"));
            conversion_service.deleteById(id_delete);
            request.getRequestDispatcher("/relatorio").forward(request, response);
        }

        if(request.getServletPath().contains(Routes.UPDATE)){
            Long id_update = Long.parseLong(request.getParameter("id"));
            Conversion conversion = conversion_service.getById(id_update);
            request.setAttribute("conversion", conversion);
            request.getRequestDispatcher("/WEB-INF/view/edit-conversion.jsp").forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Conversion conversion = new Conversion();
        Color color = new Color();

        if(request.getServletPath().contains(Routes.UPDATE)){
            Long id = Long.parseLong(request.getParameter("id-current-conversion"));
            String typed_color = request.getParameter("input-new-color");
            conversion = conversion_service.getById(id);


            if(conversion.getColor() == null){
                String hexadecimal = conversion_service.getById(id).getHexadecimal();
                List<Conversion> convs = conversion_service.findAll();

                color.setName(typed_color);
                color.setHexadecimal(conversion.getHexadecimal());
                color_service.save(color);

                Color color_up = color_service.getByProperty("hexadecimal", conversion.getHexadecimal());

                for(int i = 0; i < convs.size(); i++){
                    Conversion conv = convs.get(i);
                    if(convs.get(i).getHexadecimal().equals(hexadecimal)){
                        conv.setColor(color_up);
                        conversion_service.update(conv);
                    }
                }
            }

            response.sendRedirect("relatorio");
        }else{
           if(request.getServletPath().contains(Routes.CREATE)){
                color = color_service.getByProperty("hexadecimal", (String) request.getAttribute("hexadecimal"));
                conversion.setHexadecimal((String) request.getAttribute("hexadecimal"));
                conversion.setRgb((String) request.getAttribute("rgb"));
                conversion.setColor(color);

                conversion_service.save(conversion);

                response.sendRedirect("/conversor-cores");
            }
        }
    }
}
