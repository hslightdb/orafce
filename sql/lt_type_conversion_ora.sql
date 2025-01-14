--
-- Type Conversion testcase
--
--开关

set lightdb_enable_type_compatibility=on;

--运算符

select  4+'abc'::VARCHAR2 AS "4+abc= "; 
select  4+'010'::VARCHAR2 AS "4+10= "; 

--转text
SELECT '01'::VARCHAR2 = '1'  as "1 = '1' ";


--转float
SELECT '1.0'::VARCHAR2 = 1.0 as "'1' = 1 ";


CREATE TABLE testtb (name text, age int,a int2,wage int8, grade FLOAT4,b FLOAT8,c FLOAT,numb NUMBER,d VARCHAR2,e VARCHAR,f CHAR(10));

insert into testtb values ('abcd', 100,110,280000,0.01,22000.0001,32.01,4101, '2021-1-1','0101','010');
insert into testtb values ('ab', 1000,110,210000,1.01,22000.0001,31.01,4100, '2021-10-1','0201','010');
insert into testtb values ('abc', 1000,110,2000,1.01,20.001,31.01,4100, '2021-12-1','0301','010');
insert into testtb values ('恒生', 1000,110,80000,0.01,20.001,32.01,4100, '2021-11-1','0102','010');
insert into testtb values ('abcd', 120,110,88000,0.01,22000.0001,30.01,4101, '2021-10-1','0303','010');

SELECT name = 'abc'::VARCHAR2 FROM testtb;

SELECT age = '1000'::VARCHAR2 FROM testtb;

SELECT a = '1000'::VARCHAR2 FROM testtb;

SELECT wage = '1000'::VARCHAR2 FROM testtb;

SELECT grade = '1000'::VARCHAR2 FROM testtb;

SELECT b = '1000'::VARCHAR2 FROM testtb;

SELECT c = '1000'::VARCHAR2 FROM testtb;

SELECT numb = '1000'::VARCHAR2 FROM testtb;

SELECT d = '1000'::VARCHAR2 FROM testtb;

SELECT e = '1000'::VARCHAR2 FROM testtb;

SELECT f = '1000'::VARCHAR2 FROM testtb;

drop TABLE testtb;

--新建表，插入表

CREATE TABLE testtb2 (name text, age int4, grade FLOAT8,wage int8,LEV CHAR(10),num numeric,numb NUMBER,d VARCHAR2,e VARCHAR,f CHAR(10));

--int4转为varchar2
insert into testtb2 (name,age,grade,wage,LEV,num,numb,d,e,f) values (10.0001,'0010','60.09',2000,10,10.10,1000,010102::int4,'test',111100000);
--FLOAT转为varchar2
insert into testtb2 (name,age,grade,wage,LEV,num,numb,d,e,f) values (10.0001,'0010','60.09',2000,10.001,10.10,0.10,010102::FLOAT4,'test',111100000);
--text转varchar2
insert into testtb2 (name,age,grade,wage,LEV,num,numb,d,e,f) values (10.0001,'0010','60.09',2000,10.001,'010','0101',010102::text,'test',111100000);
--NUMBER转varchar2
insert into testtb2 (name,age,grade,wage,LEV,num,numb,d,e,f) values (10.0001,'0010','60.09',2000,10.001,'010','0101',010102::varchar,'test',111100000);
--char转varchar2
insert into testtb2 (name,age,grade,wage,LEV,num,numb,d,e,f) values (10.0001,'0010','60.09',2000,10.001,'010','0101',010102::char(10),'test',111100000);

select * from testtb2;

UPDATE testtb2 SET name=100::VARCHAR2;

UPDATE testtb2 SET age=110::VARCHAR2;

UPDATE testtb2 SET grade=120::VARCHAR2;

UPDATE testtb2 SET LEV=130::VARCHAR2;

UPDATE testtb2 SET num=140::VARCHAR2;

UPDATE testtb2 SET numb=130::VARCHAR2;

UPDATE testtb2 SET d=140::VARCHAR2;

UPDATE testtb2 SET e=140::VARCHAR2;

UPDATE testtb2 SET f=140::VARCHAR2;

select * from testtb2;

drop TABLE testtb2;

