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
import model.user.UserDAO;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;


@WebServlet(urlPatterns = {"/loginservlet"})
public class LoginServlet extends HttpServlet {


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
        response.sendRedirect(url+"/login.jsp");
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = request.getContextPath();

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            // Kiểm tra tài khoản có tồn tại hay không
            User user = UserDAO.getInstance().isAccountExist(email, password);

            if (user != null) {
                HttpSession session = request.getSession();
                session.setAttribute("user", user);
                if (user.getIsVerified()) {

                    // Tài khoản đã được xác minh -> Đăng nhập thành công


                    response.sendRedirect(url + "/index.jsp"); // Trang chào mừng
                } else {
                    // Tài khoản chưa được xác minh -> Chuyển hướng đến trang xác minh
                   // gui ma xac minh qua email


                    request.setAttribute("user", user);

                    request.getRequestDispatcher("/welcome.jsp").forward(request, response); // Trang xác minh
                }
            } else {
                // Tài khoản không tồn tại hoặc thông tin sai
                String loginError = "Invalid email or password.";
                request.setAttribute("loginError", loginError);
                request.getRequestDispatcher("/login.jsp").forward(request, response); // Trang đăng nhập
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }



    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
