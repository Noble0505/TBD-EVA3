delimiter $$
create procedure division(in val1 int, in val2 int)
begin
declare resu decimal(10,2);
declare exit handler for sqlstate "22012"
begin
     select "ERROR: Division imposible" as mensaje_error;
end ;
     
     set resu = val1 / val2;
     select resu as resu_fin;
end $$
delimiter ;