package service;

import bean.Employee;

import java.util.List;

public interface IEmployeeService {
    List<Employee> getList();
    void delete(int id);
    void create(Employee employee);
}
