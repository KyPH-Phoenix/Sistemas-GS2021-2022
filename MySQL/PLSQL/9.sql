 -- Creamos una base de datos vacía por comodidad
DROP DATABASE IF EXISTS exercicis_psql;
CREATE DATABASE exercicis_psql;
USE exercicis_psql;

-- Escriu una funció que rebi com a paràmetre d'entrada un valor 
-- numèric que representi un dia de la setmana i que retorni una 
-- cadena de caràcters amb el nom de el dia de la setmana corresponent. 
-- Per exemple, per al valor d'entrada 1 hauria de tornar la cadena dilluns.

DROP FUNCTION IF EXISTS setmana;

DELIMITER //
CREATE FUNCTION setmana(num INT)
RETURNS VARCHAR(20) DETERMINISTIC

BEGIN

    CASE
        WHEN num = 1 THEN
            return("Dilluns");
        WHEN num = 2 THEN
            return("Dimarts");
        WHEN num = 3 THEN
            return("Dimecres");
        WHEN num = 4 THEN
            return("Dijous");
        WHEN num = 5 THEN
            return("Divendres");
        WHEN num = 6 THEN
            return("Dissabte");
        WHEN num = 7 THEN
            return("Diumenge");
        ELSE
            return("Dia no vàlid");
    END CASE;


END//

-- TEST --

SELECT setmana(9);