package Repository;

import bean.Employee;

import java.util.List;

public interface IEmployeeRepository {
    List<Employee> getListEmployee();
    void delete(int id);
    void createEmployee(Employee  employee);
    List<Employee> searchEmployee(String name);
    List<Employee> sortEmployee(String salary);
    Employee finById(int id);
    boolean editEmployee(Employee employee);
}
