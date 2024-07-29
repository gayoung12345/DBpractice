create table memberT (
    mem_uid varchar2(15) primary key,
    mem_pwd varchar2(15) not null,
    mem_name varchar2(10) not null,
    mem_email varchar2(50),
    mem_regdate date,
    mem_addr varchar2(100)
    );
    
desc memberT;   --구조보기
select * from memberT;   --내용보기

insert into memberT(mem_uid, mem_pwd, mem_name, mem_email)
values('100','111','홍길동','hong@han.com');
insert into memberT(mem_uid, mem_pwd, mem_name, mem_email)
values('1001','222','홍길동','hong@han.com');

