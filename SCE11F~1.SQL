USE projet_jegere;

##Question 3a):
UPDATE projet
SET IDResponsable=1212
WHERE IDResponsable=1876;

##Question 3b):
##Ajout de la nouvelle ligne (tuple) à la table etapesxprojet:
INSERT INTO etapesxprojet(IDEtape,IDProjet,DateDebut,DateFin) VALUES
(3,3,"2012-05-02","2012-09-26");

##Mise à jour de la nouvelle ligne recémment insérée dans la table etapesxprojet
UPDATE etapesxprojet
SET IDEtape=4,DateDebut="2012-12-02",DateFin="2013-12-18"
WHERE IDEtape=3 AND DateDebut="2012-05-02" AND DateFin="2012-09-26";

##Question 3c):
##Martin Rey ne travaille plus dans le projet 1, il travaille présentémment au projet 3, et il sera très bientôt assigné au projet 4:
UPDATE ressourcesprojet
SET IDEmploye=1212
WHERE IDEmploye=1876 AND IDProjet=1;

##Madame Marie St-Jeromê a bien gagné une majoration de son salaire de 12$:
UPDATE ressourcesprojet
SET PrixHeure=PrixHeure+12
WHERE IDEmploye=1212 AND  PrixHeure=35;

##Question 3d):
##Élimination de tous les tuples associés au projet 2 (IdProjet=2):
##L'élimination de ce projet dans la BD passe par l'élimination de l'attribut IDProjet égal à 2.

##Dans la table projet
DELETE FROM projet
WHERE IDProjet=2;

##Dans la table ressourcesprojet:
DELETE FROM ressourcesprojet
WHERE IDProjet=2;

##Dans la table etapesxprojet
DELETE FROM etapesxprojet
WHERE IDProjet=2;









