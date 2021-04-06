package br.edu.utfpr.conversor_cores.service;

import br.edu.utfpr.conversor_cores.model.dao.ColorDAO;
import br.edu.utfpr.conversor_cores.model.domain.Color;

public class ColorService extends AbstractService<Long, Color>{
    public ColorService(){
        dao = new ColorDAO();
    }

}
