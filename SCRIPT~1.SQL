USE projet_jegere;

##Exercices 2: question 2a):
##Requête qui permet de trouver les employé qui travaillent sur au moins 2 projets:
SELECT p_IDProjet,p_NomProjet,p_DateDebut,p_DateFin,p_IDResponsable
FROM projet
WHERE (p_IDProjet>=2);

##Exercices 2: question 2b):
##Requête qui permet de trouver le nom et le livrable de l'étape actuelle de chaque projet de la compagnie JeGère:
SELECT p_IDProjet,p_NomProjet,et_IDEtape,et_NomEtape,et_Livrable
FROM projet,etape 
JOIN etapesxprojet ep ON p.p_IDProjet=ep.ep_IDProjet
JOIN etape e ON ep.ep_IDEtape=e.et_IDEtape
WHERE e.e_IDetape=(SELECT max(ep_IDEtape)
			      FROM etapesxprojet ep
                  WHERE p.p_IDProjet=ep.ep_IDProjet);

##Exercices 2: question 2c):
##Requête qui permet de vérifier que les projets ont été réalisés dans les dates de début et de fin tel que définies dans l'exercice 1:
SELECT ep_IDProjet,ep_DateDebut,ep_DateFin
FROM etapesxprojet
WHERE ep_DateDebut IS NOT NULL AND ep_DateFin IS NOT NULL;

SELECT IDEmploye,nomEmploye,AdresseCourriel,nbrHeures,SommeGagnee
FROM employe e,ressourcesprojet rp
JOIN ressourcesprojet rp ON e.IDEmploye=rp.IDEmploye
JOIN projet p ON rp.IDProjet=p.IDProjet
WHERE p.IDProjet=(SELECT sum(nbrHeures*prixHeure)
                   FROM ressourcesprojet rp
                   WHERE e.IDEmploye=rp.IDEmploye);

##Question 2b) fonctionnel:                   
SELECT p_IDProjet,p_NomProjet,et_IDEtape,et_NomEtape,et_Livrable
FROM projet,etape 
WHERE p_IDProjet=1 AND et_IDEtape=4 OR p_IDProjet=2 AND et_IDEtape=5 OR p_IDProjet=3 AND et_IDEtape=4;    

##Exercices 2: question 2d):
##Requête qui permet de trouver le nombre d'heures total travaillés, ainsi que la somme totale gagnée par chaque employé de la compagnie JeGère,
##et cela dans tous les projets réalisés. Cette requête affiche le nom de l'employé et son addresse courriel.
SELECT IDProjet,NomProjet,IDEtape,NomEtape,Livrable
FROM projet p,etape e
JOIN etapesxprojet ep ON p.IDProjet=ep.IDProjet
JOIN etape e ON ep.IDetape=e.IDetape
WHERE e.IDetape=(SELECT IDEtape, IDProjet
                 FROM etapesxprojet
                 WHERE IDProjet BETWEEN 1 AND 3 AND IDEtape=4);

       



                            