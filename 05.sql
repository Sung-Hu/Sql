-- 테이블을 삭제하는 명령
-- drop table student;

-- 테이블 생성시에 디폴드 값을 제약 설정하는 방법

create table student(
	student_id int primary key,
    name varchar(50) not null,
    grade int not null,
    major varchar(50) default '미정' not null
);
desc student;

-- 기본 문구 모양
-- insert into 테이블명(컬럼명1, 컬럼명2, ...) values(값1, 값2, ...);
-- insert into 테이블명 values(값1, 값2, ...); 생략버전

insert into student(student_id, name, grade, major)
values(1, '홍길동', 3, '컴퓨터공학과');

-- 디폴트 제약을 사용했을 때 값을 넣는 방법 1
insert into student(student_id, name, grade)
values(2, '김청수', 1);

-- 컬럼명 생략 버전
insert into student values(3, '이영희', 4, '경영학과');

select * from student;

-- 디폴트 제약을 사용했을 때 값을 넣는 방법 2
insert into student(student_id, name, grade, major)
values(4, '야스오', 2, default);

-- delete from 구문을 사용 할 때는 (실무에서) 반드시!! 필터를 걸자
delete from student where student_id = 4;

select * from student;

-- data 타입 형식을 사용할 때 연습

drop table `order`;

create table `order`(
	id int primary key,
    customer_order varchar(50),
    product_name varchar(20) not null,
    quantity int not null,
    order_date date not null
);

insert into `order` values(1, '빠른배송', '신라면', 2, '2024-05-30');
-- date 타입은 - (하이푼) 을 빼도 자동으로 들어간다
insert into `order` values(2, '느린배송', '신라면', 3, '20240530');
-- 월 혹은 요일에 0을 빼고 적으면 오류
insert into `order` values(3, '엄청느린배송', '신라면', 3, '2024530');
-- 1년은 12개월이기 때문에 13이 들어갈수 없어서 오류
insert into `order` values(4, '아주느린배송', '신라면', 3, '20241330');

select * from `order`;