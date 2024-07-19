create table tblmember(
	id varchar2(10) not null primary key,
	pass varchar2(10) not null,
	name varchar2(20) not null,
	juminnum1 char(6) not null,
	juminnum2 char(7) not null,
	zip char(7),
	address1 varchar2(30),
	address2 varchar2(40),
	phone varchar2(20),
	email varchar2(30)
);

INSERT INTO tblmember (id, pass, name, juminnum1, juminnum2)
VALUES ('1', '1', 'ȫ�浿', '991225', '1671413');

select * from tblmember;