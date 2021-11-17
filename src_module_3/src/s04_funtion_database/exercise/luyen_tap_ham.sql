use quan_ly_sinh_vien2;

SELECT subjects_id, subjects_name, credit, max(credit)
FROM subjects;

SELECT j.subjects_id, j.subjects_name, mark, max(mark)
FROM subjects j join mark m on j.subjects_id = m.subjects_id
GROUP BY j.subjects_id, j.subjects_name, mark;

SELECT s.student_id,s.student_name, AVG(mark)
FROM student s join mark m on s.student_id = m.student_id
GROUP BY s.student_id, s.student_name
order by mark asc;