USE metriciDB;

-- Tabela tblProducator
ALTER TABLE tblProducator ADD PRIMARY KEY(idProducator);

ALTER TABLE tblProducator
    MODIFY idProducator INT NOT NULL AUTO_INCREMENT;

ALTER TABLE tblProducator AUTO_INCREMENT=0;

ALTER TABLE tblProducator ADD UNIQUE (numeProducator);

-- Tabela tblModel
ALTER TABLE tblModel ADD PRIMARY KEY(idModel);

ALTER TABLE tblModel
    MODIFY idModel INT NOT NULL AUTO_INCREMENT;

ALTER TABLE tblModel AUTO_INCREMENT=0;

ALTER TABLE tblModel ADD UNIQUE (numeModel);

-- Tabela tblProcesor
ALTER TABLE tblProcesor ADD PRIMARY KEY(idProcesor);

ALTER TABLE tblProcesor
    MODIFY idProcesor INT NOT NULL AUTO_INCREMENT;

ALTER TABLE tblProcesor AUTO_INCREMENT=0;

ALTER TABLE tblProcesor ADD UNIQUE (numeProcesor);

-- Tabela tblSerial
ALTER TABLE tblSerial ADD PRIMARY KEY(idSerial);

ALTER TABLE tblSerial
    MODIFY idSerial INT NOT NULL AUTO_INCREMENT;

ALTER TABLE tblSerial AUTO_INCREMENT=0;

ALTER TABLE tblSerial ADD UNIQUE (numarSerial);


-- Tabela tblSistem

ALTER TABLE tblSistem ADD CONSTRAINT fk_producator FOREIGN KEY (producatorSistem)
    REFERENCES tblProducator(idProducator) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE tblSistem ADD CONSTRAINT fk_model FOREIGN KEY (modelSistem)
    REFERENCES tblModel(idModel) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE tblSistem ADD CONSTRAINT fk_procesor FOREIGN KEY (modelProcesor)
    REFERENCES tblProcesor(idProcesor) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE tblSistem ADD CONSTRAINT fk_serial FOREIGN KEY (numarSerial)
    REFERENCES tblSerial(idSerial) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE tblSistem ADD PRIMARY KEY(numarSerial, producatorSistem);


-- Tabela tblPlaciRetea
ALTER TABLE tblPlaciRetea ADD PRIMARY KEY(idPlacaRetea);

ALTER TABLE tblPlaciRetea
    MODIFY idPlacaRetea INT UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE tblPlaciRetea AUTO_INCREMENT=0;

ALTER TABLE tblPlaciRetea ADD CONSTRAINT fk_sistem_retea FOREIGN KEY (modelSistem, numarSerialSistem)
    REFERENCES tblSistem(producatorSistem, numarSerial) ON DELETE CASCADE ON UPDATE CASCADE;


-- Tabela tblResurse
ALTER TABLE tblResurse ADD PRIMARY KEY(idResurse);

ALTER TABLE tblResurse
    MODIFY idResurse INT UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE tblResurse AUTO_INCREMENT=0;

ALTER TABLE tblResurse ADD CONSTRAINT fk_sistem_resurse FOREIGN KEY (modelSistem, numarSerialSistem)
    REFERENCES tblSistem(producatorSistem, numarSerial) ON DELETE CASCADE ON UPDATE CASCADE;
