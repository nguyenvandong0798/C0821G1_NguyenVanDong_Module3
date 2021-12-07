package bean;

public class Customer {
    private int maKhachHang;
    private CustomerType maLoaiKhach;
    private String hoTen;
    private String ngaySinh;
    private String gioiTinh;
    private String soCmnd;
    private String soDienThoai;
    private String email;
    private String diaChi;

    public Customer(int ma_khach_hang, CustomerType ma_loai_khach, String ho_ten, String ngay_sinh,
                    String gioi_tinh, String so_cmnd, String so_dien_thoai, String email, String dia_chi) {
        this.maKhachHang = ma_khach_hang;
        this.maLoaiKhach = ma_loai_khach;
        this.hoTen = ho_ten;
        this.ngaySinh = ngay_sinh;
        this.gioiTinh = gioi_tinh;
        this.soCmnd = so_cmnd;
        this.soDienThoai = so_dien_thoai;
        this.email = email;
        this.diaChi = dia_chi;
    }

    public Customer() {
    }

    public int getMaKhachHang() {
        return maKhachHang;
    }

    public void setMaKhachHang(int maKhachHang) {
        this.maKhachHang = maKhachHang;
    }

    public CustomerType getMaLoaiKhach() {
        return maLoaiKhach;
    }

    public void setMaLoaiKhach(CustomerType maLoaiKhach) {
        this.maLoaiKhach = maLoaiKhach;
    }

    public String getHoTen() {
        return hoTen;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

    public String getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(String ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public String getGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(String gioiTinh) {
        this.gioiTinh = gioiTinh;
    }

    public String getSoCmnd() {
        return soCmnd;
    }

    public void setSoCmnd(String soCmnd) {
        this.soCmnd = soCmnd;
    }

    public String getSoDienThoai() {
        return soDienThoai;
    }

    public void setSoDienThoai(String soDienThoai) {
        this.soDienThoai = soDienThoai;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }
}
