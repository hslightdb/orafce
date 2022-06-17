-- 2) fails and throws error: 'ERROR:  could not determine polymorphic type 
-- because input has type "unknown"'
select decode('2012-01-01', '2012-01-01', 23, '2012-01-02', 24);

-- orafce test
select rpad(1.0::numeric, 1, '1');
create function tf9(char) returns text as $$ select 'char' $$ language sql;
select tf9(1.1);
create function tf9(varchar) returns text as $$ select 'varchar' $$ language sql;
select tf9(1.1);
create function tf9(text) returns text as $$ select 'text' $$ language sql;
select tf9(1.1);

-- numeric have implict cast to varchar2 and nvarchar2
create function tf9(nvarchar2) returns text as $$ select 'nvarchar2' $$ language sql;
select tf9(1.1);
create function tf9(varchar2) returns text as $$ select 'varchar2' $$ language sql;
select tf9(1.1);