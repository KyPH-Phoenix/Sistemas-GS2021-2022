-- Creamos una base de datos vacía por comodidad
DROP DATABASE IF EXISTS exercicis_psql;
CREATE DATABASE exercicis_psql;
USE exercicis_psql;


-- Modifiqueu el procediment dissenyat en l'exercici anterior perquè tingui un paràmetre d'entrada, amb 
-- el valor de la nota en format numèric i un paràmetre de sortida, amb una cadena de text indicant la 
-- nota corresponent.

DROP PROCEDURE IF EXISTS notes;

DELIMITER //
CREATE PROCEDURE notes(IN nota DECIMAL, OUT result VARCHAR(20))
BEGIN
    IF nota < 0 OR nota > 10 THEN
        SET result = "Nota no valida";        
    ELSEIF nota < 5 THEN
        SET result = "Insuficient";
    ELSEIF nota < 6 THEN
        SET result = "Aprovat";
    ELSEIF nota < 7 THEN
        SET result = "Be";
    ELSEIF nota < 9 THEN
        SET result = "Notable";
    ELSE
        SET result = "Excelent";
    END IF;
END //

-- TEST --

SET @resultado = "";
CALL notes(9, @resultado);
SELECT @resultado;

