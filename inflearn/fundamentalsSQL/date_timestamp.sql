select to_date('2022-01-01', 'yyyy-mm-dd') - 2 as d1;

select to_timestamp('2022-01-01 14:36:52', 'yyyy-mm-dd hh24:mi:ss') + interval '7 hour' t2;

with 
t1 as (
select empno, ename, hiredate, now(), current_timestamp, current_date, current_time
   , date_trunc('second', now()) as now_trunc
   , now() - hiredate as 근속기간
from hr.emp
)
select empno, ename, hiredate, now() - hiredate as 근속기간
   , date_part('year', 근속기간)
   , justify_interval(근속기간)
   , age(hiredate)
   , date_part('year', justify_interval(근속기간))
   , date_part('year', justify_interval(근속기간))||'년 '||date_part('month', justify_interval(근속기간))||'월' as 근속년월
   , date_part('year', age(hiredate))||'년 '||date_part('month', age(hiredate))||'월' as 근속년월_01 
from t1;


--trunc 버리다
select date_trunc('day', '2022-03-03'::date)::date as d1;
select date_trunc('year', '2022-03-03'::date)::date as d2;

create table hr.emp_test
as
select e.*, hiredate + current_time as hiretime
from hr.emp e;

select date_trunc('month', hiredate) from hr.emp_test
order by 1;

select floor(sal/1000)*1000 as s_range, count(*) as cnt, sum(sal)
from hr.emp 
group by floor(sal/1000)*1000
order by 1;

-- else null
select sum(case when job = 'SALESMAN' then sal end)
