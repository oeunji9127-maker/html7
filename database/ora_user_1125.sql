--ddl 테이블생성,수정,삭제할때 명령어

--테이블 생성
create table member(
id varchar2(100) primary key,
pw varchar2(100),
name varchar2(50)
);


--dml 테이블안에 데이터를 추가,수정,삭제,검색할때 명령어
--테이블에 데이터를 추가 - insert
insert into member (id,pw,name) values(
'aaa','1111','홍길동'
);
insert into member (id,pw,name) values(
'bbb','2222','유관순'
);
insert into member (id,pw,name) values(
'ccc','3333','이순신'
);

insert into member (id,pw,name) values(
'ddd','4444','김구'
);

insert into member(id,pw,name) values(
'eee','5555','강감찬'
);

insert into member(id,pw,name) values(
'fff','6666','김유신');
insert into member(id,pw,name) values(
'ggg','7777','오은지');
commit;

--삭제
delete member where id='aaa';
rollback;
select id,pw,name from member;
select id,pw,name from member;

--임시저장만됨

--commit: 저장완료

--테이블의 데이터 검색 -select
select id,pw,name from member;

--테이블 데이터 수정
update member set pw='7777' where id 'aaa';

--테이블 타입확인
desc member;

select id,pw,name from member;

select emp_name,salary,commission_pct from employees;

select emp_name,
salary,
salary+salary*commission_pct as real_salary
from employees;



create table members(
name varchar2(50),
id varchar2(100),
pw number(15),
e_mail varchar2(100),
address varchar2(100),
phone_number varchar2(50),
birth date
);
select * from members;


create table uni_stu(
stuno char(5),
name varchar2(20),
major_code varchar2(30),
major_name varchar2(30),
major_date date,
college varchar2(30)
);
rollback;
insert into uni_stu values(
's0001','홍길동','com','정보통신공학과','2000/02/02','공과대학'
);
insert into uni_stu values(
's0002','은지짱','com','정보통신공학과','2000/02/02','공과대학'
);insert into uni_stu values(
's0003','선덕여왕','com','정보통신공학과','2000/02/02','공과대학'
);insert into uni_stu values(
's0004','김유신','com','정보통신공학과','2000/02/02','공과대학'
);insert into uni_stu values(
's0005','이순신','com','정보통신공학과','2000/02/02','공과대학'
);insert into uni_stu values(
's0006','유관순','math','수학공학과','2000/02/02','자연과학대학'
);

select * from uni_stu;

alter table uni_stu drop column major_code;
alter table uni_stu drop column major_name;
alter table uni_stu drop column major_date;
alter table uni_stu drop column college
;


create table seoul_grade(
stuno char(5),
grade number(1),
grade_no number(2),
class_no number(2));

insert into seoul_grade values(
's0001',1,1,1);
insert into seoul_grade values(
's0001',2,2,2);
insert into seoul_grade values(
's0001',3,3,3);

select * from seoul_grade;
commit;

create table seoul_stu (
stuno char(5), -- s0001
name varchar2(100),
birth date,
phone char(13),
address varchar2(50),
enroll_date date,
write_date date
);
insert into seoul_stu values(
's0001','홍길동','2000-01-01','010-1111-1111','서울',sysdate,sysdate
);
drop table seoul_stu;

create table seoul_grade (
stuno char(5),
grade number(1), -- 1개일때 검색이 어려움.
grade_no number(2), -- 학반
class_no number(3) -- 반번호
);
insert into seoul_grade values(
's0001',1,1,1
);
insert into seoul_grade values(
's0001',2,2,2
);
insert into seoul_grade values(
's0001',3,3,3
);

select * from seoul_grade;
select * from seoul_stu;

select seoul_stu.stuno,name,birth,phone,address,enroll_date,write_date 
grade,grade_no,class_no
from seoul_stu,seoul_grade;

--------------------------------------------

select employee_id,emp_name,salary from employees where salary<=4000;

--입사일
select employee_id,emp_name,hire_date from employees where hire_date>='2005/01/01';
select employee_id,emp_name,hire_date,hire_date+100 
from employees where hire_date>='2005/01/01';

select employee_id,emp_name,department_id,hire_date from employees 
where hire_date between '2005/01/01' and '2007/12/31';



