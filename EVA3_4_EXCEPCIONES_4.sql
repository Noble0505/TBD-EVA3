delimiter $$
create procedure insertar_prueba(clave int)
begin
declare exit handler for sqlstate "23000"
begin
     select "ERROR: Clave duplicada" as mensaje_error;
end ;
     insert into prueba value (clave);
     select "Clave insertada correctamente" as mensaje;
     
end $$
delimiter ;