package controller.admin;


import connectsqlserver.DatabaseConnector;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.customer.Customer;
import model.customer.CustomerDAO;
import model.user.User;
import model.user.UserDAO;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Map;


@WebServlet(urlPatterns = {"/viewusersservlet"})
public class ViewUsersServlet extends HttpServlet {


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
        try {
            // Lấy danh sách user từ database
            ArrayList<User> users = (ArrayList<User>) UserDAO.getInstance().getAll();

            // Gửi danh sách user về trang JSP để hiển thị
            request.setAttribute("users", users);

            // Chuyển tiếp đến trang viewusers.jsp
            request.getRequestDispatcher("/admin/viewusers.jsp").forward(request, response);
        } catch (Exception e) {
            // Log lỗi và chuyển hướng đến trang lỗi (nếu có)
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Có lỗi xảy ra khi lấy danh sách người dùng.");
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = request.getContextPath();

    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}