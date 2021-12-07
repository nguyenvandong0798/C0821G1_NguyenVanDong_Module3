package bean;

public class CustomerType {
    private int maLoaiKhach;
    private String tenLoaiKhach;

    public CustomerType() {
    }

    public CustomerType(int ma_loai_khach, String ten_loai_khach) {
        this.maLoaiKhach = ma_loai_khach;
        this.tenLoaiKhach = ten_loai_khach;
    }

    public int getMaLoaiKhach() {
        return maLoaiKhach;
    }

    public void setMaLoaiKhach(int maLoaiKhach) {
        this.maLoaiKhach = maLoaiKhach;
    }

    public String getTenLoaiKhach() {
        return tenLoaiKhach;
    }

    public void setTenLoaiKhach(String tenLoaiKhach) {
        this.tenLoaiKhach = tenLoaiKhach;
    }
}
