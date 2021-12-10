package Repository;

import bean.Employee;

import java.util.List;

public interface IEmployeeRepository {
    List<Employee> getListEmployee();
    void delete(int id);
    void createEmployee(Employee  employee);

}
