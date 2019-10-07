-- 1. How many people work in the Sales department? answer is 4
select 
e.emp_name as Full_Name,
d.dept_name
from 
employee e
inner join
department d
on e.department = d.id
where 
d.dept_name = 'Sales';

-- 2. List the names of all employees assigned to the 'Plan Christmas party' project. answer is 1 Toby Flenderson

select 
e.emp_name as Full_Name,
p.project_name as project
from 
employee e
join
employee_project ep
on e.id = ep.emp_id
join
project p
on ep.project_id = p.id
where 
p.id = '2';

-- 3. List the names of employees from the Warehouse department that are assigned to the 'Watch paint dry' project. answer is 0, no one in the warehouse department is watching paint dry

SELECT
  e.emp_name as Full_Name,
  p.project_name as project,
  d.dept_name
FROM
  employee e
  JOIN
  employee_project ep
  ON e.id = ep.emp_id
  JOIN
  project p
  ON ep.project_id = p.id
  inner join
  department d
  on e.department = d.id;

-- 4. Which projects are the Sales department employees assigned to? All emplyees in Sales dept are assigned to Watching paint dry

SELECT
  e.emp_name as Full_Name,
  p.project_name as project,
  d.dept_name as department
FROM
  employee e
  JOIN
  employee_project ep
  ON e.id = ep.emp_id
  JOIN
  project p
  ON ep.project_id = p.id
  inner join
  department d
  on e.department = d.id
where
  d.id = '2';

-- 5. List only the managers that are assigned to the 'Watch paint dry' project. Jim Halpert is the only manager

SELECT
  d.id,
  d.dept_name as department,
  e.emp_name as Manager_Name,
  p.project_name as Project
FROM
  department d
  JOIN
  employee e
  ON
  d.manager = e.id
  JOIN
  employee_project ep
  ON e.id = ep.emp_id
  JOIN
  project p
  ON ep.project_id = p.id
where
p.project_name = 'Watch paint dry';