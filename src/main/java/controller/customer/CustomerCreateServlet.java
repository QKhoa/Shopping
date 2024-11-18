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
import java.lang.reflect.InvocationTargetException;


@WebServlet(name = "CustomerCreateServlet", urlPatterns = "/customercreateservlet")
public class CustomerCreateServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getContextPath() + "/customercreate.jsp";


        resp.sendRedirect(url);



    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getContextPath();
        Customer customer = new Customer();

        try {
            BeanUtils.populate(customer, req.getParameterMap());
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e) {
            throw new RuntimeException(e);
        }

        CustomerDAO.getInstance().create( customer );


        resp.sendRedirect(url+ "/customerviewservlet");


    }
}
