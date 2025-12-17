DROP DATABASE IF EXISTS parqueadero;
CREATE DATABASE parqueadero;
USE parqueadero;

-- =====================
-- TABLA USUARIO
-- =====================
CREATE TABLE usuario (
  id_usuario INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(45) NOT NULL,
  documento VARCHAR(45) NOT NULL,
  telefono VARCHAR(45) NOT NULL,
  gmail VARCHAR(45) NOT NULL,
  tipo_usuario VARCHAR(45) NOT NULL,
  fotografia VARCHAR(45)
);


-- =====================
-- TABLA PICO_Y_PLACA
-- =====================
CREATE TABLE pico_y_placa (
  id_pico_placa INT AUTO_INCREMENT PRIMARY KEY,
  ultimo_numero_placa VARCHAR(2) NOT NULL,
  dia_semana VARCHAR(20) NOT NULL
);


-- =====================
-- TABLA VEHICULO
-- =====================
CREATE TABLE vehiculo (
  id_vehiculo INT AUTO_INCREMENT PRIMARY KEY,
  placa VARCHAR(45) NOT NULL,
  tipo VARCHAR(45) NOT NULL,
  marca VARCHAR(45) NOT NULL,
  color VARCHAR(45) NOT NULL,
  usuario_id_usuario INT,
  pico_y_placa_id_pico_placa INT,
  FOREIGN KEY (usuario_id_usuario) REFERENCES usuario(id_usuario),
  FOREIGN KEY (pico_y_placa_id_pico_placa) REFERENCES pico_y_placa(id_pico_placa)
);


-- =====================
-- TABLA CELDA
-- =====================
CREATE TABLE celda (
  id_celda INT AUTO_INCREMENT PRIMARY KEY,
  numero VARCHAR(45) NOT NULL,
  nivel VARCHAR(45) NOT NULL,
  tipo VARCHAR(45) NOT NULL
);


-- =====================
-- TABLA ENTRADA
-- =====================
CREATE TABLE entrada (
  id_entrada INT AUTO_INCREMENT PRIMARY KEY,
  fecha VARCHAR(45) NOT NULL,
  hora VARCHAR(45) NOT NULL,
  celda_id_celda INT,
  vehiculo_id_vehiculo INT,
  FOREIGN KEY (celda_id_celda) REFERENCES celda(id_celda),
  FOREIGN KEY (vehiculo_id_vehiculo) REFERENCES vehiculo(id_vehiculo)
);


-- =====================
-- TABLA SALIDA
-- =====================
CREATE TABLE salida (
  id_salida INT AUTO_INCREMENT PRIMARY KEY,
  fecha VARCHAR(45) NOT NULL,
  hora VARCHAR(45) NOT NULL,
  celda_id_celda INT,
  vehiculo_id_vehiculo INT,
  FOREIGN KEY (celda_id_celda) REFERENCES celda(id_celda),
  FOREIGN KEY (vehiculo_id_vehiculo) REFERENCES vehiculo(id_vehiculo)
);


-- =====================
-- INSERTS SEPARADOS POR TABLA
-- =====================

-- INSERTS USUARIO
INSERT INTO usuario VALUES
(1,'Usuario1','1001','3001','u1@mail.com','admin',NULL),
(2,'Usuario2','1002','3002','u2@mail.com','operador',NULL),
(3,'Usuario3','1003','3003','u3@mail.com','usuario',NULL),
(4,'Usuario4','1004','3004','u4@mail.com','usuario',NULL),
(5,'Usuario5','1005','3005','u5@mail.com','usuario',NULL),
(6,'Usuario6','1006','3006','u6@mail.com','usuario',NULL),
(7,'Usuario7','1007','3007','u7@mail.com','usuario',NULL),
(8,'Usuario8','1008','3008','u8@mail.com','usuario',NULL),
(9,'Usuario9','1009','3009','u9@mail.com','usuario',NULL),
(10,'Usuario10','1010','3010','u10@mail.com','usuario',NULL),
(11,'Usuario11','1011','3011','u11@mail.com','usuario',NULL),
(12,'Usuario12','1012','3012','u12@mail.com','usuario',NULL),
(13,'Usuario13','1013','3013','u13@mail.com','usuario',NULL),
(14,'Usuario14','1014','3014','u14@mail.com','usuario',NULL),
(15,'Usuario15','1015','3015','u15@mail.com','usuario',NULL),
(16,'Usuario16','1016','3016','u16@mail.com','usuario',NULL),
(17,'Usuario17','1017','3017','u17@mail.com','usuario',NULL),
(18,'Usuario18','1018','3018','u18@mail.com','usuario',NULL),
(19,'Usuario19','1019','3019','u19@mail.com','usuario',NULL),
(20,'Usuario20','1020','3020','u20@mail.com','usuario',NULL);

