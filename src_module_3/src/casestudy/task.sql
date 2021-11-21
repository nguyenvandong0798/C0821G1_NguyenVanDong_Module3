use casetudy;

-- task 2
select * from nhan_vien
where char_length(ho_va_ten) <= 15 and (ho_va_ten like "t%" or ho_va_ten like "l%" or ho_va_ten like "h%");

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
-- c1
select distinct ho_ten from khach_hang;
-- c2
select ho_ten from khach_hang
union
select ho_ten from khach_hang;
-- c3
select distinct ho_ten 
from khach_hang
group by ho_ten;
 
-- task 9
select dv.ma_dich_vu, dv.ten_dich_vu, hd.ngay_lam_hop_dong, hd.ngay_ket_thuc, kt.gia_thue,
 sum(kt.gia_thue) as "doanh thu"
from hop_dong hd
join dich_vu dv on hd.ma_dich_vu = dv.ma_dich_vu
join kieu_thue kt on dv.ma_kieu_thue = kt.ma_kieu_thue
group by dv.ma_dich_vu
having hd.ngay_lam_hop_dong between "2019-01-01" and "2019-12-30";

-- taks 10
select hd.ma_hop_dong, hd.ngay_lam_hop_dong, hd.ngay_ket_thuc, hdct.so_luong
from hop_dong hd
join dich_vu dv on hd.ma_dich_vu = dv.ma_dich_vu
join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem ;

-- task 11
select kh.ho_ten, lk.ten_loai_khach, kh.dia_chi, hd.ma_hop_dong, hdct.ma_hop_dong_chi_tiet,
dvdk.ten_dich_vu_di_kem
from khach_hang kh 
join loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach
join hop_dong hd on hd.ma_khach_hang = kh.ma_khach_hang
join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
where lk.ten_loai_khach = "Diamond" and (kh.dia_chi = "vinh" or kh.dia_chi = "quảng ngải");

-- task 12
select hd.ma_hop_dong, nv.ho_va_ten, kh.so_dien_thoai, dvdk.ten_dich_vu_di_kem, hdct.so_luong
from khach_hang kh 
join hop_dong hd on kh.ma_khach_hang = hd.ma_khach_hang
join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem 
join nhan_vien nv on nv.ma_nhan_vien = hd.ma_nhan_vien
where year(hd.ngay_lam_hop_dong) = 2019 and month(hd.ngay_lam_hop_dong) not in (1, 2, 3, 4, 5, 6);

-- task 13
create view dich_vu_di_kem_view as
select kh.ma_khach_hang, kh.ho_ten, dvdk.ten_dich_vu_di_kem, dvdk.gia, sum(hdct.so_luong) as so_luong_sum
from khach_hang kh 
join hop_dong hd on kh.ma_khach_hang = hd.ma_khach_hang
join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
group by kh.ma_khach_hang;

select ma_khach_hang, ho_ten, ten_dich_vu_di_kem, gia, so_luong_sum, max(so_luong_sum)
from dich_vu_di_kem_view ;

-- task 14
select hd.ma_hop_dong, ldv.ten_loai_dich_vu, dvdk.ten_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem, 
count(hdct.ma_dich_vu_di_kem) as so_lan
from hop_dong hd
join dich_vu dv on hd.ma_dich_vu = dv.ma_dich_vu
join loai_dich_vu ldv on ldv.ma_loai_dich_vu = dv.ma_loai_dich_vu
join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
group by hd.ma_hop_dong ;

-- task 15
create view so_lan_lam_hop_dong_view as
select nv.ma_nhan_vien, nv.ho_va_ten, td.ten_trinh_do, nv.so_dien_thoai, nv.dia_chi,
 hd. ngay_lam_hop_dong, (nv.ma_nhan_vien) as count_so_luong_nhan_vien
from nhan_vien nv
join hop_dong hd on nv.ma_nhan_vien = hd.ma_nhan_vien
join trinh_do td on nv.ma_trinh_do = td.ma_trinh_do
join bo_phan bp on bp.ma_bo_phan = nv.ma_bo_phan
group by nv.ma_nhan_vien;

select ma_nhan_vien, ho_va_ten, ten_trinh_do, so_dien_thoai, dia_chi, count_so_luong_nhan_vien,
ngay_lam_hop_dong, max(count_so_luong_nhan_vien) as max_so_lan_lam_hop_dong
from so_lan_lam_hop_dong_view sl
group by ma_nhan_vien
having max(count_so_luong_nhan_vien) <= 3 
and (year (sl.ngay_lam_hop_dong ) = 2019 or (year (sl.ngay_lam_hop_dong ) = 2018));

-- task 16
delete from nhan_vien
where ma_nhan_vien not in 
(
select ma_nhan_vien
	from hop_dong 
		where year(ngay_lam_hop_dong) between 2017 and 2019);
SET foreign_key_checks = 0;
select * from hop_dong_chi_tiet;

 -- task 17
update khach_hang kh
 join loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach
 join hop_dong hd on kh.ma_khach_hang = hd.ma_khach_hang
 join hop_dong_chi_tiet hdct on hd.ma_hop_dong = hd.ma_hop_dong
set ten_loai_khach = "Diamond"
where ten_loai_khach = "Platinum" and year(ngay_lam_hop_dong) = 2019 and tong_tien > 10000000; 

 -- task 18
delete from khach_hang
where ma_khach_hang not in 
(
select ma_khach_hang
	from hop_dong 
		where year(ngay_lam_hop_dong) > 2016 );
set foreign_key_checks = 0;
select * from khach_hang;

-- task 19
update dich_vu_di_kem dvdk
join hop_dong_chi_tiet hdct on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
join hop_dong hd on hd.ma_hop_dong = hdct.ma_hop_dong
set gia = gia * 2
where hdct.so_luong > 10 and year(hd.ngay_lam_hop_dong) = 2019;

-- task 20 
select kh.ma_khach_hang, nv.ma_nhan_vien, kh.ho_ten, nv.ho_va_ten, kh.email, nv.email,
kh.so_dien_thoai,nv.so_dien_thoai, kh.ngay_sinh, nv.ngay_sinh, kh.dia_chi, nv.dia_chi
from hop_dong hd
join khach_hang kh on kh.ma_khach_hang = hd.ma_khach_hang
join nhan_vien nv on nv.ma_nhan_vien = hd.ma_nhan_vien

 