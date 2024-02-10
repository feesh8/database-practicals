-- La base Epicerie

SELECT nom_p FROM Produit
WHERE origine = "Dijon";

SELECT DISTINCT f.nom_f , f.f FROM Fournisseur f
JOIN Fourniture fo ON f.f = fo.f
JOIN Produit p ON p.p = fo.p
WHERE nom_p = "salade";

SELECT DISTINCT p FROM Fourniture f
JOIN Fournisseur fo ON fo.f = f.f
WHERE fo.ville = "Paris";

SELECT DISTINCT f.nom_f, f.remise FROM Fournisseur f
JOIN Fourniture fo ON fo.f = f.f
JOIN Produit p ON p.p = fo.p
WHERE origine = 'Dijon';

SELECT DISTINCT nom_p FROM Produit p
JOIN Fourniture fo ON fo.p = p.p
JOIN Fournisseur f ON fo.f = f.f
WHERE qte < 5 AND nom_f = 'Bornibus';

SELECT F2.nom_f, F2.ville FROM Fournisseur as F1, Fournisseur as F2
WHERE F1.nom_f = 'Bornibus' AND F2.remise > F1.remise;

-- Retour sur la base Epicerie

SELECT DISTINCT nom_f, ville FROM Fournisseur f
JOIN Fourniture fo ON fo.f = f.f
JOIN Produit p ON p.p = fo.p
WHERE origine = ville;

SELECT f FROM Fourniture 
WHERE f NOT IN (SELECT f FROM Fourniture AS F, Produit AS P WHERE F.p = P.p AND couleur <> 'vert');

SELECT f FROM Fournisseur EXCEPT 
SELECT f FROM Fourniture AS M, Produit AS P WHERE M.p = P.p AND couleur = 'vert';

SELECT f FROM Fourniture 
EXCEPT
SELECT f FROM 
(SELECT f, P.p FROM Fourniture as M, Produit as P WHERE couleur='vert' EXCEPT SELECT f, p FROM Fourniture);

SELECT f FROM Fourniture EXCEPT
SELECT F.f FROM Fournisseur as F, Fourniture as M, Produit as P
WHERE F.f = M.f AND P.p= M.p AND ville <> origine;

SELECT f FROM Fournisseur, Produit 
WHERE ville = origine
EXCEPT 
SELECT f FROM (SELECT f, p FROM Fournisseur, Produit
WHERE ville = origine 
EXCEPT 
SELECT f, p FROM Fourniture);

--7
SELECT DISTINCT * FROM Fourniture as M, Produit as P
WHERE P.p = M.p AND qte > 5;

--8
SELECT f FROM Fournisseur
WHERE ville = 'Paris' OR ville = 'Reims' OR ville = 'Dijon';

--9
SELECT P1.nom_p, P2.nom_p FROM Produit as P1, Produit as P2
WHERE P1.origine = P2.origine AND P1.nom_p <> P2.nom_p;

--10
SELECT COUNT(*) AS 'Nb de Produits Dijonnais' FROM Produit p
WHERE origine = 'Dijon';

--11
SELECT f, sum(qte) as Somme FROM Fourniture AS M 
GROUP BY f;

