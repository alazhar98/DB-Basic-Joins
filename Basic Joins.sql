use company;

/* Find Employee and Their Department Name */
SELECT e.name AS employee_name, (SELECT d.department_name 
     FROM departments d 
     WHERE d.department_id = e.department_id) AS department_name
FROM employees e;

/* List Projects and Their Department Locations */
SELECT p.project_name,(SELECT d.location 
     FROM departments d 
     WHERE d.department_id = p.department_id) AS department_location
FROM projects p;


/* Find Employees Without Departments */

SELECT name AS employee_name
FROM employees
WHERE department_id IS NULL;


/*List All Projects and Assigned Departments */
SELECT  p.project_name, (SELECT d.department_name 
	FROM departments d 
     WHERE d.department_id = p.department_id) AS department_name
FROM projects p;
