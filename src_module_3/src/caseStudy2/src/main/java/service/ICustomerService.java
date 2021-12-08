package service;

import bean.Customer;

import java.util.List;

public interface ICustomerService {
    List<Customer> getList();
    void delete(int maKhachHang);
    void create(Customer  customer);
    List<Customer> search(String hoTen);
}
