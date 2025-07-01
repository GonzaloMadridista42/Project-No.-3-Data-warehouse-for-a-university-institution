USE projet_jegere;

##Question 3a):
UPDATE projet
SET p_IDResponsable=1212
WHERE p_IDResponsable=1876;

##Question 3b):
##Ajout de la nouvelle ligne (tuple) à la table etapesxprojet:
INSERT INTO etapesxprojet(ep_IDEtape,ep_IDProjet,ep_DateDebut,ep_DateFin) VALUES
(3,3,"2012-05-02","2012-09-26");

##Mise à jour de la nouvelle ligne recémment insérée dans la table etapesxprojet
UPDATE etapesxprojet
SET ep_IDEtape=4,ep_DateDebut="2012-12-02",ep_DateFin="2013-12-18"
WHERE ep_IDEtape=3 AND ep_DateDebut="2012-05-02" AND ep_DateFin="2012-09-26";

##Question 3c):
##Martin Rey ne travaille plus dans le projet 1, il travaille présentémment au projet 3, et il sera très bientôt assigné au projet 4:
UPDATE ressourcesprojet
SET rp_IDEmploye=1212
WHERE rp_IDEmploye=1876 AND rp_IDProjet=1;

##Madame Marie St-Jeromê a bien gagné une majoration de son salaire de 12$:
UPDATE ressourcesprojet
SET rp_PrixHeure=rp_PrixHeure+12
WHERE rp_IDEmploye=1212 AND  rp_PrixHeure=35;

##Question 3d):
##Élimination de tous les tuples associés au projet 2 (IdProjet=2):
##L'élimination de ce projet dans la BD passe par l'élimination de l'attribut IDProjet égal à 2.

##Dans la table projet
DELETE FROM projet
WHERE p_IDProjet=2;

##Dans la table ressourcesprojet:
DELETE FROM ressourcesprojet
WHERE rp_IDProjet=2;

##Dans la table etapesxprojet
DELETE FROM etapesxprojet
WHERE ep_IDProjet=2;









