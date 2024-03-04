USE metriciDB;

-- Tabela tblSistem
ALTER TABLE tblSistem ADD PRIMARY KEY(numarSerial);


-- Tabela tblPlaciRetea
ALTER TABLE tblPlaciRetea ADD PRIMARY KEY(numePlacaRetea);

ALTER TABLE tblPlaciRetea 
    MODIFY numePlacaRetea SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE tblPlaciRetea AUTO_INCREMENT=0;

ALTER TABLE tblPlaciRetea ADD CONSTRAINT fk_sys_retea FOREIGN KEY (sistem)
    REFERENCES tblSistem(numarSerial) ON DELETE CASCADE ON UPDATE CASCADE;


-- Tabela tblResurse
ALTER TABLE tblResurse ADD PRIMARY KEY(idResurse);

ALTER TABLE tblResurse
    MODIFY idResurse SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE tblResurse AUTO_INCREMENT=0;

ALTER TABLE tblResurse ADD CONSTRAINT fk_sys_resurse FOREIGN KEY (sistem)
    REFERENCES tblSistem(numarSerial) ON DELETE CASCADE ON UPDATE CASCADE;