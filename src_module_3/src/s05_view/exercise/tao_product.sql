create database list_product;

-- buoc 2
use list_product;
create table product(
id int,
product_code int,
product_name varchar(45),
product_price double,
product_amount int,
product_description varchar(45),
product_status varchar(45)
);
insert into product
values(1,11, "nguyen van dong", 1000, 2, "nuoc uong", "2 nggay");
insert into product
values(2,22, "nguyen van du", 2000, 2, "thuc pham", "1 nggay");
insert into product
values(3,33, "nguyen van tam", 1000, 2, "thuc an", "6 nggay");
insert into product
values(4,44, "nguyen van lanh", 5000, 2, "nuoc uong", "3 nggay");

select * from product;

-- buoc 3
select *
from product
where product_code = 22 ;

create index idx_product_code
on product(product_code);

create index idx_product_code_2
on product(product_code, product_name);

-- buoc 4
create view product_view as
select product_code, product_name, product_price, product_status
from product;

select * from product_view;

CREATE OR REPLACE VIEW product_view AS
select product_code, product_name, product_price, product_amount, product_status
from product
where product_name = "nguyen van dong";

select * from product_view;

drop view product_view;

-- buoc 5
delimiter //
create procedure store_product(
id int,
product_code int,
product_name varchar(45),
product_price double,
product_amount int,
product_description varchar(45),
product_status varchar(45)
)
    begin
		select * from product;
	end;
       // delimiter 
        
delimiter //        
create procedure insert_product(
id int,
product_code int,
product_name varchar(45),
product_price double,
product_amount int,
product_description varchar(45),
product_status varchar(45)
)
	begin
		insert into product
        values(5,23, "nguyen doan", 5000, 2, "nuoc uong", "3 nggay");
	end;
// delimiter   

 delimiter //
 create procedure update_product(
id int,
product_code int,
product_name varchar(45),
product_price double,
product_amount int,
product_description varchar(45),
product_status varchar(45)
)
begin
        update product
        set product_name = "anh du"
        where id = 2;
end;
 // delimiter 
 
 
 delimiter  //      
create procedure delete_product(
id int,
product_code int,
product_name varchar(45),
product_price double,
product_amount int,
product_description varchar(45),
product_status varchar(45)
)
begin
        delete from product
        where id = 2;
    end ;
  // delimiter ;
