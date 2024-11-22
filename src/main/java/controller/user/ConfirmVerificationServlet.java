package controller.user;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.email.Email;
import model.user.User;
import model.user.UserDAO;
import model.verificationcode.VerificationCode;
import model.verificationcode.VerificationCodeDAO;

import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(urlPatterns = {"/confirmverificationservlet"})
public class ConfirmVerificationServlet extends HttpServlet {


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
        HttpSession session = request.getSession();

        User user = (User) session.getAttribute("user");
        // Lấy email từ request hoặc hardcode như ví dụ
        String email = user.getEmail();

        // Tạo mã xác minh
        String verificationCode = VerificationCode.generateCode();

        VerificationCode verificationCodeObj = new VerificationCode(email, verificationCode);

        VerificationCodeDAO.getInstance().insert(verificationCodeObj);


        // Gửi email xác minh
        Email.sendEmailAsync(email, verificationCode);
        // luu ma vao bang verification_codes



        request.getRequestDispatcher("verify.jsp").forward(request, response);


    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}