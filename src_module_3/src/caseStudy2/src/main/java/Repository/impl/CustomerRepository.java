package Repository.impl;

import Repository.ICustomerRepository;
import bean.Customer;
import bean.CustomerType;
import sun.dc.pr.PRError;

import java.sql.PreparedStatement;
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
                customerobj.setGioiTinh(Integer.parseInt(resultSet.getString("gioi_tinh")));
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

    @Override
    public void deleteCustomer(int maKhachHang) {
        try {
            PreparedStatement preparedStatement =
                    BaseRepository.connection.prepareStatement("delete from khach_hang where ma_khach_hang = ?");
            preparedStatement.setInt(1,maKhachHang);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

    @Override
    public void createCustomer(Customer customer) {
        try {
            PreparedStatement preparedStatement =
                    BaseRepository.connection.prepareStatement("insert into khach_hang \n" +
                    "values(?,?,?,?,?,?,?,?,?);");
            preparedStatement.setInt(1, customer.getMaKhachHang());
            preparedStatement.setInt(2, customer.getMaLoaiKhach().getMaLoaiKhach());
            preparedStatement.setString(3,customer.getHoTen());
            preparedStatement.setString(4, customer.getNgaySinh());
            preparedStatement.setInt(5, customer.getGioiTinh());
            preparedStatement.setString(6, customer.getSoCmnd());
            preparedStatement.setString(7, customer.getSoDienThoai());
            preparedStatement.setString(8, customer.getEmail());
            preparedStatement.setString(9, customer.getDiaChi());

            preparedStatement.executeLargeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public List<Customer> searchCustomer(String hoTen) {
        List<Customer> customers = new ArrayList<>();
        try {

            PreparedStatement preparedStatement = BaseRepository.connection.prepareStatement("select * from khach_hang where ho_ten = ?");
            preparedStatement.setString(1,hoTen);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int maKhachHang = Integer.parseInt(resultSet.getString("ma_khach_hang"));
                int maLoaiKhach = Integer.parseInt(resultSet.getString("ma_loai_khach"));
                String hoTenn = resultSet.getString("ho_ten");
                String ngaysinh = resultSet.getString("ngay_sinh");
                int gioTinh = Integer.parseInt(resultSet.getString("gioi_tinh"));
                String soCmnd = resultSet.getString("so_cmnd");
                String soDienThoai = resultSet.getString("so_dien_thoai");
                String email = resultSet.getString("email");
                String diaChi = resultSet.getString("dia_chi");

                CustomerType customerType = new CustomerType(maLoaiKhach);
                customers.add(new Customer(maKhachHang,customerType, hoTenn, ngaysinh, gioTinh,soCmnd, soDienThoai, email, diaChi));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customers;
    }
}
