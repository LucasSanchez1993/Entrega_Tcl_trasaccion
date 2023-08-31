use segunda_entrega;

USE sys;
SELECT * FROM sys_config;
USE mysql;
SELECT * FROM user;

CREATE USER usuariouno@localhost IDENTIFIED BY '1234';

CREATE USER usuariodos@localhost IDENTIFIED BY '1234';

grant select on segunda_entrega.* to usuariouno@localhost;
grant select, update, insert on segunda_entrega.* to usuariodos@localhost;

