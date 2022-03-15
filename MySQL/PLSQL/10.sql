 -- Creamos una base de datos vacía por comodidad
DROP DATABASE IF EXISTS exercicis_psql;
CREATE DATABASE exercicis_psql;
USE exercicis_psql;

-- Escriu una funció que rebi tres nombres reals com a paràmetres 
-- d'entrada i retorni el més gran dels tres.   

DROP FUNCTION IF EXISTS major;

DELIMITER //
CREATE FUNCTION major(a FLOAT, b FLOAT, c FLOAT)
RETURNS BOOLEAN DETERMINISTIC

BEGIN

    IF (a > b AND a > c) THEN
        return(a);
    ELSE IF (b > a AND b > c) THEN
        return(b);
    ELSE
        return(c);

END//bb

-- TEST --

SELECT major(9, 11, 8);