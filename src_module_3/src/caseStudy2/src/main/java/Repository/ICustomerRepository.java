package Repository;

import bean.Customer;

import java.util.List;

public interface ICustomerRepository {
    List<Customer> getListCustomer();

    void deleteCustomer(int maKhachHang);

    void createCustomer(Customer customer);

    List<Customer> searchCustomer(String hoTen, int maKhachHang);

    boolean editCustomer(Customer customer);

    Customer byMKH(int maKhachHang);

    List<Customer> sortCustomer(String hoTen);
}
