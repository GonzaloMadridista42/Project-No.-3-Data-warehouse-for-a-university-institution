##Requête #1:
SELECT e_Prénom,e_Nom,e_NuméroÉtudiant,e_CodePermanent,e_SessionÉtudes,e_SigleDuCours,e_TitreDuCours,e_NoteFinaleDuCours 
FROM Entrepôt_De_Données_Université_Téluq.Etudiant
WHERE e_SessionÉtudes='Hiver 2022';

##Requête #1A:
SELECT e_Prénom,e_Nom,e_NuméroÉtudiant,e_CodePermanent,e_SessionÉtudes,e_SigleDuCours,e_TitreDuCours,e_NoteFinaleDuCours 
FROM Entrepôt_De_Données_Université_Téluq.Etudiant
WHERE e_ProfilDeFormationÉtudiant='Informatique et technologies de l''information';

##Requête #2:
SELECT e_Prénom,e_Nom,e_NuméroÉtudiant,e_CodePermanent,e_ProfilDeFormationÉtudiant,e_SessionÉtudes,e_SigleDuCours,e_TitreDuCours,e_NoteFinaleDuCours,e_ProfilDeFormationDuProgramme 
FROM Entrepôt_De_Données_Université_Téluq.Etudiant
WHERE e_ProfilDeFormationÉtudiant='Administration';

##Requête #2A:
SELECT e_Prénom,e_Nom,e_NuméroÉtudiant,e_CodePermanent,e_ProfilDeFormationÉtudiant,e_SessionÉtudes,e_SigleDuCours,e_TitreDuCours,e_NoteFinaleDuCours,e_ProfilDeFormationDuProgramme 
FROM Entrepôt_De_Données_Université_Téluq.Etudiant
WHERE e_ProfilDeFormationDuProgramme='Science et technologie';

##Requête #3:
SELECT e_Prénom,e_Nom,e_NuméroÉtudiant,e_CodePermanent,e_ProfilDeFormationÉtudiant,e_SessionÉtudes,e_SigleDuCours,e_TitreDuCours,e_NoteFinaleDuCours,e_NomDuprogramme,e_NuméroDuProgramme 
FROM Entrepôt_De_Données_Université_Téluq.Etudiant
WHERE e_NomDuprogramme='Baccalauréat en administration (cheminement général)' AND e_NuméroDuProgramme='7764';

##Requête #4:
SELECT e_Prénom,e_Nom,e_NuméroÉtudiant,e_CodePermanent,e_ProfilDeFormationDuProgramme,e_SessionÉtudes,e_SigleDuCours,e_TitreDuCours,e_NoteFinaleDuCours 
FROM Entrepôt_De_Données_Université_Téluq.Etudiant
WHERE e_ProfilDeFormationDuProgramme='Gouvernance des technologies de l''information';

##Requête #5:
SELECT e_Prénom,e_Nom,e_Sexe,e_CodePermanent,e_NomDuProgramme,e_NuméroDuProgramme,e_ProfilDeFormationDuProgramme,e_SessionÉtudes,e_SigleDuCours,e_TitreDuCours,e_NoteFinaleDuCours
FROM Entrepôt_De_Données_Université_Téluq.Etudiant
WHERE e_NomDuProgramme='Majeure en informatique'AND e_Sexe='Masculin';

##Requête #5A:
SELECT e_Prénom,e_Nom,e_NuméroÉtudiant,e_CodePermanent,e_ProfilDeFormationÉtudiant,e_SessionÉtudes,e_SigleDuCours,e_TitreDuCours,e_NoteFinaleDuCours,e_ProfilDeFormationDuProgramme 
FROM Entrepôt_De_Données_Université_Téluq.Etudiant
WHERE e_ProfilDeFormationDuProgramme='Sciences (technologie de l''information), profil avec mémoire';

##Requêtes programmés pourque SQL Workbench consulte la dimension Programme universitaire:
##Requête #6:
SELECT pr_NomDuprogramme,pr_NuméroDuProgramme,pr_TypeDeProgramme,pr_ProfilDeFormationDuprogramme 
FROM Entrepôt_De_Données_Université_Téluq.ProgrammeUniversitaire
WHERE pr_TypeDeProgramme='Baccalauréat';

