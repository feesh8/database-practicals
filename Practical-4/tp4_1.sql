CREATE TABLE "CONTIENT" (
  "idproduit" VARCHAR(42),
  "idcommande" VARCHAR(42),
  "qte" INT,
  PRIMARY KEY ("idproduit", "idcommande"),
  FOREIGN KEY ("idproduit") REFERENCES "PRODUIT" ("idproduit"),
  FOREIGN KEY ("idcommande") REFERENCES "COMMANDE" ("idcommande")
);

CREATE TABLE "CLIENT" (
  "idclient" VARCHAR(42),
  "c_nom" VARCHAR(42),
  "c_ville" VARCHAR(42),
  "c_adresse" VARCHAR(42),
  "c_tel" VARCHAR(42),
  "c_mail" VARCHAR(42),
  PRIMARY KEY ("idclient")
);

CREATE TABLE "COMMANDE" (
  "idcommande" VARCHAR(42),
  "prix_total" FLOAT DEFAULT 0,
  "date" VARCHAR(42),
  "statut" VARCHAR(42),
  "idclient" VARCHAR(42),
  PRIMARY KEY ("idcommande"),
  FOREIGN KEY ("idclient") REFERENCES "CLIENT" ("idclient")
);

CREATE TABLE "FOURNIT" (
  "idproduit" VARCHAR(42),
  "idfournisseur" VARCHAR(42),
  "qte_stock" INT,
  PRIMARY KEY ("idproduit", "idfournisseur"),
  FOREIGN KEY ("idproduit") REFERENCES "PRODUIT" ("idproduit"),
  FOREIGN KEY ("idfournisseur") REFERENCES "FOURNISSEUR" ("idfournisseur")
);

CREATE TABLE "FOURNISSEUR" (
  "idfournisseur" VARCHAR(42),
  "f_nom" VARCHAR(42),
  "f_ville" VARCHAR(42),
  "f_adresse" VARCHAR(42),
  "f_tel" VARCHAR(42),
  "f_mail" VARCHAR(42),
  PRIMARY KEY ("idfournisseur")
);

CREATE TABLE "PRODUIT" (
  "idproduit" VARCHAR(42),
  "marque" VARCHAR(42),
  "description" VARCHAR(42),
  "prix_unitaire" FLOAT,
  "caractéristiques" VARCHAR(42),
  "catégorie" VARCHAR(42),
  PRIMARY KEY ("idproduit")
);

INSERT INTO PRODUIT VALUES ("0001", "Apple", "Blabla", 1200.00, "1,2kg", "ordinateur portable");
INSERT INTO PRODUIT VALUES ("0002", "Asus", "Blabla", 750.00, "1,2kg", "ordinateur portable");
INSERT INTO PRODUIT VALUES ("0003", "Acer", "Blabla", 850.00, "1,2kg", "ordinateur portable");

INSERT INTO FOURNISSEUR VALUES ("001", "f1", "rennes", "2 rues..", "123456789", "f1@");
INSERT INTO FOURNISSEUR VALUES ("002", "f2", "nantes", "2 rues..", "199456789", "f2@");
INSERT INTO FOURNISSEUR VALUES ("003", "f3", "paris", "5 rues..", "1994590089", "f3@");

INSERT INTO FOURNIT VALUES ("0001", "001", 150);
INSERT INTO FOURNIT VALUES ("0002", "001", 140);
INSERT INTO FOURNIT VALUES ("0001", "003", 170);

INSERT INTO COMMANDE (idcommande, "date", statut, idclient) VALUES ("00001", "18/09/2020", "en cours", "1");
INSERT INTO COMMANDE (idcommande, "date", statut, idclient) VALUES ("00002", "18/10/2023", "envoyee", "1");
INSERT INTO COMMANDE (idcommande, "date", statut, idclient) VALUES ("00003", "20/09/2020", "en cours", "3");

INSERT INTO CLIENT VALUES ("1", "albert", "bordeaux", "1 rue..", "123456784", "cli1@");
INSERT INTO CLIENT VALUES ("2", "serge", "lannion", "10 rue..", "123455784", "cli2@");
INSERT INTO CLIENT VALUES ("3", "george", "marseille", "6 rue..", "123426784", "cli2@");

INSERT INTO CONTIENT VALUES ("0003", "00001", 1);
INSERT INTO CONTIENT VALUES ("0002", "00002", 2);
INSERT INTO CONTIENT VALUES ("0003", "00003", 1);

UPDATE "COMMANDE" AS co SET prix_total = c.qte * p.prix_unitaire
FROM CONTIENT c
JOIN PRODUIT p ON c.idproduit = p.idproduit
WHERE co.idcommande = c.idcommande;
