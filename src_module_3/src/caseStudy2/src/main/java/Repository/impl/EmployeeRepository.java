package Repository.impl;

import Repository.IEmployeeRepository;
import bean.Employee;

import javax.print.attribute.standard.NumberUp;
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

        preparedStatement.executeUpdate();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public List<Employee> searchEmployee(String name) {
        List<Employee> employees = new ArrayList<>();
        try{
            PreparedStatement preparedStatement =
                    BaseRepository.connection.prepareStatement("select * from nhan_vien where ho_va_ten= ?");
            preparedStatement.setString(1,name);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("ma_nhan_vien");
                String namee = resultSet.getString("ho_va_ten");
                String dayOfBirth = resultSet.getString("ngay_sinh");
                String codeEmployee = resultSet.getString("so_cmnd");
                String salary = resultSet.getString("luong");
                String numberPhone = resultSet.getString("so_dien_thoai");
                String email = resultSet.getString("email");
                String address = resultSet.getString("dia_chi");
                int codePoint = resultSet.getInt("ma_vi_tri");
                int codeSkill = resultSet.getInt("ma_trinh_do");
                int codeDepartment = resultSet.getInt("ma_bo_phan");

                employees.add(new Employee(id, namee, dayOfBirth, codeEmployee, salary,numberPhone, email, address, codePoint,codeSkill,codeDepartment));
            }
        }catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return employees;
    }

    @Override
    public List<Employee> sortEmployee(String salary) {
        List<Employee> employees = new ArrayList<>();
        try{
            PreparedStatement preparedStatement =
                    BaseRepository.connection.prepareStatement("select * from nhan_vien order by so_cmnd DESC");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("ma_nhan_vien");
                String namee = resultSet.getString("ho_va_ten");
                String dayOfBirth = resultSet.getString("ngay_sinh");
                String codeEmployee = resultSet.getString("so_cmnd");
                String salaryy = resultSet.getString("luong");
                String numberPhone = resultSet.getString("so_dien_thoai");
                String email = resultSet.getString("email");
                String address = resultSet.getString("dia_chi");
                int codePoint = resultSet.getInt("ma_vi_tri");
                int codeSkill = resultSet.getInt("ma_trinh_do");
                int codeDepartment = resultSet.getInt("ma_bo_phan");

                employees.add(new Employee(id, namee, dayOfBirth, codeEmployee, salaryy,numberPhone, email, address, codePoint,codeSkill,codeDepartment));
            }
        }catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return employees;
    }

    @Override
    public Employee finById(int id) {
        Employee employee = null;
        try{
            PreparedStatement preparedStatement =
                    BaseRepository.connection.prepareStatement("select * from nhan_vien where ma_nhan_vien = ?");
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                employee = new Employee();
                employee.setId(resultSet.getInt("ma_nhan_vien"));
                employee.setName(resultSet.getString("ho_va_ten"));
                employee.setDateOfBirth(resultSet.getString("ngay_sinh"));
                employee.setCodeEmployee(resultSet.getString("so_cmnd"));
                employee.setSalary(resultSet.getString("luong"));
                employee.setNumberPhone(resultSet.getString("so_dien_thoai"));
                employee.setEmail(resultSet.getString("email"));
                employee.setAddress(resultSet.getString("dia_chi"));
                employee.setCodePoint(resultSet.getInt("ma_vi_tri"));
                employee.setCodeSkill(resultSet.getInt("ma_trinh_do"));
                employee.setCodeDepartment(resultSet.getInt("ma_bo_phan"));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return employee;
    }

    @Override
    public boolean editEmployee(Employee employee) {
        boolean check = false;
        try {
            PreparedStatement preparedStatement = BaseRepository.connection.prepareStatement("update nhan_vien set " +
                    "ho_va_ten = ?, ngay_sinh = ?, so_cmnd = ?, luong = ?, so_dien_thoai = ?, email= ?, dia_chi= ? where ma_nhan_vien = ?");
            preparedStatement.setString(1, employee.getName());
            preparedStatement.setString(2, employee.getDateOfBirth());
            preparedStatement.setString(3, employee.getCodeEmployee());
            preparedStatement.setString(4, employee.getSalary());
            preparedStatement.setString(5, employee.getNumberPhone());
            preparedStatement.setString(6, employee.getEmail());
            preparedStatement.setString(7, employee.getAddress());
            preparedStatement.setInt(8, employee.getId());
            check = preparedStatement.executeUpdate()>0;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return check;
    }

}
