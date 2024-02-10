CREATE TABLE Client(nom TEXT, tel INTEGER, adresse TEXT, ville TEXT);
CREATE TABLE Facture(id INTEGER, nom_client TEXT, produit TEXT, qte INTEGER, prix_uni FLOAT, TVA AS (qte * prix_uni * 0.2), prix_tot AS (qte * prix_uni + TVA), date_fact TEXT);

CREATE TRIGGER ristourne 
AFTER INSERT ON Facture
BEGIN
UPDATE Facture SET prix_uni = 0.8 * prix_uni
WHERE qte > 99 AND date_fact LIKE '%.9.%';
END;

INSERT INTO Client VALUES ('Alpha Co', 1231231231, '3, Rue du Thabor','Rennes');
INSERT INTO Client VALUES ('Beta Co', 3213213213, '43, Place de la Republique','Rennes');
INSERT INTO Client VALUES ('Gamma Co', 7417417417, '32, Rue d Orleans','Nantes');

INSERT INTO Facture (id, nom_client, produit, qte, prix_uni, date_fact)
VALUES (123, 'Alpha Co', 'pomme', 2, 1.0, '2.3.2013'), (124, 'Beta Co', 'tomate', 22, 0.5, '3.4.2013'), (125, 'Gamma Co', 'orange', 13, 1.0, '4.4.2013'), (124, 'Delta Co', 'poire', 200, 1.0, '2.9.2013');
