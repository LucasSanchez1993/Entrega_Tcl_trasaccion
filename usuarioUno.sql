use segunda_entrega;

SHOW GRANTS FOR usuariouno@localhost;

select * from cuenta;

select *from mercaderias
where id_merca = 30;

alter table cuenta 
change column name nombrec varchar(30); # no tengo el permiso para realizar esto.

drop table mercaderias; # tampoco tengo permiso.