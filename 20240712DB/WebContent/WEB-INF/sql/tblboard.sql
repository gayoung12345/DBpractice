drop table tblboard;
create table tblboard (
	num number(4) primary key,
	name varchar2(10),
	pass varchar2(10),
	email varchar2(20),
	title varchar2(30),
	contents varchar2(100),
	writedate varchar2(20),
	readcount number(4)
);	
-- primary key 기본키(not null, 중복x, 타 테이블에 참조될 가능성이 있음)

CREATE SEQUENCE num_seq
  START WITH 1
  INCREMENT BY 1
  NOCYCLE;

insert into tblboard(num, name, pass, email)
	values (num_seq.nextval, '홍길동', '111', 'hong@email.com');

select * from TBLBOARD

