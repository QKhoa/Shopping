package controller.user;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.customer.Customer;
import model.customer.CustomerDAO;
import model.email.Email;
import model.user.User;
import model.verificationcode.VerificationCode;
import model.verificationcode.VerificationCodeDAO;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;


@WebServlet(urlPatterns = {"/resendcodeservlet"})
public class ResendCodeServlet extends HttpServlet {


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



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = request.getContextPath();
        HttpSession session = request.getSession();

        try {
            User user = (User) session.getAttribute("user");
            if (user == null) {
                throw new IllegalStateException("User not found in session.");
            }

            String email = user.getEmail();

            // Tạo mã xác minh
            String verificationCode = VerificationCode.generateCode();

            // Tạo và lưu mã vào DB
            VerificationCode verificationCodeObj = new VerificationCode(email, verificationCode);
            VerificationCodeDAO.getInstance().insert(verificationCodeObj);

            // Gửi email xác minh
            Email.sendEmailAsync(email, verificationCode);

            // Chuyển hướng về trang verify.jsp
            request.setAttribute("infoMessage", "Verification code resent successfully.");
            request.getRequestDispatcher("/verify.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Failed to resend verification code. Please try again.");
            request.getRequestDispatcher("/verify.jsp").forward(request, response);
        }
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
