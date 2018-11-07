use yenertuz;
drop procedure if exists temp1;
delimiter //
create procedure temp1()
begin
set @max = 5;
set @counter = 0;
while (@counter < @max) do
select @counter;
set @counter = @counter + 1;
end while;
end //
delimiter ;
call temp1;
drop procedure if exists temp1;
