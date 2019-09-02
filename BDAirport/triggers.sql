delimiter %
CREATE TRIGGER after_taxista_insert
AFTER INSERT ON taxista
FOR EACH ROW
BEGIN
	INSERT INTO regtaxistas(idTaxista, fechaReg)
    VALUES (NEW.idTaxista, DATE(now()));
END%

delimiter $
CREATE TRIGGER before_taxista_delete2
BEFORE DELETE ON taxista
FOR EACH ROW
BEGIN
	UPDATE regtaxistas 
    SET fechaDel = DATE(NOW())
    WHERE regTaxistas.idTaxista = OLD.idTaxista;
END$

delimiter @
CREATE TRIGGER after_taxi_insert
AFTER INSERT ON taxi
FOR EACH ROW
BEGIN
	INSERT INTO regTaxis(idTaxi, fechaReg)
    VALUES (NEW.idTaxi, DATE(now()));
END@


delimiter !
CREATE TRIGGER before_taxi_delete2
BEFORE DELETE ON taxi
FOR EACH ROW
BEGIN
	UPDATE regTaxis
    SET fechaDel = DATE(now())
    WHERE regTaxis.idTaxi = OLD.idTaxi;
END!

delimiter %
CREATE TRIGGER before_taxista_delete
BEFORE DELETE ON taxista
FOR EACH ROW
BEGIN
    UPDATE taxi
    SET taxista = null
    WHERE taxista = OLD.idTaxista;
END%

delimiter !
CREATE TRIGGER before_ruta_delete
BEFORE DELETE ON ruta
FOR EACH ROW
BEGIN 
    DELETE FROM rutas_compania WHERE OLD.idRuta = idRuta;
END!

delimiter $
CREATE TRIGGER before_taxi_delete
BEFORE DELETE ON taxi
FOR EACH ROW
BEGIN 
    DELETE FROM taxis_compania WHERE OLD.idTaxi = idTaxi;
END$ 