--
-- Type decode
--
--decode函数
--null
select decode(null, null, null, null, null, null);
select decode(1, null, null, null, null, 'null');
select decode(null, null, null);
select decode(1, 'x', null);
select decode(1, 1, null);
select decode(1, '1', null);
select decode('1', '1', null);

--转int4，返回int4,text
select decode( 8, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20);
select decode( 8, 2, 3, 4, 5, 6, 7, 8, 'abc', 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20);
select decode( 8, 2, 3, 4, 5, 6, 7, 8, '012345', 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20);
select decode( 8, 2, 3, 4, 5, 6, 7, 8::int8, '012345', 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20);
select decode(8, 2, 3, 4, 5, 6, 7, '8'::text, '012345', 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20);
select decode( 8, 2, 3, 4, 5, 6, 7, '8'::CHAR(10), '012345', 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21);

select decode(8, 2, 3, 4, 5, 6, 7, '8'::numeric, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21);
select decode(8, 2, 3, 4, 5, 6, 7, '8'::FLOAT, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21);
select decode(8, 2, 3, 4, 5, 6, 7, '8'::FLOAT4, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21);
select decode(8, 2, 3, 4, 5, 6, 7, '8'::FLOAT8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21);

--转float
select decode( 0.001 , 'a', 'b', '0.001', 'd', 'e', 'f','g');
select decode( 0.001 , 'a', 'b', '0.0010', 'd', 'e', 'f');
select decode( 0.001 , 'a', 'b', '0.001', 'd', 'e', 'f','g');
select decode( 0.001 , 'a', 'b', '0.001'::FLOAT4, 'd', 'e', 'f','g');
select decode( 0.001 , 'a', 'b', '0.001'::FLOAT8, 'd', 'e', 'f','g');
select decode( 0.001 , 'a', 'b', '0.001'::NUMERIC, 'd', 'e', 'f','g');
select decode( 0.001 , 'a', 'b', '0.001'::text, 'd', 'e', 'f','g');
select decode( 0.001 , 'a', 'b', '0.001'::CHAR(10), 'd', 'e', 'f','g');
select decode( 0.001 , 'a', 'b', '0.001'::VARCHAR, 'd', 'e', 'f','g');

select decode( 0.001 , 'a', 'b', '10'::int4, 'd', 'e', 'f','g');
select decode( 0.001 , 'a', 'b', '10'::int8, 'd', 'e', 'f','g');

--转text
select decode( '0.001' , 'a', 'b', '0.001', 'd', 'e', 'f','g');
select decode( '0.001' , 'a', 'b', '0.0010', 'd', 'e', 'f');
select decode( '0.001' , 'a', 'b', '0.001', 'd', 'e', 'f','g');
select decode( '0.001' , 'a', 'b', '0.001'::FLOAT4, 'd', 'e', 'f','g');
select decode( '0.001' , 'a', 'b', '0.001'::FLOAT8, 'd', 'e', 'f','g');
select decode( '0.001' , 'a', 'b', '0.001'::NUMERIC, 'd', 'e', 'f','g');
select decode( '0.001' , 'a', 'b', '0.001'::CHAR(10), 'd', 'e', 'f','g');
select decode( '0.001' , 'a', 'b', '0.001'::VARCHAR, 'd', 'e', 'f','g');

select decode( '0.001' , 'a', 'b', '10'::int4, 'd', 'e', 'f','g');
select decode( '0.001' , 'a', 'b', '10'::int8, 'd', 'e', 'f','g');

--转varchar
select decode( '0.001'::VARCHAR, 'a', 'b', '0.001', 'd', 'e', 'f');
select decode( '0.001'::VARCHAR, 'a', 'b', '0.0010', 'd', 'e', 'f','g');
select decode( '0.001'::VARCHAR, 'a', 'b', '0.001'::FLOAT4, 'd', 'e', 'f','g');
select decode( '0.001'::VARCHAR, 'a', 'b', '0.001'::FLOAT8, 'd', 'e', 'f','g');
select decode( '0.001'::VARCHAR, 'a', 'b', '0.001'::NUMERIC, 'd', 'e', 'f','g');
select decode( '0.001'::VARCHAR, 'a', 'b', '0.001'::CHAR(10), 'd', 'e', 'f','g');
select decode( '0.001'::VARCHAR, 'a', 'b', '0.001'::text, 'd', 'e', 'f','g');

