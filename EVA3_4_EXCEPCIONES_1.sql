delimiter $$
create procedure agregar_personas(in nombre varchar(50), in apmaterno varchar(50), in appaterno varchar(50),fechanac date)
begin 
   declare rfc varchar(10);
       SET rfc = crear_rfc(nombre,appaterno,apmaterno,fechanac);
       insert into personas (rfc, nombre, ap_paterno, ap_materno, fecha_nac)
       values (rfc, nombre, appaterno, apmaterno, fechanac);
end $$
delimiter ;
