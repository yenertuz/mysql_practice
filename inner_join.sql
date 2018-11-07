use yenertuz;
select employees.id, employees.name, departments.name as department, departments.id as department_id, departments.location from employees
inner join departments
on employees.department = departments.name;
