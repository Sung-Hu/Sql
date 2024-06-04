create database db_movie;
use db_movie;

create table movie (
    id int primary key auto_increment,
    title varchar(10) not null,
    director varchar(10),
    release_date date not null,
    genre varchar(10),
    rating double
);


select * from movie;

insert into movie (title,director,release_date,genre,rating)
values
('괴물', '봉준호', '2006-07-27', '드라마', 8.28),
('극한직업', '이병헌', '2019-01-23', '코미디', 9.20),
('명량', '김한민', '2014-07-30', '사극', 9.17),
('신과함께-죄와 벌', '김용화', '2017-12-20', '판타지', 7.56),
('밀양', '임권택', '2016-09-07', '드라마', 7.76),
('반도', '연상호', '2020-07-15', '액션', 6.71),
('베테랑', '류승원', '2015-08-05', '액션', 8.49),
('변호인', '양우석', '2013-12-18', '드라마', 8.41),
('군함도', '류승원', '2017-07-26', '사극', 8.01),
('암살', '최도운', '2015-07-22', '액션', 8.37);