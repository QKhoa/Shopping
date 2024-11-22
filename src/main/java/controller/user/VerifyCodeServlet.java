package controller.user;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.customer.Customer;
import model.customer.CustomerDAO;
import model.user.User;
import model.user.UserDAO;
import model.verificationcode.VerificationCode;
import model.verificationcode.VerificationCodeDAO;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.util.Map;


@WebServlet(urlPatterns = {"/verifycodeservlet"})
public class VerifyCodeServlet extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet NewServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet NewServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = request.getContextPath();
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");


        String email = user.getEmail();
        String code1 = request.getParameter("code1");
        String code2 = request.getParameter("code2");
        String code3 = request.getParameter("code3");
        String code4 = request.getParameter("code4");
        String code5 = request.getParameter("code5");
        String code6 = request.getParameter("code6");

        // Ghép các số thành mã hoàn chỉnh
        String enteredCode = code1 + code2 + code3 + code4 + code5 + code6;

        String error = null;
        String success = null;

        // Lấy mã xác nhận từ database
        VerificationCode verificationCode = VerificationCodeDAO.getInstance().getCodeByEmail(email);

        if (verificationCode == null) {
            error = "No verification code found for the provided email.";
        } else {
            // Kiểm tra thời gian hết hạn
            if (verificationCode.getExpiresAt().isBefore(LocalDateTime.now())) {
                error = "The verification code has expired.";
            } else if (!enteredCode.equals(verificationCode.getCode())) {
                error = "The verification code you entered does not match.";
            } else {
                // update trang thai cua user
                UserDAO.getInstance().setVerifiedByEmail(email);
                success = "The verification code has been verified successfully.";
                // Có thể thực hiện thêm hành động như cập nhật trạng thái tài khoản người dùng
            }
        }

        // Gửi phản hồi về trang xác nhận
        if (error != null) {
            request.setAttribute("errorMessage", error);
            request.getRequestDispatcher("verify.jsp").forward(request, response);
        } else {
            request.setAttribute("successMessage", success);
            request.getRequestDispatcher("success.jsp").forward(request, response);
        }
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

