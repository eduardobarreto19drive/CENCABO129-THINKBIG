-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.5.11 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para thinkbig
CREATE DATABASE IF NOT EXISTS `thinkbig` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `thinkbig`;

-- Volcando estructura para tabla thinkbig.avance
CREATE TABLE IF NOT EXISTS `avance` (
  `ID_AVANCE` int(11) NOT NULL AUTO_INCREMENT,
  `PORCENTAJE` int(11) DEFAULT NULL,
  `ESTRELLAS` int(11) DEFAULT NULL,
  `INTENTOS` int(11) DEFAULT NULL,
  `TIEMPO` int(11) DEFAULT NULL,
  `ID_USUARIO` int(11) DEFAULT NULL,
  `ID_NIVEL` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_AVANCE`),
  KEY `FK1_AVANCE_USUARIO` (`ID_USUARIO`),
  KEY `FK2_AVANCE_NIVEL` (`ID_NIVEL`),
  CONSTRAINT `FK2_AVANCE_NIVEL` FOREIGN KEY (`ID_NIVEL`) REFERENCES `nivel` (`ID_NIVEL`),
  CONSTRAINT `FK1_AVANCE_USUARIO` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuario` (`ID_USUARIO`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla thinkbig.configuracion
CREATE TABLE IF NOT EXISTS `configuracion` (
  `ID_CONIGURACION` int(11) NOT NULL AUTO_INCREMENT,
  `LENGUAJE` char(50) DEFAULT NULL,
  `MUSICA` char(50) DEFAULT NULL,
  `EFECTOS` char(50) DEFAULT NULL,
  `ID_USUARIO` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_CONIGURACION`),
  KEY `FK1_CONFIGURACION_USUAIO` (`ID_USUARIO`),
  CONSTRAINT `FK1_CONFIGURACION_USUAIO` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuario` (`ID_USUARIO`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla thinkbig.nivel
CREATE TABLE IF NOT EXISTS `nivel` (
  `ID_NIVEL` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) DEFAULT NULL,
  `ESTADO` varchar(50) DEFAULT NULL,
  `TIEMPO_LIMITE` int(11) DEFAULT NULL,
  `PUNTAJE_MINIMO` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_NIVEL`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla thinkbig.recompensa
CREATE TABLE IF NOT EXISTS `recompensa` (
  `ID_RECOMPENSA` int(11) NOT NULL AUTO_INCREMENT,
  `RANGO_INICIAL` int(11) DEFAULT NULL,
  `RANGO_FINAL` int(11) DEFAULT NULL,
  `VALOR` int(11) DEFAULT NULL,
  `ID_NIVEL` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_RECOMPENSA`),
  KEY `FK1_RECOMPENSA_NIVEL` (`ID_NIVEL`),
  CONSTRAINT `FK1_RECOMPENSA_NIVEL` FOREIGN KEY (`ID_NIVEL`) REFERENCES `nivel` (`ID_NIVEL`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla thinkbig.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `ID_USUARIO` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) NOT NULL,
  `EDAD` varchar(50) NOT NULL,
  `GENERO` varchar(50) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL,
  `AVATAR` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_USUARIO`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
