create database mydb2;
use mydb2;

create table tb_student(
	student_id int auto_increment primary key,
    student_name varchar(100) not null
);

create table tb_class(
	class_id int auto_increment,
    class_name varchar(100) not null,
    teacher varchar(20) not null,
    primary key(class_id)
);

-- 학생과 수업 테이블은 N:M 관계가 형성 된다.
-- 중간 테이블 설계 (수강등록 테이블)

create table tb_registration(
	student_id int,
    class_id int,
    registration_date date,
    primary key(student_id, class_id),
    foreign key(student_id) references tb_student(student_id),
    foreign key(class_id) references tb_class(class_id)
);

desc tb_registration;

insert into tb_student(student_id,student_name) values
(1, '김씨'),
(2, '박씨'),
(3, '최씨'),
(4, '이씨');

insert into tb_class(class_id, class_name, teacher) values
(1, '수학', '김수학'),
(2, '과학', '이과학'),
(3, '영어', '최영어'),
(4, '국어', '박국어');
 
 insert into tb_registration(student_id, class_id, registration_date) values
 (1, 1, 20240601),
 (2, 2, 20240602),
 (3, 3, 20240603),
 (4, 4, 20240604);
 
 select * from tb_student;
 select * from tb_class;
 select * from tb_registration;