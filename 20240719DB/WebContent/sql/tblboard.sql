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

create sequence num_seq
 increment by 1
 start with 1
 nocycle;
 
 insert into tblboard(num,name,pass,email)
   values(num_seq.nextval, '홍길동','111','hong@itcom.kr' );
 insert into tblboard(num,name,pass,email)
   values(num_seq.nextval, '홍길동','111','hong@itcom.kr' );
   
 select * from tblboard;
 
 -- listboard 페이지 나누기 할때 (테이블의 구조변경)----
 
 alter table tblboard 
 rename column num to numseq;
 
 alter table tblboard
 add (num number(4));
 
 select * from tblboard;
 delete from tblboard;
 
  insert into tblboard(numseq,name,pass,email,num)
   values(num_seq.nextval, '홍길동','111','hong@itcom.kr',1 );
 
 select max(num) from tblboard;
 
 
 
 
 
 
 