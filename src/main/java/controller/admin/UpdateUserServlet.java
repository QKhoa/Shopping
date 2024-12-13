package controller.admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.user.Role;
import model.user.User;
import model.user.UserDAO;

import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(urlPatterns = {"/updateuserservlet"})
public class UpdateUserServlet extends HttpServlet {


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
        String userID = request.getParameter("userID");

        try {
            User user = UserDAO.getInstance().getByID(Integer.parseInt(userID));

            request.setAttribute("user", user);

            request.getRequestDispatcher("/admin/updateuser.jsp").forward(request, response);

        } catch (NumberFormatException e) {
            throw new RuntimeException(e);
        }


    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = request.getContextPath();

        request.setCharacterEncoding("UTF-8");

        // Lấy dữ liệu từ form
        String idParam = request.getParameter("id");
        String email = request.getParameter("email");
        String name = request.getParameter("username");
        String password = request.getParameter("password"); // nếu có
        String isVerifiedParam = request.getParameter("isVerified");
        String roleParam = request.getParameter("role");

        // Chuyển đổi dữ liệu
        int id = Integer.parseInt(idParam);
        Boolean isVerified = Boolean.parseBoolean(isVerifiedParam);
        Role role = Role.valueOf(roleParam.toUpperCase());

        // Tạo đối tượng User
        User user = new User();
        user.setId(id);
        user.setEmail(email);
        user.setName(name);

        user.setIsVerified(isVerified);
        user.setRole(role);


//        request.setAttribute("user", user);

        UserDAO.getInstance().updateUser(user);
        response.sendRedirect(url + "/viewusersservlet");


    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
