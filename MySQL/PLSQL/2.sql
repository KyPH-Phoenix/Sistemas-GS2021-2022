DROP DATABASE IF EXISTS exercicis_psql;
CREATE DATABASE exercicis_psql;
USE exercicis_psql; 

-- Enunciado o resumen de la función
DROP FUNCTION IF EXISTS <funcion>;
DELIMITER //
CREATE FUNCTION <funcion>(<argumentos>)
RETURNS <tipo> DETERMINISTIC
BEGIN
    -- Código
END //


/* ----------- PRUEBAS ----------- */
SELECT <funcion>(<argumentos>);