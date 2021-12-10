package Repository.impl;

import Repository.IEmployeeRepository;
import bean.Employee;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class EmployeeRepository implements IEmployeeRepository {
    @Override
    public List<Employee> getListEmployee() {
        List<Employee> employees = new ArrayList<>();
        try {
            Statement statement = BaseRepository.connection.createStatement();
            ResultSet resultSet = statement.executeQuery("select * from nhan_vien");
            Employee employeeOjb = null;
            while (resultSet.next()){

                employeeOjb= new Employee();
                employeeOjb.setId(Integer.parseInt(resultSet.getString("ma_nhan_vien")));
                employeeOjb.setName(resultSet.getString("ho_va_ten"));
                employeeOjb.setDateOfBirth(resultSet.getString("ngay_sinh"));
                employeeOjb.setCodeEmployee(resultSet.getString("so_cmnd"));
                employeeOjb.setSalary(resultSet.getString("luong"));
                employeeOjb.setNumberPhone(resultSet.getString("so_dien_thoai"));
                employeeOjb.setEmail(resultSet.getString("email"));
                employeeOjb.setAddress(resultSet.getString("dia_chi"));
                employeeOjb.setCodePoint(Integer.parseInt(resultSet.getString("ma_vi_tri")));
                employeeOjb.setCodeSkill(Integer.parseInt(resultSet.getString("ma_trinh_do")));
                employeeOjb.setCodeDepartment(Integer.parseInt(resultSet.getString("ma_bo_phan")));
                employees.add(employeeOjb);

            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return employees;
    }

    @Override
    public void delete(int id) {
        try {
            PreparedStatement preparedStatement =
                    BaseRepository.connection.prepareStatement("delete from nhan_vien where ma_nhan_vien = ?");
            preparedStatement.setInt(1,id);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public void createEmployee(Employee employee) {
        try{
        PreparedStatement preparedStatement = BaseRepository.connection.prepareStatement("insert into nhan_vien \n" +
                "values(?,?,?,?,?,?,?,?,?,?,?)");
        preparedStatement.setInt(1, employee.getId());
        preparedStatement.setString(2, employee.getName());
        preparedStatement.setString(3, employee.getDateOfBirth());
        preparedStatement.setString(4, employee.getCodeEmployee());
        preparedStatement.setString(5, employee.getSalary());
        preparedStatement.setString(6, employee.getNumberPhone());
        preparedStatement.setString(7, employee.getEmail());
        preparedStatement.setString(8, employee.getAddress());
        preparedStatement.setInt(9, employee.getCodePoint());
        preparedStatement.setInt(10, employee.getCodeSkill());
        preparedStatement.setInt(11, employee.getCodeDepartment());
        preparedStatement.executeLargeUpdate();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

}
