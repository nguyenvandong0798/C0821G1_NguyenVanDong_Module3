package controller;

import bean.Student;
import com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl;
import repository.IStudentRepository;
import repository.impl.StudentRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "StudentServlet", urlPatterns = {"", "/students"})
public class StudentServlet extends HttpServlet {
    private static IStudentRepository iStudentRepository = new StudentRepository();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action){
            default:
                break;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
            action= "";
        }
        switch (action){
            case "create":

            case "delete":
                deleteStudent(request, response);
            break;
            default:
                getListStudent(request, response);
        }
    }

    private void deleteStudent(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        this.iStudentRepository.deleteStudent(id);
        try {
            response.sendRedirect("/students");
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void getListStudent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Student> students = iStudentRepository.getAll();
        if (students==null){
            request.setAttribute("string", "not value");
        }else{
            request.setAttribute("students", students);
        }
        request.getRequestDispatcher("student/list.jsp").forward(request, response);
    }

}
