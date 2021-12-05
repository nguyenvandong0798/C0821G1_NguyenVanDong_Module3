package controller;

import bean.Student;
import com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl;
import repository.IStudentRepository;
import repository.impl.StudentRepository;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.util.List;

@WebServlet(name = "StudentServlet", urlPatterns = {"", "/students"})
public class StudentServlet extends HttpServlet {
    private static IStudentRepository iStudentRepository = new StudentRepository();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action){
            case "create":
                createNewStudent(request, response);
                break;
            case "search":
                searchStudent(request, response);
                break;
            case "sort":
                sortStudent(request, response);
                break;
            case "edit":
                editStudent(request, response);
                break;
            default:
                getListStudent(request, response);
                break;
        }
    }

    private void editStudent(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        String score = request.getParameter("score");
        Student student =new Student(id, name, gender,score);
        iStudentRepository.editStudent(student);
        RequestDispatcher dispatcher = request.getRequestDispatcher("student/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void sortStudent(HttpServletRequest request, HttpServletResponse response) {
        String score = request.getParameter("score");
        List<Student> students = iStudentRepository.sortStudent(score);
        request.setAttribute("students", students);
        RequestDispatcher dispatcher = request.getRequestDispatcher("student/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void searchStudent(HttpServletRequest request, HttpServletResponse response) {
        String  search = request.getParameter("search");
        List<Student> students = iStudentRepository.searchStudent(search);
        request.setAttribute("students",students);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("student/list.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void createNewStudent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        String score = request.getParameter("score");
        Student student = new Student(id, name, gender, score);
        iStudentRepository.createStudent(student);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("student/create.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
            action= "";
        }
        switch (action){
            case "create":
                create(request, response);
                break;
            case "delete":
                deleteStudent(request, response);
                break;
            case "edit":
                edit(request, response);
                break;
            default:
                getListStudent(request, response);
                break;
        }
    }

    private void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("student/edit.jsp");
        dispatcher.forward(request, response);
        request.setAttribute("student",);
    }

    private void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("student/create.jsp");
        dispatcher.forward(request, response);
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
