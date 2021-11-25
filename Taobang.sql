CREATE DATABASE QLDiemN1
--Tao bang
CREATE TABLE KHOA(
MaKhoa char(5) Not null Primary key,
TenKhoa nvarchar(50) not null,
DienThoai nvarchar(10)
)

CREATE TABLE LOP(
MaLop char(10) Not null Primary key,
Tenlop nvarchar(50) not null,
KhoaHoc tinyint CHECK(KhoaHoc > 0),
HeDaoTao nvarchar(25) DEFAULT N'chính quy',
NamNhapHoc smallint CHECK (NamNhapHoc > 2017),
MaKhoa char(5) FOREIGN KEY REFERENCES KHOA(MaKhoa)
ON DELETE CASCADE ON UPDATE CASCADE
)
CREATE TABLE SINHVIEN(
MASV char(10) Not null Primary key,
HoDem nvarchar(25) not null,
Ten nvarchar(10) not null,
NgaySinh date CHECK(YEAR(getdate()) - YEAR(NgaySinh) >16), -- 16 tuoi tro len
GioiTinh bit,		-- 1 nam, 0 nu
NoiSing nvarchar(100),
MaLop char(10) FOREIGN KEY REFERENCES Lop(MaLop)
ON DELETE CASCADE ON UPDATE CASCADE
)
--Tao bang Hoc phan
CREATE TABLE HOCPHAN(
MaHocPhan char(10) Not null Primary key,
TenHocPhan nvarchar(50) not null,
SoTinChi tinyint CHECK(SoTinChi >0)
)
-- Tao bang Diem
CREATE TABLE DIEMTHI(
MaHocPhan char(10) Not null  FOREIGN KEY REFERENCES HOCPHAN(MaHocPhan), -- FK HP
MASV char(10) Not null FOREIGN KEY REFERENCES SINHVIEN(MaSV),--FK tham chieu SV
LanThi tinyint CHECK(LanThi = 1 OR LanThi = 2),--Lan thi chi nhan 1 hoac 2
Diem numeric(5,2),	--Phan thap phan co 02 chu so
CONSTRAINT PKDiem PRIMARY KEY(MaHocPhan,MASV, LanThi)--PK la 3 thuoc tinh
)
