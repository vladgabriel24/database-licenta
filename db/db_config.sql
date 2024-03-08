USE metriciDB;

-- Tabela tblProducator
ALTER TABLE tblProducator ADD PRIMARY KEY(idProducator);

-- Tabela tblModel
ALTER TABLE tblModel ADD PRIMARY KEY(idModel);

-- Tabela tblProcesor
ALTER TABLE tblProcesor ADD PRIMARY KEY(idProcesor);


-- Tabela tblSistem
ALTER TABLE tblSistem ADD PRIMARY KEY(numarSerial, producatorSistem);

ALTER TABLE tblSistem ADD CONSTRAINT fk_producator FOREIGN KEY (producatorSistem)
    REFERENCES tblProducator(idProducator) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE tblSistem ADD CONSTRAINT fk_model FOREIGN KEY (modelSistem)
    REFERENCES tblModel(idModel) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE tblSistem ADD CONSTRAINT fk_procesor FOREIGN KEY (modelProcesor)
    REFERENCES tblProcesor(idProcesor) ON DELETE CASCADE ON UPDATE CASCADE;


-- Tabela tblPlaciRetea
ALTER TABLE tblPlaciRetea ADD PRIMARY KEY(idPlacaRetea);

ALTER TABLE tblPlaciRetea
    MODIFY idPlacaRetea INT UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE tblPlaciRetea AUTO_INCREMENT=0;

ALTER TABLE tblPlaciRetea ADD CONSTRAINT fk_sistem_retea FOREIGN KEY (modelSistem, numarSerialSistem)
    REFERENCES tblSistem(numarSerial, producatorSistem) ON DELETE CASCADE ON UPDATE CASCADE;


-- Tabela tblResurse
ALTER TABLE tblResurse ADD PRIMARY KEY(idResurse);

ALTER TABLE tblResurse
    MODIFY idResurse INT UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE tblResurse AUTO_INCREMENT=0;

ALTER TABLE tblResurse ADD CONSTRAINT fk_sistem_resurse FOREIGN KEY (modelSistem, numarSerialSistem)
    REFERENCES tblSistem(numarSerial, producatorSistem) ON DELETE CASCADE ON UPDATE CASCADE;
