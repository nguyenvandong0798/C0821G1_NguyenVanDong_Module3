use quan_ly_sinh_vien;

select * from student;

select * from student
where `satus` = true;

select * from subjects
where credit < 10;

select  s.id, s.`name`, c.`name`
from student s join class c on s.class_id = c.id
where c.`name` = "A1";

select s.id, s.`name`, j.`name`, m.mark
from student s join mark m on s.id = m.student_id  join subjects j on j.id = m.subjects_id
where j.`name` = "CF";