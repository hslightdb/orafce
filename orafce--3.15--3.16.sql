drop FUNCTION if exists public.decode(anyelement, anyelement, text);
drop FUNCTION if exists public.decode(anyelement, anyelement, text, text);
drop FUNCTION if exists public.decode(anyelement, anyelement, text, anyelement, text);
drop FUNCTION if exists public.decode(anyelement, anyelement, text, anyelement, text, text);
drop FUNCTION if exists public.decode(anyelement, anyelement, text, anyelement, text, anyelement, text);
drop FUNCTION if exists public.decode(anyelement, anyelement, text, anyelement, text, anyelement, text, text);
drop FUNCTION if exists public.decode(anyelement, anyelement, bpchar);
drop FUNCTION if exists public.decode(anyelement, anyelement, bpchar, bpchar);
drop FUNCTION if exists public.decode(anyelement, anyelement, bpchar, anyelement, bpchar);
drop FUNCTION if exists public.decode(anyelement, anyelement, bpchar, anyelement, bpchar, bpchar);
drop FUNCTION if exists public.decode(anyelement, anyelement, bpchar, anyelement, bpchar, anyelement, bpchar);
drop FUNCTION if exists public.decode(anyelement, anyelement, bpchar, anyelement, bpchar, anyelement, bpchar, bpchar);
drop FUNCTION if exists public.decode(anyelement, anyelement, integer);
drop FUNCTION if exists public.decode(anyelement, anyelement, integer, integer);
drop FUNCTION if exists public.decode(anyelement, anyelement, integer, anyelement, integer);
drop FUNCTION if exists public.decode(anyelement, anyelement, integer, anyelement, integer, integer);
drop FUNCTION if exists public.decode(anyelement, anyelement, integer, anyelement, integer, anyelement, integer);
drop FUNCTION if exists public.decode(anyelement, anyelement, integer, anyelement, integer, anyelement, integer, integer);
drop FUNCTION if exists public.decode(anyelement, anyelement, bigint);
drop FUNCTION if exists public.decode(anyelement, anyelement, bigint, bigint);
drop FUNCTION if exists public.decode(anyelement, anyelement, bigint, anyelement, bigint);
drop FUNCTION if exists public.decode(anyelement, anyelement, bigint, anyelement, bigint, bigint);
drop FUNCTION if exists public.decode(anyelement, anyelement, bigint, anyelement, bigint, anyelement, bigint);
drop FUNCTION if exists public.decode(anyelement, anyelement, bigint, anyelement, bigint, anyelement, bigint, bigint);
drop FUNCTION if exists public.decode(anyelement, anyelement, numeric);
drop FUNCTION if exists public.decode(anyelement, anyelement, numeric, numeric);
drop FUNCTION if exists public.decode(anyelement, anyelement, numeric, anyelement, numeric);
drop FUNCTION if exists public.decode(anyelement, anyelement, numeric, anyelement, numeric, numeric);
drop FUNCTION if exists public.decode(anyelement, anyelement, numeric, anyelement, numeric, anyelement, numeric);
drop FUNCTION if exists public.decode(anyelement, anyelement, numeric, anyelement, numeric, anyelement, numeric, numeric);
drop FUNCTION if exists public.decode(anyelement, anyelement, date);
drop FUNCTION if exists public.decode(anyelement, anyelement, date, date);
drop FUNCTION if exists public.decode(anyelement, anyelement, date, anyelement, date);
drop FUNCTION if exists public.decode(anyelement, anyelement, date, anyelement, date, date);
drop FUNCTION if exists public.decode(anyelement, anyelement, date, anyelement, date, anyelement, date);
drop FUNCTION if exists public.decode(anyelement, anyelement, date, anyelement, date, anyelement, date, date);
drop FUNCTION if exists public.decode(anyelement, anyelement, time);
drop FUNCTION if exists public.decode(anyelement, anyelement, time, time);
drop FUNCTION if exists public.decode(anyelement, anyelement, time, anyelement, time);
drop FUNCTION if exists public.decode(anyelement, anyelement, time, anyelement, time, time);
drop FUNCTION if exists public.decode(anyelement, anyelement, time, anyelement, time, anyelement, time);
drop FUNCTION if exists public.decode(anyelement, anyelement, time, anyelement, time, anyelement, time, time);
drop FUNCTION if exists public.decode(anyelement, anyelement, timestamp);
drop FUNCTION if exists public.decode(anyelement, anyelement, timestamp, timestamp);
drop FUNCTION if exists public.decode(anyelement, anyelement, timestamp, anyelement, timestamp);
drop FUNCTION if exists public.decode(anyelement, anyelement, timestamp, anyelement, timestamp, timestamp);
drop FUNCTION if exists public.decode(anyelement, anyelement, timestamp, anyelement, timestamp, anyelement, timestamp);
drop FUNCTION if exists public.decode(anyelement, anyelement, timestamp, anyelement, timestamp, anyelement, timestamp, timestamp);
drop FUNCTION if exists public.decode(anyelement, anyelement, timestamptz);
drop FUNCTION if exists public.decode(anyelement, anyelement, timestamptz, timestamptz);
drop FUNCTION if exists public.decode(anyelement, anyelement, timestamptz, anyelement, timestamptz);
drop FUNCTION if exists public.decode(anyelement, anyelement, timestamptz, anyelement, timestamptz, timestamptz);
drop FUNCTION if exists public.decode(anyelement, anyelement, timestamptz, anyelement, timestamptz, anyelement, timestamptz);
drop FUNCTION if exists public.decode(anyelement, anyelement, timestamptz, anyelement, timestamptz, anyelement, timestamptz, timestamptz);

