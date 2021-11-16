create database sale_manage;

-- drop database sale_manage;


create table customer(
	id int primary key,
    `name` varchar(20),
    age tinyint
);

create table orders(
	id int primary key,
    `date` date,
    total_price int,
    customer_id int,
    foreign key (customer_id) references customer(id)
);

create table product (
	id int primary key,
    `name` varchar(20),
    price int
);

create table order_detail(
	product_id int,
	order_id int,
	quality int,
    primary key(product_id, order_id),
    foreign key(product_id) references product(id),
    foreign key (order_id) references orders(id)
);



