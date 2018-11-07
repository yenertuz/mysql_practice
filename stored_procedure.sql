use yenertuz;
# drop procedure if exists temp1;
# delimiter //
# create procedure temp1()
# begin
# show tables;
# end //
# delimiter ;
call temp1;
