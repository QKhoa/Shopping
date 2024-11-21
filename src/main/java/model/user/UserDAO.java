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
        return null;
    }

    @Override
    public User getById(String id) {
        return null;
    }

    @Override
    public void create(User user) {

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
            ps.setBoolean(4, user.isVerified());
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
