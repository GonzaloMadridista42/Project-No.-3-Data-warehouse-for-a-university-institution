USE projet_jegere;

SELECT IDProjet,NomProjet,DateDébut,DateFin,IDResponsable
FROM projet
WHERE (IDProjet>=2);

SELECT NomÉtape,Livrable
FROM étape
WHERE (SELECT max(IDÉtape)
       FROM étapesxprojet
       WHERE idÉtape.étapesxprojet=idÉtape.projet AND idProjet.étapesxprojet=idProjet.projet 
       AND dateDébut.étapesxprojet=dateDébut.projet AND dateFin.étapesxprojet=dateFin.projet);
       
SELECT NomÉtape,Livrable
FROM étape 
WHERE IDÉtape=3  OR IDÉtape=4  OR IDÉtape=5; 
            
SELECT IDÉtape,IDProjet
FROM étapesxprojet
WHERE IDÉtape=4 AND IDProjet=1 OR IDÉtape=5 AND IDProjet=2 OR IDÉtape=3 AND IDProjet=3;

SELECT IDProjet,DateDébut,DateFin
FROM étapesxprojet
WHERE DateDébut IS NOT NULL AND DateFin IS NOT NULL;

SELECT idÉmployé,nomEmployé,adresseCourriel,nbrHeures,sommeGagnée
FROM employé,ressourcesprojet
WHERE (SELECT sum(nbrHeures*prixHeure)
       FROM ressourcesprojet
       WHERE idEmployé.ressourcesprojet=idEmployé.employé AND idProjet.ressources.projet=idProjet.projet);
       

