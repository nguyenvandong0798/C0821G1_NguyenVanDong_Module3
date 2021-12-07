package service.impl;

import Repository.ICustomerRepository;
import Repository.impl.CustomerRepository;
import bean.Customer;
import service.ICustomerService;

import java.util.ArrayList;
import java.util.List;

public class CustomerService implements ICustomerService {
    private  static ICustomerRepository iCustomerRepository = new CustomerRepository();
    @Override
    public List<Customer> getList() {
        try{
            List<Customer> customers = iCustomerRepository.getListCustomer();
            if (customers.size()==0){
                return null;
            }
            return customers;
        }catch (Exception e){
            System.out.println("error");
            return null;
        }
    }
}
