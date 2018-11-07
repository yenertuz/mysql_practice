use yenertuz;
create table departments
( id int auto_increment primary key,
 name varchar(255),
 location varchar(255));
insert into departments (name, location)
values ("IT", "New York"), ("Management", "Los Angeles"), ("Health", "Chicago");
select * from departments;
