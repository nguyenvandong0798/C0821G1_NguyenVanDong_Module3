create database quan_ly_sinh_vien2;
-- drop database quan_ly_sinh_vien2;
use quan_ly_sinh_vien2;

create table class(
    class_id   INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(60) NOT NULL,
    start_date DATETIME    NOT NULL,
    `status`    BIT
);
create table student(
    student_Id   INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(30) NOT NULL,
    address     VARCHAR(50),
    phone       VARCHAR(20),
    `status`      BIT,
    student_class_id     INT         NOT NULL,
    FOREIGN KEY (student_class_id) REFERENCES class (class_id)
);

create table subjects(
    subjects_id   INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    subjects_name VARCHAR(30) NOT NULL,
    credit  TINYINT     NOT NULL DEFAULT 1 CHECK ( credit >= 1 ),
    `status`  BIT                 DEFAULT 1
);

create table mark(
    mark_id    INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    subjects_id     INT NOT NULL,
    student_id INT NOT NULL,
    mark      FLOAT   DEFAULT 0 CHECK ( mark BETWEEN 0 AND 100),
    exam_times TINYINT DEFAULT 1,
    UNIQUE (subjects_id, student_id),
    FOREIGN KEY (subjects_id) REFERENCES subjects (subjects_id),
    FOREIGN KEY (student_id) REFERENCES student (student_id)
);
