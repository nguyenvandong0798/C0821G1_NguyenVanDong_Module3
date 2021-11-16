use sale_manage;

insert into customer
values(1, "minh quan", 10);
insert into customer
values(2, "ngoc oang", 20);
insert into customer
values(3, "hong ha", 50);

insert into orders(id, customer_id, `date`)
values(1, 1, "2006-03-12"); 
insert into orders(id, customer_id, `date`)
values(2, 1, "2006-03-23"); 
insert into orders(id, customer_id, `date`)
values(3, 1, "2006-03-16"); 


delete from orders
where id =1;

select * from  orders;

insert into product
values(1, "May Giat", 3);
insert into product
values(2, "Tu Lanh", 5);
insert into product
values(3, "Dieu Hoa", 50);
insert into product
values(4, "Quat", 1);
insert into product
values(5, "Bep Dien", 2);

select * from product;
delete from product
where id =3;

insert into order_detail
values(1, 1, 3);
insert into order_detail
values(3, 1, 7);
insert into order_detail
values(4, 1, 2);
insert into order_detail
values(1, 2, 1);
insert into order_detail
values(1, 3, 8);
insert into order_detail
values(5, 2, 4);
insert into order_detail
values(3, 2, 3);

select * from order_detail;

select c.id,c.`name`,p.`name`,od.quality
from customer c
inner join orders o on c.id = o.customer_id
inner join order_detail od on o.id = od.order_id
inner join product p on p.id = od.product_id;