CREATE TABLE 새_테이블
AS SELECT * FROM 기존_테이블 WHERE 1=0;

use employees;
-- 테이블 복사(구조만 복사) 
create table dept_emp_copy
as select * from dept_emp 
where 1 = 0; 

select * from dept_emp_copy;
desc dept_emp_copy;


CREATE TABLE 새_테이블
AS SELECT * FROM 기존_테이블;

use employees;
-- 테이블 복사(구조만 복사) 
create table dept_emp_copy
as select * from dept_emp 
where 1 = 0; 

select * from dept_emp_copy;
desc dept_emp_copy;


create table employees_copy
as select * from employees;

select * from employees_copy;

use employees;
-- 테이블 복사(구조만 복사) 
create table dept_emp_copy
as select * from dept_emp 
where 1 = 0; 

select * from dept_emp;
desc dept_emp_copy;

create table employees_copy
as select * from employees;
select * from employees_copy;

-- ------
select * from dept_emp_copy;
delete from dept_emp_copy;

insert into dept_emp_copy(emp_no, dept_no, from_date, to_date)
select emp_no, dept_no, from_date, to_date 
		from dept_emp
        where emp_no > 20001;  
        
        LOAD DATA INFILE 'path/to/yourfile.csv'
INTO TABLE students
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;  -- 첫 번째 행이 헤더일 경우 이 행을 무시