select decode( '10'::VARCHAR, 'a', 'b', '10'::int4, 'd', 'e', 'f','g');
select decode( '10'::VARCHAR, 'a', 'b', '10'::int8, 'd', 'e', 'f','g');

--转NUMERIC
select decode( '0.001'::VARCHAR, 'a', 'b', '0.001', 'd', 'e', 'f');
select decode( '0.001'::VARCHAR, 'a', 'b', '0.0010', 'd', 'e', 'f','g');
select decode( '0.001'::VARCHAR, 'a', 'b', '0.001'::FLOAT4, 'd', 'e', 'f','g');
select decode( '0.001'::VARCHAR, 'a', 'b', '0.001'::FLOAT8, 'd', 'e', 'f','g');
select decode( '10'::VARCHAR, 'a', 'b', '010'::VARCHAR, 'd', 'e', 'f','g');
select decode( '0.001'::VARCHAR, 'a', 'b', '0.001'::CHAR(10), 'd', 'e', 'f','g');
select decode( '0.001'::VARCHAR, 'a', 'b', '0.001'::text, 'd', 'e', 'f','g');

select decode( '10'::VARCHAR, 'a', 'b', '10'::int4, 'd', 'e', 'f','g');
select decode( '10'::VARCHAR, 'a', 'b', '10'::int8, 'd', 'e', 'f','g');

--转number
select decode( '0.001'::number, 'a', 'b', '0.001', 'd', 'e', 'f');
select decode( '0.001'::number, 'a', 'b', '0.0010', 'd', 'e', 'f','g');
select decode( '0.001'::number, 'a', 'b', '0.001'::FLOAT4, 'd', 'e', 'f','g');
select decode( '0.001'::number, 'a', 'b', '0.001'::FLOAT8, 'd', 'e', 'f','g');
select decode( '10'::number, 'a', 'b', '010'::VARCHAR, 'd', 'e', 'f','g');
select decode( '0.001'::number, 'a', 'b', '0.001'::CHAR(10), 'd', 'e', 'f','g');
select decode( '0.001'::number, 'a', 'b', '0.001'::text, 'd', 'e', 'f','g');
select decode( '0.001'::number, 'a', 'b', '0.001'::VARCHAR2, 'd', 'e', 'f','g');
select decode( '10'::number, 'a', 'b', '10'::int4, 'd', 'e', 'f','g');
select decode( '10'::number, 'a', 'b', '10'::int8, 'd', 'e', 'f','g');
select decode( '10'::number, 'a', 'b', '10.0'::NUMERIC, 'd', 'e', 'f','g');

--VARCHAR2
select decode( '0.001'::VARCHAR2 , 'a', 'b', '0.001', 'd', 'e', 'f','g');
select decode( '0.001'::VARCHAR2, 'a', 'b', '0.0010', 'd', 'e', 'f');
select decode( '0.001'::VARCHAR2, 'a', 'b', '0.001', 'd', 'e', 'f','g');
select decode( '0.001'::VARCHAR2, 'a', 'b', '0.001'::FLOAT4, 'd', 'e', 'f','g');
select decode( '0.001'::VARCHAR2, 'a', 'b', '0.001'::FLOAT8, 'd', 'e', 'f','g');
select decode( '10'::VARCHAR2, 'a', 'b', '010'::VARCHAR, 'd', 'e', 'f','g');
select decode( '0.001'::VARCHAR2, 'a', 'b', '0.001'::CHAR(10), 'd', 'e', 'f','g');
select decode( '0.001'::VARCHAR2, 'a', 'b', '0.001'::text, 'd', 'e', 'f','g');
select decode( '0.001'::VARCHAR2, 'a', 'b', '0.001'::NUMERIC, 'd', 'e', 'f','g');
select decode( '10'::VARCHAR2, 'a', 'b', '10'::int4, 'd', 'e', 'f','g');
select decode( '10'::VARCHAR2, 'a', 'b', '10'::int8, 'd', 'e', 'f','g');

