package controller;

import Repository.IEmployeeRepository;
import Repository.impl.EmployeeRepository;
import bean.Employee;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "EmployeeServlet", urlPatterns = "/employee")
public class EmployeeServlet extends HttpServlet {
    private static IEmployeeRepository iEmployeeRepository = new EmployeeRepository();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action){
            case "create":
                create(request, response);
                break;
            default:
        }
    }

    private void create(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String dayOfBirth = request.getParameter("dayofbirth");
        String codeEmployee = request.getParameter("codeemployee");
        String salary = (request.getParameter("salary"));
        String numberPhone = request.getParameter("numberphone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        int codePoint = Integer.parseInt(request.getParameter("codepoint"));
        int codeSkill = Integer.parseInt(request.getParameter("codeskill"));
        int codeDepartment = Integer.parseInt(request.getParameter("codedepartment"));

        Employee employee = new Employee(id, name, dayOfBirth,codeEmployee, salary,numberPhone,
                email,address,codePoint,codeSkill,codeDepartment);
        this.iEmployeeRepository.createEmployee(employee);

        try {
            request.getRequestDispatcher("casestudy/employee/create.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action==null){
            action = "";
        }
        switch (action){
            case "delete":
                delete(request, response);
                break;
            case "create":
                Showcreate(request, response);
                break;
            default:
                getList(request, response);
        }
    }

    private void Showcreate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("casestudy/employee/create.jsp").forward(request, response);
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        this.iEmployeeRepository.delete(id);
        try {
            response.sendRedirect("/employee");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void getList(HttpServletRequest request, HttpServletResponse response) {
        List<Employee> employees = this.iEmployeeRepository.getListEmployee();
        request.setAttribute("employees", employees);
        RequestDispatcher dispatcher = request.getRequestDispatcher("casestudy/employee/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
