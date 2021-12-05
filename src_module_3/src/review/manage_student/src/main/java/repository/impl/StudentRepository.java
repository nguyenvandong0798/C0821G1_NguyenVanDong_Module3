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
        try{
            PreparedStatement preparedStatement=
                    BaseRepository.connection.prepareStatement("insert into sinhvien\n" +
                            "values(?, ?, ?, ?)");
            preparedStatement.setString(1, String.valueOf(student.getId()));
            preparedStatement.setString(2,student.getName());
            preparedStatement.setString(3,student.getGender());
            preparedStatement.setString(4,student.getScore());
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public List<Student> searchStudent(String name) {
        List<Student> students = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = BaseRepository.connection.prepareStatement("select * from sinhvien where name = ?");
            preparedStatement.setString(1, name);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = Integer.parseInt(resultSet.getString("id"));
                String namee =resultSet.getString("name");
                String gender = resultSet.getString("gender");
                String score = resultSet.getString("score");
                students.add(new Student(id,namee, gender, score)) ;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return students;
    }

    @Override
    public List<Student> sortStudent(String score) {
        List<Student>students = new ArrayList<>();
            try {
                PreparedStatement preparedStatement = BaseRepository.connection.prepareStatement("select * from sinhvien order by score");
                ResultSet resultSet = preparedStatement.executeQuery();

                while (resultSet.next()){
                    int id = Integer.parseInt(resultSet.getString("id"));
                    String name = resultSet.getString("name");
                    String gender = resultSet.getString("gender");
                    String scoree = resultSet.getString("score");
                    students.add(new Student(id, name, gender, scoree));

                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        return students;
    }

    @Override
    public boolean editStudent(Student student) {
        boolean editListStudent = false;
        try {
            PreparedStatement preparedStatement =
                    BaseRepository.connection.prepareStatement("update sinhvien set name = ?,gender= ?, score =? where id = ?;");
            preparedStatement.setString(1, student.getName());
            preparedStatement.setString(2, student.getGender());
            preparedStatement.setString(3, student.getScore());
            preparedStatement.setInt(4, student.getId());

            editListStudent = preparedStatement.executeUpdate()>0;

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return editListStudent;
    }
}
