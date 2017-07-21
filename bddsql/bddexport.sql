-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.1.21-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win32
-- HeidiSQL Versión:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para destinacionpunto
CREATE DATABASE IF NOT EXISTS `destinacionpunto` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `destinacionpunto`;

-- Volcando estructura para tabla destinacionpunto.actividad
CREATE TABLE IF NOT EXISTS `actividad` (
  `actividad` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla destinacionpunto.actividad: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `actividad` DISABLE KEYS */;
REPLACE INTO `actividad` (`actividad`) VALUES
	('Esqui'),
	('Natacion'),
	('Escalada'),
	('Compras'),
	('Equitacion'),
	('Senderismo'),
	('Otro...');
/*!40000 ALTER TABLE `actividad` ENABLE KEYS */;

-- Volcando estructura para tabla destinacionpunto.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) DEFAULT NULL,
  `nif` varchar(50) DEFAULT NULL,
  `ultimaconex` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla destinacionpunto.admin: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- Volcando estructura para tabla destinacionpunto.continentes
CREATE TABLE IF NOT EXISTS `continentes` (
  `Continente` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla destinacionpunto.continentes: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `continentes` DISABLE KEYS */;
REPLACE INTO `continentes` (`Continente`) VALUES
	('Oceania'),
	('Africa'),
	('Asia'),
	('Antartida'),
	('Europa'),
	('America');
/*!40000 ALTER TABLE `continentes` ENABLE KEYS */;

-- Volcando estructura para tabla destinacionpunto.destinaciones
CREATE TABLE IF NOT EXISTS `destinaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ciudad` varchar(50) DEFAULT NULL,
  `cp` varchar(50) DEFAULT NULL,
  `playa` varchar(50) DEFAULT NULL,
  `web` varchar(200) DEFAULT NULL,
  `itinerario` varchar(200) DEFAULT NULL,
  `capital` varchar(50) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `continente` varchar(50) DEFAULT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla destinacionpunto.destinaciones: ~213 rows (aproximadamente)
/*!40000 ALTER TABLE `destinaciones` DISABLE KEYS */;
REPLACE INTO `destinaciones` (`id`, `ciudad`, `cp`, `playa`, `web`, `itinerario`, `capital`, `pais`, `continente`, `imagen`) VALUES
	(1, 'Balaguer', '25600', 'no', 'www.Balaguer.cat', '23-123-23', 'Madrid', 'Espanya', 'Europeu', 'c:/img.jpg'),
	(2, 'Lleida', '25000', 'no', 'www.Lleida.cat', '23-123-23', 'Madrid', 'Espanya', 'Europeu', 'c:/img.jpg'),
	(3, 'Barcelona', '08088', 'si', 'www.Barna.cat', '23-123-23', 'Madrid', 'Espanya', 'Europeu', 'c:/img.jpg'),
	(4, 'Sevilla', '01578', 'no', 'www.Sevilla.es', '23-123-23', 'Madrid', 'Espanya', 'Europeu', 'c:/img.jpg'),
	(5, 'Paris', '00045', 'no', 'www.Paris.fr', '23-123-23', 'Paris', 'França', 'Europeu', 'c:/img.jpg'),
	(6, 'Roma', '33342', 'no', 'www.Roma.it', '23-123-23', 'Roma', 'Italia', 'Europeu', 'c:/img.jpg'),
	(7, 'Londres', '12123', 'si', 'www.Londres.uk', '23-123-23', 'Londres', 'UK', 'Europeu', 'c:/img.jpg'),
	(8, 'test1', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(16, 'test2', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(17, 'test3', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(18, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(19, 'test5', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(20, 'test6', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(21, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(22, 'test8', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(23, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(32, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(33, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(34, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(35, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(36, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(37, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(38, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(39, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(40, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(41, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(42, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(43, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(44, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(45, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(46, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(47, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(48, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(49, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(50, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(51, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(52, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(53, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(54, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(55, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(56, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(57, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(58, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(59, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(60, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(61, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(62, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(63, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(64, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(65, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(66, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(67, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(68, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(69, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(70, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(71, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(72, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(73, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(74, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(75, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(76, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(77, 'test7', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(78, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(79, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(80, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(81, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(82, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(83, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(84, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(85, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(86, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(87, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(88, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(89, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(90, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(91, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(92, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(93, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(94, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(95, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(96, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(97, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(98, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(99, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(100, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(101, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(102, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(103, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(104, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(105, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(106, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(107, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(108, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(109, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(110, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(111, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(112, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(113, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(114, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(115, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(116, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(117, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(118, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(119, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(120, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(121, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(122, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(123, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(124, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(125, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(126, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(127, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(128, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(129, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(130, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(131, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(132, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(133, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(134, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(135, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(136, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(137, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(138, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(139, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(140, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(141, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(142, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(143, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(144, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(145, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(146, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(147, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(148, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(149, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(150, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(151, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(152, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(153, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(154, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(155, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(156, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(157, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(158, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(159, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(160, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(161, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(162, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(163, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(164, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(165, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(166, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(167, 'test9', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(168, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(169, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(170, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(171, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(172, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(173, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(174, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(175, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(176, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(177, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(178, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(179, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(180, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(181, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(182, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(183, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(184, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(185, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(186, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(187, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(188, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(189, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(190, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(191, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(192, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(193, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(194, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(195, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(196, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(197, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(198, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(199, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(200, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(201, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(202, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(203, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(204, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(205, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(206, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(207, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(208, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(209, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(210, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(211, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(212, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(213, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(214, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(215, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(216, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(217, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(218, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(219, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(220, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(221, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(222, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(223, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(224, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(225, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(226, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(227, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(228, 'test4', '12345', 'no', 'www.test.cat', '23-123-23', 'testing', 'idk', 'dnthv', 'c:/img.jpg'),
	(229, NULL, '', 'No', '', '', '', '', '', NULL),
	(230, NULL, '', 'No', '', '', '', '', '', NULL),
	(231, NULL, '', 'No', '', '', '', '', '', NULL);
/*!40000 ALTER TABLE `destinaciones` ENABLE KEYS */;

-- Volcando estructura para tabla destinacionpunto.logs
CREATE TABLE IF NOT EXISTS `logs` (
  `iduser` int(11) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `where` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla destinacionpunto.logs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;

-- Volcando estructura para tabla destinacionpunto.mapsdestina
CREATE TABLE IF NOT EXISTS `mapsdestina` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `altitud` double NOT NULL DEFAULT '0',
  `lng` double NOT NULL DEFAULT '0',
  `nombre` varchar(50) NOT NULL DEFAULT '0',
  `web` varchar(50) NOT NULL DEFAULT '0',
  `playa` varchar(50) NOT NULL DEFAULT '0',
  `imagen` varchar(250) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla destinacionpunto.mapsdestina: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `mapsdestina` DISABLE KEYS */;
REPLACE INTO `mapsdestina` (`id`, `altitud`, `lng`, `nombre`, `web`, `playa`, `imagen`) VALUES
	(13, 41.9794005, 2.821426400000064, 'Girona, España', 'http://www.girona.com', 'No', 'https://i.ytimg.com/vi/Qt84isy80RU/hqdefault.jpg'),
	(14, 41.7877143, 0.800838800000065, 'Balaguer, España', 'http://www.Balaguer.cat', 'No', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTH5UjQiEaESCq4OmP6eC_DQRwB1yi4255OCbo93yfyHBfL-C-'),
	(16, 41.3850639, 2.1734034999999494, 'Barcelona, España', 'http://www.barcelona.cat', 'SI', 'http://www.hoteles-catalonia.com/blog/wp-content/uploads/2016/02/barcelona-rutas-turisticas-alternativas.jpg'),
	(17, 41.6175899, 0.6200145999999904, 'Lleida, España', 'http://www.lleida.cat', 'No', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsJGBI7Znp_KvHd6W4r6W4Dp7PJI0ofMTvB_w98USEUB-DfQ4b2A'),
	(18, 41.78718689999999, 1.0979793999999856, 'Agramunt, España', 'http://www.agra.cas', 'No', 'http://www.deviajeporcatalunya.com/wp-content/uploads/agramunt.jpg'),
	(19, 41.8542371, 0.9575780000000123, 'Cubélls, España', 'http://www.cubells.es', 'No', 'http://www.catalunyamedieval.es/wp-content/gallery/castell-de-cubells/castell-de-cubells-100925_502.jpg'),
	(20, 41.7163888, 1.822081799999978, 'Manresa, España', 'http://www.manresa.cat', 'No', 'http://www.tornaveu.cat/imatges/articles/manresa-baixa.jpg'),
	(21, 47.394144, 0.6848400000000083, 'Tours, Francia', 'http://www.tours.fr', 'No', 'http://previews.123rf.com/images/esinel/esinel1312/esinel131200037/24484298-Ayuntamiento-de-Tours-Francia-Foto-de-archivo.jpg'),
	(22, 51.7520209, -1.2577263000000585, 'Oxford, Reino Unido', 'http://www.oxford.uk', 'No', 'http://www.learnintrips.com/uploads/3/8/6/8/38688433/oxford_orig.jpg'),
	(23, 43.6158299, 13.518914999999993, 'Ancona, Italia', 'http://www.ancona.it', 'No', 'http://static.panoramio.com/photos/large/21982759.jpg'),
	(24, 47.070714, 15.439503999999943, 'Graz, Austria', 'http://www.graz.au', 'No', 'http://www.cookiesound.com/wp-content/uploads/2012/05/kunsthaus-graz-styria-austria-1.jpg'),
	(25, 52.2296756, 21.012228700000037, 'Varsovia, Polonia', 'http://www.varsonia.po', 'No', 'http://viaconme.es/wp-content/uploads/2016/03/Polonia-Poznan-es-una-ciudad-encantadora-Europea-situado-a-medio-camino-entre-Varsovia-y-Berlin.jpg'),
	(26, 41.72869120000001, 0.4419828000000052, 'Almacellas, España', 'tyy', 'No', 'Ninguna');
/*!40000 ALTER TABLE `mapsdestina` ENABLE KEYS */;

-- Volcando estructura para tabla destinacionpunto.puntosinteres
CREATE TABLE IF NOT EXISTS `puntosinteres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iddestinacion` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `actividades` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla destinacionpunto.puntosinteres: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `puntosinteres` DISABLE KEYS */;
REPLACE INTO `puntosinteres` (`id`, `iddestinacion`, `nombre`, `descripcion`, `tipo`, `actividades`) VALUES
	(1, 1, 'Museu d\'Or', 'Lloc on hi ha Or, o no.', 'Visita', 'Contemplar'),
	(2, 3, 'Parc Gaudi', 'Lloc fantastic disenyat per el gran Gaudi', 'Art', 'Contemplar'),
	(8, 7, 'lolololo', 'looooool', 'Deporte', 'Equitacion'),
	(9, 14, 'teatre', 'lloc on fan teatre :=)', 'Cultural', 'Otro...');
/*!40000 ALTER TABLE `puntosinteres` ENABLE KEYS */;

-- Volcando estructura para tabla destinacionpunto.tipo
CREATE TABLE IF NOT EXISTS `tipo` (
  `tipo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla destinacionpunto.tipo: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo` DISABLE KEYS */;
REPLACE INTO `tipo` (`tipo`) VALUES
	('Gastronomico'),
	('Cultural'),
	('Ocio'),
	('Deporte'),
	('Playa'),
	('Montaña'),
	('Rural'),
	('Otro...');
/*!40000 ALTER TABLE `tipo` ENABLE KEYS */;

-- Volcando estructura para tabla destinacionpunto.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) DEFAULT NULL,
  `nif` int(11) DEFAULT NULL,
  `nombre` int(11) DEFAULT NULL,
  `apellido` int(11) DEFAULT NULL,
  `poblacion` int(11) DEFAULT NULL,
  `cp` int(11) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `email` int(11) DEFAULT NULL,
  `fnacimiento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla destinacionpunto.usuarios: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