CREATE OR REPLACE FUNCTION public.decode("any", "any", numeric)
RETURNS numeric
AS 'MODULE_PATHNAME', 'ora_decode2'
LANGUAGE C IMMUTABLE;

CREATE OR REPLACE FUNCTION public.decode("any", "any", numeric, variadic "any")
RETURNS numeric
AS 'MODULE_PATHNAME', 'ora_decode2'
LANGUAGE C IMMUTABLE;

CREATE OR REPLACE FUNCTION public.decode("any", "any", text)
RETURNS text
AS 'MODULE_PATHNAME', 'ora_decode2'
LANGUAGE C IMMUTABLE;

CREATE OR REPLACE FUNCTION public.decode("any", "any", text, variadic "any")
RETURNS text
AS 'MODULE_PATHNAME', 'ora_decode2'
LANGUAGE C IMMUTABLE;

CREATE OR REPLACE FUNCTION public.decode("any", "any", date)
RETURNS date
AS 'MODULE_PATHNAME', 'ora_decode2'
LANGUAGE C IMMUTABLE;

CREATE OR REPLACE FUNCTION public.decode("any", "any", date, variadic "any")
RETURNS date
AS 'MODULE_PATHNAME', 'ora_decode2'
LANGUAGE C IMMUTABLE;

CREATE OR REPLACE FUNCTION public.decode("any", "any", time)
RETURNS time
AS 'MODULE_PATHNAME', 'ora_decode2'
LANGUAGE C IMMUTABLE;

CREATE OR REPLACE FUNCTION public.decode("any", "any", time, variadic "any")
RETURNS time
AS 'MODULE_PATHNAME', 'ora_decode2'
LANGUAGE C IMMUTABLE;

CREATE OR REPLACE FUNCTION public.decode("any", "any", timestamp)
RETURNS timestamp
AS 'MODULE_PATHNAME', 'ora_decode2'
LANGUAGE C IMMUTABLE;

CREATE OR REPLACE FUNCTION public.decode("any", "any", timestamp, variadic "any")
RETURNS timestamp
AS 'MODULE_PATHNAME', 'ora_decode2'
LANGUAGE C IMMUTABLE;

CREATE OR REPLACE FUNCTION public.decode("any", "any", timestamptz)
RETURNS timestamptz
AS 'MODULE_PATHNAME', 'ora_decode2'
LANGUAGE C IMMUTABLE;

CREATE OR REPLACE FUNCTION public.decode("any", "any", timestamptz, variadic "any")
RETURNS timestamptz
AS 'MODULE_PATHNAME', 'ora_decode2'
LANGUAGE C IMMUTABLE;