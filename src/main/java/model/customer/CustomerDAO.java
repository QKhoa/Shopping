package model.customer;

import connectsqlserver.DatabaseConnector;
import model.daointerface.DAOInterface;
import java.sql.*;
import java.util.ArrayList;

public class CustomerDAO implements DAOInterface<Customer> {

    public static CustomerDAO getInstance() {
        return new CustomerDAO();

    };



    @Override
    public ArrayList<Customer> getAll() {
        String sql = "select * from customers";

        ArrayList<Customer> customers = new ArrayList<>();
        try {
            Connection conn = DatabaseConnector.getConnection();

            PreparedStatement ps = conn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Customer customer = new Customer();

//                private String customerID;
//                private String companyName;
//                private String contactName;
//                private String contactTitle;
//                private String address;
//                private String city;
//                private String region;
//                private String postalCode;
//                private String country;
//                private String phone;
//                private String fax;

                customer.setCustomerID(rs.getString("customerID"));
                customer.setCompanyName(rs.getString("companyName"));
                customer.setContactName(rs.getString("contactName"));
                customer.setContactTitle(rs.getString("contactTitle"));
                customer.setAddress(rs.getString("address"));
                customer.setCity(rs.getString("city"));
                customer.setRegion(rs.getString("region"));
                customer.setPostalCode(rs.getString("postalCode"));
                customer.setCountry(rs.getString("country"));
                customer.setPhone(rs.getString("phone"));
                customer.setFax(rs.getString("fax"));

                customers.add(customer);

            }


        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customers;

    }

    @Override
    public Customer getById(String customerID) {
        String sql = "select * from customers where customerID = ?";

        try {
            Connection conn = DatabaseConnector.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, customerID);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                Customer customer = new Customer();

                customer.setCustomerID(rs.getString("customerID"));
                customer.setCompanyName(rs.getString("companyName"));
                customer.setContactName(rs.getString("contactName"));
                customer.setContactTitle(rs.getString("contactTitle"));
                customer.setAddress(rs.getString("address"));
                customer.setCity(rs.getString("city"));
                customer.setRegion(rs.getString("region"));
                customer.setPostalCode(rs.getString("postalCode"));
                customer.setCountry(rs.getString("country"));
                customer.setPhone(rs.getString("phone"));
                customer.setFax(rs.getString("fax"));

                return customer;
            }




        } catch (SQLException e) {
            throw new RuntimeException(e);
        }




        return null;
    }

    @Override
    public void create(Customer customer) {
        String sql = "INSERT INTO Customers (customerID, companyName, contactName, contactTitle, address, city, region, postalCode, country, phone, fax) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection conn = DatabaseConnector.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            // Thiết lập các tham số trong câu lệnh SQL
            ps.setString(1, customer.getCustomerID());
            ps.setString(2, customer.getCompanyName());
            ps.setString(3, customer.getContactName());
            ps.setString(4, customer.getContactTitle());
            ps.setString(5, customer.getAddress());
            ps.setString(6, customer.getCity());
            ps.setString(7, customer.getRegion());
            ps.setString(8, customer.getPostalCode());
            ps.setString(9, customer.getCountry());
            ps.setString(10, customer.getPhone());
            ps.setString(11, customer.getFax());

            // Thực thi câu lệnh INSERT
            int rowsInserted = ps.executeUpdate();

            if (rowsInserted > 0) {
                System.out.println("Customer created successfully!");

            } else {
                System.out.println("Failed to create customer.");

            }

        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Error inserting customer", e);
        }
    }


    @Override
    public Customer update(Customer customer) {
        Connection connection = null;
        PreparedStatement statement = null;

        try {
            // Kết nối tới cơ sở dữ liệu
            connection = DatabaseConnector.getConnection(); // Phương thức kết nối DB
            String sql = "UPDATE Customers SET companyName = ?, contactName = ?, contactTitle = ?, "
                    + "address = ?, city = ?, region = ?, postalCode = ?, country = ?, phone = ?, fax = ? "
                    + "WHERE customerID = ?";
            statement = connection.prepareStatement(sql);

            // Thiết lập các tham số cho câu lệnh UPDATE
            statement.setString(1, customer.getCompanyName());
            statement.setString(2, customer.getContactName());
            statement.setString(3, customer.getContactTitle());
            statement.setString(4, customer.getAddress());
            statement.setString(5, customer.getCity());
            statement.setString(6, customer.getRegion());
            statement.setString(7, customer.getPostalCode());
            statement.setString(8, customer.getCountry());
            statement.setString(9, customer.getPhone());
            statement.setString(10, customer.getFax());
            statement.setString(11, customer.getCustomerID());

            // Thực thi câu lệnh
            int rowsUpdated = statement.executeUpdate();
            if (rowsUpdated > 0) {
                System.out.println("Customer updated successfully!");
                return customer; // Trả về đối tượng Customer đã cập nhật
            } else {
                System.out.println("No customer found with the given ID.");
                return null;
            }

        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Error updating customer", e);
        }
    }

    @Override
    public void deleteByID(String  customerID) {
        String sql = "delete from customers where customerID = ?";

        try {
            Connection conn = DatabaseConnector.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, customerID);

            ps.executeUpdate();


        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


    }
}
