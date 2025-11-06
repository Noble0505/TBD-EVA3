delimiter $$
create function crear_rfc (
nombre varchar (50),
ap_paterno varchar (50),
ap_materno varchar (50),
fecha_nac date 
)
returns varchar (10) deterministic

begin
     declare iniciales varchar (4);
     declare fechanac varchar(6);
     set iniciales = CONCAT(
     (substr(ap_paterno,1,1)),
     (substr(ap_paterno,2,1)),
     (substr(ap_materno,1,1)),
     (substr(nombre, 1,1))
     );
SET fechanac = DATE_FORMAT(fecha_nac, '%y%m%d');

RETURN CONCAT(iniciales, fechanac);
end $$
delimiter ;