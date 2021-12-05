package service.impl;

import bean.Student;
import repository.IStudentRepository;
import repository.impl.BaseRepository;
import repository.impl.StudentRepository;
import service.IStudentService;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class StudentService implements IStudentService {
    private static IStudentRepository iStudentRepository = new StudentRepository();
    @Override
    public List<Student> getList() {
        try {
            List<Student>students = iStudentRepository.getAll();
            if (students.size()==0){
                return null;
            }
            return students;
        }catch (Exception e){
            System.out.println("error");
            return null;
        }
    }

    @Override
    public void delete(int id) {
        this.iStudentRepository.deleteStudent(id);

    }

    @Override
    public void create(Student student) {
        this.iStudentRepository.createStudent(student);
    }

    @Override
    public List<Student> search(String name) {
        return this.iStudentRepository.searchStudent(name);
    }

    @Override
    public List<Student> sort(String score) {
        return iStudentRepository.sortStudent(score);
    }

    @Override
    public boolean edit(Student student) {
       return this.iStudentRepository.editStudent(student);
    }
}
