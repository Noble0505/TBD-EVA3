delimiter $$
create function contar_actores()
returns int READS SQL DATA
begin
    declare cont int default 0;
    select count(*) into cont from actor;
    return cont;
end $$

delimiter ;