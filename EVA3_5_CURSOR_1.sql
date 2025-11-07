delimiter $$
create procedure contar_actor(out cont int)
begin
     declare id int;
     declare nombre varchar(50);
     declare apellido varchar(50);
     declare terminar int default false; -- variable para terminar el ciclo
     declare contar_actores cursor for    
     select actor_id, first_name,last_name
     from actor;
     declare continue handler for not found set terminar = true;
     
     open contar_actores;
     set cont = 0;
     mi_cursor: loop
         fetch contar_actores into id, nombre, apellido; -- movernos fila x fila, falla si no hay salida
         if terminar then
            leave mi_cursor;   -- equivalente al break
         end if;
         set cont = cont + 1;
         
     end loop;
     close contar_actores;
end $$
delimiter ;