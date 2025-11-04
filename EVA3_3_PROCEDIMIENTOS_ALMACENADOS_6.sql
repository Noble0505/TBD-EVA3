delimiter $$
create procedure agregar_actor2(in firstname varchar(50),in lastname varchar(50))
begin
     declare actorid int;
	 select max_actores() + 1 into actorid;
     insert into actor(actor_id,first_name,last_name)
     value(actorid, firstname, lastname);
end $$
delimiter ;