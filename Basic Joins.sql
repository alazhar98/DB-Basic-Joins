use company;

/* Find Employee and Their Department Name */
SELECT employees.name, departments.department_id
     FROM departments ,employees
	 where employees.department_id = departments.department_id
/* List Projects and Their Department Locations */
select projects.project_name , departments.location
from projects,departments
where projects.department_id=departments.department_id;

/* Find Employees Without Departments */

SELECT name AS employee_name
FROM employees
WHERE department_id IS NULL;


/*List All Projects and Assigned Departments */
SELECT projects.project_name , departments.department_name 
	FROM projects,departments
     WHERE projects.department_id = departments.department_id;

