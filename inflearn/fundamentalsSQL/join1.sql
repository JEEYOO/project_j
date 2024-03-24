select e.*, d.dname
from hr.emp e 
  join hr.dept d on e.deptno = d.deptno;

