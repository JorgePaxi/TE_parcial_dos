DROP DATABASE IF EXISTS bd_aclPaxiApaza;
CREATE DATABASE bd_aclPaxiApaza CHARACTER SET utf8 COLLATE utf8_general_ci;
use bd_aclPaxiApaza;


CREATE TABLE `usuarios` (
  	`id` int(11) NOT NULL AUTO_INCREMENT, 
	`usuario`  varchar(20) NOT NULL,
  	`correo`  varchar(100) NOT NULL,
	`clave`  varchar(255) NOT NULL,
  	PRIMARY KEY (`id`)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

CREATE TABLE `roles` (
  	`id` int(11) NOT NULL AUTO_INCREMENT, 
	`descripcion`  varchar(255) NOT NULL,
  	PRIMARY KEY (`id`)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

CREATE TABLE `permisos` (
	`id` int(11) NOT NULL AUTO_INCREMENT, 
	`id_usuario` int(11),
	`id_rol` int(11),
	PRIMARY KEY (`id`),
	KEY (`id_usuario`), 
    	FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`),
	KEY (`id_rol`), 
    	FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id`)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


insert into usuarios (usuario,correo,clave) values ('demo','demo@gmail.com','827ccb0eea8a706c4c34a16891f84e7b');

insert into usuarios (usuario,correo,clave) values ('admin','admin@gmail.com','827ccb0eea8a706c4c34a16891f84e7b');