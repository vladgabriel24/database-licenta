INSERT INTO tblProducator (numeProducator) VALUES ("Lenovo");
INSERT INTO tblModel (numeModel) VALUES ("ThinkSystem");
INSERT INTO tblProcesor (numeProcesor) VALUES ("Intel Xeon");
INSERT INTO 
tblSistem (numarSerial,modelProcesor,producatorSistem,modelSistem) 
VALUES (
    0,
    (
        SELECT idProcesor
        FROM tblProcesor
        WHERE numeProcesor = "Intel Xeon"
    ),
    (
        SELECT idProducator
        FROM tblProducator
        WHERE numeProducator = "Lenovo"
    ),
    (
        SELECT idModel
        FROM tblModel
        WHERE numeModel = "ThinkSystem"
    )
);


INSERT INTO
tblPlaciRetea (
    modelSistem, 
    numarSerialSistem, 
    numePlacaRetea, 
    starePlacaRetea,
    pacheteAruncate,
    dateReceptionate,
    dateTransmise
)
VALUES (
    (
        SELECT idModel
        FROM tblModel
        WHERE numeModel = "ThinkSystem"
    ),
    0,
    ?,
    ?,
    ?,
    ?,
    ?
)