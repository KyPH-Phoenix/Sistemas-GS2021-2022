DROP DATABASE IF EXISTS test;
CREATE DATABASE test;
USE test;

DROP TABLE IF EXISTS alumnes;
CREATE TABLE alumnes (
    id INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(20),
    cognom1 VARCHAR(20),
    cognom2 VARCHAR(20),
    nota INT,
    PRIMARY KEY(id)
);

delimiter $$

CREATE TRIGGER chec_nota_before_insert
BEFORE INSERT ON alumnes
FOR EACH ROW
    BEGIN

        IF new.nota < 0 THEN
            SET new.nota = 0;
        ELSE IF new.nota > 10 THEN
            SET new.nota = 10;
        END IF

    END $$



    