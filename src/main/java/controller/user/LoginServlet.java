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
import java.util.Optional;


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
        response.sendRedirect(url+"/auth.jsp");
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = request.getContextPath();

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            // Check if the account exists
            Optional<User> optionalUser = UserDAO.getInstance().isAccountExist(email, password);
            User user = optionalUser.orElseThrow(() -> new RuntimeException("User not found"));

            HttpSession session = request.getSession();
            session.setAttribute("user", user);

            if (user.getIsVerified()) {
                // Account verified -> Successful login
                response.sendRedirect(url + "/index.jsp"); // Welcome page
            } else {
                // Account not verified -> Redirect to verification page
                // Optionally send a verification code via email
                request.setAttribute("user", user);
                request.getRequestDispatcher("/welcome.jsp").forward(request, response); // Verification page
            }
        } catch (RuntimeException e) {
            // Handle user not found or other exceptions
            String loginError = "Invalid email or password.";
            request.setAttribute("loginError", loginError);
            request.getRequestDispatcher("/auth.jsp").forward(request, response); // Login page
        } catch (Exception e) {
            // Handle unexpected errors
            throw new RuntimeException("An unexpected error occurred", e);
        }
    }



    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
