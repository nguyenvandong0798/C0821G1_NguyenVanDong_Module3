package service.impl;

import model.Student;
import repository.IStudentRepository;
import repository.impl.StudentRepository;
import service.IStudentService;

import java.util.List;

public class StudentService implements IStudentService {

    private IStudentRepository studentRepository = new StudentRepository();
    @Override
    public List<Student> findAll() {
        return this.studentRepository.findAll();
    }

    @Override
    public Student findById(Integer id) {
        return null;
    }

    @Override
    public boolean save(Student studentObj) {
        return false;
    }
}
