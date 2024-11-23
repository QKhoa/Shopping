package model.user;

import connectsqlserver.DatabaseConnector;
import model.daointerface.DAOInterface;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import static controller.security.PasswordUtils.*;

public class UserDAO implements DAOInterface<User> {

    public static UserDAO getInstance() {
        return new UserDAO();
    }

    @Override
    public ArrayList<User> getAll() {
        String sql = "select id, email, name, password, is_verified, created_at, role from Users";
        ArrayList<User> users = new ArrayList<>();

        try {

        Connection conn = DatabaseConnector.getConnection();
        PreparedStatement ps  = conn.prepareStatement(sql);

        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            User user = new User();
            user.setId(rs.getInt("id"));
            user.setEmail(rs.getString("email"));
            user.setName(rs.getString("name"));
            user.setPassword(rs.getString("password"));
            user.setIsVerified(rs.getBoolean("is_verified"));
            user.setCreatedAt(rs.getTimestamp("created_at").toLocalDateTime());

            user.setRole(Role.valueOf(rs.getString("role")));

            users.add(user);

        }

        return users;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


    }

    @Override
    public User getById(String id) {
        return null;
    }

    @Override
    public void insert(User user) {

    }

    @Override
    public User update(User user) {
        return null;
    }

    @Override
    public void deleteByID(String id) {

    }


    public void saveUser(User user) {
        String sql = "INSERT INTO Users (email, name, password, is_verified, role) VALUES (?, ?, ?, ?, ?)";

        try (Connection conn = DatabaseConnector.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            // Gán giá trị cho các tham số
            ps.setString(1, user.getEmail());
            ps.setString(2, user.getName());
            ps.setString(3, user.getPassword()); // Mật khẩu đã được mã hóa
            ps.setBoolean(4, user.getIsVerified());
            ps.setString(5, user.getRole().toString()); // Lưu vai trò dưới dạng chuỗi

            // Thực thi câu lệnh
            int rowsAffected = ps.executeUpdate();
            if (rowsAffected > 0) {
                System.out.println("User saved successfully!");
            } else {
                System.out.println("Failed to save user.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public boolean isEmailExist(String email) {
        String sql = "SELECT count(*) as count FROM Users WHERE email = ?";

        try (Connection connection = DatabaseConnector.getConnection()) {
            PreparedStatement ps = connection.prepareStatement(sql);


            ps.setString(1, email);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return rs.getInt("count") > 0;
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return false;

    }

}
