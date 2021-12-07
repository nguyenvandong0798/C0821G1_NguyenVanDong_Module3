package controller;

import Repository.ICustomerRepository;
import Repository.impl.CustomerRepository;
import bean.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CustomerServlet", urlPatterns = "/customer")
public class CustomerServlet extends HttpServlet {
    private static ICustomerRepository iCustomerRepository = new CustomerRepository();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action){
            default:

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action==null){
            action ="";
        }
        switch (action){
            default:
                getList(request, response);
        }
    }


    private void getList(HttpServletRequest request, HttpServletResponse response) {
        List<Customer> customers = iCustomerRepository.getListCustomer();
        request.setAttribute("customers", customers);
        try {
            request.getRequestDispatcher("casestudy/customer/list.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
