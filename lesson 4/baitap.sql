create database bai_tap_bai_4;
create table student (
id int not null,
`name` varchar(40) not null,
age int not null,
khoahoc varchar(30) not null,
sotien int not null
);
insert into student(id,`name`,age,khoahoc,sotien)
values (1,'Hoàng',20,'cntt',400000),
		(2,'Việt',19,'dtvt',320000),
		(3,'Thanh',18,'ktdn',400000),
		(4,'Nhân',19,'ck',450000),
		(5,'Hương',20,'tchh',400000),
		(5,'Hương',20,'tchh',200000);
select * from student
where `name` = 'Hương';
select sum(sotien) from student
where `name` = 'Hương';
select distinct `name` from student;



