package controller.customer;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.customer.Customer;
import model.customer.CustomerDAO;
import org.apache.commons.beanutils.BeanUtils;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;


@WebServlet(urlPatterns = {"/customerupdateservlet"})
public class CustomerUpdateServlet extends HttpServlet {


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

        String customerID = request.getParameter("customerID");

        Customer customer = CustomerDAO.getInstance().getById(customerID);


        if (customer == null) {
            String errMsg = "Customer with ID " + customerID + " not found";
            request.setAttribute("errMsg", errMsg);

        } else {
            request.setAttribute("customer", customer);

        }

        request.getRequestDispatcher("customerupdate.jsp").forward(request, response);

        // lay ra customer


    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = request.getContextPath();
//        lay thong tin customer va update trong database



        Customer customer = new Customer();

        try {
            BeanUtils.populate(customer, request.getParameterMap());
        } catch (InvocationTargetException e) {
            throw new RuntimeException(e);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        }

        CustomerDAO.getInstance().update(customer);
        response.sendRedirect(url + "/customerviewservlet");

    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}