select decode( 0.001 , 'a', 'b', '0.001'::VARCHAR2, 'd', 'e', 'f','g');
select decode( 8, 2, 3, 4, 5, 6, 7, '8'::VARCHAR2, '012345', 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21);
select decode( '0.001' , 'a', 'b', '0.001'::VARCHAR2, 'd', 'e', 'f','g');
select decode( '0.001'::VARCHAR, 'a', 'b', '0.001'::VARCHAR2, 'd', 'e', 'f','g');
select decode( '0.001'::VARCHAR, 'a', 'b', '0.001'::VARCHAR2, 'd', 'e', 'f','g');
select decode( '0.001'::number, 'a', 'b', '0.001'::VARCHAR2, 'd', 'e', 'f','g');

--各个类型返回
select decode( 8 , 'a', 'b', 'c', 'd',8, 'e'::text, 'f');
select decode( 8 , 'a', 'b', 'c', 'd',8, 'eeeeeeeeeee'::CHAR(10), 'f');
select decode( 8 , 'a', 'b', 'c', 'd',8, 'eeeeeeeeeeeeeeee'::VARCHAR2, 'f');
select decode( 8 , 'a', 'b', 'c', 'd',8, 'eeee'::VARCHAR, 'f');
select decode( 8 , 'a', 'b', 'c', 'd',8, '00110'::int2, 'f');
select decode( 8 , 'a', 'b', 'c', 'd',8, '00110'::int4, 'f');
select decode( 8 , 'a', 'b', 'c', 'd',8, '00110'::int8, 'f');
select decode( 8 , 'a', 'b', 'c', 'd',8, '00110'::NUMERIC, 'f');
select decode( 8 , 'a', 'b', 'c', 'd',8, '00110'::FLOAT4, 'f');
select decode( 8 , 'a', 'b', 'c', 'd',8, '00110'::FLOAT8, 'f');
select decode( 8 , 'a', 'b', 'c', 'd',8, '00110'::NUMBER, 'f');

--建表
create table decodetb(a int4,b int8,c int2,d numeric(20,3),e char(10),f varchar(200));
insert into decodetb (a,b,c,d,e,f) values (1,2,3,4,'6','60');
insert into decodetb (a,b,c,d,e,f) values (1,2,3,4,'7','70');
insert into decodetb (a,b,c,d,e,f) values (1,2,3,4,'8','80');

select decode(1,f,2,3) from decodetb;
select decode(1,a,2,3) from decodetb;
select decode(1,b,2,3) from decodetb;
select decode(1,c,2,3) from decodetb;
select decode(1,d,2,3) from decodetb;
select decode(1,f,2,3) from decodetb;

select decode(f,1,2,3) from decodetb;
select decode(a,1,2,3) from decodetb;
select decode(b,1,2,3) from decodetb;
select decode(c,1,2,3) from decodetb;
select decode(d,1,2,3) from decodetb;
select decode(e,1,2,3) from decodetb;
select decode(f,1,2,3) from decodetb;
select decode(e,1,2,3) from decodetb;

select decode(a, b, c, d, e, f) from decodetb;
select decode(e, e, e, e, e, e) from decodetb;
select decode(a, e, b, d, c, f) from decodetb;
select decode(f, e, f, a, b, c) from decodetb;
select decode(e, d, a, b, c, f) from decodetb;

insert into decodetb (a,b,c,d,e,f) values (1,2,3,4,'e','e');
insert into decodetb (a,b,c,d,e,f) values (1,2,3,4,'eee','eee');

select decode(a, b, c, d, e, f) from decodetb;
select decode(e, e, e, e, e, e) from decodetb;
select decode(a, e, b, d, c, f) from decodetb;
select decode(f, e, f, a, b, c) from decodetb;
select decode(e, d, a, b, c, f) from decodetb;

drop TABLE decodetb;
