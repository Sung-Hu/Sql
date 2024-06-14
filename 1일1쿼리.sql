-- 1일 1쿼리
select * from departments; -- dept_no, dept_name (부서번호, 부서명)
select * from dept_emp; -- emp_no , dept_no, from_date, to_date (사원번호, 부서번호,입사일 ,퇴직 or 재직)
select * from dept_manager; -- dept_no, emp_no, from_date, to_date(부서번호, 사원번호,입사일 ,퇴직 or 재직) <--매니저
select * from employees; -- emp_no, birth_datam, first_name, last_name, gender, hire_date(사원번호,생일,중간이름,끝이름(성),성별,입사일자)
select * from salaries; -- emp_no,salary, from_date, to_date(사원번호, 연봉, 연봉시작, 연봉 끝)
select * from titles; -- emp_no, title, from_datetitletitle, to_date(사원번호, 직급, 입사일, 퇴직 ro 재직)

-- 6월 5일------------------------------------------------------------------------------------------------------

-- 1조 문제 
-- 전직원 2000년도의 연봉을 출력하세요(출력 예시 :  id , firstname, lastname,slalary)
select e.emp_no, s.salary , e.first_name, e.last_name
from employees as e
left join salaries as s
on e.emp_no = s.emp_no
where s.from_date >= '2000-01-01' and s.from_date < '2001-01-01'; 


-- 'd004'  부서의 남자직원의 이름을 출력하세요 (출력예시 : firstname , M , 'd004' )
select e.first_name, e.gender, d.dept_no
from employees as e
join departments as d
where dept_no = 'd004' and e.gender = 'M';

-- 2조 문제
-- 각 직원의 정보를 확인하기 (직원번호, 생년월일, 이름, 성,부서번호, 부서명, 직업명)
select e.emp_no, e.birth_date, e.first_name, e.last_name, d.dept_no, d.dept_name
from employees as e
join departments as d
where emp_no;
-- 1990년 이상 입사자 이름과 급여 부서 직책
select e.first_name, s.salary, t.from_date, t.title
from employees as e
join titles as t on e.emp_no = t.emp_no
join salaries as s on s.emp_no = t.emp_no
where t.from_date >= '1990.01.01';
-- 3조 문제
-- dept_emp 와 employees 테이블 에 모든 데이터를  emp_no를 기준으로 조인하여 조회
-- 단(employees의 birth_date가 '05'를 포함하고,성별은 '남성'일 경우)
-- 모든 마케팅 부서 직원의 이름을 조회

-- 4조 문제 
-- 아직 재직중인 사람의 이름과 성 직급 입사일자를 출력해 보자.
-- 부서 매니저들의 평균 연봉을 추출해 보자.

-- 5조 문제 
-- 문제1.  
-- 부서 매니저의 연봉이 100,000 달러 이상인 사람 확인하시오 (출력예시 : 사원번호,입사날짜,연봉) 
select d.emp_no, d.from_date, s.salary
from dept_manager as d
join salaries as s
on d.emp_no = s.emp_no
where s.salary > 100000;

-- 문제2. 
-- 8월 15일에 고용한 직원들에게 태극기를 지급하기로 했다. 사원 번호, 고용 날짜와 last_name을 조회하시오

 
-- 6조 문제 
-- 문제 1. 현재  재직중인 사람중 입사일이 1991-10-10 인 사람의 부서를 찾아주세요
-- 문제 2. 시니어 엔지니어의 월급중 6만달러가 넘는 사람이 몇명인지 찾아주세요.



-- 6월 7일-------------------------------------------------------------------------------------------------

-- 1조
-- 문제 1 매니저들의 최고 급여를 추출하세요.
-- 문제 2 퇴사자와 재직자를 구분 하며 퇴사자의 경우 재지년수를 출력하세요
-- (출력예시 = first_name, last_name, 근무상태(재직중 or 퇴사자경우 근무연수))

