-- Creamos una base de datos vacía por comodidad
DROP DATABASE IF EXISTS exercicis_psql;
CREATE DATABASE exercicis_psql;
USE exercicis_psql;


-- Escriu un procediment que rebi un nombre real d'entrada, que representa el valor de la nota 
-- d'un alumne, i mostri un missatge indicant quina nota ha obtingut tenint en compte les següents condicions:
    -- [0,5) = Insuficient
    -- [5,6) = Aprovat
    -- [6, 7) = Bé
    -- [7, 9) = Notable
    -- [9, 10] = Excellent
    -- En qualsevol altre cas la nota no serà vàlida.

DROP PROCEDURE IF EXISTS notes;

DELIMITER //
CREATE PROCEDURE notes(IN nota DECIMAL)
BEGIN
    IF nota < 0 OR nota > 10 THEN
        SELECT "Nota no valida";        
    ELSEIF nota < 5 THEN
        SELECT "Insuficient";
    ELSEIF nota < 6 THEN
        SELECT "Aprovat";
    ELSEIF nota < 7 THEN
        SELECT "Be";
    ELSEIF nota < 9 THEN
        SELECT "Notable";
    ELSE
        SELECT "Excelent";
    END IF;
END //

-- TEST --

CALL notes(0);
CALL notes(4);
CALL notes(5);
CALL notes(6);
CALL notes(7);
CALL notes(9);
CALL notes(12);
CALL notes(-1);
CALL notes(7.89)

