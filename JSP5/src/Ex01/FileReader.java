package Ex01;

import Bean.*;

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

    public List<Categories> getCategoriesList(List<String> list) {
        List<Categories> categoriesList = new ArrayList<>();

        for (String s : list) {
            String[] strings = s.split("\t");
            Categories category = new Categories();

            category.setCategoryId(Integer.parseInt(strings[0]));
            category.setCategoryName(strings[1]);
            category.setDescription(strings[2]);

            categoriesList.add(category);
        }
        return categoriesList;
    }

    public List<Suppliers> getSuppliersList(List<String> list) {
        List<Suppliers> suppliersList = new ArrayList<>();

        for (String s : list) {
            String[] strings = s.split("\t");
            Suppliers supplier = new Suppliers();

            supplier.setSupplierId(Integer.parseInt(strings[0]));
            supplier.setSupplierName(strings[1]);
            supplier.setContactName(strings[2]);
            supplier.setAddress(strings[3]);
            supplier.setCity(strings[4]);
            supplier.setPostalCode(strings[5]);
            supplier.setCountry(strings[6]);
            supplier.setPhone(strings[7]);

            suppliersList.add(supplier);
        }
        return suppliersList;
    }

    public List<Products> getProductsList(List<String> list) {
        List<Products> productsList = new ArrayList<>();

        for (String s : list) {
            String[] strings = s.split("\t");
            Products product = new Products();

            product.setProductId(Integer.parseInt(strings[0]));
            product.setProductName(strings[1]);
            product.setSupplierId(Integer.parseInt(strings[2]));
            product.setCategoryId(Integer.parseInt(strings[3]));
            product.setUnit(strings[4]);
            product.setPrice(Double.parseDouble(strings[5]));

            productsList.add(product);
        }
        return productsList;
    }

    public List<Employees> getEmployeesList(List<String> list) {
        List<Employees> employeesList = new ArrayList<>();

        for (String s : list) {
            String[] strings = s.split("\t");
            Employees employee = new Employees();

            employee.setEmployeeId(Integer.parseInt(strings[0]));
            employee.setLastName(strings[1]);
            employee.setFirstName(strings[2]);
            employee.setBirthDate(strings[3]);
            employee.setPhoto(strings[4]);
            employee.setNotes(strings[5]);

            employeesList.add(employee);
        }
        return employeesList;
    }

    public List<Shippers> getShippersList(List<String> list) {
        List<Shippers> shippersList = new ArrayList<>();
        for (String s : list) {
            String[] strings = s.split("\t");
            Shippers shipper = new Shippers();

            shipper.setShipperId(Integer.parseInt(strings[0]));
            shipper.setShipperName(strings[1]);
            shipper.setPhone(strings[2]);

            shippersList.add(shipper);
        }
        return shippersList;
    }

    public List<Orders> getOrdersList(List<String> list) {
        List<Orders> ordersList = new ArrayList<>();
        for (String s : list) {
            String[] strings = s.split("\t");
            Orders order = new Orders();

            order.setOrderId(Integer.parseInt(strings[0]));
            order.setCustomerId(Integer.parseInt(strings[1]));
            order.setEmployeeId(Integer.parseInt(strings[2]));
            order.setOrderDate(strings[3]);
            order.setShipperId(Integer.parseInt(strings[4]));

            ordersList.add(order);
        }
        return ordersList;
    }
}
