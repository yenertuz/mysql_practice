use yenertuz;
select employees.* from employees
left join employees2
on employees.name = employees2.name and employees.salary = employees2.salary and employees.department = employees2.department
where employees2.id is null; 
