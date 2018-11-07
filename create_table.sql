use yenertuz;
create table if not exists employees
( id INT NOT_NULL,
name varchar(255),
department varchar(255),
salary int,
primary key(id));
