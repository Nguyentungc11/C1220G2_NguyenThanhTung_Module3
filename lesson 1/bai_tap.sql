drop database if exists data_customers;
create database data_customers;
use data_customers;
create table customers(
customer_name varchar(50),
phone varchar(20),
city varchar(20),
country varchar(20)
);
insert into customers (`customer_name`,`phone`,`city`,`country`)
values
('tuấn','123423121','Đông Hà','Việt Nam'),
('Huy','232323823','Tam Kì','Hoa kì'),
('Hậu','2551555545','Đà Nẵng','Pháp'),
('Công','5465454','NewYouk','Mĩ'),
('Tâm','234238946515423','Huế','Việt Nam'),
('Tài','996546544','Hà Nội','Việt Nam'),
('tùng','23423423','Sài Gòn','Đức'),
('Kha','23423423','Sài Gòn','Đức'),
('trung','23423423','Sài Gòn','Đức'),
('chánh','23423423','Sài Gòn','Đức'),
('khoa','23423423','Sài Gòn','Đức'),
('Hoàng','23423423','Sài Gòn','Đức'),
('Vy','23423423','Sài Gòn','Đức'),
('Nghĩa','23423423','Sài Gòn','Đức');
select * from customers;
delete from customers
where customer_name = 'tùng';

select * from customers
where customer_name = 'Nghĩa';

select *
from customers
where customer_name like '%Tuấn%';