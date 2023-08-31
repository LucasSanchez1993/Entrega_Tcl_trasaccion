use segunda_entrega;

# El primer TCL lo que hice fue la implementacion de un nuevo proveedor.

select * from proveedores;


start transaction;
insert into proveedores values
('Plomeria jose', 1145796302, null,'Productos de plomeria' );

select * from proveedores
order by id_proveedor desc;

rollback; # Aca lo puse un rollback por el hecho de que al ingresar pusimos mal el nombre del proveedor.

insert into proveedores values
('Plomeria Juan', 1145796302, null,'Productos de plomeria' );

commit; # Y aca al ponerlo bien le pusimos commit para confirmarlo.

select * from proveedores;

#En este TCL lo que hago inserto tanto datos de cliente, como cambio de direccion a otros.

select * from datos_clientes;

start transaction;
insert into datos_clientes values
(1118, 'Pedro','Lito', 18787856,'Cafe 1223');

commit; # Aca corrobore que me de bien.

start transaction;
insert into datos_clientes values
(1120, 'Andrea', 'Belenciaga', 30001452, 'CAFAYATE 4545 3ºD'),
(1121, 'Antonio', 'Rui', 21445631,'Cucha Cucha 1234'),
(1122, 'Roman', 'Riquelme', 20154789, 'Boca 12');
savepoint insert_1;

select * from datos_clientes;

update datos_clientes
set DIRECCION = 'AVENIDA RIVADAVIA 1254 4ºF'
where id_cuenta = 1111;
savepoint update_1;

select * from datos_clientes;

# Aca hice un rollback para poder solamente volver a la insert de mis clientes, y no realizar el update de mi cliente respectiva a su direccion.

ROLLBACK TO insert_1; 


update datos_clientes
set DIRECCION = 'AVENIDA RIVADAVIA 1254 4ºF'
where id_cuenta = 1111;
update datos_clientes
set DIRECCION = 'EMILIO MITRE 1212'
where ID_CUENTA = 1115;

select * from datos_clientes;

# Y aca si cambio las direcciones de algunos de los clientes y le doy commit para poder finalizar mi trasaccion.
COMMIT; 

