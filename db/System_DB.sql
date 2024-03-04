CREATE DATABASE metriciDB;
USE metriciDB;

CREATE TABLE tblSistem(
    idSistem INT NOT NULL,
    numarSerial INT NOT NULL,
    modelProcesor CHAR(50),
    producatorSistem CHAR(50),
    modelSistem TEXT
);

CREATE TABLE tblPlaciRetea(
    numePlacaRetea CHAR(50) NOT NULL, -- Cheia primara
    sistem INT NOT NULL, -- Cheia straina folosita pentru asocierea cu entitatea Sistem
    starePlacaRetea CHAR(5),
    pacheteAruncate INT UNSIGNED,
    dateReceptionate INT UNSIGNED,
    dateTransmise INT UNSIGNED,
    ultimulUpdateRetea TIMESTAMP
);

CREATE TABLE tblResurse(
    idResurse INT UNSIGNED NOT NULL, -- Cheia primara
    sistem INT NOT NULL, -- Cheia straina folosita pentru asocierea cu entitatea Sistem
    utilizareCPU FLOAT CHECK (utilizareCPU >= 0),
    utilizareDisk FLOAT CHECK (utilizareDisk >= 0),
    utilizareRAM FLOAT CHECK (utilizareRAM >= 0),
    ultimulUpdateResurse TIMESTAMP
);