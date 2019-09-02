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
-- Temporary view structure for view `empleadoscompania`
--

DROP TABLE IF EXISTS `empleadoscompania`;
/*!50001 DROP VIEW IF EXISTS `empleadoscompania`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `empleadoscompania` AS SELECT 
 1 AS `Compañia`,
 1 AS `ID`,
 1 AS `Nombre`,
 1 AS `ApellidoP`,
 1 AS `ApellidoM`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_registrotaxis`
--

DROP TABLE IF EXISTS `view_registrotaxis`;
/*!50001 DROP VIEW IF EXISTS `view_registrotaxis`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_registrotaxis` AS SELECT 
 1 AS `idTaxi`,
 1 AS `fechaReg`,
 1 AS `fechaDel`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_taxistas`
--

DROP TABLE IF EXISTS `view_taxistas`;
/*!50001 DROP VIEW IF EXISTS `view_taxistas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_taxistas` AS SELECT 
 1 AS `idTaxista`,
 1 AS `nombre`,
 1 AS `apellidoPaterno`,
 1 AS `apellidoMaterno`,
 1 AS `nombre_compania`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_taxis`
--

DROP TABLE IF EXISTS `view_taxis`;
/*!50001 DROP VIEW IF EXISTS `view_taxis`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_taxis` AS SELECT 
 1 AS `idTaxi`,
 1 AS `color`,
 1 AS `modelo`,
 1 AS `anio`,
 1 AS `taxista`,
 1 AS `idCompania`,
 1 AS `nombre_compania`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_taxilesstaxistas`
--

DROP TABLE IF EXISTS `view_taxilesstaxistas`;
/*!50001 DROP VIEW IF EXISTS `view_taxilesstaxistas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_taxilesstaxistas` AS SELECT 
 1 AS `idTaxista`,
 1 AS `nombre`,
 1 AS `apellidoPaterno`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `rutas`
--

DROP TABLE IF EXISTS `rutas`;
/*!50001 DROP VIEW IF EXISTS `rutas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `rutas` AS SELECT 
 1 AS `destino`,
 1 AS `tarifa`,
 1 AS `nombre_compania`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_registrotaxistas`
--

DROP TABLE IF EXISTS `view_registrotaxistas`;
/*!50001 DROP VIEW IF EXISTS `view_registrotaxistas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_registrotaxistas` AS SELECT 
 1 AS `idTaxista`,
 1 AS `fechaReg`,
 1 AS `fechaDel`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_companias`
--

DROP TABLE IF EXISTS `view_companias`;
/*!50001 DROP VIEW IF EXISTS `view_companias`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_companias` AS SELECT 
 1 AS `idCompania`,
 1 AS `nombre_compania`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_emptytaxis`
--

DROP TABLE IF EXISTS `view_emptytaxis`;
/*!50001 DROP VIEW IF EXISTS `view_emptytaxis`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_emptytaxis` AS SELECT 
 1 AS `idTaxi`,
 1 AS `idCompania`,
 1 AS `nombre_compania`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `taxiscompania`
--

DROP TABLE IF EXISTS `taxiscompania`;
/*!50001 DROP VIEW IF EXISTS `taxiscompania`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `taxiscompania` AS SELECT 
 1 AS `Compañia`,
 1 AS `IDTaxi`,
 1 AS `Modelo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `taxis`
--

DROP TABLE IF EXISTS `taxis`;
/*!50001 DROP VIEW IF EXISTS `taxis`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `taxis` AS SELECT 
 1 AS `IDTaxi`,
 1 AS `Modelo`,
 1 AS `IDTaxista`,
 1 AS `Nombre`,
 1 AS `ApellidoP`,
 1 AS `ApellidoM`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `nacionalidades`
--

DROP TABLE IF EXISTS `nacionalidades`;
/*!50001 DROP VIEW IF EXISTS `nacionalidades`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `nacionalidades` AS SELECT 
 1 AS `Nacionalidad`,
 1 AS `IDTaxista`,
 1 AS `nombre`,
 1 AS `apellidoPaterno`,
 1 AS `apellidoMaterno`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_nacionalidades`
--

DROP TABLE IF EXISTS `view_nacionalidades`;
/*!50001 DROP VIEW IF EXISTS `view_nacionalidades`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_nacionalidades` AS SELECT 
 1 AS `idNacionalidad`,
 1 AS `Nombre_nacionalidad`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `empleadoscompania`
--

/*!50001 DROP VIEW IF EXISTS `empleadoscompania`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `empleadoscompania` AS select `compania`.`nombre_compania` AS `Compañia`,`taxista`.`idTaxista` AS `ID`,`taxista`.`nombre` AS `Nombre`,`taxista`.`apellidoPaterno` AS `ApellidoP`,`taxista`.`apellidoMaterno` AS `ApellidoM` from (((`taxista` join `taxi` on((`taxi`.`taxista` = `taxista`.`idTaxista`))) join `taxis_compania` on((`taxi`.`idTaxi` = `taxis_compania`.`idTaxi`))) join `compania` on((`taxis_compania`.`idCompania` = `compania`.`idCompania`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_registrotaxis`
--

/*!50001 DROP VIEW IF EXISTS `view_registrotaxis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_registrotaxis` AS select `regtaxis`.`idTaxi` AS `idTaxi`,`regtaxis`.`fechaReg` AS `fechaReg`,`regtaxis`.`fechaDel` AS `fechaDel` from `regtaxis` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_taxistas`
--

/*!50001 DROP VIEW IF EXISTS `view_taxistas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_taxistas` AS select `taxista`.`idTaxista` AS `idTaxista`,`taxista`.`nombre` AS `nombre`,`taxista`.`apellidoPaterno` AS `apellidoPaterno`,`taxista`.`apellidoMaterno` AS `apellidoMaterno`,`compania`.`nombre_compania` AS `nombre_compania` from (((`taxista` left join `taxi` on((`taxi`.`taxista` = `taxista`.`idTaxista`))) left join `taxis_compania` on((`taxi`.`idTaxi` = `taxis_compania`.`idTaxi`))) left join `compania` on((`compania`.`idCompania` = `taxis_compania`.`idCompania`))) order by `compania`.`nombre_compania` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_taxis`
--

/*!50001 DROP VIEW IF EXISTS `view_taxis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_taxis` AS select `taxi`.`idTaxi` AS `idTaxi`,`taxi`.`color` AS `color`,`taxi`.`modelo` AS `modelo`,`taxi`.`anio` AS `anio`,`taxi`.`taxista` AS `taxista`,`compania`.`idCompania` AS `idCompania`,`compania`.`nombre_compania` AS `nombre_compania` from ((`taxi` join `taxis_compania` on((`taxi`.`idTaxi` = `taxis_compania`.`idTaxi`))) join `compania` on((`compania`.`idCompania` = `taxis_compania`.`idCompania`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_taxilesstaxistas`
--

/*!50001 DROP VIEW IF EXISTS `view_taxilesstaxistas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_taxilesstaxistas` AS select `taxista`.`idTaxista` AS `idTaxista`,`taxista`.`nombre` AS `nombre`,`taxista`.`apellidoPaterno` AS `apellidoPaterno` from (`taxista` left join `taxi` on((`taxi`.`taxista` = `taxista`.`idTaxista`))) where isnull(`taxi`.`taxista`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `rutas`
--

/*!50001 DROP VIEW IF EXISTS `rutas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `rutas` AS select `ruta`.`destino` AS `destino`,`ruta`.`tarifa` AS `tarifa`,`compania`.`nombre_compania` AS `nombre_compania` from ((`ruta` join `rutas_compania` on((`ruta`.`idRuta` = `rutas_compania`.`idRuta`))) join `compania` on((`compania`.`idCompania` = `rutas_compania`.`idCompania`))) order by `ruta`.`destino` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_registrotaxistas`
--

/*!50001 DROP VIEW IF EXISTS `view_registrotaxistas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_registrotaxistas` AS select `regtaxistas`.`idTaxista` AS `idTaxista`,`regtaxistas`.`fechaReg` AS `fechaReg`,`regtaxistas`.`fechaDel` AS `fechaDel` from `regtaxistas` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_companias`
--

/*!50001 DROP VIEW IF EXISTS `view_companias`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_companias` AS select `compania`.`idCompania` AS `idCompania`,`compania`.`nombre_compania` AS `nombre_compania` from `compania` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_emptytaxis`
--

/*!50001 DROP VIEW IF EXISTS `view_emptytaxis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_emptytaxis` AS select `taxi`.`idTaxi` AS `idTaxi`,`taxis_compania`.`idCompania` AS `idCompania`,`compania`.`nombre_compania` AS `nombre_compania` from ((`taxi` join `taxis_compania` on((`taxi`.`idTaxi` = `taxis_compania`.`idTaxi`))) join `compania` on((`compania`.`idCompania` = `taxis_compania`.`idCompania`))) where isnull(`taxi`.`taxista`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `taxiscompania`
--

/*!50001 DROP VIEW IF EXISTS `taxiscompania`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `taxiscompania` AS select `compania`.`nombre_compania` AS `Compañia`,`taxi`.`idTaxi` AS `IDTaxi`,`taxi`.`modelo` AS `Modelo` from ((`taxi` join `taxis_compania` on((`taxi`.`idTaxi` = `taxis_compania`.`idTaxi`))) join `compania` on((`taxis_compania`.`idCompania` = `compania`.`idCompania`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `taxis`
--

/*!50001 DROP VIEW IF EXISTS `taxis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `taxis` AS select `taxi`.`idTaxi` AS `IDTaxi`,`taxi`.`modelo` AS `Modelo`,`taxista`.`idTaxista` AS `IDTaxista`,`taxista`.`nombre` AS `Nombre`,`taxista`.`apellidoPaterno` AS `ApellidoP`,`taxista`.`apellidoMaterno` AS `ApellidoM` from (`taxista` join `taxi` on((`taxi`.`taxista` = `taxista`.`idTaxista`))) order by `taxista`.`idTaxista` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `nacionalidades`
--

/*!50001 DROP VIEW IF EXISTS `nacionalidades`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nacionalidades` AS select `nacionalidad`.`Nombre_nacionalidad` AS `Nacionalidad`,`taxista`.`idTaxista` AS `IDTaxista`,`taxista`.`nombre` AS `nombre`,`taxista`.`apellidoPaterno` AS `apellidoPaterno`,`taxista`.`apellidoMaterno` AS `apellidoMaterno` from (`taxista` join `nacionalidad` on((`taxista`.`nacionalidad` = `nacionalidad`.`idNacionalidad`))) order by `nacionalidad`.`Nombre_nacionalidad` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_nacionalidades`
--

/*!50001 DROP VIEW IF EXISTS `view_nacionalidades`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_nacionalidades` AS select `nacionalidad`.`idNacionalidad` AS `idNacionalidad`,`nacionalidad`.`Nombre_nacionalidad` AS `Nombre_nacionalidad` from `nacionalidad` order by `nacionalidad`.`Nombre_nacionalidad` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'adminairport'
--

--
-- Dumping routines for database 'adminairport'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_fecha_nac_string` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_fecha_nac_string`(fecha_nacimiento date) RETURNS varchar(100) CHARSET latin1
begin
		declare mes varchar(20);
        declare mess int;
        declare dia varchar(20);
        declare anio varchar(10);
        declare fecha varchar(100);
        set mess= month(fecha_nacimiento);
        case
			when mess = 01 then set mes = 'enero';
            when mess = 02 then set mes = 'febrero';
            when mess = 03 then set mes = 'marzo';
            when mess = 04 then set mes = 'abril';
            when mess = 05 then set mes = 'mayo';
            when mess = 06 then set mes = 'junio';
            when mess = 07 then set mes = 'julio';
            when mess = 08 then set mes = 'agosto';
            when mess = 09 then set mes = 'septiembre';
            when mess = 10 then set mes = 'octubre';
            when mess = 11 then set mes = 'noviembre';
            else set mes = 'diciembre';
		end case;
        return mes;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_BuscarRuta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_BuscarRuta`(IN rutaa VARCHAR(45))
BEGIN
	SELECT compania.nombre_compania Compania, ruta.destino Destino, ruta.tarifa Tarifa_MXN
	FROM ruta 
	INNER JOIN rutas_compania
	ON ruta.idRuta = rutas_compania.idRuta
	INNER JOIN compania
	ON compania.idCompania = rutas_compania.idCompania
	WHERE ruta.destino = rutaa;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_buscarTaxista` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_buscarTaxista`(IN nombreTaxista VARCHAR(45))
BEGIN
	SELECT Taxista.idTaxista IDTaxista,taxista.nombre Nombre, taxista.apellidoPaterno ApellidoP, taxista.apellidoMaterno ApellidoM,
	nacionalidad.Nombre_nacionalidad Nacionalidad, taxista.sexo Genero, compania.nombre_compania Compañia, taxi.idTaxi IDTaxi, taxi.modelo
	FROM nacionalidad
	INNER JOIN taxista
	ON nacionalidad.idNacionalidad = taxista.nacionalidad
	INNER JOIN  taxi
	ON taxista.idTaxista = taxi.taxista
	INNER JOIN taxis_compania
	ON taxi.idTaxi = taxis_compania.idTaxi
	INNER JOIN compania
	ON taxis_compania.idCompania = compania.idCompania
	WHERE taxista.nombre = nombreTaxista;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_deleteRuta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_deleteRuta`(IN idRutaa INT)
BEGIN
	DELETE FROM ruta 
	WHERE idRuta = idRutaa;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_deleteTaxi` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_deleteTaxi`(IN idTaxii INT)
BEGIN 
	DELETE FROM taxi
    WHERE idTaxi = idTaxii;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_deleteTaxista` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_deleteTaxista`(IN idTaxistaa INT)
BEGIN 
	DELETE FROM taxista
	WHERE idTaxista = idTaxistaa;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_insertarRutaCompania` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_insertarRutaCompania`(IN idRutaa INT, IN idCompaniaa INT)
BEGIN 
	INSERT INTO rutas_compania(idRuta, idCompania)
	VALUES (idRutaa, idCompaniaa);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_insertarTaxiCompania` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_insertarTaxiCompania`(IN idTaxii INT, IN idCompaniaa INT)
BEGIN 
	INSERT INTO taxis_compania(idTaxi, idCompania)
	VALUES (idTaxii, idCompaniaa);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_insertNewRuta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_insertNewRuta`(IN pdestino VARCHAR(50), IN ptarifa INT, IN pdistancia INT, IN ptiempo INT, IN pcompania VARCHAR(50))
BEGIN
	IF NOT EXISTS (SELECT * FROM ruta WHERE destino = pdestino and tarifa = ptarifa and distancia = pdistancia and tiempo_recorrido = ptiempo) THEN
		INSERT INTO ruta(destino, tarifa, distancia, tiempo_recorrido)
		VALUES (pdestino, ptarifa, pdistancia, ptiempo);
	END IF;
	IF NOT EXISTS (SELECT * FROM rutas_compania WHERE idCompania = (SELECT idCompania FROM compania WHERE nombre_compania = pcompania) and idRuta = 
    (SELECT idRuta FROM ruta WHERE destino = pdestino and tarifa = ptarifa and distancia = pdistancia and tiempo_recorrido = ptiempo)) THEN
		INSERT IGNORE INTO rutas_compania(idCompania, idRuta)
		VALUES ((SELECT idCompania FROM compania WHERE nombre_compania = pcompania), (SELECT idRuta FROM ruta WHERE destino = pdestino 
		and tarifa = ptarifa and distancia = pdistancia and tiempo_recorrido = ptiempo ));
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_insertNewTaxi` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_insertNewTaxi`(IN pcolor VARCHAR(20), IN pmodelo VARCHAR(50), IN panio INT, IN pcompania VARCHAR(50))
BEGIN
	INSERT INTO taxi(color, modelo, anio)
    VALUES (pcolor, pmodelo, panio);
    INSERT INTO taxis_compania(idCompania, idTaxi)
    VALUES ((SELECT idCompania FROM compania where nombre_compania = pcompania),
			(SELECT idTaxi FROM taxi where color = pcolor and modelo = pmodelo and anio = panio));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_insertNewTaxista` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_insertNewTaxista`(IN pnombre VARCHAR(20), IN papellidop VARCHAR(20), IN papellidom VARCHAR(20), IN pnacimiento VARCHAR(10),
IN psexo CHAR, IN pestadocivil VARCHAR(20), IN pescolaridad VARCHAR(20), IN pnacionalidad VARCHAR(20))
BEGIN
	IF NOT EXISTS (SELECT * FROM taxista WHERE nombre = pnombre and apellidoPaterno = papellidop and apellidoMaterno = papellidom) THEN
		IF NOT EXISTS (SELECT * FROM nacionalidad WHERE Nombre_nacionalidad = pnacionalidad) THEN
			INSERT INTO nacionalidad(nombre_nacionalidad)
            VALUES (pnacionalidad);
		END IF;
		INSERT INTO taxista(nombre, apellidoPaterno, apellidoMaterno, fechaNacimiento, sexo, estadocivil, escolaridad, nacionalidad)
        VALUES (pnombre, papellidop, papellidom, pnacimiento, psexo, (SELECT idEstadoCivil FROM estadocivil WHERE Nombre_estadoCivil = pestadocivil),
        (SELECT idEscolaridad FROM escolaridad WHERE Nombre_escolaridad = pescolaridad),  (SELECT idNacionalidad FROM nacionalidad WHERE 
        Nombre_nacionalidad = pnacionalidad));
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_rutasCompania` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_rutasCompania`(IN nombreCompania VARCHAR(45))
BEGIN
	SELECT compania.idCompania IDCompañia, compania.nombre_compania Nombre, ruta.destino Destino
	FROM ruta
	INNER JOIN rutas_compania
	ON ruta.idRuta = rutas_compania.idRuta
	INNER JOIN compania
	ON rutas_compania.idCompania = compania.idCompania
	WHERE nombre_compania = nombreCompania
	ORDER BY destino;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_taxisCompania` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_taxisCompania`(IN nombreCompania VARCHAR(45))
BEGIN
	SELECT compania.idCompania IDCompañia, compania.nombre_compania Nombre, taxi.idTaxi IDTaxi, taxi.modelo Modelo, taxi.color Color,
	taxi.anio
	FROM taxi
	INNER JOIN taxis_compania
	ON taxi.idTaxi = taxis_compania.idTaxi
	INNER JOIN compania
	ON taxis_compania.idCompania = compania.idCompania
	WHERE nombre_compania = nombreCompania;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_trabajadoresCompania` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_trabajadoresCompania`(IN nombreCompania VARCHAR(45))
BEGIN
	SELECT compania.idCompania IDCompañia, compania.nombre_compania Nombre, taxista.idTaxista IDTaxista, taxista.nombre Nombre, 
	taxista.apellidoPaterno ApellidoP, taxista.apellidoMaterno ApellidoM
	FROM taxista
	INNER JOIN taxi
	ON taxista.idTaxista = taxi.taxista
	INNER JOIN taxis_compania
	on taxi.idTaxi = taxis_compania.idTaxi
	INNER JOIN compania
	ON taxis_compania.idCompania = compania.idCompania
	WHERE nombre_compania = nombreCompania;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_updateTarifaRuta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_updateTarifaRuta`(IN nombreRuta VARCHAR(45),IN precio INT)
BEGIN 
	UPDATE ruta
	SET tarifa = precio
	WHERE destino = nombreRuta;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PA_updateTaxistaTaxi` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PA_updateTaxistaTaxi`(IN idTaxii INT, IN idTaxista INT)
BEGIN
	IF NOT EXISTS(SELECT * FROM taxi WHERE taxista = idTaxista) THEN
		UPDATE taxi
		SET taxista = idTaxista
		WHERE idTaxi = idTaxii;
	END IF;
END ;;
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

-- Dump completed on 2018-06-03 13:36:02
