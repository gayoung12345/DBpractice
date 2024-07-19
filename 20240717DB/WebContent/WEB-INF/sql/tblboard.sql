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

-- listboard ������ ������ �Ҷ� --

alter table tblboard 
rename column num to numseq; -- num�� numseq�� �ٲٱ�

alter table tblboard
add (num number(4)); -- num�̶�� �� �߰�

select * from tblboard;

delete from tblboard;

insert into tblboard(numseq, name, pass, email, num)
values(num_seq.nextval, 'ȫ�浿', '111', 'hong@itcom.kr', 1);

select max(num) from tblboard;
