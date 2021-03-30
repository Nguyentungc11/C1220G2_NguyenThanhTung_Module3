drop database if exists he_thong_ban_oto;
create database  if not exists he_thong_ban_oto;
use he_thong_ban_oto;

create table quan_li(
ma_nvql int not null primary key,
ten_nvql varchar(45)
);
create table van_phong(
ma_van_phong int not null primary key,
dia_chi varchar(45),
dien_thoai varchar(12),
quoc_gia varchar(45)
);


create table loai_sp(
ma_loai_sp int primary key not null,
ten_loai_sp varchar(45),
mo_ta varchar(45)
);

create table nhan_vien(
ma_nhan_vien int not null primary key,
ten_nhan_vien varchar(45),
email varchar(45),
ten_cong_viec varchar(45),
ma_van_phong int,
ma_nvql int,
foreign key (ma_van_phong) references van_phong(ma_van_phong),
foreign key(ma_nvql) references quan_li(ma_nvql)
);
create table khach_hang(
ma_khach_hang int primary key not null,
ten_khach_hang varchar(45) not null,
sdt varchar(12),
dia_chi varchar(45),
ma_nhan_vien int,
foreign key (ma_nhan_vien) references nhan_vien(ma_nhan_vien)
);


create table san_pham(
ma_sp int primary key not null,
ten_sp varchar(45) not null,
nha_san_xuat varchar(45),
so_luong int,
gia_nhap int,
gia_ban int,
ma_loai_sp int,
foreign key (ma_loai_sp) references loai_sp(ma_loai_sp)
);
create table don_hang(
ma_don_hang int not null primary key,
ngay_mua date,
yeu_cau varchar(50),
ngay_giao date,
so_luong int,
don_gia int,
ma_khach_hang int,
foreign key (ma_khach_hang) references khach_hang(ma_khach_hang)
);
create table sp_dh(
ma_sp int not null,
ma_don_hang int not null,
primary key (ma_sp,ma_don_hang),
foreign key (ma_sp) references san_pham(ma_sp),
foreign key (ma_don_hang) references don_hang(ma_don_hang)
);
create table thanh_toan(
ma_thanh_toan int primary key not null,
ngay_thanh_toan date,
so_tien int,
ma_khach_hang int,
foreign key (ma_khach_hang) references khach_hang(ma_khach_hang)
);
