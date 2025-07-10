-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.30 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para prueba
CREATE DATABASE IF NOT EXISTS `prueba` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `prueba`;

-- Volcando estructura para tabla prueba.accesorios
CREATE TABLE IF NOT EXISTS `accesorios` (
  `idaccesorio` int NOT NULL AUTO_INCREMENT,
  `nombreaccesorio` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idaccesorio`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla prueba.accesorios: ~9 rows (aproximadamente)
INSERT INTO `accesorios` (`idaccesorio`, `nombreaccesorio`) VALUES
	(1, 'Cubo de carga'),
	(2, 'Cable tipo C'),
	(3, 'Funda protectora'),
	(4, 'Lápiz óptico'),
	(5, 'Powerbank'),
	(6, 'Maletín para laptop'),
	(7, 'Cargador de laptop'),
	(8, 'Mouse'),
	(9, 'Mousepad');

-- Volcando estructura para tabla prueba.administradores
CREATE TABLE IF NOT EXISTS `administradores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `email` text NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `foto` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `usuario` varchar(20) NOT NULL DEFAULT '',
  `password` text NOT NULL,
  `perfil` text NOT NULL,
  `estatus` tinytext,
  `sedeasignada` tinytext,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sedesadmin` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario` (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla prueba.administradores: ~14 rows (aproximadamente)
INSERT INTO `administradores` (`id`, `nombre`, `email`, `cargo`, `foto`, `usuario`, `password`, `perfil`, `estatus`, `sedeasignada`, `fecha`, `sedesadmin`) VALUES
	(1, 'Obed Alberto Castro Orellana', 'obed.castro@bcr.gob.sv', 'Técnico de Soporte Informático', 'inobed-1750534451.jpg', 'inobed', '21232f297a57a5a743894a0e4a801fc3', '1', 'Consultor BID', '25', '2025-06-21 19:34:11', '["25"]'),
	(2, 'Miguel Ángel Portillo Lozano', 'miguel.portillo@bcr.gob.sv', 'Técnico de Soporte Informático', 'vistas/assets/img', 'inportillo', '10f7b050d847840fcaba56494ba2c099', '1', 'Consultor BID', '26', '2025-05-30 22:07:37', '["26"]'),
	(3, 'Usuario Permisos de Usuario', 'usuario@test.com', 'Cargo del usuario test', 'vistas/assets/img', 'usuario', 'f8032d5cae3de20fcec887f395ec9a6a', '2', 'Consultor BID', '28', '2025-05-29 16:47:33', '["28"]'),
	(4, 'Usuario Permisos de Solo Ver', 'qqq@qqq.com', 'Analista de cuentas bancarias', 'vistas/assets/img', 'ver', '0812f14f43315611dd0ef462515c9d00', '3', 'Banco Central de Reserva', '24', '2025-05-30 21:18:43', '["25","29"]'),
	(14, 'Prueba para sedes admin', 'sedes@sedes.com', 'Técnico de soporte informático', 'vistas/assets/img', 'sedes', 'aebbd1556f9a47210600bb2e34f7aa2c', '2', 'Consultor BID', '27', '2025-05-30 21:26:04', '["27"]'),
	(15, 'Test', 'test@test.com', 'Cargo del usuario test', 'vistas/assets/img', 'test', '098f6bcd4621d373cade4e832627b4f6', '2', 'Consultor BID', '24', '2025-05-30 21:18:45', '["25","29"]'),
	(19, 'Usuario Test Test', 'test@asdf.com', 'Cargo del usuario test', 'vistas/assets/img', 'testt', '147538da338b770b61e592afc92b1ee6', '2', 'Consultor BID', '24', '2025-05-29 19:28:52', '["24"]'),
	(22, 'Usuario de pruebas', 'pruebas@gmail.com', 'Cargo de usuario de pruebas', 'vistas/assets/img', 'pruebasq', 'd65f8a6f108fa4bb17f710b571753a01', '2', 'Consultor BID', '25', '2025-05-30 21:18:47', '["25","29"]'),
	(24, 'sadvasdgdsagasdga', 'asdfsf@sdgsdf.com', 'Cargo del usuario test', 'vistas/assets/img', 'asdfasg', '357916b5e3fa43458becd1a927da0d04', '2', 'Consultor BID', '25', '2025-05-30 21:55:35', '["25"]'),
	(25, 'qqwerqwer', 'rydgs@sdfsgf.com', 'setrtst', 'vistas/assets/img', 'ereyery', '40177cbd9ef21f981e58c13962b8c09a', '2', 'Consultor BID', '26', '2025-05-30 21:26:26', '["26"]'),
	(33, 'oiwugef oequwf', 'asdfasf@asdfads.com', 'Cargo de usuario aaaa', 'user.jpg', 'isdfasfiu', '57ae6aa682fa369c6cc41dcbc2cf299f', '2', 'Banco Central de Reserva', '33', '2025-06-22 02:53:23', '["33"]'),
	(34, 'bbb bbb bbb', 'bbb@bbb.com', 'Cargo de usuario de pruebas', 'user.jpg', 'bbb', '08f8e0260c64418510cefb2b06eee5cd', '2', 'Banco Central de Reserva', '37', '2025-06-22 02:54:54', '["37"]'),
	(35, 'oqoiufaos uas fuasd fu', 'adfafsd@asdfasf.com', 'qtwetqwteqwtqweteqwt', 'user.jpg', 'ouoiu', '4ce8a5097c06051f865f9fb55c3e0046', '2', 'Banco Central de Reserva', '36', '2025-06-22 02:57:11', '["36"]'),
	(36, 'oiuhouiqwhoeqho', 'asdaf@adsgag.com', 'Cargo de usuario de pruebas', 'user.jpg', 'werusgta', '593449c6bd880f394226e784eb5afc50', '2', 'Banco Central de Reserva', '31', '2025-06-22 03:10:25', '["28","27","25","24"]'),
	(37, 'poipoipoipoipoi', 'poi@pi.com', 'Cargo del usuario test', 'user.jpg', 'poi', 'd6e1c05c8a81c2ae74c7aedea5ec92c1', '2', 'Banco Central de Reserva', '28', '2025-06-22 03:11:38', '["25","24"]');

-- Volcando estructura para tabla prueba.consultores
CREATE TABLE IF NOT EXISTS `consultores` (
  `idconsultor` int NOT NULL AUTO_INCREMENT,
  `nombreconsultor` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `duiconsultor` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `cargoconsultor` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `contactoconsultor` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `dispositivo_id` int DEFAULT NULL,
  `sedeconsultor` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `estatusconsultor` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `fechaactualizacionconsultor` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fecharegistroconsultor` date DEFAULT NULL,
  PRIMARY KEY (`idconsultor`),
  UNIQUE KEY `duiconsultor` (`duiconsultor`)
) ENGINE=InnoDB AUTO_INCREMENT=397 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla prueba.consultores: ~100 rows (aproximadamente)
INSERT INTO `consultores` (`idconsultor`, `nombreconsultor`, `duiconsultor`, `cargoconsultor`, `contactoconsultor`, `dispositivo_id`, `sedeconsultor`, `estatusconsultor`, `fechaactualizacionconsultor`, `fecharegistroconsultor`) VALUES
	(295, 'JULIA NATHALY RODRIGUEZ DE GARCIA', '05109141-0', 'Técnico agropecuario y de pesca', '12345678', NULL, '24', '1', '2025-03-17 14:45:27', '2025-03-17'),
	(296, 'CLARA YARITZA CRUZ COEAS', '05972342-7', 'Técnico agropecuario y de pesca', '12345679', NULL, '24', '1', '2025-03-17 14:45:27', '2025-03-17'),
	(297, 'CARLOS ISMAEL HERNANDEZ LOPEZ', '05345841-4', 'Técnico agropecuario y de pesca', '12345680', NULL, '24', '1', '2025-03-17 14:45:27', '2025-03-17'),
	(298, 'JOSE ANIBAL SIGARAN ESCOBAR', '04449905-5', 'Técnico agropecuario y de pesca', '12345681', NULL, '24', '1', '2025-03-17 14:45:27', '2025-03-17'),
	(299, 'ERMILDA YOLANDA MOLINA CALDERÓN', '05526886-5', 'Técnico agropecuario y de pesca', '12345682', NULL, '24', '1', '2025-03-17 14:45:27', '2025-03-17'),
	(300, 'CLAUDIA CECILIA APARICIO PÉREZ', '05411003-5', 'Técnico agropecuario y de pesca', '12345683', NULL, '24', '1', '2025-03-17 14:45:27', '2025-03-17'),
	(301, 'DAVID FERNANDO HERNÁNDEZ GARCÍA', '06360407-5', 'Técnico agropecuario y de pesca', '12345684', NULL, '24', '1', '2025-03-17 14:45:27', '2025-03-17'),
	(302, 'MANUEL WALBERTO PERDOMO GARCIA', '05792953-0', 'Técnico agropecuario y de pesca', '12345685', NULL, '24', '1', '2025-03-17 14:45:27', '2025-03-17'),
	(303, 'JOSÉ BENEDICTO CASTAÑEDA GARAY', '06695453-4', 'Técnico agropecuario y de pesca', '12345686', NULL, '24', '1', '2025-03-17 14:45:27', '2025-03-17'),
	(304, 'ANA JOSÉ DURÁN SÁNCHEZ', 'CEN-00124', 'Técnico agropecuario y de pesca', '12345687', NULL, '24', '1', '2025-06-02 14:08:27', '2025-03-17'),
	(305, 'MARCELA ELIZABETH VIGIL BERNAL', '05981551-7', 'Técnico agropecuario y de pesca', '12345688', NULL, '24', '1', '2025-03-17 14:45:27', '2025-03-17'),
	(306, 'OSCAR DANIEL CHAVEZ ARGUETA', '05147960-0', 'Técnico agropecuario y de pesca', '12345689', NULL, '24', '1', '2025-03-17 14:45:27', '2025-03-17'),
	(307, 'MARCELA YANETH FUENTES CASTILLO', '06036756-9', 'Técnico agropecuario y de pesca', '12345690', NULL, '24', '1', '2025-03-17 14:45:27', '2025-03-17'),
	(308, 'JUANA FRANCISCA GRANADOS FLORES', '02161264-2', 'Técnico agropecuario y de pesca', '12345691', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(309, 'ANA JOSEFA ROMERO DE RODRIGUEZ', 'CEN-00234', 'Técnico agropecuario y de pesca', '1234-5692', NULL, '24', '1', '2025-06-02 14:08:00', '2025-03-17'),
	(310, 'ERIK ALEXIS AYALA HENRIQUEZ', '05623653-6', 'Técnico agropecuario y de pesca', '12345693', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(311, 'MARIA LISBETH ALFARO MEJIA', '06572949-9', 'Técnico agropecuario y de pesca', '12345694', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(312, 'DENNIS ALFREDO CORTEZ MEDRANO', '05796561-7', 'Técnico agropecuario y de pesca', '12345695', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(313, 'ANA MARIA CORTEZ COREAS', '06400535-5', 'Técnico agropecuario y de pesca', '12345696', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(314, 'LUCIA GUADALUPE RODRÍGUEZ ROMERO', '06652520-4', 'Técnico agropecuario y de pesca', '12345697', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(315, 'ANA VICTORIA RODRIÍGUEZ ROMERO', '06283063-1', 'Técnico agropecuario y de pesca', '12345698', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(316, 'XOCHITL HILLARY AMAYA SARAVIA', '05908417-4', 'Técnico agropecuario y de pesca', '12345699', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(317, 'KRISTHIAN ORLANDO MONTERROSA CASTILLO', '05620579-7', 'Técnico agropecuario y de pesca', '12345700', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(318, 'CARLOS MARIO GRANADA MARROQUIN', '06923506-0', 'Técnico agropecuario y de pesca', '12345701', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(319, 'BLANCA ESTELA ALVARADO BERMUDEZ', '05362765-7', 'Técnico agropecuario y de pesca', '12345702', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(320, 'JOSUE ESAU ZUNIGA GARCIA', '05322332-2', 'Técnico agropecuario y de pesca', '12345703', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(321, 'ISAAC OTONIEL ZUNIGA GARCIA', '05616373-3', 'Técnico agropecuario y de pesca', '12345704', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(322, 'SILVIA YANETH CHICAS RAMOS', '04714809-3', 'Técnico agropecuario y de pesca', '12345705', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(323, 'SONIA STEFFANI HERRERA TORRES', '04882924-4', 'Técnico agropecuario y de pesca', '12345706', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(324, 'GLORIA GUADALUPE FLORES RAMIREZ', '05945609-6', 'Técnico agropecuario y de pesca', '12345707', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(325, 'DORA FRANCISCA AYALA SORIANO', '05526643-1', 'Técnico agropecuario y de pesca', '12345708', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(326, 'HILDA DEL CARMEN PINEDA RAMÍREZ', '05723483-8', 'Técnico agropecuario y de pesca', '12345709', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(327, 'SERGIO ALBERTO LOPEZ SARAVIA', '05459820-9', 'Técnico agropecuario y de pesca', '12345710', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(328, 'JENNIFER PATRICIA MARTINEZ SÁNCHEZ', '05890345-6', 'Técnico agropecuario y de pesca', '12345711', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(329, 'JORGE ALBERTO CASTAÑEDA MARTINEZ', '01786193-8', 'Técnico agropecuario y de pesca', '12345712', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(330, 'ANA LETICIA TURCIOS DE PINEDA', 'CEN-00345', 'Técnico agropecuario y de pesca', '1234-5713', NULL, '24', '1', '2025-06-02 14:08:15', '2025-03-17'),
	(331, 'MARÍA DELIA ARGUETA DE VALLADARES', '01190555-6', 'Técnico agropecuario y de pesca', '12345714', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(332, 'JOSSELI MARICELA RIVERA ROMERO', '05362930-8', 'Técnico agropecuario y de pesca', '12345715', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(333, 'KARINA IVETH NAVARRETE ORELLANA', '06065720-7', 'Técnico agropecuario y de pesca', '12345716', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(334, 'DENIS ALEXANDER LOPEZ FLORES', '05494059-5', 'Técnico agropecuario y de pesca', '12345717', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(335, 'LETICIA ISABETH ALFARO LOPÉZ', '00368353-0', 'Técnico agropecuario y de pesca', '12345718', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(336, 'DINORA RAQUEL ARGUETA TOBAR', '04428473-5', 'Técnico agropecuario y de pesca', '12345719', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(337, 'GLENDA ISABEL CONSTANZA MENDEZ', '04763367-4', 'Técnico agropecuario y de pesca', '12345720', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(338, 'YESENIA GUADALUPE FLORES MÉNDEZ', '04689250-0', 'Técnico agropecuario y de pesca', '12345721', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(339, 'GLENDA JULISA MARTINEZ DE IRAHETA', '04621429-9', 'Técnico agropecuario y de pesca', '12345722', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(340, 'RAQUEL SARAÍ ECHEVERRÍA GONZÁLEZ', '05054214-1', 'Técnico agropecuario y de pesca', '12345723', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(341, 'MARCELA SARAÍ BONILLA PINEDA', '06534675-4', 'Técnico agropecuario y de pesca', '12345724', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(342, 'MARIA ANGELA GONZALEZ AREVALO', '06578939-2', 'Técnico agropecuario y de pesca', '12345725', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(343, 'DIANA CAROLINA SARAVIA BERMÚDEZ', '04775706-2', 'Técnico agropecuario y de pesca', '12345726', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(344, 'VILMA ELIZABETH HENRÍQUEZ SIGARÁN', '06263220-3', 'Técnico agropecuario y de pesca', '12345727', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(345, 'INGRID YESENIA CALLEJAS DE MARAVILLA', '02066734-3', 'Técnico agropecuario y de pesca', '12345728', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(346, 'ANDERSON SAÚL MARAVILLA CALLEJAS', '07312076-4', 'Técnico agropecuario y de pesca', '12345729', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(347, 'REY JOSE ZELAYA BRIOSO', '04293454-6', 'Técnico agropecuario y de pesca', '12345730', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(348, 'MAYERLY NOEMI BENITEZ LAZO', '06699293-0', 'Técnico agropecuario y de pesca', '12345731', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(349, 'ELVIRA YOLANDA REYES DE BATRES', '04214721-2', 'Técnico agropecuario y de pesca', '12345732', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(350, 'VICTOR ROLANDO DOMINGUEZ ZAMORA', '05452966-6', 'Técnico agropecuario y de pesca', '12345733', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(351, 'LITZY ZENEIDA CORTEZ HERNÁNDEZ', '06002806-8', 'Técnico agropecuario y de pesca', '12345734', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(352, 'ISRAEL NEHEMIAS ECHEVERRIA GONZALEZ', '04666598-7', 'Técnico agropecuario y de pesca', '12345735', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(353, 'NAHUM ALEXIS MEJIA CAMPOS', '05401965-3', 'Técnico agropecuario y de pesca', '12345736', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(354, 'JOSE ARMANDO TURCIOS', '03737390-5', 'Técnico agropecuario y de pesca', '12345737', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(355, 'ROSARIO GUADALUPE CRUZ MARTINEZ', '05215812-6', 'Técnico agropecuario y de pesca', '12345738', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(356, 'LUCIA MILAGRO MEJIA ROMERO', '06111209-8', 'Técnico agropecuario y de pesca', '12345739', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(357, 'JOSE CARLOS GARCIA MARTINEZ', '04926103-3', 'Técnico agropecuario y de pesca', '12345740', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(358, 'WILBER MOISES MEJIA RIVAS', '05383879-5', 'Técnico agropecuario y de pesca', '12345741', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(359, 'DAVID ALEXANDER VIGIL HERNÁNDEZ', '06643301-7', 'Técnico agropecuario y de pesca', '12345742', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(360, 'ADA LISETH ORDÓÑEZ CAMPOS', 'CEN-00123', 'Técnico agropecuario y de pesca', '1234-5743', NULL, '24', '1', '2025-06-02 14:07:47', '2025-03-17'),
	(361, 'MARVIN ADONAY NAVARRO CRUZ', '05860200-0', 'Técnico agropecuario y de pesca', '12345744', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(362, 'GABRIELA ALESSANDRA BERMUDEZ MENDOZA', '06879923-1', 'Técnico agropecuario y de pesca', '12345745', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(363, 'ANA LILIAN REYES ALFARO', 'CEN-00987', 'Técnico agropecuario y de pesca', '12345746', NULL, '24', '1', '2025-06-02 14:08:21', '2025-03-17'),
	(364, 'JOSUÉ MARIO ALEJO JIMÉNEZ', '04722995-4', 'Técnico agropecuario y de pesca', '12345747', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(365, 'MARIO ALEJANDRO ALVARADO ORTEZ', '06267453-0', 'Técnico agropecuario y de pesca', '12345748', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(366, 'HECTOR ANTONIO REYES ALFARO', '06428743-6', 'Técnico agropecuario y de pesca', '12345749', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(367, 'LILA MERCEDES MONTECINOS INGLÉS', '05137307-4', 'Técnico agropecuario y de pesca', '12345750', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(368, 'MERARI SARAI MARTINEZ HERNANDEZ', '05874400-6', 'Técnico agropecuario y de pesca', '12345751', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(369, 'JORGE ELISEO AGUILAR PINEDA', '04394456-0', 'Técnico agropecuario y de pesca', '12345752', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(370, 'ANA MARGARITA MARTINEZ SORTO', '00196541-5', 'Técnico agropecuario y de pesca', '12345753', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(371, 'ROSA ISABEL VALIENTE DE PINEDA', '05728373-0', 'Técnico agropecuario y de pesca', '12345754', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(372, 'RAQUEL DE JESÚS ALFARO VILLATORO', '07095177-6', 'Técnico agropecuario y de pesca', '12345755', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(373, 'EVELIN DEL CARMEN CALLEJAS CRUZ', '02147070-7', 'Técnico agropecuario y de pesca', '12345756', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(374, 'EDWIN ALEXIS ROMERO VELASQUEZ', '03305961-4', 'Técnico agropecuario y de pesca', '12345757', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(375, 'ZAYDA JAZMIN HIDALGO RIVERA', '04748270-6', 'Técnico agropecuario y de pesca', '12345758', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(376, 'RODRIGO JOSÉ GONZÁLEZ RUIZ', '05337960-2', 'Técnico agropecuario y de pesca', '12345759', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(377, 'BRENDA ESTEFANÍA RIVAS BONILLA', '06458908-2', 'Técnico agropecuario y de pesca', '12345760', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(378, 'JOSE ROBERTO CAMPOS LAINEZ', '05034638-3', 'Técnico agropecuario y de pesca', '12345761', NULL, '24', '1', '2025-03-17 14:45:28', '2025-03-17'),
	(379, 'ANA MIRIAN AMAYA MARAVILLA', '05725122-0', 'Técnico agropecuario y de pesca', '12345762', NULL, '24', '1', '2025-03-17 14:45:29', '2025-03-17'),
	(380, 'CESIA YANETH CASTRO RAMOS', '05273480-9', 'Técnico agropecuario y de pesca', '12345763', NULL, '24', '1', '2025-03-17 14:45:29', '2025-03-17'),
	(381, 'GABRIELA LISETH GUZMÁN ROMERO', '06045072-8', 'Técnico agropecuario y de pesca', '12345764', NULL, '24', '1', '2025-03-17 14:45:29', '2025-03-17'),
	(382, 'KARLA JOSEFINA SANTOS DE VIGIL', '04944883-9', 'Técnico agropecuario y de pesca', '12345765', NULL, '24', '1', '2025-03-17 14:45:29', '2025-03-17'),
	(383, 'MILAGRO LOURDES RIVERA COREAS', '05235499-2', 'Técnico agropecuario y de pesca', '12345766', NULL, '24', '1', '2025-03-17 14:45:29', '2025-03-17'),
	(384, 'KARIN CAROLINA RENDÓN LÓPEZ', '01384692-8', 'Técnico agropecuario y de pesca', '12345767', NULL, '24', '1', '2025-03-17 14:45:29', '2025-03-17'),
	(385, 'GABRIEL ADONAI HERNÁNDEZ SALGADO', '06682913-7', 'Técnico agropecuario y de pesca', '12345768', NULL, '24', '1', '2025-03-17 14:45:29', '2025-03-17'),
	(386, 'CLAUDIA ESTEFANI AVILES JURADO', '05162625-7', 'Técnico agropecuario y de pesca', '12345769', NULL, '24', '1', '2025-03-17 14:45:29', '2025-03-17'),
	(387, 'DIEGO ERNESTO HENRIQUEZ GUTIÉRREZ', '04606165-4', 'Técnico agropecuario y de pesca', '12345770', NULL, '24', '1', '2025-03-17 14:45:29', '2025-03-17'),
	(388, 'JUAN JOSÉ RODRÍGUEZ CARPIO', '04678093-1', 'Técnico agropecuario y de pesca', '12345771', NULL, '24', '1', '2025-03-17 14:45:29', '2025-03-17'),
	(389, 'JUAN MANUEL DIAZ CORTEZ', '05206574-7', 'Técnico agropecuario y de pesca', '12345772', NULL, '24', '1', '2025-03-17 14:45:29', '2025-03-17'),
	(390, 'KEVIN MAURICIO RODRÍGUEZ LARÍN', '06789202-8', 'Técnico agropecuario y de pesca', '12345773', NULL, '24', '1', '2025-03-17 14:45:29', '2025-03-17'),
	(391, 'JOCELYN MARISELA CASTELLANO DE FUENTES', '04896291-1', 'Técnico agropecuario y de pesca', '12345774', NULL, '24', '1', '2025-03-17 14:45:29', '2025-03-17'),
	(392, 'MARCOS MOISÉS PANIAGUA RIVAS', '06319766-2', 'Técnico agropecuario y de pesca', '12345775', NULL, '24', '1', '2025-03-17 14:45:29', '2025-03-17'),
	(393, 'ESTEBAN RIGOBERTO ARAUJO GARAY', '06223353-8', 'Técnico agropecuario y de pesca', '12345776', NULL, '24', '1', '2025-03-17 14:45:29', '2025-03-17'),
	(394, 'Consultor Test ', '23553463-4', 'Cargo del consultor Test aaa', '2352-5234', NULL, '25', '1', '2025-04-09 17:16:17', '2025-04-09'),
	(395, 'Consultor test aa', '', 'Cargo de consultor test aa', '', NULL, '24', '1', '2025-04-09 17:34:15', '2025-04-09');

-- Volcando estructura para tabla prueba.dispositivos
CREATE TABLE IF NOT EXISTS `dispositivos` (
  `iddispositivo` int NOT NULL AUTO_INCREMENT,
  `tipodispositivo` varchar(20) NOT NULL,
  `marcadispositivo` varchar(20) NOT NULL,
  `modelodispositivo` varchar(20) NOT NULL,
  `imeidispositivo` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `seriedispositivo` varchar(20) NOT NULL,
  `telefonodispositivo` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `inventariodispositivo` varchar(9) DEFAULT NULL,
  `hostnamedispositivo` varchar(50) DEFAULT NULL,
  `accesorios` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `cajadispositivo` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `correlativodispositivo` varchar(50) DEFAULT NULL,
  `responsabledispositivo` int DEFAULT NULL,
  `sededispositivo` int DEFAULT NULL,
  `estadodispositivo` int NOT NULL,
  `comentariodispositivo` text,
  `fecharegistro` date DEFAULT NULL,
  `asignadordispositivo` varchar(50) DEFAULT NULL,
  `receptordispositivo` varchar(50) DEFAULT NULL,
  `fechamodificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fechaasignacion` timestamp NULL DEFAULT NULL,
  `fecharecepcion` timestamp NULL DEFAULT NULL,
  `imgcambioestado` text,
  PRIMARY KEY (`iddispositivo`),
  UNIQUE KEY `seriedispositivo` (`seriedispositivo`),
  UNIQUE KEY `imeidispositivo` (`imeidispositivo`),
  UNIQUE KEY `inventariodispositivo` (`inventariodispositivo`),
  UNIQUE KEY `hostnamedispositivo` (`hostnamedispositivo`),
  KEY `FKresponsabledispositivo` (`responsabledispositivo`),
  CONSTRAINT `FKresponsabledispositivo` FOREIGN KEY (`responsabledispositivo`) REFERENCES `consultores` (`idconsultor`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=588 DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla prueba.dispositivos: ~24 rows (aproximadamente)
INSERT INTO `dispositivos` (`iddispositivo`, `tipodispositivo`, `marcadispositivo`, `modelodispositivo`, `imeidispositivo`, `seriedispositivo`, `telefonodispositivo`, `inventariodispositivo`, `hostnamedispositivo`, `accesorios`, `cajadispositivo`, `correlativodispositivo`, `responsabledispositivo`, `sededispositivo`, `estadodispositivo`, `comentariodispositivo`, `fecharegistro`, `asignadordispositivo`, `receptordispositivo`, `fechamodificacion`, `fechaasignacion`, `fecharecepcion`, `imgcambioestado`) VALUES
	(539, 'Teléfono', 'Samsung', 'Galaxy A34 5G', '123423412412341', 'DG343G34FGWG343', '2323-3341', NULL, NULL, NULL, 'OT47', '1', NULL, 24, 1, '', '2025-03-11', NULL, NULL, '2025-07-09 20:11:18', NULL, NULL, NULL),
	(540, 'Teléfono', 'Samsung', 'Galaxy A34 5G', '111112222233333', 'aaasssdddfff', '7872-7382', NULL, NULL, NULL, 'OT45', '4', NULL, 24, 3, 'Dañado dañado dañado\r\nY pendiente de entrega de dos accesorios', '2025-03-11', NULL, NULL, '2025-07-09 14:57:04', NULL, NULL, NULL),
	(541, 'Teléfono', 'Samsung', 'Galaxy A34 5G', '222223333344444', 'bbbsssdddwww', '23233434', NULL, NULL, NULL, 'OT52', '2', NULL, 24, 1, '', '2025-03-11', NULL, NULL, '2025-07-09 21:51:30', NULL, NULL, NULL),
	(542, 'Teléfono', 'Samsung', 'Galaxy A34 5G', '333334444455555', 'eeewwwrrrttt', '45455656', NULL, NULL, NULL, 'OT52', '1', NULL, 24, 4, 'Le robaron el dispositivo, mientras se conducía en el bus.', '2025-03-11', NULL, NULL, '2025-06-11 21:24:30', NULL, NULL, NULL),
	(543, 'Teléfono', 'Samsung', 'Galaxy A34 5G', '666665555544444', 'gfggfffdddccc', '6767-7878', NULL, NULL, NULL, 'OT45', '3', NULL, 24, 3, 'Dispositivo se golpeó al caer sobre un aroca.', '2025-03-11', NULL, NULL, '2025-06-11 21:24:03', NULL, NULL, NULL),
	(544, 'Laptop', 'HP', 'EliteBook 640 G9', NULL, '236454YERTEYERT', '', '3463-2634', 'hostname01', NULL, '', '', NULL, 25, 1, '', '2025-04-09', NULL, NULL, '2025-07-10 20:24:57', NULL, NULL, 'vistas/assets/img/cambioestados/Tablet R52W308TZXK Dañada 02.jfif'),
	(545, 'Teléfono', 'Samsung', 'Galaxy A34 5G', '347458464456845', 'TWERT234TWETWER', '', NULL, NULL, NULL, 'OT52', '5', NULL, 24, 5, 'aaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaa', '2025-04-09', NULL, NULL, '2025-06-11 21:24:57', NULL, NULL, 'vistas/assets/img/cambioestados/20240612_110008.jpg'),
	(546, 'Teléfono', 'Samsung', 'Samsung A33 5G', '234532623632623', 'W34TW3GWERTW43', '1213-1231', NULL, NULL, NULL, 'OT45', '1', NULL, 24, 1, '', '2025-04-09', NULL, NULL, '2025-07-09 20:11:01', NULL, NULL, NULL),
	(547, 'Proyector', 'Epson', 'PowerLite E20', NULL, 'WER23423T432T45', '', '3434-2354', NULL, NULL, '', '', NULL, 26, 1, 'Otro comentario de prueba.', '2025-04-09', NULL, NULL, '2025-06-24 16:03:48', '2025-05-11 08:28:17', NULL, NULL),
	(548, 'Impresora', 'Lexmark', 'MX721ade', NULL, 'IOU8698YUIY78', '', '3452-3462', NULL, NULL, '', '', NULL, 24, 1, '', '2025-04-10', NULL, NULL, '2025-07-08 20:16:49', NULL, NULL, 'vistas/assets/img/cambioestados/1177568.png'),
	(570, 'Laptop', 'HP', 'EliteBook 640 G9', NULL, 'ASDFG12345AS', '', '1101-0239', 'Hostnam456', NULL, 'OT53', '3', NULL, 25, 1, '', '2025-04-10', NULL, NULL, '2025-07-09 20:10:41', NULL, NULL, 'vistas/assets/img/cambioestados/documento.png'),
	(571, 'Laptop', 'HP', 'EliteBook 640 G9', NULL, 'ASDFGDSGFH45AS', '', '1101-4567', 'Hostnam466', NULL, '', '', NULL, 25, 1, '', '2025-04-10', NULL, NULL, '2025-07-10 20:27:01', NULL, NULL, 'vistas/assets/img/cambioestados/documento (1).png'),
	(572, 'Laptop', 'HP', 'EliteBook 640 G9', NULL, 'ASDFRTU2345AS', '', '1101-6789', 'Hostnam486', NULL, '', '', NULL, 25, 1, '', '2025-04-10', NULL, NULL, '2025-07-09 15:47:09', NULL, NULL, 'vistas/assets/img/cambioestados/documento (1).png'),
	(573, 'Teléfono', 'Samsung', 'Galaxy A34 5G', '234537536856794', 'SDFG3245TRT2', '23452345423', NULL, NULL, NULL, 'OT77', '1', NULL, 24, 5, '', '2025-05-27', NULL, NULL, '2025-06-11 15:35:16', NULL, NULL, 'vistas/assets/img/cambioestados/Captura de pantalla 2025-05-22 140936.png'),
	(577, 'Tablet', 'Samsung', 'Galaxy S9', '787878787878789', 'NNNNNNNNNN', '71717173', NULL, NULL, NULL, 'OT78', '3', NULL, 24, 1, '', '2025-05-27', NULL, NULL, '2025-07-10 21:00:15', NULL, NULL, 'vistas/assets/img/cambioestados/Captura de pantalla 2024-12-13 154821.jpg'),
	(578, 'Teléfono', 'Samsung', 'Galaxy A34 5G', '787878787878787', 'VVVVVVVVVV', '71717171', NULL, NULL, NULL, 'OT77', '1', NULL, 26, 1, 'sgasdgsag', '2025-05-27', NULL, NULL, '2025-07-09 15:04:33', '2025-01-01 06:00:00', NULL, 'vistas/assets/img/cambioestados/logo_censo_viñetas.png'),
	(579, 'Teléfono', 'Samsung', 'Galaxy A34 5G', '787878787878788', 'BBBBBBBBBB', '71717172', NULL, NULL, NULL, 'OT77', '3', NULL, 24, 1, '', '2025-05-27', NULL, NULL, '2025-07-09 21:17:41', NULL, NULL, 'vistas/assets/img/cambioestados/Captura de pantalla 2025-05-22 140905.png'),
	(581, 'Teléfono', 'Samsung', 'Galaxy A34 5G', '434563462362362', 'WQE1235QWET12', '23523513512', NULL, NULL, NULL, 'OT90', '1', NULL, 24, 1, '', '2025-06-04', NULL, NULL, '2025-07-10 20:26:47', NULL, NULL, NULL),
	(582, 'Laptop', 'HP', 'EliteBook 640 G9', NULL, 'WEWT235WET23523', '', '1122-3344', NULL, NULL, '', '', NULL, 24, 1, '', '2025-06-19', NULL, NULL, '2025-07-10 20:26:57', NULL, NULL, NULL),
	(583, 'Cargador de laptop', 'HP', 'ModelCarger123', NULL, 'QWER2135QWER123', '', '1122-3366', NULL, NULL, '', '', NULL, 24, 1, '', '2025-06-24', NULL, NULL, '2025-07-08 20:16:46', NULL, NULL, NULL),
	(584, 'Teléfono', 'Samsung', 'Galaxy A34 5G', '888587587587324', 'DSFDSFHS3463636', '34353588888', NULL, NULL, NULL, '55', '55', NULL, 28, 1, '', '2025-07-07', NULL, NULL, '2025-07-10 19:22:06', NULL, NULL, NULL),
	(585, 'Teléfono', 'Samsung', 'Galaxy A34 5G', '123451234512345', 'ASDFG123FGHS', '78727372', '1234-6634', NULL, NULL, 'OT01', '34', NULL, 1, 1, NULL, '2025-07-10', NULL, NULL, '2025-07-10 19:34:10', NULL, NULL, NULL),
	(586, 'Tablet', 'Samsung', 'Galaxy S9', '123451234512346', 'ASDFJHKHJ345AS', '78727383', '1234-6635', NULL, NULL, 'OT02', '4', NULL, 1, 1, NULL, '2025-07-10', NULL, NULL, '2025-07-10 19:34:10', NULL, NULL, NULL),
	(587, 'Laptop', 'HP', 'EliteBook 640 G9', NULL, 'QRW12EWRQW', '', '2233-4455', NULL, NULL, '', '', NULL, 27, 1, NULL, '2025-07-10', NULL, NULL, '2025-07-10 19:34:10', NULL, NULL, NULL);

-- Volcando estructura para tabla prueba.marcadispositivo
CREATE TABLE IF NOT EXISTS `marcadispositivo` (
  `idmarca` int NOT NULL AUTO_INCREMENT,
  `nombremarca` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`idmarca`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla prueba.marcadispositivo: ~3 rows (aproximadamente)
INSERT INTO `marcadispositivo` (`idmarca`, `nombremarca`) VALUES
	(7, 'Samsung'),
	(8, 'HP'),
	(9, 'Epson'),
	(11, 'Lexmark'),
	(12, 'HP');

-- Volcando estructura para tabla prueba.modelodispositivo
CREATE TABLE IF NOT EXISTS `modelodispositivo` (
  `idmodelo` int NOT NULL AUTO_INCREMENT,
  `nombremodelo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`idmodelo`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla prueba.modelodispositivo: ~3 rows (aproximadamente)
INSERT INTO `modelodispositivo` (`idmodelo`, `nombremodelo`) VALUES
	(10, 'Galaxy A34 5G'),
	(11, 'EliteBook 640 G9'),
	(12, 'Galaxy S9'),
	(13, 'PowerLite E20'),
	(14, 'MX721ade'),
	(15, 'Samsung A33 5G'),
	(16, 'ModelCarger123');

-- Volcando estructura para tabla prueba.registros
CREATE TABLE IF NOT EXISTS `registros` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha_asignacion` timestamp NULL DEFAULT NULL,
  `nombre_asignador` varchar(30) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `usuario_campo_id` int DEFAULT NULL,
  `sede_id` int DEFAULT NULL,
  `dispositivo_id` int DEFAULT NULL,
  `tipo_dispositivo` varchar(20) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `accesorios_entregados` text COLLATE utf8mb3_unicode_ci,
  `accesorios_recuperados` text COLLATE utf8mb3_unicode_ci,
  `fecha_recepcion` timestamp NULL DEFAULT NULL,
  `nombre_receptor` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `comentario` varchar(500) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `fecha_modificacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `sede_id` (`sede_id`),
  KEY `dispositivo_id` (`dispositivo_id`),
  CONSTRAINT `FK1restriccionregistros` FOREIGN KEY (`dispositivo_id`) REFERENCES `dispositivos` (`iddispositivo`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=469 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- Volcando datos para la tabla prueba.registros: ~39 rows (aproximadamente)
INSERT INTO `registros` (`id`, `fecha_asignacion`, `nombre_asignador`, `usuario_campo_id`, `sede_id`, `dispositivo_id`, `tipo_dispositivo`, `accesorios_entregados`, `accesorios_recuperados`, `fecha_recepcion`, `nombre_receptor`, `comentario`, `fecha_modificacion`) VALUES
	(423, '2025-07-09 09:23:15', 'Obed Alberto Castro Orellana', 295, 24, 577, 'Tablet', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"1","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"1","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-09 09:23:35', 'Obed Alberto Castro Orellana', '', '2025-07-09 21:23:35'),
	(424, '2025-07-09 09:25:35', 'Obed Alberto Castro Orellana', 296, 24, 577, 'Tablet', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"1","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"1","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-09 09:26:53', 'Obed Alberto Castro Orellana', '', '2025-07-09 21:26:53'),
	(425, '2025-07-09 09:25:55', 'Obed Alberto Castro Orellana', 394, 25, 584, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-09 09:26:35', 'Obed Alberto Castro Orellana', '', '2025-07-09 21:26:35'),
	(426, '2025-07-09 09:27:15', 'Obed Alberto Castro Orellana', 295, 24, 577, 'Tablet', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"1","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"1","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-09 09:27:39', 'Obed Alberto Castro Orellana', '', '2025-07-09 21:27:39'),
	(427, '2025-07-09 09:28:00', 'Obed Alberto Castro Orellana', 296, 24, 577, 'Tablet', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"1","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"1","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-09 09:28:12', 'Obed Alberto Castro Orellana', '', '2025-07-09 21:28:12'),
	(428, '2025-07-09 09:29:10', 'Obed Alberto Castro Orellana', 295, 24, 577, 'Tablet', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"1","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"1","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-09 09:29:19', 'Obed Alberto Castro Orellana', '', '2025-07-09 21:29:20'),
	(429, '2025-07-09 09:35:24', 'Obed Alberto Castro Orellana', 295, 24, 577, 'Tablet', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"1","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"1","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-09 09:36:07', 'Obed Alberto Castro Orellana', '', '2025-07-09 21:36:07'),
	(430, '2025-07-09 09:36:23', 'Obed Alberto Castro Orellana', 394, 25, 584, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-09 09:37:49', 'Obed Alberto Castro Orellana', '', '2025-07-09 21:37:49'),
	(431, '2025-07-09 09:38:06', 'Obed Alberto Castro Orellana', 295, 24, 577, 'Tablet', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"1","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"1","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-09 09:38:14', 'Obed Alberto Castro Orellana', '', '2025-07-09 21:38:14'),
	(432, '2025-07-09 09:38:22', 'Obed Alberto Castro Orellana', 394, 25, 584, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-09 09:38:43', 'Obed Alberto Castro Orellana', '', '2025-07-09 21:38:43'),
	(433, '2025-07-09 09:40:13', 'Obed Alberto Castro Orellana', 394, 25, 584, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-09 09:40:26', 'Obed Alberto Castro Orellana', '', '2025-07-09 21:40:26'),
	(434, '2025-07-09 09:40:40', 'Obed Alberto Castro Orellana', 295, 24, 577, 'Tablet', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"1","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"1","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-09 09:40:44', 'Obed Alberto Castro Orellana', '', '2025-07-09 21:40:44'),
	(435, '2025-07-09 09:40:53', 'Obed Alberto Castro Orellana', 296, 24, 577, 'Tablet', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"1","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"1","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-09 09:41:01', 'Obed Alberto Castro Orellana', '', '2025-07-09 21:41:01'),
	(436, '2025-07-09 09:41:50', 'Obed Alberto Castro Orellana', 394, 25, 584, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"0","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"0","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-09 09:41:56', 'Obed Alberto Castro Orellana', '', '2025-07-09 21:41:56'),
	(437, '2025-07-09 09:46:01', 'Obed Alberto Castro Orellana', 394, 25, 584, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-09 09:47:02', 'Obed Alberto Castro Orellana', '', '2025-07-09 21:47:02'),
	(438, '2025-07-09 09:46:28', 'Obed Alberto Castro Orellana', 295, 24, 541, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-09 09:46:50', 'Obed Alberto Castro Orellana', '', '2025-07-09 21:46:51'),
	(439, '2025-07-09 09:47:14', 'Obed Alberto Castro Orellana', 394, 25, 584, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-09 09:47:25', 'Obed Alberto Castro Orellana', '', '2025-07-09 21:47:25'),
	(440, '2025-07-09 09:50:39', 'Obed Alberto Castro Orellana', 394, 25, 584, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-09 09:51:03', 'Obed Alberto Castro Orellana', '', '2025-07-09 21:51:03'),
	(441, '2025-07-09 09:51:20', 'Obed Alberto Castro Orellana', 295, 24, 541, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-09 09:51:30', 'Obed Alberto Castro Orellana', '', '2025-07-09 21:51:30'),
	(442, '2025-07-09 09:52:06', 'Obed Alberto Castro Orellana', 295, 24, 584, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-09 09:53:27', 'Obed Alberto Castro Orellana', '', '2025-07-09 21:53:27'),
	(443, '2025-07-09 09:53:52', 'Obed Alberto Castro Orellana', 394, 25, 584, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-09 09:54:06', 'Obed Alberto Castro Orellana', '', '2025-07-09 21:54:06'),
	(444, '2025-07-09 09:55:18', 'Obed Alberto Castro Orellana', 394, 25, 584, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-09 09:55:23', 'Obed Alberto Castro Orellana', '', '2025-07-09 21:55:23'),
	(445, '2025-07-09 09:56:07', 'Obed Alberto Castro Orellana', 394, 25, 584, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-09 09:56:34', 'Obed Alberto Castro Orellana', '', '2025-07-09 21:56:35'),
	(446, '2025-07-09 09:59:17', 'Obed Alberto Castro Orellana', 394, 25, 584, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-09 09:59:31', 'Obed Alberto Castro Orellana', '', '2025-07-09 21:59:31'),
	(447, '2025-07-09 10:01:52', 'Obed Alberto Castro Orellana', 394, 25, 584, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-09 10:02:05', 'Obed Alberto Castro Orellana', '', '2025-07-09 22:02:06'),
	(448, '2025-07-09 10:02:43', 'Obed Alberto Castro Orellana', 394, 25, 584, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-09 10:02:47', 'Obed Alberto Castro Orellana', '', '2025-07-09 22:02:47'),
	(449, '2025-07-09 10:03:51', 'Obed Alberto Castro Orellana', 394, 25, 584, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-09 10:03:55', 'Obed Alberto Castro Orellana', '', '2025-07-09 22:03:55'),
	(450, '2025-07-09 10:04:17', 'Obed Alberto Castro Orellana', 394, 25, 584, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-09 10:04:23', 'Obed Alberto Castro Orellana', '', '2025-07-09 22:04:23'),
	(451, '2025-07-09 10:06:11', 'Obed Alberto Castro Orellana', 394, 25, 584, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-09 10:06:17', 'Obed Alberto Castro Orellana', '', '2025-07-09 22:06:17'),
	(452, '2025-07-09 10:07:15', 'Obed Alberto Castro Orellana', 394, 25, 584, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-09 10:07:20', 'Obed Alberto Castro Orellana', '', '2025-07-09 22:07:20'),
	(453, '2025-07-09 10:08:48', 'Obed Alberto Castro Orellana', 394, 25, 584, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-09 10:08:53', 'Obed Alberto Castro Orellana', '', '2025-07-09 22:08:53'),
	(454, '2025-07-09 10:12:06', 'Obed Alberto Castro Orellana', 394, 25, 584, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-09 10:12:18', 'Obed Alberto Castro Orellana', '', '2025-07-09 22:12:18'),
	(455, '2025-07-09 10:13:05', 'Obed Alberto Castro Orellana', 394, 25, 584, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-09 10:14:09', 'Obed Alberto Castro Orellana', '', '2025-07-09 22:14:09'),
	(456, '2025-07-10 13:10:35', 'Obed Alberto Castro Orellana', 394, 25, 584, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-10 13:10:48', 'Obed Alberto Castro Orellana', '', '2025-07-10 13:10:48'),
	(457, '2025-07-10 13:10:59', 'Obed Alberto Castro Orellana', 394, 25, 584, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-10 13:11:10', 'Obed Alberto Castro Orellana', '', '2025-07-10 13:11:10'),
	(458, '2025-07-10 13:11:33', 'Obed Alberto Castro Orellana', 394, 25, 584, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-10 13:12:49', 'Obed Alberto Castro Orellana', '', '2025-07-10 13:12:49'),
	(459, '2025-07-10 13:13:28', 'Obed Alberto Castro Orellana', 295, 24, 577, 'Tablet', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"1","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"1","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-10 13:14:17', 'Obed Alberto Castro Orellana', '', '2025-07-10 13:14:18'),
	(460, '2025-07-10 13:15:30', 'Obed Alberto Castro Orellana', 394, 25, 584, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-10 13:16:28', 'Obed Alberto Castro Orellana', '', '2025-07-10 13:16:29'),
	(461, '2025-07-10 07:37:05', 'Obed Alberto Castro Orellana', 295, 24, 582, 'Laptop', '{"Cubo":"0","Cable":"0","Funda":"0","Lapiz":"0","Powerbank":"0","Maletin":"1","Cargador":"1","Mouse":"1","Mousepad":"1"}', '{"Cubo":"0","Cable":"0","Funda":"0","Lapiz":"0","Powerbank":"0","Maletin":"1","Cargador":"1","Mouse":"1","Mousepad":"1"}', '2025-07-10 20:25:12', 'Obed Alberto Castro Orellana', '', '2025-07-10 20:25:12'),
	(462, '2025-07-10 08:19:16', 'Obed Alberto Castro Orellana', 394, 25, 544, 'Laptop', '{"Cubo":"0","Cable":"0","Funda":"0","Lapiz":"0","Powerbank":"0","Maletin":"1","Cargador":"1","Mouse":"1","Mousepad":"1"}', '{"Cubo":"0","Cable":"0","Funda":"0","Lapiz":"0","Powerbank":"0","Maletin":"1","Cargador":"1","Mouse":"1","Mousepad":"1"}', '2025-07-10 20:24:57', 'Obed Alberto Castro Orellana', '', '2025-07-10 20:24:57'),
	(463, '2025-07-10 20:23:33', 'Obed Alberto Castro Orellana', 295, 24, 577, 'Tablet', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"1","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"1","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-10 20:24:44', 'Obed Alberto Castro Orellana', '', '2025-07-10 20:24:44'),
	(464, '2025-07-10 20:26:07', 'Obed Alberto Castro Orellana', 296, 24, 582, 'Laptop', '{"Cubo":"0","Cable":"0","Funda":"0","Lapiz":"0","Powerbank":"0","Maletin":"1","Cargador":"1","Mouse":"1","Mousepad":"1"}', '{"Cubo":"0","Cable":"0","Funda":"0","Lapiz":"0","Powerbank":"0","Maletin":"1","Cargador":"1","Mouse":"1","Mousepad":"1"}', '2025-07-10 20:26:57', 'Obed Alberto Castro Orellana', '', '2025-07-10 20:26:57'),
	(465, '2025-07-10 20:26:12', 'Obed Alberto Castro Orellana', 394, 25, 571, 'Laptop', '{"Cubo":"0","Cable":"0","Funda":"0","Lapiz":"0","Powerbank":"0","Maletin":"1","Cargador":"1","Mouse":"1","Mousepad":"1"}', '{"Cubo":"0","Cable":"0","Funda":"0","Lapiz":"0","Powerbank":"0","Maletin":"1","Cargador":"1","Mouse":"1","Mousepad":"1"}', '2025-07-10 20:27:01', 'Obed Alberto Castro Orellana', '', '2025-07-10 20:27:01'),
	(466, '2025-07-10 20:26:18', 'Obed Alberto Castro Orellana', 295, 24, 577, 'Tablet', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"1","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"1","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-10 20:26:52', 'Obed Alberto Castro Orellana', '', '2025-07-10 20:26:53'),
	(467, '2025-07-10 20:26:33', 'Obed Alberto Castro Orellana', 297, 24, 581, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-10 20:26:47', 'Obed Alberto Castro Orellana', '', '2025-07-10 20:26:47'),
	(468, '2025-07-10 21:00:00', 'Obed Alberto Castro Orellana', 295, 24, 577, 'Tablet', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"1","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"1","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-07-10 21:00:15', 'Obed Alberto Castro Orellana', '', '2025-07-10 21:00:30');

-- Volcando estructura para tabla prueba.registros_accesorios
CREATE TABLE IF NOT EXISTS `registros_accesorios` (
  `idaccesorio` int NOT NULL AUTO_INCREMENT,
  `accesorio_id` int NOT NULL DEFAULT '0',
  `cantidadaccesorio` int NOT NULL,
  `inventarioactual` int DEFAULT '0',
  `sede_id` int NOT NULL DEFAULT '0',
  `tipo_movimiento` varchar(50) DEFAULT NULL,
  `comentarioaccesorio` text,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idaccesorio`),
  KEY `FK_accesorio_nombre` (`accesorio_id`),
  KEY `FK_accesorio_sede` (`sede_id`),
  CONSTRAINT `FK_accesorio_nombre` FOREIGN KEY (`accesorio_id`) REFERENCES `accesorios` (`idaccesorio`),
  CONSTRAINT `FK_accesorio_sede` FOREIGN KEY (`sede_id`) REFERENCES `sedes` (`idsede`)
) ENGINE=InnoDB AUTO_INCREMENT=1029 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla prueba.registros_accesorios: ~47 rows (aproximadamente)
INSERT INTO `registros_accesorios` (`idaccesorio`, `accesorio_id`, `cantidadaccesorio`, `inventarioactual`, `sede_id`, `tipo_movimiento`, `comentarioaccesorio`, `fecha`) VALUES
	(531, 1, 75, 75, 24, 'Inventario inicial', NULL, '2025-07-09 09:01:55'),
	(532, 2, 75, 75, 24, 'Inventario inicial', NULL, '2025-07-09 09:02:01'),
	(533, 3, 75, 75, 24, 'Inventario inicial', NULL, '2025-07-09 09:02:05'),
	(534, 5, 75, 75, 24, 'Inventario inicial', NULL, '2025-07-09 09:02:18'),
	(556, 4, 5, 5, 24, 'Inventario inicial', NULL, '2025-07-09 09:08:08'),
	(987, 6, 1, -1, 24, 'Asignación', NULL, '2025-07-10 20:26:07'),
	(988, 7, 1, -1, 24, 'Asignación', NULL, '2025-07-10 20:26:07'),
	(989, 8, 1, -1, 24, 'Asignación', NULL, '2025-07-10 20:26:07'),
	(990, 9, 1, -1, 24, 'Asignación', NULL, '2025-07-10 20:26:07'),
	(991, 6, 1, -1, 25, 'Asignación', NULL, '2025-07-10 20:26:12'),
	(992, 7, 1, -1, 25, 'Asignación', NULL, '2025-07-10 20:26:12'),
	(993, 8, 1, -1, 25, 'Asignación', NULL, '2025-07-10 20:26:12'),
	(994, 9, 1, -1, 25, 'Asignación', NULL, '2025-07-10 20:26:12'),
	(995, 1, 1, 74, 24, 'Asignación', NULL, '2025-07-10 20:26:18'),
	(996, 2, 1, 74, 24, 'Asignación', NULL, '2025-07-10 20:26:18'),
	(997, 3, 1, 74, 24, 'Asignación', NULL, '2025-07-10 20:26:18'),
	(998, 4, 1, 4, 24, 'Asignación', NULL, '2025-07-10 20:26:18'),
	(999, 5, 1, 74, 24, 'Asignación', NULL, '2025-07-10 20:26:18'),
	(1000, 1, 1, 73, 24, 'Asignación', NULL, '2025-07-10 20:26:33'),
	(1001, 2, 1, 73, 24, 'Asignación', NULL, '2025-07-10 20:26:33'),
	(1002, 3, 1, 73, 24, 'Asignación', NULL, '2025-07-10 20:26:33'),
	(1003, 5, 1, 73, 24, 'Asignación', NULL, '2025-07-10 20:26:33'),
	(1004, 1, 1, 74, 24, 'Recepción', NULL, '2025-07-10 20:26:47'),
	(1005, 2, 1, 74, 24, 'Recepción', NULL, '2025-07-10 20:26:47'),
	(1006, 3, 1, 74, 24, 'Recepción', NULL, '2025-07-10 20:26:47'),
	(1007, 5, 1, 74, 24, 'Recepción', NULL, '2025-07-10 20:26:47'),
	(1008, 1, 1, 75, 24, 'Recepción', NULL, '2025-07-10 20:26:52'),
	(1009, 2, 1, 75, 24, 'Recepción', NULL, '2025-07-10 20:26:52'),
	(1010, 3, 1, 75, 24, 'Recepción', NULL, '2025-07-10 20:26:52'),
	(1011, 4, 1, 5, 24, 'Recepción', NULL, '2025-07-10 20:26:52'),
	(1012, 5, 1, 75, 24, 'Recepción', NULL, '2025-07-10 20:26:52'),
	(1013, 6, 1, 0, 24, 'Recepción', NULL, '2025-07-10 20:26:57'),
	(1014, 7, 1, 0, 24, 'Recepción', NULL, '2025-07-10 20:26:57'),
	(1015, 8, 1, 0, 24, 'Recepción', NULL, '2025-07-10 20:26:57'),
	(1016, 9, 1, 0, 24, 'Recepción', NULL, '2025-07-10 20:26:57'),
	(1017, 6, 1, 0, 25, 'Recepción', NULL, '2025-07-10 20:27:01'),
	(1018, 7, 1, 0, 25, 'Recepción', NULL, '2025-07-10 20:27:01'),
	(1019, 8, 1, 0, 25, 'Recepción', NULL, '2025-07-10 20:27:01'),
	(1020, 9, 1, 0, 25, 'Recepción', NULL, '2025-07-10 20:27:01'),
	(1021, 1, 1, 74, 24, 'Asignación', NULL, '2025-07-10 21:00:00'),
	(1022, 2, 1, 74, 24, 'Asignación', NULL, '2025-07-10 21:00:00'),
	(1023, 3, 1, 74, 24, 'Asignación', NULL, '2025-07-10 21:00:00'),
	(1024, 4, 1, 4, 24, 'Asignación', NULL, '2025-07-10 21:00:00'),
	(1025, 5, 1, 74, 24, 'Asignación', NULL, '2025-07-10 21:00:00'),
	(1026, 1, 1, 75, 24, 'Recepción', NULL, '2025-07-10 21:00:15'),
	(1027, 2, 1, 75, 24, 'Recepción', NULL, '2025-07-10 21:00:15'),
	(1028, 3, 1, 75, 24, 'Recepción', NULL, '2025-07-10 21:00:15');

-- Volcando estructura para tabla prueba.sedes
CREATE TABLE IF NOT EXISTS `sedes` (
  `idsede` int NOT NULL AUTO_INCREMENT,
  `nombresede` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `departamentosede` varchar(50) NOT NULL,
  `regionsede` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`idsede`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla prueba.sedes: ~12 rows (aproximadamente)
INSERT INTO `sedes` (`idsede`, `nombresede`, `departamentosede`, `regionsede`) VALUES
	(24, 'Santiago de María otra', 'Usulután', 'Usulután 2'),
	(25, 'Sede prueba 01', 'Usulután', 'San Miguel 1'),
	(26, 'Alcaldía Distrital Jucuapa', 'Usulután', 'Usulután 1'),
	(27, 'Otra sede de prueba', 'La Unión', 'La Unión'),
	(28, 'Sede 01, Auachapán 1', 'Ahuachapán', 'Ahuachapán 01'),
	(29, 'Sede Morazán 01, prueba para desplegable de leyendas', 'Morazán', 'Morazán 01'),
	(30, 'Chalate 01', 'Chalatenango', 'Chalatenango 01'),
	(31, 'Otra sede de Usulután', 'Usulután', 'Usulután 3'),
	(32, 'Sede Test con región seleccionada', 'Usulután', 'Usulután 2'),
	(33, 'Sede Test con región escrita', 'Usulután', 'Usulután 2'),
	(36, 'Sede Test con región escrita', 'Usulután', 'Usulután 2'),
	(37, 'Sede 02 de test', 'Ahuachapán', 'Ahuachapán 02');

-- Volcando estructura para tabla prueba.tipodispositivo
CREATE TABLE IF NOT EXISTS `tipodispositivo` (
  `idtipo` int NOT NULL AUTO_INCREMENT,
  `nombretipo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`idtipo`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla prueba.tipodispositivo: ~3 rows (aproximadamente)
INSERT INTO `tipodispositivo` (`idtipo`, `nombretipo`) VALUES
	(10, 'Teléfono'),
	(11, 'Laptop'),
	(12, 'Tablet'),
	(13, 'Proyector'),
	(14, 'Impresora'),
	(15, 'Cargador de laptop');

-- Volcando estructura para tabla prueba.wiki
CREATE TABLE IF NOT EXISTS `wiki` (
  `idwiki` int NOT NULL AUTO_INCREMENT,
  `tituloproblema` text NOT NULL,
  `descripcionproblema` text NOT NULL,
  `solucionproblema` text NOT NULL,
  `reportaproblema` int NOT NULL DEFAULT '0',
  `fechareporte` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idwiki`),
  KEY `FK1reporta` (`reportaproblema`),
  CONSTRAINT `FK1reporta` FOREIGN KEY (`reportaproblema`) REFERENCES `administradores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla prueba.wiki: ~0 rows (aproximadamente)
INSERT INTO `wiki` (`idwiki`, `tituloproblema`, `descripcionproblema`, `solucionproblema`, `reportaproblema`, `fechareporte`) VALUES
	(3, 'asgasdg', 'adgasdgasgadsg', '', 1, '2025-05-17 19:39:17');

-- Volcando estructura para tabla prueba.wikicolaboraciones
CREATE TABLE IF NOT EXISTS `wikicolaboraciones` (
  `idwikicolaboraciones` int NOT NULL AUTO_INCREMENT,
  `idcolabora` int NOT NULL DEFAULT '0',
  `idwiki` int NOT NULL DEFAULT '0',
  `colaboracion` text NOT NULL,
  `fechacolaboracion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idwikicolaboraciones`) USING BTREE,
  KEY `FK1colabora` (`idcolabora`),
  KEY `idwiki` (`idwiki`),
  CONSTRAINT `FK1colabora` FOREIGN KEY (`idcolabora`) REFERENCES `administradores` (`id`),
  CONSTRAINT `FK2wiki` FOREIGN KEY (`idwiki`) REFERENCES `wiki` (`idwiki`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla prueba.wikicolaboraciones: ~0 rows (aproximadamente)
INSERT INTO `wikicolaboraciones` (`idwikicolaboraciones`, `idcolabora`, `idwiki`, `colaboracion`, `fechacolaboracion`) VALUES
	(4, 1, 3, 'Propuesta de solición', '2025-05-19 14:39:00'),
	(5, 1, 3, 'Otro aporte.', '2025-06-03 13:45:34');

-- Volcando estructura para disparador prueba.actualizar_registros
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `actualizar_registros` AFTER UPDATE ON `dispositivos` FOR EACH ROW BEGIN
    -- Solo continúa si el valor de estadodispositivo cambió
    IF OLD.estadodispositivo <> NEW.estadodispositivo THEN

        IF NEW.estadodispositivo = 2 THEN
            INSERT INTO registros (
                fecha_asignacion, usuario_campo_id, sede_id, dispositivo_id, tipo_dispositivo,
                accesorios_entregados, nombre_asignador
            )
            VALUES (
                NEW.fechaasignacion, NEW.responsabledispositivo, NEW.sededispositivo,
                NEW.iddispositivo, NEW.tipodispositivo, NEW.accesorios, NEW.asignadordispositivo
            );

        ELSEIF NEW.estadodispositivo IN (1, 3, 4) THEN
            UPDATE registros
            SET fecha_recepcion = NEW.fecharecepcion,
                accesorios_recuperados = NEW.accesorios,
                nombre_receptor = NEW.receptordispositivo,
                comentario = NEW.comentariodispositivo
            WHERE dispositivo_id = OLD.iddispositivo
              AND fecha_asignacion = OLD.fechaasignacion
              AND usuario_campo_id = OLD.responsabledispositivo;
        END IF;

    END IF;
    
     -- Si el valor de accesorios cambió, actualizar en la tabla registros
    IF OLD.accesorios <> NEW.accesorios THEN
        UPDATE registros
        SET accesorios_entregados = NEW.accesorios
        WHERE dispositivo_id = NEW.iddispositivo
          AND fecha_asignacion = NEW.fechaasignacion
          AND usuario_campo_id = NEW.responsabledispositivo;
    END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
