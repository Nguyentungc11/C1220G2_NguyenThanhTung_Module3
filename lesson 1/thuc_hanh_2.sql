create database my_database;
create table student(
id int primary key,
`name` varchar(50),
date_of_birth date,
email varchar(30)
);

insert into student (id,`name`,date_of_birth)
values
(1,'a','2021-12-23'),
(2,'a','2021-12-23'),
(3,'a','2021-12-23'),
(4,'a','2021-12-23'),
(5,'a','2021-12-23');
select* from  student;

select* from student
where id = 2;
delete from student 
where id = 4;