##Requête #7:
SELECT pr_NomDuprogramme,pr_NuméroDuProgramme,pr_CycleÉtudes,pr_TypeDeProgramme,pr_ProfilDeFormationDuprogramme 
FROM Entrepôt_De_Données_Université_Téluq.ProgrammeUniversitaire
WHERE pr_CycleÉtudes='Deuxième cycle';

##Requête #8:
SELECT pr_NomDuprogramme,pr_NuméroDuProgramme,pr_CycleÉtudes,pr_TypeDeProgramme,pr_ProfilDeFormationDuprogramme,pr_Département 
FROM Entrepôt_De_Données_Université_Téluq.ProgrammeUniversitaire
WHERE pr_Département='Administration';

##Requêtes programmés pourque SQL Workbench consulte la dimension Programme universitaire:
##Requête #6 modifiée: ajout des attributs pr_CycleÉtudes et pr_Département:
SELECT pr_NomDuprogramme,pr_NuméroDuProgramme,pr_TypeDeProgramme,pr_CycleÉtudes,pr_ProfilDeFormationDuprogramme,pr_Département 
FROM Entrepôt_De_Données_Université_Téluq.ProgrammeUniversitaire
WHERE pr_TypeDeProgramme='Baccalauréat';

##Requête #7 modifiée: ajout de l'attribut pr_Département:
SELECT pr_NomDuprogramme,pr_NuméroDuProgramme,pr_CycleÉtudes,pr_TypeDeProgramme,pr_ProfilDeFormationDuprogramme,pr_Département 
FROM Entrepôt_De_Données_Université_Téluq.ProgrammeUniversitaire
WHERE pr_CycleÉtudes='Deuxième cycle';

##Requêtes programmés pourque SQL Workbench consulte la dimension Cours:
##Requête #9:
SELECT c_SigleDuCours,c_TitreDuCours,c_TypeDuCours 
FROM Entrepôt_De_Données_Université_Téluq.Cours
WHERE c_TypeDuCours='Cours sans examen';

##Requête #10:
SELECT c_SigleDuCours,c_TitreDuCours,c_TypeDuCours,c_NombreDeCrédits 
FROM Entrepôt_De_Données_Université_Téluq.Cours
WHERE c_NombreDeCrédits=3;

##Requête #11:
SELECT c_SigleDuCours,c_TitreDuCours,c_TypeDuCours,c_NombreDeCrédits,c_ChargeHebdomadaire 
FROM Entrepôt_De_Données_Université_Téluq.Cours
WHERE c_ChargeHebdomadaire>0;

##Requête #12:
SELECT c_SigleDuCours,c_TitreDuCours,c_TypeDuCours,c_CoursPréalable,c_NombreDeCrédits,c_ChargeHebdomadaire 
FROM Entrepôt_De_Données_Université_Téluq.Cours
WHERE c_CoursPréalable='INF 1220';

##Requêtes nécessaires pour faire compiler correctement l'instruction SQL UNION:
##Requêtes programmés pourque SQL Workbench consulte la dimension Cours:
##Requête #9 modifiée: ajout des attributs c_NuméroDuProgramme,c_ProfilDeFormationDuprogramme et c_DépartementResponsable:
SELECT c_SigleDuCours,c_TitreDuCours,c_TypeDuCours,c_NuméroDuProgramme,c_ProfilDeFormationDuprogramme,c_DépartementResponsable 
FROM Entrepôt_De_Données_Université_Téluq.Cours
WHERE c_TypeDuCours='Cours sans examen';

##Requête #10 modifiée: ajout des attributs c_NuméroDuProgramme et c_ProfilDeFormationDuprogramme:
SELECT c_SigleDuCours,c_TitreDuCours,c_TypeDuCours,c_NombreDeCrédits,c_NuméroDuProgramme,c_ProfilDeFormationDuprogramme
FROM Entrepôt_De_Données_Université_Téluq.Cours
WHERE c_NombreDeCrédits=3;

##Requête #11 modifiée: ajout de l'attribut c_DépartementResponsable:
SELECT c_SigleDuCours,c_TitreDuCours,c_TypeDuCours,c_NombreDeCrédits,c_ChargeHebdomadaire,c_DépartementResponsable 
FROM Entrepôt_De_Données_Université_Téluq.Cours
WHERE c_ChargeHebdomadaire>0;