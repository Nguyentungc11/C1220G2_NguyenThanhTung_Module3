create database quan_li_tai_khoan;
use quan_li_tai_khoan;
create table customers(
id int not null primary key auto_increment,
ho_ten varchar(45) not null,
dia_chi varchar(45) not null,
sdt varchar(12),
email varchar(45)
);
create table tai_khoan(
so_tk int not null primary key,
ngay_mo date,
kieu_tk varchar(45),
so_du int,
id_customer int,
foreign key (id_customer) references customers(id)
);
create table giao_dich(
ma_giao_dich int primary key,
ngay_giao_dich date,
so_tien int,
mo_ta varchar(45),
so_tai_khoan int,
foreign key (so_tai_khoan) references tai_khoan(so_tk)
);