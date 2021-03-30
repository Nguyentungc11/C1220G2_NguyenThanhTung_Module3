create database create_primary_key;
create table users(
user_id int auto_increment,
user_name varchar(40),
`password` varchar(255),
email varchar(255)
);
create table roles(
role_id int auto_increment,
role_name varchar(40),
primary key (role_id)
);
create table userrole(
use_id int not null,
role_id int not null,
primary key (use_id,role_id),
foreign key (use_id) references users(use_id),
foreign key(role_id) references roles(role_id)
);