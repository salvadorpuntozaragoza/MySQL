delimiter !
CREATE PROCEDURE PA_insertNewTaxi(IN pcolor VARCHAR(20), IN pmodelo VARCHAR(50), IN panio INT, IN pcompania VARCHAR(50))
BEGIN
	INSERT INTO taxi(color, modelo, anio)
    VALUES (pcolor, pmodelo, panio);
    INSERT INTO taxis_compania(idCompania, idTaxi)
    VALUES ((SELECT idCompania FROM compania where nombre_compania = pcompania),
			(SELECT idTaxi FROM taxi where color = pcolor and modelo = pmodelo and anio = panio));
END!


delimiter @
CREATE PROCEDURE PA_insertNewRuta(IN pdestino VARCHAR(50), IN ptarifa INT, IN pdistancia INT, IN ptiempo INT, IN pcompania VARCHAR(50))
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
END@


delimiter $
CREATE PROCEDURE PA_insertNewTaxista(IN pnombre VARCHAR(20), IN papellidop VARCHAR(20), IN papellidom VARCHAR(20), IN pnacimiento VARCHAR(10),
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
END$

delimiter !
CREATE PROCEDURE PA_BuscarRuta(IN rutaa VARCHAR(45))
BEGIN
	SELECT compania.nombre_compania Compañia, ruta.destino Destino, ruta.tarifa Tarifa_MXN
	FROM ruta 
	INNER JOIN rutas_compania
	ON ruta.idRuta = rutas_compania.idRuta
	INNER JOIN compania
	ON compania.idCompania = rutas_compania.idCompania
	WHERE ruta.destino = rutaa;
END!


delimiter &
CREATE PROCEDURE PA_buscarTaxista(IN nombreTaxista VARCHAR(45))
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
END &


delimiter *
CREATE PROCEDURE PA_trabajadoresCompania(IN nombreCompania VARCHAR(45))
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
END *


delimiter / 
CREATE PROCEDURE PA_taxisCompania(IN nombreCompania VARCHAR(45))
BEGIN
	SELECT compania.idCompania IDCompañia, compania.nombre_compania Nombre, taxi.idTaxi IDTaxi, taxi.modelo Modelo, taxi.color Color,
	taxi.anio
	FROM taxi
	INNER JOIN taxis_compania
	ON taxi.idTaxi = taxis_compania.idTaxi
	INNER JOIN compania
	ON taxis_compania.idCompania = compania.idCompania
	WHERE nombre_compania = nombreCompania;
END / 


delimiter %
CREATE PROCEDURE PA_rutasCompania(IN nombreCompania VARCHAR(45))
BEGIN
	SELECT compania.idCompania IDCompañia, compania.nombre_compania Nombre, ruta.destino Destino
	FROM ruta
	INNER JOIN rutas_compania
	ON ruta.idRuta = rutas_compania.idRuta
	INNER JOIN compania
	ON rutas_compania.idCompania = compania.idCompania
	WHERE nombre_compania = nombreCompania
	ORDER BY destino;
END %

delimiter !
CREATE PROCEDURE PA_insertarTaxiCompania(IN idTaxii INT, IN idCompaniaa INT)
BEGIN 
	INSERT INTO taxis_compania(idTaxi, idCompania)
	VALUES (idTaxii, idCompaniaa);
END!

delimiter $
CREATE PROCEDURE PA_insertarRutaCompania(IN idRutaa INT, IN idCompaniaa INT)
BEGIN 
	INSERT INTO rutas_compania(idRuta, idCompania)
	VALUES (idRutaa, idCompaniaa);
END$

delimiter %
CREATE PROCEDURE PA_updateTarifaRuta(IN nombreRuta VARCHAR(45),IN precio INT)
BEGIN 
	UPDATE ruta
	SET tarifa = precio
	WHERE destino = nombreRuta;
END%

delimiter !
CREATE PROCEDURE PA_updateTaxistaTaxi(IN idTaxii INT, IN idTaxista INT)
BEGIN
	IF NOT EXISTS(SELECT * FROM taxi WHERE taxista = idTaxista) THEN
		UPDATE taxi
		SET taxista = idTaxista
		WHERE idTaxi = idTaxii;
	END IF;
END!

delimiter $
CREATE PROCEDURE PA_deleteTaxista(IN idTaxistaa INT)
BEGIN 
	DELETE FROM taxista
	WHERE idTaxista = idTaxistaa;
END$

delimiter %
CREATE PROCEDURE PA_deleteRuta(IN idRutaa INT)
BEGIN
	DELETE FROM ruta 
	WHERE idRuta = idRutaa;
END%

delimiter !
CREATE PROCEDURE PA_deleteTaxi(IN idTaxii INT)
BEGIN 
	DELETE FROM taxi
    WHERE idTaxi = idTaxii;
END!