   CREATE DATABASE projet_jegere;
   USE projet_jegere;

   CREATE TABLE IF NOT EXISTS Client(
   c.idClient INT NOT NULL,c.nomClient VARCHAR(45) NOT NULL,
   c.adresse VARCHAR(100) NOT NULL,c.telephone VARCHAR(45) NOT NULL,
   c.adresseCourriel VARCHAR(45) NOT NULL,
   c.nomPays VARCHAR(50),
   PRIMARY KEY(c.idClient,c.nomClient));   
       
   CREATE TABLE IF NOT EXISTS Projet(
   p.idProjet INT NOT NULL,
   p.idClient INT NOT NULL,
   p.nomProjet VARCHAR(200) NOT NULL,
   p.dateDebut DATE NOT NULL,
   p.dateFin DATE NOT NULL,
   p.idResponsable INT NOT NULL,
   PRIMARY KEY(p.idProjet,p.idClient,p.nomProjet,p.dateDebut,p.dateFin),
   FOREIGN KEY(c.idClient) REFERENCES Client(c.idClient));
       
   CREATE INDEX dateDébut ON Projet(dateDébut); 
   CREATE INDEX dateFin ON Projet(dateFin);    
       
   CREATE TABLE IF NOT EXISTS Employe(
   em.idEmploye INT NOT NULL,
   em.nomEmploye VARCHAR(200) NOT NULL,
   em.adresse VARCHAR(100) NOT NULL,
   em.telephone VARCHAR(45) NOT NULL,
   em.adresseCourriel VARCHAR(45) NOT NULL,
   PRIMARY KEY(em.idEmploye,em.nomEmploye));  

   CREATE INDEX em.idEmploye ON Employe(em.idEmploye);
   CREATE INDEX em.nomEmploye ON Employé(em.nomEmploye);

   CREATE TABLE IF NOT EXISTS RessourcesProjet(
   p.idProjet INT NOT NULL,
   em.idEmploye INT NOT NULL,
   rp.nbrHeures INT NOT NULL,
   rp.prixHeure FLOAT NOT NULL);
       
   CREATE TABLE IF NOT EXISTS Etape(
   et.idEtape INT NOT NULL,
   et.nomEtape VARCHAR(200) NOT NULL,
   et.livrable VARCHAR(200) NOT NULL,
   PRIMARY KEY(et.IDEtape,et.NomEtape));

   CREATE INDEX et.idEtape ON Etape(et.idEtape);
   CREATE INDEX et.nomEtape ON Etape(et.nomEtape);

   CREATE TABLE IF NOT EXISTS EtapesxProjet(
   ep.idEtape INT NOT NULL,
   ep.idProjet INT NOT NULL,
   ep.dateDebut DATE NOT NULL,
   ep.dateFin DATE NOT NULL);
       
   PRIMARY KEY(ep.idEtape,ep.idProjet,ep.dateDebut,ep.dateFin);

   ALTER TABLE ÉtapesxProjet ADD CONSTRAINT FK_ET_IDEtape FOREIGN KEY(et.idEtape) REFERENCES Etape(et.idEtape);
   ALTER TABLE ÉtapesxProjet ADD CONSTRAINT FK_P_IDProjet FOREIGN KEY (p.idProjet) REFERENCES Projet(p.idProjet);
   ALTER TABLE ÉtapesxProjet ADD CONSTRAINT FK_P_DateDebut FOREIGN KEY (p.dateDebut) REFERENCES Projet(p.dateDebut);
   ALTER TABLE ÉtapesxProjet ADD CONSTRAINT FK_P_DateFin FOREIGN KEY (p.dateFin) REFERENCES Projet(p.dateFin);
       
   INSERT INTO Client(c.idClient,c.nomClient,c.adresse,c.telephone,c.adresseCourriel,c.nomPays) VALUES
   (321,"Financière Québec","1234 Rue de La Montagne, Trois Rivières, Québec",8193765244,"info@fquebec.ca"),
   (345,"Services Comptable Garneau","8721 Rue St-Laurent, Montréal, Québec", 5143217896,"services@comptablegarneau.ca");
     
   INSERT INTO Projet(p.idProjet,c.idClient,p.nomProjet,p.dateDebut,p.dateFin,p.idResponsable) VALUES
   (1,321,"Devéloppement du site web","2011-08-01","2012-06-20",1876),
   (2,321,"Maintenance du système de ressources humaines","2012-05-01","2012-07-23",2231),
   (3,345,"Devéloppement du système de gestion de fournisseurs","2011-11-01","2012-07-24",2231);

   INSERT INTO Employe(em.idEmploye,em.nomEmploye,em.adresse,em.telephone,em.adresseCourriel) VALUES
   (1876,"Martin Rey","3345, Avenue Poirier, Montréal, Québec",5149871245,"martin.rey@jegere.ca"), 
   (2231,"Jean Pierre Bordeau","2309, Boulevard PIE X11, Québec, Québec",4186573298,"jean.bordeau@jegere.ca"),
   (4354,"Louise Gagnon","2101, Boulevard Bois Franc, Trois Rivières, Québec",8196574028,"louise.gagnon@jegere.ca"),  
   (1212,"Marie St-Jérôme","1111, Avenue Jean Francois, Montréal, Québec",5144932876,"marie.stjerome@jegere.ca"); 
    
   INSERT INTO RessourcesProjet(p.idProjet,emidEmploye,rp.nbrHeures,rp.prixHeure) VALUES                         
   (1,1876,500,65),
   (1,4354,200,31),
   (2,2231,250,55),
   (3,2231,500,65), 
   (3,1212,3000,35),
   (3,1876,2000,35);
    
   INSERT INTO Etape(et.idEtape,et.nomEtape,et.livrable) VALUES
   (1,"Démarrage","Définition de la base du projet(objectifs, chef du projet)"),
   (2,"Prévision","Planification du projet(perimètre, activités, ressources, requis, coûts)"),
   (3,"Réalisation","Exécution du plan du projet"),
   (4,"Surveillance et maitrise","Rapport de performance"),
   (5,"Clôture","Document de clotûre du projet");
    
   INSERT INTO EtapesxProjet(et.idEtape,p.idProjet,p.dateDebut,p.dateFin) VALUES
   (1,1,"2011-07-01","2011-09-01"),
   (2,1,"2011-09-02","2011-11-30"),
   (3,1,"2011-12-01","2012-07-07"),
   (4,1,"2012-07-08","2012-12-20"),
   (1,2,"2012-05-01","2012-05-10"),
   (2,2,"2012-05-11","2012-06-01"), 
   (3,2,"2012-06-02","2012-07-01"),
   (4,2,"2012-07-01","2012-07-21"),
   (5,2,"2012-07-22","2012-07-23"),
   (1,3,"2011-11-01","2012-01-20"),
   (2,3,"2012-01-21","2012-04-01"),
   (3,3,"2012-04-02","2012-06-26");

