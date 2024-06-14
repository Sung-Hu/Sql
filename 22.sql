create database mydb3;
use mydb3;

CREATE TABLE tb_student (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    class CHAR(1) NOT NULL,
    score INT NOT NULL
);
    
  
INSERT INTO tb_student (name, class, score) VALUES
('Alice', 'A', 85),
('Bob', 'B', 75),
('Charlie', 'A', 65),
('David', 'A', 70),
('Eve', 'B', 95),
('Frank', 'C', 88),
('Grace', 'C', 92),
('Hannah', 'B', 78),
('Ian', 'A', 85),
('Jill', 'C', 90);

select * from tb_student;

-- 1단계 : 클래스 별로 그룹화 시켜 보자
select id, class, avg(score) as averagescored
from tb_student
group by class;

-- 2단계 : 클래스 별로 그룹화된 결과 집합에서 필터 적용하기
-- having 절에 조건은 결과집이 먼저 생성된 후 기준으로 필터 조건을 설정해야 한다.!!!(주의)
select class, avg(score) as 평균
from tb_student
group by class
having 평균 >= 80;

-- 문제 ! 각 클래스에서 가장 높은 점수와 가장 낮은 점수를 찾아 보세요
select class, max(score) as 고득점, min(score) as 저득점
from tb_student
group by class
having 고득점 >= 93;
-- 만약 낮은 버전에 db 를 사용한다면 별칭의 컬럼은 적용되지 않을 수 있다.

CREATE TABLE tb_employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department VARCHAR(50) NOT NULL,
    salary INT NOT NULL
);

INSERT INTO tb_employees (name, department, salary) VALUES
('John Doe', 'Sales', 48000000),
('Jane Smith', 'Sales', 55000000),
('Alice Johnson', 'Marketing', 50000000),
('Chris Lee', 'Marketing', 45000000),
('Bob Brown', 'HR', 35000000),
('Patricia Pink', 'HR', 40000000),
('Michael White', 'Engineering', 75000000),
('Anna Black', 'Engineering', 65000000),
('Linda Green', 'Engineering', 72000000),
('James Red', 'Engineering', 68000000),
('Larry Blue', 'Sales', 52000000),
('Jessica Purple', 'Sales', 51000000),
('Amber Yelow', 'Marketing', 47000000),
('Peter Orange', 'HR', 43000000),
('Lisa Teal', 'HR', 39000000);


-- 문제 1
-- 각 부서별 평균 급여 계산 단! 소수점 제거해주세요
select department, round(avg(salary), 0)
from tb_employees
group by department;

-- 문제 2
-- 평균급여가 5000000 금액 이상인 부서를 찾아 주세요
select department, avg(salary)
from tb_employees
group by department
having avg(salary) >= 5000000;

-- 문제 3
-- 각 부서에서 가장 높은 급여를 받는 직원의 급여 금액 출력 해주세요
select department, name, max(salary)
from tb_employees
group by department;

-- 문제 4
-- 특정 부서에서 근무하는 직원 수가 3명 이상인 부서만 출력해 주세요
select department, count(*) as 부서인원수
from tb_employees
group by department
having 부서인원수 >= 3;

-- 문제 5
-- 각 부서별 평균 급여와 직원 수를 출력해주세요
select department, employee_id, avg(salary)
from tb_employees
group by department
having employee_id;

-- order by(asc, desc) 와 limit 그리고 offset
select id, name, class, score
from tb_student
where score > 80
order by score asc
limit 3;

select id, name, class, score
from tb_student
order by score desc
limit 3, 1;

select id, name, class, score
from tb_student
limit 6, 10;

select *
from employees
limit 20, 10;