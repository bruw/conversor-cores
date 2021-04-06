package br.edu.utfpr.conversor_cores.service;

import br.edu.utfpr.conversor_cores.model.dao.ConversionDAO;
import br.edu.utfpr.conversor_cores.model.domain.Conversion;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class ConversionService extends AbstractService<Long, Conversion> {
    public ConversionService() {
        dao = new ConversionDAO();
        list_hexadecimal.put("0", 0);
        list_hexadecimal.put("1", 1);
        list_hexadecimal.put("2", 2);
        list_hexadecimal.put("3", 3);
        list_hexadecimal.put("4", 4);
        list_hexadecimal.put("5", 5);
        list_hexadecimal.put("6", 6);
        list_hexadecimal.put("7", 7);
        list_hexadecimal.put("8", 8);
        list_hexadecimal.put("9", 9);
        list_hexadecimal.put("a", 10);
        list_hexadecimal.put("b", 11);
        list_hexadecimal.put("c", 12);
        list_hexadecimal.put("d", 13);
        list_hexadecimal.put("e", 14);
        list_hexadecimal.put("f", 15);

    }

    private Map<String, Integer> list_hexadecimal = new HashMap<>();


    public String calculateExponentiation(String hexadecimal) {
        hexadecimal = hexadecimal.toLowerCase();
        String current;
        String result = "";
        int cont = 0;

        for (int i = 6; i > 0; i--) {
            current = hexadecimal.substring(i - 1, i);

            for (Map.Entry<String, Integer> entry : list_hexadecimal.entrySet()) {
                if (entry.getKey().equals(current)) {
                    result += (int) Math.pow(16, cont) * entry.getValue() + ",";
                    cont++;
                }

                if (cont == 2) {
                    cont = 0;
                }
            }
        }

        String[] elements = result.split(",");
        result = elements[5] + "," + elements[4] + "," + elements[3] + "," + elements[2] + "," + elements[1] + "," + elements[0];

        return result;
    }

    public String calculateSum(String data) {
        String result = "";
        String[] dados = data.split(",");
        int data1, data2;

        for (int i = 0; i < 5; i += 2) {
            data1 = Integer.parseInt(dados[i]);
            data2 = Integer.parseInt(dados[i + 1]);

            result += (i < 5 - 1) ? (data1 + data2) + "," : (data1 + data2);
        }

        return result;
    }
}
