CREATE TABLE IF NOT EXISTS precipitations
(
    idprecip INT NOT NULL AUTO_INCREMENT,
    quantite FLOAT,
    saison VARCHAR(10),
    idterrain INT(10) unsigned NOT NULL,
    CONSTRAINT PK_Precip PRIMARY KEY (idprecip),
    CONSTRAINT FK_Idterrainp FOREIGN KEY (idterrain) REFERENCES terrain(idterrain)
);

DROP TABLE IF EXISTS temperatures;
CREATE TABLE IF NOT EXISTS temperatures
(
    idtemp INT NOT NULL AUTO_INCREMENT,
    moyenne FLOAT,
    minimale FLOAT,
    maximale FLOAT,
    datetemp INT(7),
    idterrain INT(10) unsigned NOT NULL,
    CONSTRAINT PK_Idtemp PRIMARY KEY (idtemp),
    CONSTRAINT FK_Idterraint FOREIGN KEY (idterrain) REFERENCES terrain(idterrain)
);
