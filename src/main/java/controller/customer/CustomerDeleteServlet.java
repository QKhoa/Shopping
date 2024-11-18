package controller.customer;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.customer.Customer;
import model.customer.CustomerDAO;

import java.io.IOException;
@WebServlet(name = "CustomerDeleteServlet" , urlPatterns = "/customerdeleteservlet")
public class CustomerDeleteServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getContextPath();

        String customerID = req.getParameter("customerID");

        // thuc hien lenh delete

        CustomerDAO.getInstance().deleteByID(customerID);


        resp.sendRedirect(url + "/customerviewservlet");


    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doDelete(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
