package repository;

import bean.Student;

import java.util.List;

public interface IStudentRepository {
    List<Student> getAll();
    void deleteStudent(int id);
    void createStudent(Student student);
    List<Student> searchStudent(String name);
    List<Student> sortStudent(String score);
    boolean editStudent(Student student);
}
