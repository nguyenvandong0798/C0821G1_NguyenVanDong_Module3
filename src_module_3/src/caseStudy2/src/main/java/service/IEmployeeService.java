package service;

import bean.Employee;

import java.util.List;

public interface IEmployeeService {
    List<Employee> getList();
    void delete(int id);
    void create(Employee employee);
    List<Employee> search(String name);
    List<Employee> sort(String salary);
    Employee findById(int id);
    boolean edit(Employee employee);
}
