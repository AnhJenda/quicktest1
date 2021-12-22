if exists (select * from sys.databases where name='Aptech')
drop database Aptech
go

use Aptech
go
-- Tạo bảng Student
create table Student (
	StudentName varchar(50) not null,
	DateOfBirth date,
	Class varchar(10)
)
go
/* 
	Thêm, sửa, xoá bản ghi
*/
-- Thêm bản ghi
insert into Student (StudentName, DateOfBirth, Class)
	values
		('Dinh Quang Anh', 19990711, 'T2109M'),
		('Vu Viet Quy', 20031218, 'T2109M')
go
-- Sửa bản ghi
update Student
set DateOfBirth = '20031118' where StudentName = 'Vu Viet Quy'
go
-- Xoá bản ghi
delete from Student where StudentName = 'Vu Viet Quy'