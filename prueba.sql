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
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla prueba.administradores: ~2 rows (aproximadamente)
INSERT INTO `administradores` (`id`, `nombre`, `email`, `cargo`, `foto`, `usuario`, `password`, `perfil`, `fecha`) VALUES
	(1, 'Obed Alberto Castro Orellana', 'obed.castro@bcr.gob.sv', 'Técnico de Soporte Informático', 'vistas/assets/img', 'inobed', '21232f297a57a5a743894a0e4a801fc3', 'superadministrador', '2024-02-13 15:11:21'),
	(44, 'Usuario test', 'usuario@test.com', 'Cargo del admin test', 'vistas/assets/img', 'test', '098f6bcd4621d373cade4e832627b4f6', 'Admin', '2024-10-11 15:25:12');

-- Volcando estructura para tabla prueba.consultores
CREATE TABLE IF NOT EXISTS `consultores` (
  `idconsultor` int NOT NULL AUTO_INCREMENT,
  `nombreconsultor` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `duiconsultor` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `cargoconsultor` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `contactoconsultor` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `dispositivo_id` int DEFAULT NULL,
  `sedeconsultor` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `fechaactualizacionconsultor` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fecharegistroconsultor` date DEFAULT NULL,
  PRIMARY KEY (`idconsultor`),
  UNIQUE KEY `duiconsultor` (`duiconsultor`)
) ENGINE=InnoDB AUTO_INCREMENT=464 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla prueba.consultores: ~0 rows (aproximadamente)

-- Volcando estructura para tabla prueba.dispositivos
CREATE TABLE IF NOT EXISTS `dispositivos` (
  `iddispositivo` int NOT NULL AUTO_INCREMENT,
  `tipodispositivo` varchar(20) NOT NULL,
  `marcadispositivo` varchar(20) NOT NULL,
  `modelodispositivo` varchar(20) NOT NULL,
  `imeidispositivo` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `seriedispositivo` varchar(20) NOT NULL,
  `telefonodispositivo` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `accesorios` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
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
  PRIMARY KEY (`iddispositivo`),
  UNIQUE KEY `seriedispositivo` (`seriedispositivo`),
  UNIQUE KEY `imeidispositivo` (`imeidispositivo`),
  KEY `FKresponsabledispositivo` (`responsabledispositivo`),
  CONSTRAINT `FKresponsabledispositivo` FOREIGN KEY (`responsabledispositivo`) REFERENCES `consultores` (`idconsultor`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=1046 DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla prueba.dispositivos: ~0 rows (aproximadamente)

-- Volcando estructura para tabla prueba.marcadispositivo
CREATE TABLE IF NOT EXISTS `marcadispositivo` (
  `idmarca` int NOT NULL AUTO_INCREMENT,
  `nombremarca` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`idmarca`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla prueba.marcadispositivo: ~0 rows (aproximadamente)

-- Volcando estructura para tabla prueba.modelodispositivo
CREATE TABLE IF NOT EXISTS `modelodispositivo` (
  `idmodelo` int NOT NULL AUTO_INCREMENT,
  `nombremodelo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`idmodelo`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla prueba.modelodispositivo: ~0 rows (aproximadamente)

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
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- Volcando datos para la tabla prueba.registros: ~0 rows (aproximadamente)

-- Volcando estructura para tabla prueba.sedes
CREATE TABLE IF NOT EXISTS `sedes` (
  `idsede` int NOT NULL AUTO_INCREMENT,
  `nombresede` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `departamentosede` varchar(50) NOT NULL,
  PRIMARY KEY (`idsede`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla prueba.sedes: ~0 rows (aproximadamente)

-- Volcando estructura para tabla prueba.tipodispositivo
CREATE TABLE IF NOT EXISTS `tipodispositivo` (
  `idtipo` int NOT NULL AUTO_INCREMENT,
  `nombretipo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`idtipo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla prueba.tipodispositivo: ~0 rows (aproximadamente)

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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla prueba.wiki: ~0 rows (aproximadamente)

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
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla prueba.wikicolaboraciones: ~0 rows (aproximadamente)

-- Volcando estructura para disparador prueba.actualizar_registros
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `actualizar_registros` AFTER UPDATE ON `dispositivos` FOR EACH ROW BEGIN
    IF NEW.estadodispositivo = 2 THEN
        INSERT INTO registros (fecha_asignacion, usuario_campo_id, sede_id, dispositivo_id, tipo_dispositivo, accesorios_entregados, nombre_asignador)
        VALUES (NEW.fechaasignacion, NEW.responsabledispositivo, NEW.sededispositivo, NEW.iddispositivo, NEW.tipodispositivo, NEW.accesorios, NEW.asignadordispositivo);

    ELSEIF NEW.estadodispositivo = 1  OR NEW.estadodispositivo = 3 THEN
        UPDATE registros
        SET fecha_recepcion = NEW.fecharecepcion, accesorios_recuperados = NEW.accesorios, nombre_receptor = NEW.receptordispositivo, comentario = NEW.comentariodispositivo
        WHERE dispositivo_id = OLD.iddispositivo AND fecha_asignacion = OLD.fechaasignacion AND usuario_campo_id = OLD.responsabledispositivo;
        
    END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
