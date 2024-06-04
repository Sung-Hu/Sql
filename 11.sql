-- 멤버 테이블 설계 
-- unique 제약 설정 
create table member(
		id int primary key auto_increment,
    email varchar(50) unique, 
    phone varchar(20), 
    address varchar(100) not null
);

desc `member`;



INSERT INTO member (email, phone, address)
VALUES 
( 'hong@test.com', '010-1234-5678', '서울시 강남구'),
( 'kim@test.com', '010-2345-6789', '서울시 서초구'),
( 'lee@test.com', '010-3456-7890', '서울시 종로구'),
( 'park@test.com', '010-4567-8901', '서울시 마포구'),
( 'choi@test.com', '010-5678-9012', '서울시 강서구'),
( 'kang@test.com', '010-6789-0123', '서울시 송파구');
