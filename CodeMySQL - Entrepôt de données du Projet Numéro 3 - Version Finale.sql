CREATE DATABASE Entrepôt_De_Données_Université_Téluq;
USE Entrepôt_De_Données_Université_Téluq;   

##Création de la table Étudiant:
CREATE TABLE IF NOT EXISTS Etudiant(
   e_Prénom VARCHAR(50) NOT NULL,
   e_Nom VARCHAR(50) NOT NULL,
   e_Adresse VARCHAR(200) NOT NULL,
   e_Téléphone VARCHAR(50) NOT NULL,
   e_NuméroÉtudiant INT NOT NULL,
   e_AdresseCourriel VARCHAR(100) NOT NULL,
   e_MotDePasse VARCHAR(50) NOT NULL,
   e_CodePermanent VARCHAR(50) NOT NULL,
   e_Sexe VARCHAR(50) NOT NULL,
   e_DateDeNaissance DATE NOT NULL,
   e_SessionÉtudes VARCHAR(100) NOT NULL,
   e_ProfilDeFormationÉtudiant VARCHAR(100) NOT NULL,
   e_SigleDuCours VARCHAR(50) NOT NULL,
   e_TitreDuCours VARCHAR(200) NOT NULL,
   e_NoteFinaleDuCours VARCHAR(50) NOT NULL,
   e_NomDuProgramme VARCHAR(200) NOT NULL,
   e_NuméroDuProgramme INT NOT NULL,
   e_ProfilDeFormationDuProgramme VARCHAR(100) NOT NULL);

##Création des indexes des clés primaires de la table etudiant:
CREATE INDEX i_e_NuméroEtudiant ON Etudiant(e_NuméroÉtudiant);
CREATE INDEX i_e_CodePermanent ON Etudiant(e_CodePermanent);

##Création de la table ProgrammeUniversitaire:       
CREATE TABLE IF NOT EXISTS ProgrammeUniversitaire(
   pr_NomDuProgramme VARCHAR(200) NOT NULL,
   pr_NuméroDuProgramme INT NOT NULL,
   pr_TypeDeProgramme VARCHAR(100) NOT NULL,
   pr_ProfilDeFormationDuProgramme VARCHAR(100) NOT NULL,
   pr_CycleÉtudes VARCHAR(100) NOT NULL,
   pr_Département VARCHAR(200) NOT NULL);

##Création des indexes des clés primaires de la table ProgrammePniversitaire:
CREATE INDEX i_pr_NomDuProgramme ON ProgrammeUniversitaire(pr_NomDuProgramme); 
CREATE INDEX i_pr_NuméroDuProgramme ON ProgrammeUniversitaire(pr_NuméroDuProgramme);

##Création de la table Cours:       
CREATE TABLE IF NOT EXISTS Cours(
   c_SigleDuCours VARCHAR(50) NOT NULL,
   c_TitreDuCours VARCHAR(200) NOT NULL,
   c_TypeDuCours VARCHAR(100) NOT NULL,
   c_NombreDeCrédits INT NOT NULL,
   c_ChargeHebdomadaire VARCHAR(100) NOT NULL,
   c_CycleEtudes VARCHAR(100) NOT NULL,
   c_CoursPréalable VARCHAR(50) NOT NULL,
   c_DépartementResponsable VARCHAR(100) NOT NULL,
   c_ProfilDeFormationDuProgramme VARCHAR(100) NOT NULL,
   c_NuméroDuProgramme INT NOT NULL);   

##Création des indexes des clés primaires de la table Cours:
CREATE INDEX i_c_SigleDuCours ON Cours(c_SigleDuCours); 
CREATE INDEX i_c_TitreDuCours ON Cours(c_TitreDuCours);
