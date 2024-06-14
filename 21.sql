select * from dept_emp;

select *, count(emp_no) as '부서별 직원수'
 from dept_emp
group by dept_no;

select * from employees;

-- first_name 에 끝 3글자 까지만 결과 집합으로 출력하세요

select substring(first_name, 2, 2) as '이름' from employees;

select right(upper(first_name), 3) as '이름' from employees;

-- 직원들의 나이를 구하시오.
select last_name , DATEDIFF(CURRENT_DATE(), birth_date) / 365 as '나이'
from employees;

