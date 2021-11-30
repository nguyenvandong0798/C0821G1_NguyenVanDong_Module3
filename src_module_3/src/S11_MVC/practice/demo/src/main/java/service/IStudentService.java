package service;

import model.Student;

import java.util.List;

public interface IStudentService {
    List<Student> findAll();
    Student findById(Integer id);
    boolean save(Student studentObj);
}
