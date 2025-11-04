delimiter $$
create function max_actores()
returns int READS SQL DATA
begin
    declare maxi int default 0;
    select max(actor_id) into maxi from actor;
    return maxi;
end $$
delimiter ;