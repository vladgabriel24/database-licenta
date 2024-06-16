CREATE DATABASE metriciDB;
USE metriciDB;

CREATE TABLE tblProducator(
    idProducator INT NOT NULL,
    numeProducator VARCHAR(255)
);

CREATE TABLE tblModel(
    idModel INT NOT NULL,
    numeModel VARCHAR(255)
);

CREATE TABLE tblProcesor(
    idProcesor INT NOT NULL,
    numeProcesor VARCHAR(255)
);

CREATE TABLE tblSerial(
    idSerial INT NOT NULL,
    numarSerial VARCHAR(255)
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
    numePlacaRetea VARCHAR(255) NOT NULL,
    starePlacaRetea BOOLEAN,
    pacheteAruncate INT UNSIGNED,
    dateReceptionate INT UNSIGNED,
    dateTransmise INT UNSIGNED,
    ultimulUpdateRetea TIMESTAMP
);

CREATE TABLE tblResurse(
    idResurse INT NOT NULL, -- Cheia primara
    modelSistem INT NOT NULL, -- Cheia straina
    numarSerialSistem INT NOT NULL, -- Cheia straina
    utilizareCPU FLOAT CHECK (utilizareCPU >= 0),
    utilizareDisk FLOAT CHECK (utilizareDisk >= 0),
    utilizareRAM FLOAT CHECK (utilizareRAM >= 0),
    ultimulUpdateResurse TIMESTAMP
);
