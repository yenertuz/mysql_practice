use yenertuz;
create table if not exists employees
( id INT not null auto_increment,
name varchar(255) default '',
department varchar(255) default '',
salary int default 0,
primary key(id));
