delimiter $$
create function comparar(val1 int,val2 int)
returns varchar(20) deterministic
begin
    declare resu varchar(50);
    if val1 < val2 then
    set resu = "Valor 2 Mayor que Valor 1";
    elseif val1 > val2 then
    set resu = "Valor 1 Mayor que Valor 2";
    else
    set resu= "AMBOS VALORES SON IGUALES";
    end if;
    return resu;

end $$
delimiter ;