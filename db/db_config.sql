USE metriciDB;

-- Tabela tblSistem
ALTER TABLE tblSistem ADD PRIMARY KEY(idSistem);

ALTER TABLE tblSistem
    MODIFY idSistem INT NOT NULL AUTO_INCREMENT;

ALTER TABLE tblResurse AUTO_INCREMENT=0;


-- Tabela tblPlaciRetea
ALTER TABLE tblPlaciRetea ADD PRIMARY KEY(numePlacaRetea);

ALTER TABLE tblPlaciRetea ADD CONSTRAINT fk_sys_retea FOREIGN KEY (sistem)
    REFERENCES tblSistem(idSistem) ON DELETE CASCADE ON UPDATE CASCADE;


-- Tabela tblResurse
ALTER TABLE tblResurse ADD PRIMARY KEY(idResurse);

ALTER TABLE tblResurse
    MODIFY idResurse INT UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE tblResurse AUTO_INCREMENT=0;

ALTER TABLE tblResurse ADD CONSTRAINT fk_sys_resurse FOREIGN KEY (sistem)
    REFERENCES tblSistem(idSistem) ON DELETE CASCADE ON UPDATE CASCADE;