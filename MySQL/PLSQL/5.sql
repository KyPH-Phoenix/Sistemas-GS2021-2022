-- Creamos una base de datos vacía por comodidad
DROP DATABASE IF EXISTS exercicis_psql;
CREATE DATABASE exercicis_psql;
USE exercicis_psql;


-- Resolgui el procediment dissenyat en l'exercici anterior fent ús de l'estructura de control CASE.

DROP PROCEDURE IF EXISTS notes;

DELIMITER //
CREATE PROCEDURE notes(IN nota DECIMAL, OUT result VARCHAR(20))
BEGIN

    CASE
        WHEN nota >= 0 AND nota < 5 THEN
            SET result =  "Insuficient";
        WHEN nota >= 5 AND nota < 6 THEN
            SET result =  "Aprovat";
        WHEN nota >= 6 AND nota < 7 THEN
            SET result =  "Bé";
        WHEN nota >= 7 AND nota < 9 THEN
            SET result =  "Notable";
        WHEN nota >= 9 AND nota <= 10 THEN
            SET result =  "Excel·lent";
        ELSE
            SET result =  "Nota no vàlida";
    END CASE;

END //

-- TEST --

SET @result = "";
CALL notes(9, @result);
SELECT @result;

