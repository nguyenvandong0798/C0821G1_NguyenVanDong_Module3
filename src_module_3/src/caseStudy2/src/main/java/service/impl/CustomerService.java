package service.impl;

import Repository.ICustomerRepository;
import Repository.impl.CustomerRepository;
import bean.Customer;
import service.ICustomerService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class CustomerService implements ICustomerService {
    private  static final ICustomerRepository iCustomerRepository = new CustomerRepository();
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

    @Override
    public void delete(int maKhachHang) {
        this.iCustomerRepository.deleteCustomer(maKhachHang);
    }

    @Override
    public void create(Customer customer) {
        this.iCustomerRepository.createCustomer(customer);
    }

    @Override
    public List<Customer> search(String hoTen, int maKhachHang) {
        return this.iCustomerRepository.searchCustomer(hoTen, maKhachHang);
    }

    @Override
    public boolean edit(Customer customer) {
        return this. iCustomerRepository.editCustomer(customer);
    }

    @Override
    public Customer byMaKhachHang(int maKhachHang) {
        return this.iCustomerRepository.byMKH(maKhachHang);
    }

    @Override
    public List<Customer> sort(String hoTen) {
        return null;
    }
}
