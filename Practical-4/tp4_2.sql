CREATE TABLE Client (
  "idclient" INT,
  "nom" VARCHAR(42),
  "adresse" VARCHAR(42),
  "ville" VARCHAR(42),
  "pays" VARCHAR(42),
  "tel" VARCHAR(42),
  "mail" VARCHAR(42),
  "no_permis" INT,
  PRIMARY KEY ("idclient")
);

INSERT INTO Client
VALUES
(01, "Elise Metayer", "12 rue du 8 Mai 1945", "Rennes", "France", "0765433218", "elisemetayer@gmail.com", "1"),
(02, "Stevan Metayer", "12 rue du 8 Mai 1945", "Chalon-sur-Saône", "France", "0765437618", "stevanmetayer@gmail.com", "2"),
(03, "Théo Vincent", "12 rue des plantes", "Rennes", "France", "0765435618", "theovincent@gmail.com", "3");

CREATE TABLE Reservation (
  "idréservation" INT,
  "date_debut" VARCHAR(42),
  "date_fin" VARCHAR(42),
  "ville_départ" VARCHAR(42),
  "ville_arrivée" VARCHAR(42),
  "prix_total" FLOAT,
  "duree_en_jours" INT,
  "idclient" VARCHAR(42),
  "idsuccursale.départ" VARCHAR(42),
  "idsuccursale.arrivé" VARCHAR(42),
  "idvoiture" VARCHAR(42),
  PRIMARY KEY ("idréservation"),
  FOREIGN KEY ("idclient") REFERENCES "CLIENT" ("idclient"),
  FOREIGN KEY ("idvoiture") REFERENCES "VOITURE" ("idvoiture")
);

INSERT INTO Reservation
VALUES
(100, "12.04.2020", "19.04.2020", "Paris", "Milan", 0, 8, 01, 10, 20, 001),
(200, "08.06.2020", "18.04.2020", "Milan", "Milan", 0, 10, 03, 20, 20, 002),
(300, "05.12.2003", "19.12.2003", "Paris", "Paris", 0, 14, 02, 10, 10, 001);

CREATE TABLE Succursale (
  "idsuccursale" VARCHAR(42),
  "ville" VARCHAR(42),
  "adresse" VARCHAR(42),
  "pays" VARCHAR(42),
  "tel" VARCHAR(42),
  "mail" VARCHAR(42),
  PRIMARY KEY ("idsuccursale")
);

CREATE TABLE Voiture (
  "idvoiture" INT,
  "marque" VARCHAR(42),
  "modèle" VARCHAR(42),
  "année" INT,
  "catégorie" VARCHAR(42),
  "disponibilité" VARCHAR(42),
  "prix_journee" FLOAT,
  "idsuccursale" INT,
  PRIMARY KEY ("idvoiture"),
  FOREIGN KEY ("idsuccursale") REFERENCES "SUCCURSALE" ("idsuccursale")
);

INSERT INTO Voiture
VALUES
(001, "Renault", "Clio", 2020, "économique", "disponible", 200.0, 10),
(002, "Peugeot", "208", 2022, "économique", "disponible", 190.0, 20),
(003, "Porsche", "Cayenne", 2022, "luxe", "disponible", 800.0, 30);

INSERT INTO Succursale
VALUES
(10, "Paris", "17 Bd de Vaugirard", "France", "0656943245", "succursale1@gmail.com"),
(20, "Milan", "Sottopasso Mortirolo", "Italie", "0656966245", "succursale2@gmail.com"),
(30, "Berlin", "Beusselstraße 44 n-q", "Allemagne", "0651243245", "succursale3@gmail.com");

UPDATE Reservation AS R SET prix_total = R.duree_en_jours * v.prix_journee
FROM VOITURE v WHERE v.idvoiture = R.idvoiture;
