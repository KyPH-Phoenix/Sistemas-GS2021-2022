CREATE DATABASE IF NOT EXISTS ejercicio1;

USE ejercicio1

CREATE TABLE IF NOT EXISTS Oficina (
    oficinaID int NOT NULL AUTO_INCREMENT,
    direccion varchar(50) NOT NULL,
    PRIMARY KEY (oficinaID)
);

CREATE TABLE IF NOT EXISTS Usuario (
    usuarioID int NOT NULL AUTO_INCREMENT,
    nombre varchar(20) NOT NULL,
    oficinaID int,
    PRIMARY KEY (usuarioID),
    FOREIGN KEY (oficinaID) REFERENCES Oficina(oficinaID) ON DELETE SET NULL
); 

CREATE TABLE IF NOT EXISTS Cuenta (
    cuentaID int NOT NULL AUTO_INCREMENT,
    saldo decimal(10, 2) DEFAULT 0.0 NOT NULL,
    usuarioID int,
    PRIMARY KEY (cuentaID),
    FOREIGN KEY (usuarioID) REFERENCES Usuario(usuarioID) ON DELETE CASCADE
);

-- Respuestas a los otros ejercicios

-- 2
SELECT Name, Code, Population, COUNT(isOfficial) AS Idiomas_no_oficiales
FROM country 
INNER JOIN countrylanguage ON Code=CountryCode 
WHERE IsOfficial = 'F' 
GROUP BY Code
ORDER BY Idiomas_no_oficiales DESC
LIMIT 1;

-- 3
SELECT Name, Code, GNP - GNPOld AS 'Growth (GNP - GNPOld)' 
FROM country 
WHERE GNPOld IS NOT NULL 
AND Continent IN ('North America', 'South America')
AND GNP - GNPOld > 5000
ORDER BY GNP - GNPOld DESC;

-- 4
SELECT Name, Code, Population / SurfaceArea AS Densidad 
FROM country 
ORDER BY Population / SurfaceArea DESC 
LIMIT 10;

-- 5
SELECT Code, Name, COUNT(Language) AS IdiomasNoOficiales 
FROM country 
LEFT JOIN countrylanguage ON country.Code=countrylanguage.CountryCode 
GROUP BY Code 
HAVING COUNT(Language) IN (0, 1) 
ORDER BY IdiomasNoOficiales DESC;

-- 6
SELECT Name, Code, Code2, Population / 1000000 AS MillonesDeHabitantes 
FROM country 
WHERE Code2 = SUBSTRING(Code, 1, 2) 
ORDER BY Population DESC 
LIMIT 10;

-- 7
SELECT Name, Code, LifeExpectancy 
FROM country 
WHERE Continent = 'Europe' 
AND LifeExpectancy > (
    SELECT AVG(LifeExpectancy) 
    FROM country 
    WHERE Continent = 'Europe'
);

-- 8
SELECT city.Name AS Ciudad, city.Population AS Poblacion, 
(city.Population / country.Population) * 100 AS 'Poblacion Relativa (%)' 
FROM city 
INNER JOIN country ON city.CountryCode = country.Code 
WHERE country.Code = 'USA' 
LIMIT 10;