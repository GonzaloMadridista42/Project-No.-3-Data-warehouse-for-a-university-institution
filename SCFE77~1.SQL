USE projet_jegere;

SELECT IDProjet,NomProjet,DateDebut,DateFin,IDResponsable
FROM projet
WHERE (IDProjet>=2);


SELECT IDProjet,NomProjet,IDEtape,NomEtape,Livrable
FROM projet p,etape e
JOIN etapesxprojet ep ON p.IDProjet=ep.IDProjet
JOIN etape e ON ep.IDetape=e.IDetape
WHERE e.IDetape=(SELECT max(IDEtape)
			      FROM etapesxprojet ep
                  WHERE p.IDProjet=ep.IDProjet);

SELECT IDProjet,DateDebut,DateFin
FROM etapesxprojet
WHERE DateDebut IS NOT NULL AND DateFin IS NOT NULL;

SELECT IDEmploye,nomEmploye,AdresseCourriel,nbrHeures,SommeGagnee
FROM employe e,ressourcesprojet rp
JOIN ressourcesprojet rp ON e.IDEmploye=rp.IDEmploye
JOIN projet p ON rp.IDProjet=p.IDProjet
WHERE p.IDProjet=(SELECT sum(nbrHeures*prixHeure)
                   FROM ressourcesprojet rp
                   WHERE e.IDEmploye=rp.IDEmploye);
                   
SELECT IDProjet,NomProjet,IDEtape,NomEtape,Livrable
FROM projet,etape 
WHERE IDProjet=1 AND IDEtape=4 OR IDProjet=2 AND IDEtape=5 OR IDProjet=3 AND IDEtape=4;    





SELECT IDProjet,NomProjet,IDEtape,NomEtape,Livrable
FROM projet p,etape e
JOIN etapesxprojet ep ON p.IDProjet=ep.IDProjet
JOIN etape e ON ep.IDetape=e.IDetape
WHERE e.IDetape=(SELECT IDEtape, IDProjet
                 FROM etapesxprojet
                 WHERE IDProjet BETWEEN 1 AND 3 AND IDEtape=4);

       
SELECT NomProjet,IDEtape,NomEtape,Livrable
FROM etapesxprojet 
WHERE IDProjet BETWEEN 1 AND 3 AND IDEtape=4;                              


SELECT IDProjet,NomProjet,IDEtape,NomEtape,Livrable  
FROM projet p,etape e
WHERE e.IDEtape=4  AND p.IDProjet=1 OR e.IDEtape=4  AND p.IDProjet=3


                            