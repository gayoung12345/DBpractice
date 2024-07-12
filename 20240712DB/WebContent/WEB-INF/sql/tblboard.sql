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
-- primary key �⺻Ű(not null, �ߺ�x, Ÿ ���̺� ������ ���ɼ��� ����)

CREATE SEQUENCE num_seq
  START WITH 1
  INCREMENT BY 1
  NOCYCLE;

insert into tblboard(num, name, pass, email)
	values (num_seq.nextval, 'ȫ�浿', '111', 'hong@email.com');

select * from TBLBOARD

