-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: adminairport
-- ------------------------------------------------------
-- Server version	5.7.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `taxista`
--

DROP TABLE IF EXISTS `taxista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxista` (
  `idTaxista` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellidoPaterno` varchar(45) NOT NULL,
  `apellidoMaterno` varchar(45) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `sexo` char(1) NOT NULL,
  `estadoCivil` int(11) NOT NULL,
  `escolaridad` int(11) NOT NULL,
  `nacionalidad` int(11) NOT NULL,
  PRIMARY KEY (`idTaxista`),
  KEY `FK_Sexo_idSexo` (`sexo`),
  KEY `FK_EstadoCivil_idEstadoCivil` (`estadoCivil`),
  KEY `FK_Escolaridad_idEscolaridad` (`escolaridad`),
  KEY `FK_Nacionalidad_idNacionalidad` (`nacionalidad`),
  CONSTRAINT `FK_Escolaridad_idEscolaridad` FOREIGN KEY (`escolaridad`) REFERENCES `escolaridad` (`idEscolaridad`),
  CONSTRAINT `FK_EstadoCivil_idEstadoCivil` FOREIGN KEY (`estadoCivil`) REFERENCES `estadocivil` (`idEstadoCivil`),
  CONSTRAINT `FK_Nacionalidad_idNacionalidad` FOREIGN KEY (`nacionalidad`) REFERENCES `nacionalidad` (`idNacionalidad`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxista`
--

LOCK TABLES `taxista` WRITE;
/*!40000 ALTER TABLE `taxista` DISABLE KEYS */;
INSERT INTO `taxista` VALUES (2,'Salvador','Zaragoza','Aguayo','1973-06-10','H',2,2,1),(3,'Luis','Peres','Mendes','1980-02-18','H',1,1,1),(4,'Juan','Lopez','Nava','1971-06-21','H',3,1,3),(5,'Karen','Pacheco','Arias','1989-02-17','M',1,3,1),(6,'Jose','Chaves','Arias','1978-12-11','H',2,1,5),(7,'Alvaro','Ramirez','Salas','1961-09-22','H',3,2,2),(8,'Gerardo','Torres','Mendoza','1993-01-27','H',2,1,5),(9,'Oscar','Teles','Garcia','1988-10-06','H',1,3,1),(10,'Andres','Quiroz','Vega','1976-03-23','H',4,3,4),(11,'Lee','Chang','Hu','1978-12-11','H',2,1,7),(12,'Fabian','Lopez','Muro','1984-08-15','H',1,2,1),(13,'Katia','Herrera','Gonzales','1978-12-11','H',2,1,5),(22,'Samuel','L','Jackson','1945-02-17','H',2,2,3),(23,'Julio','Berne','Lopes','1942-09-10','H',2,3,8),(25,'Ares','ceron','castillo','1992-02-12','H',1,3,9),(26,'Luis','Mancera','Jimenes','1982-01-09','H',2,1,10),(27,'marcos','lopes','garcia','1945-02-17','H',2,3,3);
/*!40000 ALTER TABLE `taxista` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER after_taxista_insert
AFTER INSERT ON taxista
FOR EACH ROW
BEGIN
	INSERT INTO regtaxistas(idTaxista, fechaReg)
    VALUES (NEW.idTaxista, DATE(now()));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER before_taxista_delete
BEFORE DELETE ON taxista
FOR EACH ROW
BEGIN
	UPDATE taxi
    SET taxista = null
    WHERE taxista = OLD.idTaxista;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER before_taxista_delete2
BEFORE DELETE ON taxista
FOR EACH ROW
BEGIN
	UPDATE regtaxistas 
    SET fechaDel = DATE(NOW())
    WHERE regTaxistas.idTaxista = OLD.idTaxista;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-03 13:35:57
