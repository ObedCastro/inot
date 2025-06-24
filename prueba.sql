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
) ENGINE=InnoDB AUTO_INCREMENT=584 DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla prueba.dispositivos: ~18 rows (aproximadamente)
INSERT INTO `dispositivos` (`iddispositivo`, `tipodispositivo`, `marcadispositivo`, `modelodispositivo`, `imeidispositivo`, `seriedispositivo`, `telefonodispositivo`, `inventariodispositivo`, `hostnamedispositivo`, `accesorios`, `cajadispositivo`, `correlativodispositivo`, `responsabledispositivo`, `sededispositivo`, `estadodispositivo`, `comentariodispositivo`, `fecharegistro`, `asignadordispositivo`, `receptordispositivo`, `fechamodificacion`, `fechaasignacion`, `fecharecepcion`, `imgcambioestado`) VALUES
	(539, 'Teléfono', 'Samsung', 'Galaxy A34 5G', '123423412412341', 'DG343G34FGWG343', '2323-3341', NULL, NULL, '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', 'OT47', '1', 360, 24, 2, 'Técnico tropezó y DMC se rompió al caer.', '2025-03-11', 'Obed Alberto Castro Orellana', NULL, '2025-06-03 18:52:44', '2025-05-30 06:00:00', NULL, NULL),
	(540, 'Teléfono', 'Samsung', 'Galaxy A34 5G', '111112222233333', 'aaasssdddfff', '7872-7382', NULL, NULL, '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', 'OT45', '4', 309, 24, 2, '', '2025-03-11', 'Obed Alberto Castro Orellana', NULL, '2025-06-03 18:55:45', '2025-06-01 06:00:00', NULL, NULL),
	(541, 'Teléfono', 'Samsung', 'Galaxy A34 5G', '222223333344444', 'bbbsssdddwww', '23233434', NULL, NULL, '{"Cubo":"1","Cable":"1","Funda":"0","Lapiz":"0","Powerbank":"0","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', 'OT52', '2', 363, 24, 2, '', '2025-03-11', 'Obed Alberto Castro Orellana', NULL, '2025-06-02 19:24:48', '2025-01-01 06:00:00', NULL, NULL),
	(542, 'Teléfono', 'Samsung', 'Galaxy A34 5G', '333334444455555', 'eeewwwrrrttt', '45455656', NULL, NULL, NULL, 'OT52', '1', NULL, 24, 4, 'Le robaron el dispositivo, mientras se conducía en el bus.', '2025-03-11', NULL, NULL, '2025-06-11 21:24:30', NULL, NULL, NULL),
	(543, 'Teléfono', 'Samsung', 'Galaxy A34 5G', '666665555544444', 'gfggfffdddccc', '6767-7878', NULL, NULL, NULL, 'OT45', '3', NULL, 24, 3, 'Dispositivo se golpeó al caer sobre un aroca.', '2025-03-11', NULL, NULL, '2025-06-11 21:24:03', NULL, NULL, NULL),
	(544, 'Laptop', 'HP', 'EliteBook 640 G9', NULL, '236454YERTEYERT', '', '3463-2634', 'hostname01', NULL, 'OT45', '2', NULL, 28, 5, '', '2025-04-09', NULL, NULL, '2025-06-11 17:17:43', NULL, NULL, 'vistas/assets/img/cambioestados/documento (1).png'),
	(545, 'Teléfono', 'Samsung', 'Galaxy A34 5G', '347458464456845', 'TWERT234TWETWER', '', NULL, NULL, NULL, 'OT52', '5', NULL, 24, 5, 'aaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaa', '2025-04-09', NULL, NULL, '2025-06-11 21:24:57', NULL, NULL, 'vistas/assets/img/cambioestados/20240612_110008.jpg'),
	(546, 'Teléfono', 'Samsung', 'Samsung A33 5G', '234532623632623', 'W34TW3GWERTW43', '1213-1231', NULL, NULL, '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', 'OT45', '1', 363, 24, 2, '', '2025-04-09', 'Usuario Test Test', NULL, '2025-06-19 14:53:15', '2025-06-19 14:53:15', NULL, NULL),
	(547, 'Proyector', 'Epson', 'PowerLite E20', NULL, 'WER23423T432T45', '', '3434-2354', NULL, NULL, '', '', NULL, 26, 1, 'Otro comentario de prueba.', '2025-04-09', NULL, NULL, '2025-06-24 16:03:48', '2025-05-11 08:28:17', NULL, NULL),
	(548, 'Impresora', 'Lexmark', 'MX721ade', NULL, 'IOU8698YUIY78', '', '3452-3462', NULL, NULL, '', '', NULL, 24, 5, '', '2025-04-10', NULL, NULL, '2025-06-11 18:01:07', NULL, NULL, 'vistas/assets/img/cambioestados/Cesia Yaneth Castro Ramos - 350350683239136.pdf'),
	(570, 'Laptop', 'HP', 'EliteBook 640 G9', NULL, 'ASDFG12345AS', '', '1101-0239', 'Hostnam456', NULL, 'OT53', '3', NULL, 25, 5, 'Comentario de dispositivo dañado', '2025-04-10', NULL, NULL, '2025-06-11 17:52:57', NULL, NULL, 'vistas/assets/img/cambioestados/logo-inot.jpg'),
	(571, 'Laptop', 'HP', 'EliteBook 640 G9', NULL, 'ASDFGDSGFH45AS', '', '1101-4567', 'Hostnam466', '{"Cubo":"0","Cable":"0","Funda":"0","Lapiz":"0","Powerbank":"0","Maletin":"1","Cargador":"1","Mouse":"1","Mousepad":"1"}', '', '', 394, 25, 2, 'Este dispositivo fue trasladado hacia BCR Juan Pablo II, ya que se le entregó a personal en campo en Región Oriental, pero se la llevó hacia allá.', '2025-04-10', 'Obed Alberto Castro Orellana', NULL, '2025-06-24 16:23:06', '2025-06-19 15:03:24', NULL, 'vistas/assets/img/cambioestados/documento (1).png'),
	(572, 'Laptop', 'HP', 'EliteBook 640 G9', NULL, 'ASDFRTU2345AS', '', '1101-6789', 'Hostnam486', NULL, 'OT53', '1', NULL, 29, 5, '', '2025-04-10', NULL, NULL, '2025-06-11 20:33:27', NULL, NULL, 'vistas/assets/img/cambioestados/dep-cabanas-sv.png'),
	(573, 'Teléfono', 'Samsung', 'Galaxy A34 5G', '234537536856794', 'SDFG3245TRT2', '23452345423', NULL, NULL, NULL, 'OT77', '1', NULL, 24, 5, '', '2025-05-27', NULL, NULL, '2025-06-11 15:35:16', NULL, NULL, 'vistas/assets/img/cambioestados/Captura de pantalla 2025-05-22 140936.png'),
	(577, 'Tablet', 'Samsung', 'Galaxy S9', '787878787878789', 'NNNNNNNNNN', '71717173', NULL, NULL, '{"Cubo":"1","Cable":"0","Funda":"1","Lapiz":"1","Powerbank":"0","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', 'OT78', '3', 302, 24, 2, '', '2025-05-27', 'Usuario Test Test', NULL, '2025-06-24 16:02:46', '2025-06-19 15:16:41', NULL, 'vistas/assets/img/cambioestados/Captura de pantalla 2024-12-13 154821.jpg'),
	(578, 'Teléfono', 'Samsung', 'Galaxy A34 5G', '787878787878787', 'VVVVVVVVVV', '71717171', NULL, NULL, NULL, 'OT77', '1', NULL, 26, 5, 'asdñkjn ñsdnñ asndg asdn-g,. as-dgnñewihpqioyetp hwpfh as´dfháshdgñdsagñnasdgkln asdgkn ñanñaioewgñ oaisbdñg ad-sngalsnk dgñansd ñgihañigh ñasihdgñ iahsdñ gañiso dghñasng-an s-dgl na-ksdkgnadsg', '2025-05-27', NULL, NULL, '2025-06-11 20:40:44', '2025-01-01 06:00:00', NULL, 'vistas/assets/img/cambioestados/Captura de pantalla 2023-10-23 070551.png'),
	(579, 'Teléfono', 'Samsung', 'Galaxy A34 5G', '787878787878788', 'BBBBBBBBBB', '71717172', NULL, NULL, NULL, 'OT77', '3', NULL, 24, 5, 'Dispositivo se daño por lluvia.', '2025-05-27', NULL, NULL, '2025-06-11 20:01:53', NULL, NULL, 'vistas/assets/img/cambioestados/Logo CAP_108x90 Full Color.png'),
	(581, 'Teléfono', 'Samsung', 'Galaxy A34 5G', '434563462362362', 'WQE1235QWET12', '23523513512', NULL, NULL, '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"0","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', 'OT90', '1', 357, 24, 2, '', '2025-06-04', 'Obed Alberto Castro Orellana', NULL, '2025-06-24 16:22:15', '2025-06-24 16:22:15', NULL, NULL),
	(582, 'Laptop', 'HP', 'EliteBook 640 G9', NULL, 'WEWT235WET23523', '', '1122-3344', NULL, '{"Cubo":"0","Cable":"0","Funda":"0","Lapiz":"0","Powerbank":"0","Maletin":"1","Cargador":"1","Mouse":"1","Mousepad":"1"}', '', '', 370, 24, 2, '', '2025-06-19', 'Usuario Test Test', NULL, '2025-06-24 16:14:46', '2025-06-19 15:20:01', NULL, NULL),
	(583, 'Cargador de laptop', 'HP', 'ModelCarger123', NULL, 'QWER2135QWER123', '', '1122-3366', NULL, '{"Cubo":"0","Cable":"0","Funda":"0","Lapiz":"0","Powerbank":"0","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '', '', 329, 24, 2, 'Comentario de prueba', '2025-06-24', 'Obed Alberto Castro Orellana', NULL, '2025-06-24 16:20:58', '2025-06-24 16:20:58', NULL, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=309 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- Volcando datos para la tabla prueba.registros: ~20 rows (aproximadamente)
INSERT INTO `registros` (`id`, `fecha_asignacion`, `nombre_asignador`, `usuario_campo_id`, `sede_id`, `dispositivo_id`, `tipo_dispositivo`, `accesorios_entregados`, `accesorios_recuperados`, `fecha_recepcion`, `nombre_receptor`, `comentario`, `fecha_modificacion`) VALUES
	(285, '2025-01-01 06:00:00', 'Obed Alberto Castro Orellana', 360, 24, 579, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"1","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"0","Cable":"0","Funda":"0","Lapiz":"1","Powerbank":"0","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-06-03 17:43:20', 'Obed Alberto Castro Orellana', '', '2025-06-03 17:49:10'),
	(286, '2025-01-01 06:00:00', 'Obed Alberto Castro Orellana', 309, 24, 573, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"0","Lapiz":"1","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"0","Cable":"0","Funda":"0","Lapiz":"0","Powerbank":"0","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-06-04 09:34:42', 'Obed Alberto Castro Orellana', '', '2025-06-04 21:34:43'),
	(287, '2025-01-01 06:00:00', 'Obed Alberto Castro Orellana', 330, 24, 545, 'Teléfono', '{"Cubo":"0","Cable":"1","Funda":"0","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"0","Cable":"1","Funda":"0","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-06-11 09:23:37', 'Obed Alberto Castro Orellana', '', '2025-06-11 21:23:37'),
	(288, '2025-01-01 06:00:00', 'Obed Alberto Castro Orellana', 363, 24, 541, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"0","Lapiz":"0","Powerbank":"0","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', NULL, NULL, NULL, NULL, '2025-06-02 19:24:48'),
	(289, '2025-06-03 17:44:31', 'Obed Alberto Castro Orellana', 309, 24, 579, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"0","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-06-03 17:44:36', 'Obed Alberto Castro Orellana', '', '2025-06-03 17:55:59'),
	(290, '2025-06-03 17:51:42', 'Obed Alberto Castro Orellana', 332, 24, 579, 'Teléfono', '{"Cubo":"0","Cable":"0","Funda":"0","Lapiz":"0","Powerbank":"0","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"0","Cable":"0","Funda":"0","Lapiz":"0","Powerbank":"0","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-06-03 17:51:49', 'Obed Alberto Castro Orellana', '', '2025-06-03 17:51:49'),
	(291, '2025-06-03 18:00:34', 'Obed Alberto Castro Orellana', 363, 24, 579, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-06-03 18:01:46', 'Obed Alberto Castro Orellana', 'Dispositivo se daño por lluvia.', '2025-06-03 18:01:46'),
	(292, '2025-06-02 06:00:00', 'Obed Alberto Castro Orellana', 363, 24, 546, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"0","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"0","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-06-09 17:37:26', 'Obed Alberto Castro Orellana', '', '2025-06-09 17:37:26'),
	(293, '2025-05-30 06:00:00', 'Obed Alberto Castro Orellana', 360, 24, 539, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', NULL, NULL, NULL, NULL, '2025-06-03 18:52:44'),
	(294, '2025-05-30 06:00:00', 'Obed Alberto Castro Orellana', 360, 24, 543, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-06-11 09:24:03', 'Obed Alberto Castro Orellana', 'Dispositivo se golpeó al caer sobre un aroca.', '2025-06-11 21:24:03'),
	(295, '2025-05-31 06:00:00', 'Obed Alberto Castro Orellana', 304, 24, 542, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"1","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-06-11 09:24:30', 'Obed Alberto Castro Orellana', 'Le robaron el dispositivo, mientras se conducía en el bus.', '2025-06-11 21:24:30'),
	(296, '2025-06-01 06:00:00', 'Obed Alberto Castro Orellana', 309, 24, 540, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', NULL, NULL, NULL, NULL, '2025-06-03 18:55:45'),
	(297, '2025-06-02 06:00:00', 'Obed Alberto Castro Orellana', 363, 24, 577, 'Tablet', '{"Cubo":"1","Cable":"1","Funda":"0","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"0","Lapiz":"0","Powerbank":"1","Maletin":"1","Cargador":"1","Mouse":"1","Mousepad":"1"}', '2025-06-07 13:08:05', 'Obed Alberto Castro Orellana', '', '2025-06-07 13:08:05'),
	(298, '2025-06-03 07:24:52', 'Obed Alberto Castro Orellana', 394, 25, 571, 'Laptop', '{"Cubo":"0","Cable":"0","Funda":"0","Lapiz":"0","Powerbank":"0","Maletin":"1","Cargador":"1","Mouse":"1","Mousepad":"1"}', '{"Cubo":"0","Cable":"0","Funda":"0","Lapiz":"0","Powerbank":"0","Maletin":"1","Cargador":"1","Mouse":"1","Mousepad":"1"}', '2025-06-03 07:25:06', 'Obed Alberto Castro Orellana', '', '2025-06-03 22:11:24'),
	(299, '2025-06-03 09:48:47', 'Obed Alberto Castro Orellana', 394, 25, 571, 'Laptop', '{"Cubo":"0","Cable":"0","Funda":"0","Lapiz":"0","Powerbank":"0","Maletin":"1","Cargador":"1","Mouse":"1","Mousepad":"1"}', '{"Cubo":"0","Cable":"0","Funda":"0","Lapiz":"0","Powerbank":"0","Maletin":"1","Cargador":"1","Mouse":"1","Mousepad":"1"}', '2025-06-09 15:23:32', 'Obed Alberto Castro Orellana', '', '2025-06-09 15:23:32'),
	(300, '2025-06-04 09:39:10', 'Obed Alberto Castro Orellana', 363, 24, 573, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"0","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"0","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-06-09 17:34:42', 'Obed Alberto Castro Orellana', '', '2025-06-09 17:34:42'),
	(302, '2025-06-11 15:39:39', 'Obed Alberto Castro Orellana', 312, 24, 548, 'Impresora', '{"Cubo":"0","Cable":"0","Funda":"0","Lapiz":"0","Powerbank":"0","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '{"Cubo":"0","Cable":"0","Funda":"0","Lapiz":"0","Powerbank":"0","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', '2025-06-11 15:39:47', 'Obed Alberto Castro Orellana', '', '2025-06-11 15:39:47'),
	(303, '2025-06-19 14:53:15', 'Usuario Test Test', 363, 24, 546, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"1","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', NULL, NULL, NULL, NULL, '2025-06-19 14:53:15'),
	(304, '2025-06-19 15:03:24', 'Obed Alberto Castro Orellana', 394, 25, 571, 'Laptop', '{"Cubo":"0","Cable":"0","Funda":"0","Lapiz":"0","Powerbank":"0","Maletin":"1","Cargador":"1","Mouse":"1","Mousepad":"1"}', NULL, NULL, NULL, NULL, '2025-06-24 16:23:06'),
	(305, '2025-06-19 15:16:41', 'Usuario Test Test', 302, 24, 577, 'Tablet', '{"Cubo":"1","Cable":"0","Funda":"1","Lapiz":"1","Powerbank":"0","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', NULL, NULL, NULL, NULL, '2025-06-24 16:02:46'),
	(306, '2025-06-19 15:20:01', 'Usuario Test Test', 370, 24, 582, 'Laptop', '{"Cubo":"0","Cable":"0","Funda":"0","Lapiz":"0","Powerbank":"0","Maletin":"1","Cargador":"1","Mouse":"1","Mousepad":"1"}', NULL, NULL, NULL, NULL, '2025-06-24 16:14:46'),
	(307, '2025-06-24 16:20:58', 'Obed Alberto Castro Orellana', 329, 24, 583, 'Cargador de laptop', '{"Cubo":"0","Cable":"0","Funda":"0","Lapiz":"0","Powerbank":"0","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', NULL, NULL, NULL, NULL, '2025-06-24 16:20:58'),
	(308, '2025-06-24 16:22:15', 'Obed Alberto Castro Orellana', 357, 24, 581, 'Teléfono', '{"Cubo":"1","Cable":"1","Funda":"1","Lapiz":"0","Powerbank":"0","Maletin":"0","Cargador":"0","Mouse":"0","Mousepad":"0"}', NULL, NULL, NULL, NULL, '2025-06-24 16:22:15');

-- Volcando estructura para tabla prueba.sedes
CREATE TABLE IF NOT EXISTS `sedes` (
  `idsede` int NOT NULL AUTO_INCREMENT,
  `nombresede` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `departamentosede` varchar(50) NOT NULL,
  `regionsede` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`idsede`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla prueba.sedes: ~10 rows (aproximadamente)
INSERT INTO `sedes` (`idsede`, `nombresede`, `departamentosede`, `regionsede`) VALUES
	(24, 'Santiago de María otra', 'Usulután', 'Usulután 2'),
	(25, 'Sede prueba 01', 'San Miguel', 'San Miguel 1'),
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
