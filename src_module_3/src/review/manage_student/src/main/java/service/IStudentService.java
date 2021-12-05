package service;

import bean.Student;

import java.util.List;

public interface IStudentService {
    List<Student> getList();
    void delete(int id);
    void create(Student student);
    List<Student> search(String name);
    List<Student> sort(String score);
    boolean edit(Student student);
}
