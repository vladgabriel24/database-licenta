CREATE DATABASE metriciDB;
USE metriciDB;

CREATE TABLE tblSistem(
    numarSerial INT NOT NULL,
    spatiuStocare SMALLINT NOT NULL,
    numarCoreProcesor SMALLINT UNSIGNED NOT NULL,
    vitezaProcesor FLOAT CHECK (vitezaProcesor >= 0) NOT NULL,
    memorieRAM SMALLINT NOT NULL,
    modelSistem TEXT,
    anFabricare YEAR
);

CREATE TABLE tblPlaciRetea(
    idPlacaRetea SMALLINT UNSIGNED NOT NULL,
    sistem INT, -- Cheia straina folosita pentru asocierea cu entitatea Sistem
    modelPlacaRetea TEXT,
    throughtput INT UNSIGNED,
    packetLoss INT UNSIGNED,
    utilizare INT UNSIGNED,
    ultimulUpdateRetea TIMESTAMP
);

CREATE TABLE tblResurse(
    idResurse SMALLINT UNSIGNED NOT NULL,
    sistem INT, -- Cheia straina folosita pentru asocierea cu entitatea Sistem
    utilizareCPU FLOAT CHECK (utilizareCPU >= 0),
    utilizareDisk FLOAT CHECK (utilizareDisk >= 0),
    utilizareRAM FLOAT CHECK (utilizareRAM >= 0),
    ultimulUpdateResurse TIMESTAMP
);