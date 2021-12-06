package bean;

import java.util.Date;

public class Customer {
    private int a_khach_hang;
    private CustomerType ma_loai_khach;
    private String ho_ten;
    private String ngay_sinh;
    private String gioi_tinh;
    private String so_cmnd;
    private String so_dien_thoai;
    private String email;
    private String dia_chi;

    public Customer(int a_khach_hang, CustomerType ma_loai_khach, String ho_ten, String ngay_sinh,
                    String gioi_tinh, String so_cmnd, String so_dien_thoai, String email, String dia_chi) {
        this.a_khach_hang = a_khach_hang;
        this.ma_loai_khach = ma_loai_khach;
        this.ho_ten = ho_ten;
        this.ngay_sinh = ngay_sinh;
        this.gioi_tinh = gioi_tinh;
        this.so_cmnd = so_cmnd;
        this.so_dien_thoai = so_dien_thoai;
        this.email = email;
        this.dia_chi = dia_chi;
    }

    public Customer() {
    }

    public int getA_khach_hang() {
        return a_khach_hang;
    }

    public void setA_khach_hang(int a_khach_hang) {
        this.a_khach_hang = a_khach_hang;
    }

    public CustomerType getMa_loai_khach() {
        return ma_loai_khach;
    }

    public void setMa_loai_khach(CustomerType ma_loai_khach) {
        this.ma_loai_khach = ma_loai_khach;
    }

    public String getHo_ten() {
        return ho_ten;
    }

    public void setHo_ten(String ho_ten) {
        this.ho_ten = ho_ten;
    }

    public String getNgay_sinh() {
        return ngay_sinh;
    }

    public void setNgay_sinh(String ngay_sinh) {
        this.ngay_sinh = ngay_sinh;
    }

    public String getGioi_tinh() {
        return gioi_tinh;
    }

    public void setGioi_tinh(String gioi_tinh) {
        this.gioi_tinh = gioi_tinh;
    }

    public String getSo_cmnd() {
        return so_cmnd;
    }

    public void setSo_cmnd(String so_cmnd) {
        this.so_cmnd = so_cmnd;
    }

    public String getSo_dien_thoai() {
        return so_dien_thoai;
    }

    public void setSo_dien_thoai(String so_dien_thoai) {
        this.so_dien_thoai = so_dien_thoai;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDia_chi() {
        return dia_chi;
    }

    public void setDia_chi(String dia_chi) {
        this.dia_chi = dia_chi;
    }
}
