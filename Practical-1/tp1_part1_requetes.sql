SELECT * FROM etudiant;

SELECT etu.nom FROM etudiant etu
JOIN enseignement ens ON etu.etudId = ens.etudId
WHERE ens.sujet = "BDD";