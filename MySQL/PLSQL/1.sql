DROP DATABASE IF EXISTS exercicis_psql;
CREATE DATABASE exercicis_psql;
USE exercicis_psql;

-- Escriu un procediment que rebi un nombre 
-- real d'entrada i mostri un missatge indicant si el 
-- número és positiu, negatiu o zero.

DROP PROCEDURE  IF EXISTS sign;

DELIMITER //
CREATE PROCEDURE sign(IN num DECIMAL)
BEGIN
    IF num > 0 THEN
        SELECT "Es positivo";
    ELSEIF num < 0 THEN
        SELECT "Es negativo";
    ELSE
        SELECT "Es cero";
    END IF;
END //

-- TEST --

CALL sign(8);
CALL sign(-5);
CALL sign(0);
