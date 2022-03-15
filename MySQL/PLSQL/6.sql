-- Creamos una base de datos vacía por comodidad
DROP DATABASE IF EXISTS exercicis_psql;
CREATE DATABASE exercicis_psql;
USE exercicis_psql;

-- Escriu un procediment que rebi com a paràmetre d'entrada un valor numèric 
-- que representi un dia de la setmana i que retorni una cadena de caràcters 
-- amb el nom de el dia de la setmana corresponent. Per exemple, per al valor 
-- d'entrada 1 hauria de tornar la cadena dilluns.

DROP PROCEDURE IF EXISTS setmana;

DELIMITER //
CREATE PROCEDURE setmana(IN dia DECIMAL, OUT result VARCHAR(20))
BEGIN

    CASE
        WHEN dia = 1 THEN
            SET result = "Dilluns";
        WHEN dia = 2 THEN
            SET result = "Dimarts";
        WHEN dia = 3 THEN
            SET result = "Dimecres";
        WHEN dia = 4 THEN
            SET result = "Dijous";
        WHEN dia = 5 THEN
            SET result = "Divendres";
        WHEN dia = 6 THEN
            SET result = "Dissabte";
        WHEN dia = 7 THEN
            SET result = "Diumenge";
        ELSE
            SET result = "Dia no vàlid";
    END CASE;

END //

-- TEST --

SET @result = "";
CALL setmana(2, @result);
SELECT @result;

CALL setmana(3, @result);
SELECT @result;

CALL setmana(4, @result);
SELECT @result;

CALL setmana(5, @result);
SELECT @result;

CALL setmana(8, @result);
SELECT @result;
