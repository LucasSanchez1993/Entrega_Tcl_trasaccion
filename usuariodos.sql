use segunda_entrega;

SHOW GRANTS FOR usuariodos@localhost;

select * from pedido_mercaderia;

insert into proveedores values
('herramientas chacha', 1133351564,null, 'herramientas');

select * from proveedores;

update proveedores set nombre = 'herramientas papu' where nombre = 'herramientas pucho';

drop table proveedores; # no tengo el permiso, pero en las demas acciones si.
