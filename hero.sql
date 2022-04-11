 /*Les requêtes sql*/
SELECT Nom FROM Héros
ORDER BY Nom ASC;
/**/
SELECT Nom, PV FROM Héros 
WHERE PV = 40;
/**/
SELECT COUNT(Nom) FROM Héros 
WHERE PV = 40;
/**/
SELECT Nom, PV FROM Héros 
ORDER BY PV ASC;
/**/
SELECT Nom, MAX(PV) FROM Héros;
/**/
SELECT SUM(PV) as "Somme des PVs des personnages" FROM Héros;
/**/
SELECT Heros.Nom, CompetenceHeros.Nom FROM CompetenceHeros
JOIN Heros
ON Heros.ID = CompetenceID;
/**/
SELECT Heros.Nom, Arme.Nom FROM Heros
JOIN Arme
ON Heros.ID = Arme.HerosID;
/**/
SELECT DISTINCT Heros.Nom, Arme.Nom, CompetenceHeros.Nom FROM Heros
INNER JOIN Arme
INNER JOIN CompetenceHeros
ON CompetenceHeros.HerosID = Heros.ID
AND Heros.ID = Arme.HerosID; 


