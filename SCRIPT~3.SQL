USE projet_jegere;

SELECT IDProjet,NomProjet,DateDébut,DateFin,IDResponsable
FROM projet
WHERE (IDProjet>=2);

SELECT NomÉtape,Livrable
FROM étape
WHERE (SELECT max(IDÉtape)
       FROM étapesxprojet
       WHERE IDÉtape.étapesxprojet=IDÉtape.projet AND IDProjet.étapesxprojet=IDProjet.projet 
       AND DateDébut.étapesxprojet=DateDébut.projet AND DateFin.étapesxprojet=DateFin.projet);
       
SELECT NomÉtape,Livrable
FROM étape 
WHERE IDÉtape=3  OR IDÉtape=4  OR IDÉtape=5; 
            
SELECT IDÉtape,IDProjet
FROM étapesxprojet
WHERE IDÉtape=4 AND IDProjet=1 OR IDÉtape=5 AND IDProjet=2 OR IDÉtape=3 AND IDProjet=3;

SELECT IDProjet,DateDébut,DateFin
FROM étapesxprojet
WHERE DateDébut IS NOT NULL AND DateFin IS NOT NULL;

SELECT IDÉmployé,NomEmployé,AdresseCourriel,nbrHeures,SommeGagnée
FROM employé,ressourcesprojet
WHERE (SELECT sum(nbrHeures*PrixHeure)
       FROM ressourcesprojet
       WHERE IDEmployé.ressourcesprojet=IDEmployé.employé AND IDProjet.ressources.projet=IDProjet.projet);
