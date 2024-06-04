create database mydb;

use mydb;

-- 테이블 생성 
create table student(
	student_id int, 
    name varchar(50) not null,
    grade int not null, 
    major varchar(50) not null
);

select * from student;
desc student;

-- 과목 테이블 생성 
create table subject(
	  subject_id int, 
    subject_name varchar(50) not null, 
    credit int not null,
    department varchar(5),
    professor char(50) not null
);

select * from subject;

-- 이미 생성된 테이블에 기본키를 추가하는 방법
alter table student add primary key(student_id);
desc student;
-- 사전 기반 지식(데이터가 들어가 있는 상태에서 빈 값이 포함 되어 있다면
-- 기본키를 추가할 수 없다.) 즉, NULL 값이 있어서는 안됨

alter table subject add primary key(subject_id);
desc subject;

-- 주문
-- order --> table 이름?
-- row --> id : pk를 셋팅?
-- 고객 주문 내용 - 문자
-- 상품 이름
-- 상품 가격
-- 수량

-- 예약어는 기본적으로 테이블 이름을 선점 할 수 없다.
-- 하지만 강제적으로 ` ` 예약어를 풀어서 테이블 이름이라고 명시할 수 있다.(키보드 1번 왼쪽에 있다)
create table `order`(
	id int primary key,
    price bigint,
    customer_order varchar(50),
    product_name varchar(20) not null,
    quantity int not null,
    order_date date not null
);

desc `order`;

-- 도전 과제 : 위 형식에 맞는 insert 구문을 만들고 실행하세요
insert into `order`(id, price, customer_order, product_name, quantity, order_date)
values(9, 1000, 'order1', '지우개', 3, '20240530'); 

CREATE TABLE employee (
  id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  age INT,
  department VARCHAR(50) NOT NULL
);

CREATE TABLE customer (
  id INT PRIMARY KEY ,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(50),
  address VARCHAR(100) NOT NULL
);

select * from `order`;
desc employee;
desc customer;
