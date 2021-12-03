package repository.impl;

import bean.Student;
import repository.IStudentRepository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class StudentRepository implements IStudentRepository {
    @Override
    public List<Student> getAll() {
        List<Student> studentList = new ArrayList<>();
        try {
            Statement statement = BaseRepository.connection.createStatement();
            ResultSet resultSet =statement.executeQuery("select * from SinhVien");

            Student studentobj = null;
            while (resultSet.next()){
                studentobj =new Student();
                studentobj.setId(Integer.parseInt(resultSet.getString("id")));
                studentobj.setName(resultSet.getString("name"));
                studentobj.setGender(resultSet.getString("gender"));
                studentobj.setScore(resultSet.getString("score"));
                studentList.add(studentobj);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return studentList;
    }

    @Override
    public void deleteStudent(int id) {
        try{
            PreparedStatement preparedStatement=
                    BaseRepository.connection.prepareStatement("delete from SinhVien where id = ?");
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public void createStudent(Student student) {
        
    }
}
