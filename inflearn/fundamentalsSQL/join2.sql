select *
from nw.customers cust
join nw.orders ord on cust.customer_id = ord.customer_id
where cust.contact_name = 'Antonio Moreno'
and ord.order_date between to_date('19970101', 'yyyymmdd') and to_date('19971231', 'yyyymmdd');
-- to_date function


select count(*) --c.customer_id, c.contact_name, o.order_id, o.customer_id 
from nw.customers c
   --left outer join nw.orders o on c.customer_id = o.customer_id
   join nw.orders o on c.customer_id = o.customer_id 


-- coalsece(빈 값), ||
select c.customer_id, c.contact_name, coalesce(o.order_id, 0) as order_id, e.first_name ||' '||e.last_name as employee_name, s.company_name as shipper_name
from nw.customers c
   left join nw.orders o on c.customer_id = o.customer_id 
   left join nw.employees e on o.employee_id = e.employee_id 
   left join nw.shippers s on o.ship_via = s.shipper_id 
where c.city = 'Madrid';


-- 해당 급여를 가졌던 시작 시점에서의 부서번호도 함께 가져올 것
SELECT s.*, d.*
FROM hr.emp_salary_hist s
   JOIN hr.emp_dept_hist d ON s.empno = d.empno
WHERE s.FROMdate BETWEEN d.fromdate AND d.todate;

