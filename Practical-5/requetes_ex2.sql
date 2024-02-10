-- Livres proposés par année 

SELECT nomLivre FROM Livre 
JOIN Annee_has_Livre ON Livre_idLivre = idLivre
WHERE Annee_idAnnee = 2020;

-- Livres proposés par parcours

SELECT nomLivre FROM Livre
JOIN Cours_has_Livre C ON Livre_idLivre = idLivre
JOIN Cours ON idCours = C.Cours_idCours
JOIN Parcours_has_Cours P ON P.Cours_idCours = C.Cours_idCours
WHERE P.Parcours_idParcours = 40;
