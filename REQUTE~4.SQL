SELECT e_Prénom,e_Nom,e_NuméroÉtudiant,e_CodePermanent,e_SessionÉtudes,e_NoteFinaleDuCours 
FROM Entrepôt_De_Données_Université_Téluq.Etudiant
WHERE e_SessionÉtudes='Hiver 2020';

SELECT e_Prénom,e_Nom,e_NuméroÉtudiant,e_CodePermanent,e_ProfilDeFormationÉtudiant,e_SessionÉtudes,e_NoteFinaleDuCours 
FROM Entrepôt_De_Données_Université_Téluq.Etudiant
WHERE e_ProfilDeFormationÉtudiant='Administration';

SELECT e_Prénom,e_Nom,e_NuméroÉtudiant,e_CodePermanent,e_ProfilDeFormationÉtudiant,e_SessionÉtudes,e_NoteFinaleDuCours,e_NomDuprogramme,e_NuméroDuProgramme 
FROM Entrepôt_De_Données_Université_Téluq.Etudiant
WHERE e_NomDuprogramme='Baccalauréat en administration (cheminement général)' AND e_NuméroDuProgramme='7764';

SELECT e_Prénom,e_Nom,e_NuméroÉtudiant,e_CodePermanent,e_ProfilDeFormationDuProgramme,e_SessionÉtudes,e_NoteFinaleDuCours 
FROM Entrepôt_De_Données_Université_Téluq.Etudiant
WHERE e_ProfilDeFormationDuProgramme='Administration (cheminement général)';

SELECT e_Prénom,e_Nom,e_Sexe,e_CodePermanent,e_NomDuProgramme,e_NuméroDuProgramme,e_ProfilDeFormationDuProgramme,e_SessionÉtudes,e_NoteFinaleDuCours
FROM Entrepôt_De_Données_Université_Téluq.Etudiant
WHERE e_NomDuProgramme='Majeure en informatique'AND e_Sexe='Masculin';

SELECT pr_NomDuprogramme,pr_NuméroDuProgramme,pr_TypeDeProgramme,pr_ProfilDeFormationDuprogramme 
FROM Entrepôt_De_Données_Université_Téluq.ProgrammeUniversitaire
WHERE pr_TypeDeProgramme='Baccalauréat';

SELECT pr_NomDuprogramme,pr_NuméroDuProgramme,pr_CycleÉtudes,pr_TypeDeProgramme,pr_ProfilDeFormationDuprogramme 
FROM Entrepôt_De_Données_Université_Téluq.ProgrammeUniversitaire
WHERE pr_CycleÉtudes='Deuxième cycle';

SELECT pr_NomDuprogramme,pr_NuméroDuProgramme,pr_CycleÉtudes,pr_TypeDeProgramme,pr_ProfilDeFormationDuprogramme,pr_Département 
FROM Entrepôt_De_Données_Université_Téluq.ProgrammeUniversitaire
WHERE pr_Département='Administration';

SELECT c_SigleDuCours,c_TitreDuCours,c_TypeDuCours 
FROM Entrepôt_De_Données_Université_Téluq.Cours
WHERE c_TypeDuCours='Cours avec examen';

SELECT c_SigleDuCours,c_TitreDuCours,c_TypeDuCours,c_NombreDeCrédits 
FROM Entrepôt_De_Données_Université_Téluq.Cours
WHERE c_NombreDeCrédits=3;

SELECT c_SigleDuCours,c_TitreDuCours,c_TypeDuCours,c_NombreDeCrédits,c_ChargeHebdomadaire 
FROM Entrepôt_De_Données_Université_Téluq.Cours
WHERE c_ChargeHebdomadaire>0;

SELECT c_SigleDuCours,c_TitreDuCours,c_TypeDuCours,c_CoursPréalable,c_NombreDeCrédits,c_ChargeHebdomadaire 
FROM Entrepôt_De_Données_Université_Téluq.Cours
WHERE c_CoursPréalable='INF 1220';

SELECT e_Prénom,e_Nom,e_NuméroÉtudiant,e_CodePermanent,e_SessionÉtudes,e_NoteFinaleDuCours 
FROM Entrepôt_De_Données_Université_Téluq.Etudiant
WHERE e_SessionÉtudes='Hiver 2020'

UNION

SELECT c_SigleDuCours,c_TitreDuCours,c_TypeDuCours,c_NuméroDuProgramme,c_ProfilDeFormationDuprogramme,c_DépartementResponsable 
FROM Entrepôt_De_Données_Université_Téluq.Cours
WHERE c_TypeDuCours='Cours sans examen';

SELECT e_Prénom,e_Nom,e_NuméroÉtudiant,e_CodePermanent,e_SessionÉtudes,e_NoteFinaleDuCours 
FROM Entrepôt_De_Données_Université_Téluq.Etudiant
WHERE e_SessionÉtudes='Hiver 2020'

UNION

SELECT c_SigleDuCours,c_TitreDuCours,c_TypeDuCours,c_NombreDeCrédits,c_NuméroDuProgramme,c_ProfilDeFormationDuprogramme 
FROM Entrepôt_De_Données_Université_Téluq.Cours
WHERE c_NombreDeCrédits=3;

SELECT e_Prénom,e_Nom,e_NuméroÉtudiant,e_CodePermanent,e_SessionÉtudes,e_NoteFinaleDuCours 
FROM Entrepôt_De_Données_Université_Téluq.Etudiant
WHERE e_SessionÉtudes='Hiver 2020'

UNION

SELECT c_SigleDuCours,c_TitreDuCours,c_TypeDuCours,c_NombreDeCrédits,c_ChargeHebdomadaire,c_DépartementResponsable 
FROM Entrepôt_De_Données_Université_Téluq.Cours
WHERE c_ChargeHebdomadaire>0;

SELECT e_Prénom,e_Nom,e_NuméroÉtudiant,e_CodePermanent,e_SessionÉtudes,e_NoteFinaleDuCours 
FROM Entrepôt_De_Données_Université_Téluq.Etudiant
WHERE e_SessionÉtudes='Hiver 2020'

UNION

SELECT c_SigleDuCours,c_TitreDuCours,c_TypeDuCours,c_CoursPréalable,c_NombreDeCrédits,c_ChargeHebdomadaire 
FROM Entrepôt_De_Données_Université_Téluq.Cours
WHERE c_CoursPréalable='INF 1220';




