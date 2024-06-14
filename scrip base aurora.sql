CREATE DATABASE aeropuerto_aurora;
USE aeropuerto_aurora;

CREATE TABLE `aerolinea` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
);


CREATE TABLE `aeropuerto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `avion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `modelo` varchar(25) NOT NULL,
  `capacidad` int NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `avion_chk_1` CHECK ((`capacidad` > 0))
);

CREATE TABLE `pasajero` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `nacionalidad` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `reserva` (
  `codigo_reserva` int NOT NULL AUTO_INCREMENT,
  `destino` varchar(100) NOT NULL,
  `fecha_reserva` date NOT NULL,
  `hora_abordaje` time NOT NULL,
  `hora_llegada` time NOT NULL,
  `hora_salida` time NOT NULL,
  `numero_ticket` varchar(50) NOT NULL,
  `asiento` varchar(10) NOT NULL,
  `clase` varchar(20) NOT NULL,
  PRIMARY KEY (`codigo_reserva`)
);

CREATE TABLE `vuelo` (
  `numero_vuelo` varchar(50) NOT NULL,
  `origen` varchar(100) NOT NULL,
  `destino` varchar(100) NOT NULL,
  `hora_salida` time NOT NULL,
  `hora_llegada` time NOT NULL,
  `estado_vuelo` varchar(50) NOT NULL,
  `aerolinea` varchar(100) NOT NULL,
  `modelo_avion` varchar(100) NOT NULL,
  PRIMARY KEY (`numero_vuelo`)
);

