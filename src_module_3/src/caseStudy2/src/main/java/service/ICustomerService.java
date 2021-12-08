package service;

import bean.Customer;

import java.util.List;

public interface ICustomerService {
    List<Customer> getList();
    void delete(int maKhachHang);
    void create(Customer  customer);
    List<Customer> search(String hoTen);
    boolean edit (Customer customer);
    Customer byMaKhachHang(int maKhachHang);
    List<Customer> sort(String hoTen);
}
