DROP TABLE  IF EXISTS reserva;

CREATE TABLE reserva (
	id_reserva SERIAL PRIMARY KEY NOT NULL,
	lugar_reserva VARCHAR(50) NOT NULL,
	fecha_reserva DATE NOT NULL,
	dias_reserva integer NOT NULL,
	numero_habitaciones_reserva integer NOT NULL,
	fecha_ingreso_reserva DATE NOT NULL,
	fecha_salida_reserva DATE NOT NULL,
	numero_personas_reserva integer NOT NULL	
);

INSERT INTO reserva (
lugar_reserva,fecha_reserva,dias_reserva,numero_habitaciones_reserva,fecha_ingreso_reserva,fecha_salida_reserva,numero_personas_reserva) 
VALUES ('Neiva','2021-08-21',3,1,'2021-08-21','2021-08-24',2);
INSERT INTO reserva (
lugar_reserva,fecha_reserva,dias_reserva,numero_habitaciones_reserva,fecha_ingreso_reserva,fecha_salida_reserva,numero_personas_reserva) 
VALUES ('Florencia','2021-05-3',2,1,'2021-05-3','2021-05-5',1);
INSERT INTO reserva (
lugar_reserva,fecha_reserva,dias_reserva,numero_habitaciones_reserva,fecha_ingreso_reserva,fecha_salida_reserva,numero_personas_reserva) 
VALUES ('Bogota','2021-04-1',3,1,'2021-04-1','2021-04-4',4);
INSERT INTO reserva (
lugar_reserva,fecha_reserva,dias_reserva,numero_habitaciones_reserva,fecha_ingreso_reserva,fecha_salida_reserva,numero_personas_reserva) 
VALUES ('Cartagena','2021-06-21',4,1,'2021-06-21','2021-06-25',1);
INSERT INTO reserva (
lugar_reserva,fecha_reserva,dias_reserva,numero_habitaciones_reserva,fecha_ingreso_reserva,fecha_salida_reserva,numero_personas_reserva) 
VALUES ('Neiva','2021-08-21',5,1,'2021-08-21','2021-08-26',2);


DROP TABLE  IF EXISTS usuario;
CREATE TABLE usuario (
	id_usuario SERIAL PRIMARY KEY NOT NULL,
	nombre_usuario VARCHAR(30) NOT NULL,
	apellido_usuario VARCHAR(60) NOT NULL, 
	direccion_usuario VARCHAR(60) NOT NULL,
	ciudad_usuario VARCHAR(60) NOT NULL,
	tipo_pago_usuario VARCHAR(60) NOT NULL,
	id_reserva_usuario INTEGER NOT NULL,
	FOREIGN KEY (id_reserva_usuario) REFERENCES reserva (id_reserva)
);
INSERT INTO usuario (
nombre_usuario,apellido_usuario,direccion_usuario,ciudad_usuario,tipo_pago_usuario,id_reserva_usuario) 
VALUES ('Jose','Rodriguez','Cll 13 #6-14','morelia', 'tarjeta',1);
INSERT INTO usuario (
nombre_usuario,apellido_usuario,direccion_usuario,ciudad_usuario,tipo_pago_usuario,id_reserva_usuario) 
VALUES ('Manuel','Martin','Cll 3 #3-3','cartagena', 'tarjeta',2);
INSERT INTO usuario (
nombre_usuario,apellido_usuario,direccion_usuario,ciudad_usuario,tipo_pago_usuario,id_reserva_usuario) 
VALUES ('Marcos','Velez','Cll 6 #2-5','bogota', 'tarjeta',3);
INSERT INTO usuario (
nombre_usuario,apellido_usuario,direccion_usuario,ciudad_usuario,tipo_pago_usuario,id_reserva_usuario) 
VALUES ('Elber','Rojas','Cll 2 #1-12','neiva', 'tarjeta',4);
INSERT INTO usuario (
nombre_usuario,apellido_usuario,direccion_usuario,ciudad_usuario,tipo_pago_usuario,id_reserva_usuario) 
VALUES ('Lucas','Mar','Cll 10 #4-4','morelia', 'tarjeta',5);

