select * from "Employees" limit 10

-- Item 1
select  e.emp_no,
        e.last_name,
        e.first_name,
        e.sex,
        s.salary
from "Employees" as e
    left join "Salaries" as s
    on (e.emp_no = s.emp_no)
order by e.emp_no;

-- Item 2
select e.first_name, e.last_name, e.hire_date
from "Employees" as e
where e.hire_date >= '1986-01-01'
and e.hire_date < '1987-01-01';

-- Item 3
select 	dep.dept_no,
		dep.dept_name,
		dm.emp_no,
		e.last_name,
		e.first_name
from "dept_manager" as dm
	inner join "Departments" as dep
		on (dm.dept_no = dep.dept_no)
	inner join "Employees" as e
		on (dm.emp_no = e.emp_no);
		
-- Item 4
select	e.emp_no,
		e.last_name,
		e.first_name,
		dep.dept_name
from "dept_emp" as de
	inner join "Departments" as dep
		on (de.dept_no = dep.dept_no)
	inner join "Employees" as e
		on (de.emp_no = e.emp_no);
		
-- Item 5
select	e.first_name,
		e.last_name,
		e.sex
from "Employees" as e
where e.first_name = 'Hercules'
	and e.last_name like 'B%';
	
-- Item the 6th
select	e.emp_no,
		e.last_name,
		e.first_name,
		dep.dept_name
from "dept_emp" as de
	inner join "Employees" as e
		on (de.emp_no = e.emp_no)
	inner join "Departments" as dep
		on (de.dept_no = dep.dept_no)
	where dep.dept_name = 'Sales';

-- Item 7
select	e.emp_no,
		e.last_name,
		e.first_name,
		dep.dept_name
from "dept_emp" as de
	inner join "Employees" as e
		on (de.emp_no = e.emp_no)
	inner join "Departments" as dep
		on (de.dept_no = dep.dept_no)
	where dep.dept_name in ('Sales', 'Development');
	
-- Item 8
select e.last_name, count(e.last_name)
from "Employees" as e
group by e.last_name
order by count(e.last_name) desc;