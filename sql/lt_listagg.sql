DROP TABLE IF EXISTS lt_listagg_t;
create table lt_listagg_t (a int, b varchar(10));
insert into lt_listagg_t values (1, 'c');
insert into lt_listagg_t values (2, 'd');
insert into lt_listagg_t values (2, 'a');
insert into lt_listagg_t values (3, 'w');
insert into lt_listagg_t values (3, 'win10');
insert into lt_listagg_t values (3, 'win11');
insert into lt_listagg_t values (4, 'k');
insert into lt_listagg_t values (4, 'a');
insert into lt_listagg_t values (1, 'a');
insert into lt_listagg_t values (2, 'a');
insert into lt_listagg_t values (4, 'c');
insert into lt_listagg_t values (4, 'k');
insert into lt_listagg_t values (4, 'k');
insert into lt_listagg_t values (4, 'kitty');
insert into lt_listagg_t values (4, 'kitty');
insert into lt_listagg_t values (1, 'apple');
insert into lt_listagg_t values (2, 'apple');
insert into lt_listagg_t values (1, 'zip');
insert into lt_listagg_t values (2, 'zip');

SELECT LISTAGG(t.b, ',') FROM lt_listagg_t t;
SELECT LISTAGG(DISTINCT t.b, ',') FROM lt_listagg_t t;
SELECT LISTAGG(t.b, ',') FROM lt_listagg_t t GROUP BY t.a;

--WARNING 
--SELECT LISTAGG(t.b, ',') FROM lt_listagg_t t;
--Although the result is right, the order of the results is inconsistent
SELECT LISTAGG(t.b, ',') WITHIN GROUP (ORDER BY t.a) FROM lt_listagg_t t GROUP BY t.a;

SELECT LISTAGG(t.b, ',') WITHIN GROUP (ORDER BY t.b) FROM lt_listagg_t t GROUP BY t.a;
SELECT LISTAGG(DISTINCT t.b, ',') WITHIN GROUP (ORDER BY t.b) FROM lt_listagg_t t GROUP BY t.a;
SELECT LISTAGG(t.b, ',') WITHIN GROUP (ORDER BY t.a,t.b) FROM lt_listagg_t t GROUP BY t.a;
SELECT LISTAGG(t.b, ',') WITHIN GROUP (ORDER BY t.a,t.b desc) FROM lt_listagg_t t GROUP BY t.a;
SELECT LISTAGG(t.b, ',') FROM lt_listagg_t t GROUP BY t.b;
SELECT LISTAGG(t.b, ',') FROM lt_listagg_t t GROUP BY t.a,t.b;
SELECT LISTAGG(t.b, ',') WITHIN GROUP (ORDER BY t.a) FROM lt_listagg_t t GROUP BY t.a,t.b;
SELECT LISTAGG(t.b, ',') WITHIN GROUP (ORDER BY t.a,t.b desc) FROM lt_listagg_t t GROUP BY t.a,t.b;
SELECT t.a,LISTAGG(t.b, ',') FROM lt_listagg_t t GROUP BY t.a;
SELECT t.a,LISTAGG(t.b, ',') FROM lt_listagg_t t GROUP BY t.a,t.b;
SELECT t.a,LISTAGG(t.b, ',') WITHIN GROUP (ORDER BY t.b) FROM lt_listagg_t t GROUP BY t.a;
SELECT t.a,LISTAGG(t.b, ',') WITHIN GROUP (ORDER BY t.b DESC) FROM lt_listagg_t t GROUP BY t.a;
SELECT t.a,LISTAGG(t.b, ',') WITHIN GROUP (ORDER BY t.a) FROM lt_listagg_t t GROUP BY t.a,t.b;
SELECT t.a,LISTAGG(t.b, ',') WITHIN GROUP (ORDER BY t.b) FROM lt_listagg_t t GROUP BY t.a,t.b;
SELECT t.a,LISTAGG(t.b, ',') WITHIN GROUP (ORDER BY t.a,t.b) FROM lt_listagg_t t GROUP BY t.a,t.b;
SELECT t.a,LISTAGG(DISTINCT t.b, ',') WITHIN GROUP (ORDER BY t.b) FROM lt_listagg_t t GROUP BY t.a;
SELECT t.a,LISTAGG(DISTINCT t.b, ',') WITHIN GROUP (ORDER BY t.b DESC) FROM lt_listagg_t t GROUP BY t.a;
SELECT t.a,LISTAGG(DISTINCT t.b, ',') WITHIN GROUP (ORDER BY t.b) FROM lt_listagg_t t GROUP BY t.a ORDER BY t.a DESC;
SELECT t.a,LISTAGG(DISTINCT t.b, ',') WITHIN GROUP (ORDER BY t.b DESC) FROM lt_listagg_t t GROUP BY t.a ORDER BY t.a DESC;
SELECT t.a,LISTAGG(DISTINCT t.b, ',') WITHIN GROUP (ORDER BY t.b DESC) FROM lt_listagg_t t GROUP BY t.a,t.b ORDER BY t.a DESC;
SELECT t.a,LISTAGG(t.b, '<'||'>') FROM lt_listagg_t t GROUP BY t.a;

--error
--select a must group by a
SELECT t.a,LISTAGG(t.b, ',') FROM lt_listagg_t t;
--select a must group by a
SELECT t.a,LISTAGG(t.b, ',') FROM lt_listagg_t t GROUP BY t.b;
--listagg cannot exceed 2 Parameters
SELECT t.a,LISTAGG(t.b,t.a, ',') FROM lt_listagg_t t GROUP BY t.a;
--order by a not take effect
SELECT t.a,LISTAGG(t.b, ',') WITHIN GROUP (ORDER BY t.a desc) FROM lt_listagg_t t GROUP BY t.a;
--order by a not take effect
SELECT t.a,LISTAGG(t.b, ',') WITHIN GROUP (ORDER BY t.a,t.b desc) FROM lt_listagg_t t GROUP BY t.a;
--DISTINCT and ORDER BY need one-to-one correspondence
SELECT t.a,LISTAGG(DISTINCT t.b, ',') WITHIN GROUP (ORDER BY t.a,t.b DESC) FROM lt_listagg_t t GROUP BY t.a,t.b;

DROP TABLE IF EXISTS lt_listagg_t;