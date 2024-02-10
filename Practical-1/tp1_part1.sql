CREATE TABLE etudiant(etudId INTEGER, nom TEXT, prenom TEXT, address ADDRESS);

CREATE TABLE professeur(profId INTEGER, nom TEXT, prenom TEXT);

CREATE TABLE enseignement(ensId INTEGER, sujet TEXTE, etudId INTEGER, profId INTEGER);

INSERT INTO etudiant values(1, "METAYER", "Elise", "Rennes");

INSERT INTO etudiant values(2, "SHEHABI", "Fanny", "Rennes");

INSERT INTO professeur values(1, "GALASSI", "Francesca");

INSERT INTO enseignement values(1, "BDD", 1, 1);
