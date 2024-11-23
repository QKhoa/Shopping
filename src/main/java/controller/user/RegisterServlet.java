package controller.user;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.user.Role;
import model.user.User;
import model.user.UserDAO;

import java.io.IOException;
import java.io.PrintWriter;

import static controller.security.PasswordUtils.encode;


@WebServlet(urlPatterns = {"/registerservlet"})
public class RegisterServlet extends HttpServlet {


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

        response.sendRedirect(url + "/register.jsp");
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = request.getContextPath();

        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");





        try {
            // Kiểm tra dữ liệu đầu vào

            // Tạo đối tượng User
            User user = new User();
            user.setEmail(email);
            user.setName(username);
            user.setPassword(encode(password)); // Mã hóa mật khẩu
            user.setIsVerified(false); // Người dùng mặc định chưa xác thực
            user.setRole(Role.USER); // Gán vai trò







            // Lưu người dùng vào cơ sở dữ liệu
            UserDAO.getInstance().saveUser(user);
            HttpSession session = request.getSession();

            session.setAttribute("user", user);
//
//            session.setAttribute("user", user);

            request.getRequestDispatcher("/welcome.jsp").forward(request, response);
            // Điều hướng đến trang thành công
//            response.sendRedirect(url + "/welcome.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Đã xảy ra lỗi trong quá trình đăng ký. Vui lòng thử lại.");
//            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }

    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}