create table contacts(
contacts_id int(11) not null auto_increment,
last_name varchar(30) not null,
fist_name varchar(30) not null,
birthday date,
constraint contacts_pk primary key (contacts_id)
);
create table supplier(
supplier_id int(11) not null auto_increment,
supplier_name varchar(30) not null,
account_rep varchar(30) not null default 'TDB',constraint supplier_pk primary key(supplier_id)
);
drop table supplier;
alter table contacts
	add last_name varchar(30) not null
    after contacs_id,
    add fist_name varchar(30) not null
    after last_name;