-- INSERTS PICO_Y_PLACA
INSERT INTO pico_y_placa VALUES
(1,'0','Lunes'),
(2,'1','Lunes'),
(3,'2','Martes'),
(4,'3','Martes'),
(5,'4','Miercoles'),
(6,'5','Miercoles'),
(7,'6','Jueves'),
(8,'7','Jueves'),
(9,'8','Viernes'),
(10,'9','Viernes'),
(11,'0','Sabado'),
(12,'1','Sabado'),
(13,'2','Domingo'),
(14,'3','Domingo'),
(15,'4','Lunes'),
(16,'5','Martes'),
(17,'6','Miercoles'),
(18,'7','Jueves'),
(19,'8','Viernes'),
(20,'9','Sabado');

-- INSERTS VEHICULO
INSERT INTO vehiculo VALUES
(1,'AAA001','Carro','Mazda','Rojo',3,1),
(2,'AAA002','Carro','Toyota','Azul',4,2),
(3,'AAA003','Carro','Kia','Negro',5,3),
(4,'AAA004','Carro','Ford','Blanco',6,4),
(5,'AAA005','Carro','Nissan','Gris',7,5),
(6,'AAA006','Moto','Yamaha','Rojo',8,6),
(7,'AAA007','Moto','Suzuki','Azul',9,7),
(8,'AAA008','Moto','Honda','Negro',10,8),
(9,'AAA009','Carro','Chevrolet','Blanco',11,9),
(10,'AAA010','Carro','BMW','Gris',12,10),
(11,'AAA011','Carro','Audi','Rojo',13,11),
(12,'AAA012','Carro','Mazda','Azul',14,12),
(13,'AAA013','Moto','Kawasaki','Negro',15,13),
(14,'AAA014','Moto','TVS','Blanco',16,14),
(15,'AAA015','Carro','Renault','Gris',17,15),
(16,'AAA016','Carro','Peugeot','Rojo',18,16),
(17,'AAA017','Moto','AKT','Azul',19,17),
(18,'AAA018','Moto','Bajaj','Negro',20,18),
(19,'AAA019','Carro','Toyota','Blanco',3,19),
(20,'AAA020','Carro','Mazda','Gris',4,20);

-- INSERTS CELDA
INSERT INTO celda VALUES
(1,'C1','1','Carro'),
(2,'C2','1','Carro'),
(3,'C3','1','Carro'),
(4,'C4','1','Carro'),
(5,'C5','2','Carro'),
(6,'C6','2','Moto'),
(7,'C7','2','Moto'),
(8,'C8','2','Moto'),
(9,'C9','3','Moto'),
(10,'C10','3','Carro'),
(11,'C11','3','Carro'),
(12,'C12','3','Carro'),
(13,'C13','4','Carro'),
(14,'C14','4','Moto'),
(15,'C15','4','Moto'),
(16,'C16','4','Carro'),
(17,'C17','5','Carro'),
(18,'C18','5','Moto'),
(19,'C19','5','Moto'),
(20,'C20','5','Carro');

-- INSERTS ENTRADA
INSERT INTO entrada VALUES
(1,'2025-01-01','08:00',1,1),
(2,'2025-01-01','08:10',2,2),
(3,'2025-01-01','08:20',3,3),
(4,'2025-01-01','08:30',4,4),
(5,'2025-01-02','09:00',5,5),
(6,'2025-01-02','09:10',6,6),
(7,'2025-01-02','09:20',7,7),
(8,'2025-01-02','09:30',8,8),
(9,'2025-01-03','10:00',9,9),
(10,'2025-01-03','10:10',10,10),
(11,'2025-01-03','10:20',11,11),
(12,'2025-01-03','10:30',12,12),
(13,'2025-01-04','11:00',13,13),
(14,'2025-01-04','11:10',14,14),
(15,'2025-01-04','11:20',15,15),
(16,'2025-01-04','11:30',16,16),
(17,'2025-01-05','12:00',17,17),
(18,'2025-01-05','12:10',18,18),
(19,'2025-01-05','12:20',19,19),
(20,'2025-01-05','12:30',20,20);

-- INSERTS SALIDA
INSERT INTO salida VALUES
(1,'2025-01-01','12:00',1,1),
(2,'2025-01-01','12:10',2,2),
(3,'2025-01-01','12:20',3,3),
(4,'2025-01-01','12:30',4,4),
(5,'2025-01-02','13:00',5,5),
(6,'2025-01-02','13:10',6,6),
(7,'2025-01-02','13:20',7,7),
(8,'2025-01-02','13:30',8,8),
(9,'2025-01-03','14:00',9,9),
(10,'2025-01-03','14:10',10,10),
(11,'2025-01-03','14:20',11,11),
(12,'2025-01-03','14:30',12,12),
(13,'2025-01-04','15:00',13,13),
(14,'2025-01-04','15:10',14,14),
(15,'2025-01-04','15:20',15,15),
(16,'2025-01-04','15:30',16,16),
(17,'2025-01-05','16:00',17,17),
(18,'2025-01-05','16:10',18,18),
(19,'2025-01-05','16:20',19,19),
(20,'2025-01-05','16:30',20,20);

