use yenertuz;
set @v1 = (select id from zero_one limit 0, 1);
select * from zero_one as z1
where 0 = (select count(*) from zero_one as z2 where z2.id > z1.id and z1.id > @v1) % 2;
