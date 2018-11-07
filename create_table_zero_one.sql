use yenertuz;
create table zero_one
(id int auto_increment primary key,
val int);
insert into zero_one (val)
values (1), (0), (0), (1), (1);
delete from zero_one where id = 3;
