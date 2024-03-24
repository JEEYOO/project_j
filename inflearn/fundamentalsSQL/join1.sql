
select e.*, d.dname
from hr.emp e 
  join hr.dept d on e.deptno = d.deptno;
where e.job = 'SALESMAN'

  

select * from hr.emp_salary_hist;  



select a.dname, b.empno, b.ename, b.job, c.fromdate, c.todate, c.sal
from hr.dept a
  join hr.emp b on a.deptno = b.deptno
  join hr.emp_salary_hist c on b.empno = c.empno   
where a.dname in ('SALES', 'RESEARCH')
