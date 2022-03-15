-- Creamos una base de datos vacía por comodidad
DROP DATABASE IF EXISTS exercicis_psql;
CREATE DATABASE exercicis_psql;
USE exercicis_psql;

-- Escriu una funció que rebi un nombre enter d'entrada 
-- i retorni TRUE si el nombre és parell o FALSE en cas contrari.

DROP FUNCTION IF EXISTS parell;

DELIMITER //
CREATE FUNCTION parell(num INT)
RETURNS BOOLEAN DETERMINISTIC

BEGIN

    IF (num % 2 = 0) THEN
        return(1);
    ELSE
        return(0);
    END IF;

END //

-- TEST --

SELECT parell(5)