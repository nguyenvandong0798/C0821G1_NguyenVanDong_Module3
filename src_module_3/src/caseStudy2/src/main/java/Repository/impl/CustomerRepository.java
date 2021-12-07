package Repository.impl;

import Repository.ICustomerRepository;
import bean.Customer;
import bean.CustomerType;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    @Override
    public List<Customer> getListCustomer() {
        List<Customer>customers = new ArrayList<>();
        try {
            Statement statement = BaseRepository.connection.createStatement();
            ResultSet resultSet = statement.executeQuery("select * from khach_hang");
            Customer customerobj = null;
            CustomerType customerType =null;
            while (resultSet.next()){
                customerType =new CustomerType();
                customerType.setMaLoaiKhach(Integer.parseInt(resultSet.getString("ma_loai_khach")));

                customerobj = new Customer();
                customerobj.setMaKhachHang(Integer.parseInt(resultSet.getString("ma_khach_hang")));
                customerobj.setMaLoaiKhach(customerType);
                customerobj.setHoTen(resultSet.getString("ho_ten"));
                customerobj.setNgaySinh(resultSet.getString("ngay_sinh"));
                customerobj.setGioiTinh(resultSet.getString("gioi_tinh"));
                customerobj.setSoCmnd(resultSet.getString("so_cmnd"));
                customerobj.setSoDienThoai(resultSet.getString("so_dien_thoai"));
                customerobj.setEmail(resultSet.getString("email"));
                customerobj.setDiaChi(resultSet.getString("dia_chi"));

                customers.add(customerobj);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customers;
    }
}
