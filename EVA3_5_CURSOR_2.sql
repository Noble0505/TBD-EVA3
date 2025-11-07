delimiter $$
create procedure rfc_actores()
begin
     declare rfc_nuevo varchar(10);
     declare nombre varchar(50);
     declare apellido varchar(50);
     declare fecha datetime;
     declare ap_materno_nulo varchar(50) default null;
     declare terminar int default false; -- variable para terminar el ciclo
     declare contar_actores cursor for    
     select first_name, last_name, last_update
     from actor;
     declare continue handler for not found set terminar = true;
     
     open contar_actores;
     mi_cursor: loop
         fetch contar_actores into nombre, apellido, fecha; -- movernos fila x fila, falla si no hay salida
         if terminar then
            leave mi_cursor;   -- equivalente al break
         end if;
         SET rfc_nuevo = crear_rfc(
            nombre, 
            apellido, 
            ap_materno_nulo, 
            date(fecha)
        );
        insert into rfc_resu (nombre, fecha, rfc)
        values (
            concat(nombre, ' ', apellido),
            date(fecha),
            rfc_nuevo
        );
         
     end loop;
     close contar_actores;
end $$
delimiter ;