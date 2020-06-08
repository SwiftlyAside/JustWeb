package Ex01;

import Bean.Customers;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;

public class FileReader {
    public List<String> getFileContents(String fileName) {
        List<String> list = new ArrayList<>();
        try {
            BufferedReader reader = new BufferedReader(
                    new InputStreamReader(
                            new FileInputStream(fileName), StandardCharsets.UTF_8
                    ));

            String line = null;

            while ((line = reader.readLine()) != null) {
                list.add(line);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        return list;
    }

    public List<Customers> getCustomersList(List<String> list) {
        List<Customers> customersList = new ArrayList<>();

        for (String s : list) {
            String[] strings = s.split("\t");
            Customers customer = new Customers();

            customer.setCustomerId(Integer.parseInt(strings[0]));
            customer.setCustomerName(strings[1]);
            customer.setContactName(strings[2]);
            customer.setAddress(strings[3]);
            customer.setCity(strings[4]);
            customer.setPostalCode(strings[5]);
            customer.setCountry(strings[6]);

            customersList.add(customer);
        }
        return customersList;
    }
}
