package controller;

import Repository.ICustomerRepository;
import Repository.impl.CustomerRepository;
import bean.Customer;
import bean.CustomerType;

import javax.servlet.RequestDispatcher;
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
            case "create":
                createCustomer(request, response);
                break;
            case "search":
                search(request, response);
            default:

        }
    }

    private void search(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("search");
        List<Customer> customers = this.iCustomerRepository.searchCustomer(name);
        request.setAttribute("customers", customers);
        RequestDispatcher dispatcher = request.getRequestDispatcher("casestudy/customer/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void createCustomer(HttpServletRequest request, HttpServletResponse response) {
        int maKhachHang = Integer.parseInt(request.getParameter("makh"));
        int maLoaiKhachHang = Integer.parseInt(request.getParameter("maloaikh"));
        String hoTen = request.getParameter("hoten");
        String ngaySinh = request.getParameter("ngaysinh");
        int giotinh = Integer.parseInt(request.getParameter("giotinh"));
        String cmnd = request.getParameter("cmnd");
        String soDienThoai = request.getParameter("sdt");
        String email = request.getParameter("email");
        String diaChi = request.getParameter("diachi");

        CustomerType customers = new CustomerType(maLoaiKhachHang);

        Customer customer = new Customer(maKhachHang, customers, hoTen, ngaySinh, giotinh, cmnd, soDienThoai, email, diaChi);
        this.iCustomerRepository.createCustomer(customer);

        try {
            RequestDispatcher dispatcher = request.getRequestDispatcher("casestudy/customer/create.jsp");
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action==null){
            action ="";
        }
        switch (action){
            case "create":
                showCreateForm(request, response);
                break;
            case "delete":
                deleteCustomer(request, response);
                break;
            case "search":
                searchCustomer(request, response);
                break;
            default:
                getList(request, response);
        }
    }

    private void searchCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("casestudy/customer/list.jsp");
        dispatcher.forward(request, response);
    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("casestudy/customer/create.jsp");
        dispatcher.forward(request, response);
    }

    private void deleteCustomer(HttpServletRequest request, HttpServletResponse response) {
        int makhachhang = Integer.parseInt(request.getParameter("makhachhang"));
        this.iCustomerRepository.deleteCustomer(makhachhang);
        try {
            response.sendRedirect("/customer");
        } catch (IOException e) {
            e.printStackTrace();
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