-- 2조
-- 문제 1 : 직원의 이름, 근무연수, 부서를 출력하시오.
-- 단 , 직원의 이름은 퍼스트네임, 라스트네임을 합쳐쳐서 표에 나타내고 근무연수는 35년 이상 직원의 직원들만 포함시키시오. 
-- 문제 2 부서 이름과 그 부서에 현재근무하는 직원에 정보를 출력 하세요 


-- 3조 
-- 문제 1 부서별 인원과 그 부서별 평균 급여를 출력하세요.
-- 문제 2 
-- salaries테이블의 salary(연봉)을 월급으로 나누고(환율1365)
-- dept_name, dept_no, emp_no, from_date,to_date 조회하시오(조인필요)
-- 단 (from,to _date)는 salary의 테이블, 월급은 1,000,000 이상부터 나머지는 테이블 관계 X

-- 4조
-- 1. 회사 CEO가 근속 20년이 넘은 직원들을 대상으로 14일의 안식 휴가와 감사패를 
--    지급하기로 결정했습니다. 해당하는 직원들의 근속 년수와 풀네임을(한 컬럼) 출력하시오.
-- 2. 재직 중인 사람의 이름과 년차수를 출력 하세요

-- 5조 
-- 문제 1  first_name의 두 번째 알파벳이 a인 직원의 평균연봉을 구하세요.
-- 문제 2 각 부서별 직원의 수와 평균 연봉을 구하세요.
-- 표시 예시(title, '직원수' ,avg)


-- 6조 
-- 1. 마케팅부 30년차 근로자들 중 연봉이 80000 이상이면 O 아니면 X로 표기하세요.
--    이름(first_name + last_name), 년차, 연봉, 체크(O,X) 로 표시
-- 2. 현재 근무중인 근로자들의 직급(title)별 평균연봉을 나타내세요
--    직급, 평균연봉(소수점 제외) 로 표시

-- 6월 10일
-- 1조 
-- 재직중인 사원들 중 평균 연봉이 가장 큰 3명의 first_name, 평균 연봉(소숫점 제거),부서, 근무 년수 을 추출하시오.

-- 전직원에게 생일 상여금 지급 하기로 하였다. 월별 지급해야할 인원수를 구하세요(퇴사자 제외 || 출력예시 월, 인원수)

-- 2조
-- 부서별 평균급여계산 후 60000보다 높으면 'High' 낮으면 'Low' (부서, 부서평균, 급여수준 ('High' or 'Low')) 부서평균은 내림차순, 소수점 제거 해라
-- 각 부서의 이름과 총 인원수를 출력하시오

-- 3조
-- 문제 1. 직원들 개인의 입사 이후 현재까지의 평균 연봉을 구해서 80000이 넘는 사람들만 출력하라. (내림차순으로 상위 100명만)
-- 출력 예시 (emp_no, last_name, avg)

-- 문제 2
-- 전체 평균 급여를 소수점 제외 도출하고 급여가 평균을 넘는 사원의 이름을 출력하세요.

-- 4조 
-- 각 부서별 인원을 체크 하고 재직 인원이 제일 적은 순서로 부서를 세개 출력하시오

-- 각 부서의 남자 막내 사원들을 대상으로 워크숍이 예정되어 있습니다. 참석 여부를 조사하기 위해
-- 대상자를 구분하여 부서번호, 사번, 입사일, 성, 이름을 출력하시오.


-- 5조 
-- 문제1. Engineer에서 Senior Engineer로 승진했던 직원의 직원 번호와 first_name last_name을 합친 이름을 출력하시오
-- 문제2. 근무하는 직원이 50000명 이상인 부서와 그 부서의 직원 수를 출력하세요.


-- 6조 
-- 마케팅 부서의 직원들을 입사 순서대로 오름차순 정렬하세요.
-- 출력해야 할 것: 직원의 이름, 고용일, 부서
-- 근무기간이 30년이상인 Staff 직원들중에서 emp_no낮은순서부터 200명 중에서 가장 오래된 근무년수는?



select * from employees;