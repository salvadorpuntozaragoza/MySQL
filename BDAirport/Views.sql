CREATE VIEW rutas AS
	SELECT ruta.destino, ruta.tarifa, compania.nombre_compania
	FROM ruta 
	INNER JOIN rutas_compania
	ON ruta.idRuta = rutas_compania.idRuta
	INNER JOIN compania
	ON compania.idCompania = rutas_compania.idCompania
	ORDER BY ruta.destino;


CREATE VIEW empleadosCompania AS
	SELECT  Compania.nombre_compania Compañia, taxista.idTaxista ID, taxista.nombre Nombre, taxista.apellidoPaterno ApellidoP, taxista.apellidoMaterno ApellidoM
	FROM taxista
	INNER JOIN taxi
	ON taxi.taxista = taxista.idTaxista
	INNER JOIN taxis_compania
	ON taxi.idTaxi = taxis_compania.idTaxi
	INNER JOIN compania
	ON taxis_compania.idCompania = compania.idCompania;


CREATE VIEW taxis AS
	SELECT taxi.idTaxi IDTaxi, taxi.modelo Modelo, taxista.idTaxista IDTaxista, taxista.nombre Nombre, taxista.apellidoPaterno ApellidoP, taxista.apellidoMaterno ApellidoM
	FROM taxista
	INNER JOIN taxi
	ON taxi.taxista = taxista.idTaxista
	ORDER BY idTaxista;


CREATE VIEW taxisCompania AS
	SELECT compania.nombre_compania Compañia, taxi.idTaxi IDTaxi, taxi.modelo Modelo
	FROM taxi 
	INNER JOIN taxis_compania
	ON taxi.idTaxi = taxis_compania.idTaxi
	INNER JOIN compania
	ON taxis_compania.idCompania = compania.idCompania;

CREATE VIEW VIEW_emptyTaxis AS
	SELECT taxi.idTaxi, taxis_compania.idCompania, compania.nombre_compania 
	FROM taxi 
	INNER JOIN taxis_compania
	ON taxi.idTaxi = taxis_compania.idTaxi
	INNER JOIN compania
	ON compania.idCompania = taxis_compania.idCompania
	WHERE taxi.taxista IS NULL;
    
CREATE VIEW VIEW_taxilessTaxistas AS
	SELECT idTaxista, nombre, apellidoPaterno
	FROM taxista LEFT OUTER JOIN taxi ON taxi.taxista = taxista.idTaxista
	WHERE taxi.taxista is null;

CREATE VIEW VIEW_taxistas AS
	SELECT idTaxista, nombre, apellidoPaterno, apellidoMaterno, nombre_compania
	FROM taxista
	LEFT JOIN taxi
	ON taxi.taxista = taxista.idTaxista
	LEFT JOIN taxis_compania
	ON taxi.idTaxi = taxis_compania.idTaxi
	LEFT JOIN compania
	ON compania.idCompania = taxis_compania.idCompania
	ORDER BY nombre_compania;

CREATE VIEW VIEW_taxis AS
	SELECT taxi.*, compania.idCompania, nombre_compania FROM taxi
    INNER JOIN taxis_compania
    ON taxi.idTaxi = taxis_compania.idTaxi
    INNER JOIN compania
    ON compania.idCompania = taxis_compania.idCompania;

CREATE VIEW VIEW_companias AS
	SELECT * FROM compania;

CREATE VIEW VIEW_nacionalidades AS
	SELECT * FROM nacionalidad
	ORDER BY nombre_nacionalidad

CREATE VIEW VIEW_registroTaxistas AS
	SELECT * FROM regTaxistas;
    
CREATE VIEW VIEW_registroTaxis AS
	SELECT * FROM regTaxis;