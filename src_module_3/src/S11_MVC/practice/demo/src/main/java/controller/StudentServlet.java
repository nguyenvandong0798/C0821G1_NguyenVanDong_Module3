package controller;

import service.IStudentService;
import service.impl.StudentService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "StudentServlet", urlPatterns = {"", "/student_list"})
public class StudentServlet extends HttpServlet {

    private IStudentService studentService = new StudentService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionUser = request.getParameter("actionUser");
        String name = request.getParameter("studentName");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionUser = request.getParameter("actionUser");

        if (actionUser == null) {
            actionUser = "";
        }

        switch (actionUser) {
            case "create":
                request.getRequestDispatcher("create_student.jsp").forward(request, response);
                break;
            default:
                request.setAttribute("studentListServlet", this.studentService.findAll());
                request.getRequestDispatcher("index.jsp").forward(request, response);
                break;
        }
    }
}
