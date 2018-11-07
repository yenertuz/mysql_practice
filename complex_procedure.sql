# get nth highest using a stored procedure


use yenertuz;
drop procedure if exists temp1;

delimiter //
create procedure temp1(in p1 int)

begin

drop table if exists temp2;
drop table if exists temp3;

create table temp2 (id int auto_increment, department varchar(255), primary key(id));
insert into temp2 (department) select distinct(department) from employees;

create table temp3 like employees;

set @top = p1 - 1;
set @max = (select count(*) from temp2);
set @counter = 0;

while (@counter < @max) do
set @department = (select department from temp2 where id = @counter + 1);
prepare stmt1 from 'insert into temp3 select * from employees where department = ? limit ?, 1';
execute stmt1 using @department, @top;
DEALLOCATE prepare stmt1;
# insert into temp3 select * from employees where department = @department limit p1 - 1, 1;
set @counter = @counter + 1;
end while;

select * from temp3;

drop table temp2;
drop table temp3;

end //
delimiter ;

call temp1(2);

drop procedure if exists temp1;
