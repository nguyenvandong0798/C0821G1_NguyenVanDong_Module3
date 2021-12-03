package service;

import bean.Student;

import java.util.List;

public interface IStudentService {
    List<Student> getList();
    void delete(int id);
    void create(Student student);
}
