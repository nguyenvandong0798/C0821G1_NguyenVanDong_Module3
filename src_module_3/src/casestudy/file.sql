create database casetudy;
use casetudy;

-- drop database casetudy;

create table student(
	id int,
    `name` varchar(15),
    age int
);

select * from Student;

insert into student
values (1,"nguyen van dong", 23);
insert into student
values (2,"nguyen anh tam", 24);
insert into student
values (3,"nguyen van luan", 25);
insert into student
values (4,"ho van tung", 20);
insert into student
values (5,"tran cong hau", 22);

update student
set `name` = 'ho van luan'
where id = 3;

delete from student
WHERE id =3;

select * from student
where `name` like "t%";

select * from student
where `name` like "h%";

