CREATE DATABASE metriciDB;
USE metriciDB;

CREATE TABLE tblProducator(
    idProducator INT NOT NULL,
    numeProducator CHAR(20)
);

CREATE TABLE tblModel(
    idModel INT NOT NULL,
    numeModel CHAR(20)
);

CREATE TABLE tblProcesor(
    idProcesor INT NOT NULL,
    numeProcesor CHAR(20)
);

CREATE TABLE tblSistem(
    numarSerial INT NOT NULL,
    modelProcesor INT NOT NULL,
    producatorSistem INT NOT NULL,
    modelSistem INT NOT NULL,
    ultimulUpdate TIMESTAMP
);

CREATE TABLE tblPlaciRetea(
    idPlacaRetea INT NOT NULL, -- Cheie primara 
    modelSistem INT NOT NULL, -- Cheia straina
    numarSerialSistem INT NOT NULL, -- Cheia straina
    numePlacaRetea CHAR(50) NOT NULL,
    starePlacaRetea CHAR(5),
    pacheteAruncate INT UNSIGNED,
    dateReceptionate INT UNSIGNED,
    dateTransmise INT UNSIGNED,
    ultimulUpdateRetea TIMESTAMP
);

CREATE TABLE tblResurse(
    idResurse INT UNSIGNED NOT NULL, -- Cheia primara
    modelSistem INT NOT NULL, -- Cheia straina
    numarSerialSistem INT NOT NULL, -- Cheia straina
    utilizareCPU FLOAT CHECK (utilizareCPU >= 0),
    utilizareDisk FLOAT CHECK (utilizareDisk >= 0),
    utilizareRAM FLOAT CHECK (utilizareRAM >= 0),
    ultimulUpdateResurse TIMESTAMP
);
