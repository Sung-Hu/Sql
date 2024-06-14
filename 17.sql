create table tb_student(
	no int not null primary key,
    name varchar(20) not null, 
    gender enum('F', 'M') not null, 
    grade char(1),
    foreign key(grade) references tb_grade(grade)
);

create table tb_grade(
	grade char(1) primary key,
    socore int
);

select * from tb_grade;
-- 테이블은 정보에 최소 단위 이다.
insert into tb_grade values ('A', 100);
insert into tb_grade values ('B', 80);
insert into tb_grade values ('C', 60);
insert into tb_grade values ('D', 40);
insert into tb_grade values ('E', 20);
insert into tb_grade values ('F', 0);

-- 오류 발생 아래에서 스키마 추가 
-- insert into tb_student(no, name, gender, grade, age) values('100', '길동', 'F', 25, 'B');
-- 스키마 구조 변경이 필요하다. 
alter table tb_student add age int;
select * from tb_student;

insert into tb_student(no, name, gender, grade, age) 
				     values('100', '길동', 'F', 'A', 35);
				
insert into tb_student(no, name, gender, grade, age) 
				     values('200', '둘리', 'M', 'B', 25);
                     
 insert into tb_student(no, name, gender, grade, age) 
 values('300', '마이콜', 'F', 'B', 15);
 
 insert into tb_student(no, name, gender, grade, age) 
 values('400', '야스오', 'M', 'C', 25);
 
 insert into tb_student(no, name, gender, grade, age) 
 values('500', '티모', 'F', 'E', 25);
 
 
 -- JOIN 연산에 ON 절 사용 안해보기 !!! 
-- 크로스 조인이 된다. !!! 
select * 
from tb_student
join tb_grade;

select * 
from tb_grade
join tb_student; 


-- 조인연산은 가능한 ON 절과 함께 사용하자. 
-- JOIN --> INNER JOIN,  OUTER JOIN 
-- INNNER JOIN --> join 

-- 1 단계
select * 
from tb_student
join tb_grade on tb_student.grade = tb_grade.grade;

-- 2 단계 (필요한 부분만 가져오기) 
select s.no, s.name, s.grade, s.age, g.socore 
from tb_student as s 
join tb_grade as g 
on s.grade = g.grade; 


-- 1 단계 
select * 
from tb_student as s  
left join tb_grade as g 
on s.grade = g.grade;

-- 2 단계 
select * 
from tb_grade as g 
left join tb_student as s 
on g.grade = s.grade;


-- LEFT OUTER JOIN 
-- 1 단계 
select * 
from tb_student as s  
left join tb_grade as g 
on s.grade = g.grade;

-- 2 단계 
select * 
from tb_grade as g 
left join tb_student as s 
on g.grade = s.grade;

desc tb_student; 

-- RIGHT OUTER JOIN 
select * 
from tb_student as s 
right join tb_grade as g 
on s.grade = g.grade; 
 