use casetudy;

select * from nhan_vien
where ho_va_ten like "t%";

select * from nhan_vien
where ho_va_ten like "h%";

select * from nhan_vien
where ho_va_ten like "h%";

-- Task 3
select * 
from khach_hang
where ngay_sinh < "2002-01-01"
and dia_chi = "đà nẵng" or dia_chi = "quảng trị";

-- Task 4
select kh.ma_khach_hang, kh.ma_loai_khach, kh.ho_ten, kh.ngay_sinh, 
kh.gioi_tinh, kh.so_cmnd, kh.so_dien_thoai, kh.email, kh.dia_chi, lk.ten_loai_khach,
count(ten_loai_khach) as "so luong"
from khach_hang kh join loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach
group by kh.ma_khach_hang
having lk.ten_loai_khach = "Diamond"
order by count(ten_loai_khach) asc;

-- Task 5
select kh.ma_khach_hang, kh.ma_loai_khach, kh.ho_ten, kh.ngay_sinh, 
kh.gioi_tinh, kh.so_cmnd, kh.so_dien_thoai, kh.email, kh.dia_chi,
hd.ma_hop_dong, dv.ten_dich_vu, hd.ngay_lam_hop_dong, hd.ngay_ket_thuc,
hd.tong_tien, sum(dv.chi_phi_thue + hdct.so_luong * dvdk.gia ) as "tổng tiền"
from khach_hang kh join hop_dong hd on kh.ma_khach_hang = hd.ma_khach_hang
Join dich_vu dv on hd.ma_dich_vu = dv.ma_dich_vu 
Join hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong
Join dich_vu_di_kem dvdk on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
group by kh.ma_khach_hang;

-- task 6
select dv.ma_dich_vu, dv.ten_dich_vu, dv.dien_tich, dv.chi_phi_thue, ldv.ten_loai_dich_vu
from dich_vu dv 
join hop_dong hd on dv.ma_dich_vu = hd.ma_dich_vu
join loai_dich_vu ldv on dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
where hd.ngay_lam_hop_dong >= "2019-01-00" and hd.ngay_lam_hop_dong <= "2019-03-00";

-- task 7
select dv.ma_dich_vu, dv.ten_dich_vu, dv.dien_tich, dv.so_nguoi_toi_da, kt.gia_thue,
ldv.ten_loai_dich_vu
from hop_dong hd 
join dich_vu dv on hd.ma_dich_vu = dv.ma_dich_vu
join kieu_thue kt on dv.ma_kieu_thue = kt.ma_kieu_thue
Join loai_dich_vu ldv on dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
where hd.ngay_lam_hop_dong between "2018-01-01" and "2018-12-30";

-- task 8
select distinct ho_ten from khach_hang;

-- task 9
