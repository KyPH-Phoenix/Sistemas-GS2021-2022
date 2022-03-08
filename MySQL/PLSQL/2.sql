DROP DATABASE IF EXISTS exercicis_psql;
CREATE DATABASE exercicis_psql;
USE exercicis_psql;

-- Modifiqueu el procediment dissenyat en l'exercici anterior
-- perquè tingui un paràmetre d'entrada, amb el valor un nombre
-- real, i un paràmetre de sortida, amb una cadena de caràcters 
-- indicant si el número és positiu, negatiu o zero.

DROP PROCEDURE  IF EXISTS sign;

DELIMITER //
CREATE PROCEDURE sign(IN num DECIMAL, OUT result varchar(20))
BEGIN
    IF num > 0 THEN
        SET result = "Es positivo";
    ELSEIF num < 0 THEN
        SET result = "Es negativo";
    ELSE
        SET result = "Es cero";
    END IF;
END //

-- TEST --

SET @resultado="";
CALL sign(-6, resultado);
SELECT resultado;
/* CALL sign(4, resultado);
SELECT resultado;
CALL sign(0, resultado);
SELECT resultado; */
