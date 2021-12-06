Lệnh INSERT: Tạo một bản ghi.
Lệnh UPDATE: Sửa đổi các bản ghi.
Lệnh DELETE: Xóa các bản ghi.

-INSERT INTO TABLE_NAME (column1, column2, column3,...columnN)  
VALUES (value1, value2, value3,...valueN);
-INSERT INTO TABLE_NAME VALUES (value1,value2,value3,...valueN);

-UPDATE table_name
SET column1 = value1, column2 = value2...., columnN = valueN
WHERE [condition];
-Nếu muốn sửa đổi tất cả các giá trị ADDRESS và SALARY trong bảng CUSTOMERS, 
 UPDATE CUSTOMERS
SET ADDRESS = 'Ha Noi', SALARY = 1000.00;

-DELETE FROM table_name
WHERE [condition];



insert into khoa (makhoa,tenkhoa,dienthoai)
values ('cnuo',N'Công nghệ thoonh tin ứng dụng','0511962962');

insert into khoa 
values ('mmnh',N'Công nghệ thông tin ứng dụng','0511962962');

update khoa
set dienthoai = '1111962962'

update khoa
set dienthoai = '0911962962'
where makhoa='cnuo'

delete from khoa 
where makhoa='cnuo'

insert into lop (malop,tenlop,khoahoc,hedaotao,NamNhapHoc,makhoa)
values (N'dh01', N'Đồ họa 1', 1, N'Chính quy', 2018,N'cnuo');
insert into lop (malop,tenlop,khoahoc,NamNhapHoc,makhoa)
values (N'dh02', N'Đồ họa 1', 1, 2018,N'cnuo');

insert into sinhvien    CAST(3.00 AS Numeric(5, 2))
values ('sv1',N'Hoang',N'Kiệt','15/03/1986 12:00:00 AM',1,N'Phong Nha, Quảng Bình',N'dh01')

insert into sinhvien 
values ('sv1',N'Hoang',N'Kiệt',CAST(N'1986-03-15T00:00:00' AS SmallDateTime),1,N'Phong Nha, Quảng Bình',N'dh01')

insert into sinhvien 
values ('sv2',N'Hoàng',N'Kiet',CAST(N'1986-03-15T06:14:12' AS SmallDateTime),1,N'Phong Nha, Quảng Bình',N'dh01')




