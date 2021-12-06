--T-SQL :Transact Structure Query Language
SELECT col
FROM tb
WHERE condition
--c1
select *
from SINHVIEN
--c2
select masv,hodem,ten
from SINHVIEN
inner join LOP 
on SINHVIEN.MALOP = LOP.MALOP
where LOP.KHOAHOC = 1
--c3
--ORDER BY tên-cột ASC, ... xếp tăng dần, mặc định.
--ORDER BY tên-cột DESC, ... xếp giảm dần.
select masv,hodem,ten,ngaysinh,gioitinh
from SINHVIEN
where SINHVIEN.GIOITINH = 'False'
order by ten,hodem
--c4
select SINHVIEN.MASV,hodem,ten,diem
from DIEMTHI 
inner join SINHVIEN 
on DIEMTHI.MASV = SINHVIEN.MASV
where DIEMTHI.LANTHI = 1
--c5
select SINHVIEN.masv,hodem,ten,tenlop
from SINHVIEN
inner join DIEMTHI 
on SINHVIEN.MASV = DIEMTHI.MASV
inner join LOP
on SINHVIEN.MALOP = LOP.MALOP
inner join HOCPHAN
on DIEMTHI.MAHOCPHAN = HOCPHAN.MAHOCPHAN
where DIEMTHI.LANTHI>1 and HOCPHAN.TENHOCPHAN = N'HQTCSDL SQL Server'
--c6
select malop as N'Mã Lớp', tenlop as N'Tên Lớp' 
from LOP
where MAKHOA = N'khmt'
--c7
select masv,hodem,ten,tenlop,namnhaphoc
from SINHVIEN
inner join LOP
on SINHVIEN.MALOP = LOP.MALOP
inner join KHOA
on LOP.MAKHOA = KHOA.MAKHOA
where KHOA.TENKHOA = N'Thương mại điện tử'
--c8
--1tc = 15tiet
select TENHOCPHAN, SOTINCHI*15 as N'Số tiết'
from HOCPHAN
--c9
-- in = nhiều or
select SINHVIEN.masv, hodem, ten
from SINHVIEN
inner join DIEMTHI 
on SINHVIEN.MASV = DIEMTHI.MASV
where DIEMTHI.LANTHI>1 and DIEMTHI.MAHOCPHAN IN ('sql', 'tinvp')
--c10
select top(2) SINHVIEN.masv, hodem, ten, diem
from SINHVIEN
inner join DIEMTHI
on SINHVIEN.MASV = DIEMTHI.MASV
inner join HOCPHAN
on DIEMTHI.MAHOCPHAN = HOCPHAN.MAHOCPHAN
where DIEMTHI.LANTHI = 1 and HOCPHAN.TENHOCPHAN = N'HQTCSDL SQL Server'
order by DIEMTHI.DIEM DESC
--c11
select SINHVIEN.masv, hodem, ten, diem
from SINHVIEN
inner join DIEMTHI
on SINHVIEN.MASV = DIEMTHI.MASV
inner join HOCPHAN
on DIEMTHI.MAHOCPHAN = HOCPHAN.MAHOCPHAN
where DIEMTHI.LANTHI = 1 and HOCPHAN.TENHOCPHAN = N'Tin học văn phòng' and DIEMTHI.DIEM >= 5 and DIEMTHI.DIEM <= 7
--c12,13
--c14
select SINHVIEN.masv, hodem, ten, tenlop, tenhocphan, diem, tenkhoa
from SINHVIEN
inner join LOP on SINHVIEN.MALOP = LOP.MALOP
inner join KHOA on LOP.MAKHOA = KHOA.MAKHOA
inner join DIEMTHI on SINHVIEN.MASV = DIEMTHI.MASV
inner join HOCPHAN on DIEMTHI.MAHOCPHAN = HOCPHAN.MAHOCPHAN
where DIEMTHI.LANTHI = 1 and DIEMTHI.DIEM>=8 and DIEMTHI.DIEM<=9
--c15
SELECT SINHVIEN.masv, hodem, ten, ngaysinh, lanthi, diem
INTO KQTinDC
FROM SINHVIEN
inner join DIEMTHI on SINHVIEN.MASV = DIEMTHI.MASV
inner join HOCPHAN on DIEMTHI.MAHOCPHAN = HOCPHAN.MAHOCPHAN
Where HOCPHAN.TENHOCPHAN = N'Tin học đại cương'


