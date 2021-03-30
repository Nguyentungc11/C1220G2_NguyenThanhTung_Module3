create database foreign_key;
create table customers(
id int auto_increment primary key,
name_customer varchar(40),
address varchar(255),
email varchar(255)
);
create table orders (
id int auto_increment,
staff varchar(50),
primary key (id),
id_customer int,
foreign  key (id_customer) references customers(id)
);