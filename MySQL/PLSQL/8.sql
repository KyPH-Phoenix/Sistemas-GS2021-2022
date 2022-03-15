-- Creamos una base de datos vacía por comodidad
DROP DATABASE IF EXISTS exercicis_psql;
CREATE DATABASE exercicis_psql;
USE exercicis_psql;

-- Escriu una funció que retorni el valor de la hipotenusa d'un triangle 
-- a partir dels valors dels seus costats.

DROP FUNCTION IF EXISTS hipotenusa;

DELIMITER //
CREATE FUNCTION hipotenusa(a FLOAT, b FLOAT)
RETURNS FLOAT DETERMINISTIC

BEGIN

   return(SQRT(POW(a, 2) + POW(b, 2)));

END //

-- TEST --

SELECT hipotenusa(4, 6);