delimiter $$
create function min_actores()
returns int READS SQL DATA
begin
    declare mini int default 0;
    select min(actor_id) into mini from actor;
    return mini;
end $$
delimiter ;