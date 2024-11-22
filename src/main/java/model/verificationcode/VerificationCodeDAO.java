package model.verificationcode;

import connectsqlserver.DatabaseConnector;
import model.daointerface.DAOInterface;

import java.sql.*;
import java.util.ArrayList;

public class VerificationCodeDAO implements DAOInterface<VerificationCode> {

    public static VerificationCodeDAO getInstance() {
        return new VerificationCodeDAO();
    }

    @Override
    public ArrayList<VerificationCode> getAll() {
        return null;
    }

    @Override
    public VerificationCode getById(String email) {
        return null;
    }

    @Override
    public void insert(VerificationCode verificationCode) {


        String sql = "INSERT INTO verification_codes (email, code) VALUES (?, ?)";
        try {
            Connection connection = DatabaseConnector.getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, verificationCode.getEmail());
            ps.setString(2, verificationCode.getCode());

            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public VerificationCode update(VerificationCode verificationCode) {
        return null;
    }

    @Override
    public void deleteByID(String id) {

    }


    public VerificationCode getCodeByEmail(String email) {

        String sql = "SELECT TOP 1 id, email, code, created_at, expires_at\n" +
                "FROM verification_codes\n" +
                "WHERE email = ? \n" +
                "ORDER BY created_at DESC";

        try (Connection connection = DatabaseConnector.getConnection();
             PreparedStatement ps = connection.prepareStatement(sql)) {

            ps.setString(1, email);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    VerificationCode verificationCode = new VerificationCode();
                    verificationCode.setId(rs.getInt("id"));
                    verificationCode.setEmail(rs.getString("email"));
                    verificationCode.setCode(rs.getString("code"));

                    // Kiểm tra null trước khi chuyển đổi thời gian
                    Timestamp createdAt = rs.getTimestamp("created_at");
                    Timestamp expiresAt = rs.getTimestamp("expires_at");

                    if (createdAt != null) {
                        verificationCode.setCreatedAt(createdAt.toLocalDateTime());
                    }

                    if (expiresAt != null) {
                        verificationCode.setExpiresAt(expiresAt.toLocalDateTime());
                    }

                    return verificationCode; // Trả về đối tượng nếu tìm thấy
                }
            }

        } catch (SQLException e) {
            // Ghi log lỗi hoặc ném ngoại lệ có thông tin cụ thể
            throw new RuntimeException("Error fetching verification code for email: " + email, e);
        }

        // Không tìm thấy mã xác nhận
        return null;
    }


}
