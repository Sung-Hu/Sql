
-- 데이터 베이스 생성
create database shopdb;

-- 데이터 베이스 사용 선언
use shopdb;

-- 주석(한줄 주석)

/*
여러줄 주석
*/

-- 테이블생성
create table tb_member(
memberID char(8) not null primary key,
memberName char(5) not null,
memberAddress char(20)
);

-- 테이블 구조 확인 명령어
desc tb_member;

-- 테이블 조회 명령어(DML - Data Manipulation Language) : 데이터 조작 언어
select *from tb_member;
select memberID, memberName from tb_member;

-- 혹시나 테이블을 잘못 만들었다면 테이블 제거 명령어를 배워 보자.
-- drop, update, delete 명령어는 주석을 해 두는 습관을 가지자!
-- drop table tb_member;

-- C R U D

-- 데이터를 입력하는 SQL ( insert ) 라고 부른다
-- insert into tb_member() values(); -기본 형태
insert into tb_member(memberID, memberName, memberAddress) 
values('M000001', '홍길동', '서울특별시강남구역삼동123-456');

select * from tb_member;

insert into tb_member(memberID, memberName, memberAddress)
values('M000002', '김철수', '서울특별시송파구잠실동789-123');

insert into tb_member(memberID, memberName, memberAddress)
values('M000003', '이영희', '부산광역시수영구광안동456-789');

/* 한번에 표기하는 방법
INSERT INTO tb_member (memberID, memberName, memberAddress) VALUES
	('M000001', '홍길동', '서울특별시강남구역삼동123-456'),
	('M000002', '김철수', '서울특별시송파구잠실동789-123'),
	('M000003', '이영희', '부산광역시수영구광안동456-789');
    values는 쉼표로 여러개를 쓸수있다
*/

-- 모든 회원 조회
SELECT * FROM tb_member;

-- 이름이 '홍길동'인 회원 조회
SELECT * FROM tb_member WHERE memberName = '홍길동';

-- 주소가 '서울특별시'인 회원 조회
SELECT * FROM tb_member WHERE memberAddress LIKE '서울특별시%';
