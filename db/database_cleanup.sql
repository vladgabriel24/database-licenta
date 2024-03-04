SET GLOBAL event_scheduler = ON;

USE metriciDB;

DELIMITER // 
-- Cand folosesc sintaxa cu BEGIN..END, trebuie sa definesc alt
-- Delimitator decat cel ; pentru a delimita query-ul total de
-- query-urile dinauntrul lui BEGIN...END
-- Acelea vor fi mai apoi interpretate cu delimitatorul ;
-- deoarece la finalul query-ului mare redefinesc delimitatorul la ;

CREATE EVENT 
IF NOT EXISTS clear_table
ON SCHEDULE EVERY 1 DAY STARTS '2024-03-05 03:00:00'
DO
BEGIN
    TRUNCATE TABLE tblResurse;
    TRUNCATE TABLE tblPlaciRetea;
END //

DELIMITER ;
