use company;

/* Find Employee and Their Department Name */
select employees.name,department_name
from employees
cross join departments;

/* List Projects and Their Department Locations */
select projects.project_name,departments.location
from projects
cross join departments;

/* Find Employees Without Departments */

select name , department_name
from employees e
left join departments d
on e.name = d.department_name
where d.department_name = null;

/*List All Projects and Assigned Departments */
select projects.project_name,departments.department_name
from projects
cross join departments;
