--Lister l’emploi du temps (d’un cr ́eneau sp ́ecifique) pour un  ́etudiant particulier.

SELECT NomModule, c.Salle_idSalle, HeureDebut, HeureFin FROM Cours c
JOIN Module ON c.Module_idModule = idModule
JOIN Etudiant_has_Module EhM ON idModule = EhM.Module_idModule
JOIN Etudiant ON Etudiant_idEtudiant = idEtudiant
JOIN Creneau ON c.Creneau_idCreneau=idCreneau
WHERE Creneau_idCreneau = 10 AND idEtudiant = 31;

--Lister l’emploi du temps (d’un créneau spécifique) pour un parcours.

SELECT NomModule, c.Salle_idSalle, HeureDebut, HeureFin FROM Cours c
JOIN Creneau cr ON c.Creneau_idCreneau=idCreneau
JOIN Module ON c.Module_idModule=idModule
JOIN Etudiant_has_Module EhM ON idModule=EhM.Module_idModule
JOIN Etudiant ON EhM.Etudiant_idEtudiant=idEtudiant
JOIN Parcours ON Parcours_idParcours=idParcours
WHERE NomParcours='parcoursA' AND Jour='23.02.2023';

--Lister l’emploi du temps (d’un créneau spécifique) pour un enseignant.

SELECT NomModule, c.Salle_idSalle, HeureDebut, HeureFin FROM Cours c
JOIN Creneau cr ON c.Creneau_idCreneau=idCreneau
JOIN Enseignant ON Enseignant_idEnseignant=idEnseignant
JOIN Module ON c.Module_idModule=idModule
WHERE NomEns='Jean' AND Jour='23.02.2023';

--Horaires d’un cours spécifique

SELECT HeureDebut, HeureFin, Jour  FROM Cours
JOIN Creneau ON Creneau_idCreneau=idCreneau
WHERE idCours=41;

--Trouver le nom des enseignants pour un cours spécifique

SELECT PrenomEns, NomEns FROM Cours 
JOIN Enseignant ON Enseignant_idEnseignant=idEnseignant
WHERE idCours=41;

--Obtenir une liste des étudiants (d’un parcours) qui suivent un cours spécifique.

SELECT * FROM Etudiant
JOIN Etudiant_has_Module as EhM ON idEtudiant=EhM.Etudiant_idEtudiant
JOIN Module ON EhM.Module_idModule=idModule
JOIN Cours as C ON idModule=C.Module_idModule
WHERE Parcours_idParcours = 21 AND idCours = 42;

--Occupation d'une salle spécifique (ici Salle 1)

SELECT HeureDebut, HeureFin, Jour_idJour, StatutSalle FROM Salle
JOIN Salle_has_Creneau ON Salle_idSalle=idSalle
JOIN Creneau ON Creneau_idCreneau=idCreneau
WHERE idSalle=1;

--Liste des salles de TP non occupées sur un créneau spécifique

SELECT idSalle, HeureDebut, HeureFin, Jour_idJour FROM Salle
JOIN Salle_has_Creneau ON Salle_idSalle=idSalle
JOIN Creneau ON Creneau_idCreneau=idCreneau
WHERE StatutSalle='libre' AND TypeSalle='TP' AND idCreneau=10;
