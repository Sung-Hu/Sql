select * from employees;


-- 1955-06-17생인 이름이 Angel 인 사람의 성별을 여자로 변경하고 성을 Gulla 로 변경하시오 

update employees
set last_name = 'Gulla'
where first_name = 'Angel';

desc employees;


drop table tb_user;


create table TB_USER(
	user_id int auto_increment,
    username varchar(50) not null, 
    password varchar(50) not null, 
    primary key(user_id)
);

create table tb_user_details(
	details_id int auto_increment, 
    user_id int unique,
    address varchar(100), 
    phone_number varchar(15), 
    email varchar(50), 
	primary key(details_id), 
    foreign key(user_id) references tb_user(user_id)
);


create database mydb2;
use mydb2; 


create table tb_student(
	student_id int auto_increment primary key, 
    student_name varchar(100) not null
);


create table tb_class(
	class_id int  auto_increment, 
    class_name varchar(100) not null, 
    teacher varchar(20) not null,
    primary key(class_id)
); 


-- 학생과 수업 테이블 N:M 관계가 형성 된다. 
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