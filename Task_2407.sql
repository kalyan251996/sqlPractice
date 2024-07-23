select * from employees
select * from departments

select employees.name 
from employees inner join departments
on employees.dept_id  =departments.dept_id
where departments.dept_name='Engineering'



select employees.emp_id,employees.name,employees.dept_id,departments.dept_name
from employees left join departments
on employees.dept_id  = departments.dept_id


select departments.dept_id,departments.dept_name,employees.name
from employees right join departments
on employees.dept_id  = departments.dept_id


select employees.dept_id , employees.name,departments.dept_id,departments.dept_name
from employees full outer join departments
on employees.dept_id  = departments.dept_id


