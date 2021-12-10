package service.impl;

import Repository.IEmployeeRepository;
import Repository.impl.EmployeeRepository;
import bean.Employee;
import service.IEmployeeService;

import java.util.List;

public class EmployeeService implements IEmployeeService {
    private static final IEmployeeRepository iEmployeeRepository = new EmployeeRepository();

    @Override
    public List<Employee> getList() {
        try{
            List<Employee> employees = iEmployeeRepository.getListEmployee();
            if (employees.size() == 0){
                return null;
            }
            return employees;
        }catch (Exception e){
            System.out.println("error");
            return null;
        }
    }

    @Override
    public void delete(int id) {
        this.iEmployeeRepository.delete(id);
    }

    @Override
    public void create(Employee employee) {
        this.iEmployeeRepository.createEmployee(employee);
    }

}
