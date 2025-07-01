CREATE DATABASE projet_jegere;
USE projet_jegere;

CREATE TABLE IF NOT EXISTS Client(
   idClient INT NOT NULL,nomClient VARCHAR(45) NOT NULL,
   adresse VARCHAR(100) NOT NULL,téléphone VARCHAR(45) NOT NULL,
   adresseCourriel VARCHAR(45) NOT NULL,
   nomPays VARCHAR(50),
   PRIMARY KEY(idClient,nomClient));   
       
CREATE TABLE IF NOT EXISTS Projet(
   idProjet INT NOT NULL,
   idClient INT NOT NULL,
   nomProjet VARCHAR(200) NOT NULL,
   dateDébut DATE NOT NULL,
   dateFin DATE NOT NULL,
   idResponsable INT NOT NULL,
   PRIMARY KEY(idProjet,nomProjet,dateDébut,dateFin),
   FOREIGN KEY(idClient) REFERENCES Client(idClient));
       
   CREATE INDEX dateDébut ON Projet(dateDébut); 
   CREATE INDEX dateFin ON Projet(dateFin);    
       
CREATE TABLE IF NOT EXISTS Employé(
       idEmployé INT NOT NULL,
       nomEmployé VARCHAR(200) NOT NULL,
       adresse VARCHAR(100) NOT NULL,
       téléphone VARCHAR(45) NOT NULL,
       adresseCourriel VARCHAR(45) NOT NULL,
       PRIMARY KEY(idEmployé,nomEmployé));  

CREATE INDEX idEmployé ON Employé(idEmployé);
CREATE INDEX nomEmployé ON Employé(nomEmployé);

CREATE TABLE IF NOT EXISTS RessourcesProjet(
       idProjet INT NOT NULL,
       idEmployé INT NOT NULL,
       nbrHeures INT NOT NULL,
       prixHeure FLOAT NOT NULL);
       
       CREATE TABLE IF NOT EXISTS Étape(
       idÉtape INT NOT NULL,
       nomÉtape VARCHAR(200) NOT NULL,
       livrable VARCHAR(200) NOT NULL,
       PRIMARY KEY(IDÉtape,NomÉtape));

CREATE INDEX idÉtape ON Étape(idÉtape);
CREATE INDEX nomÉtape ON Étape(nomÉtape);

       CREATE TABLE IF NOT EXISTS ÉtapesxProjet(
       idÉtape INT NOT NULL,
       idProjet INT NOT NULL,
       dateDébut DATE NOT NULL,
       dateFin DATE NOT NULL);
       
       ALTER TABLE ÉtapesxProjet ADD CONSTRAINT FK_IDÉtape FOREIGN KEY(idÉtape) REFERENCES Étape(idÉtape);
       ALTER TABLE ÉtapesxProjet ADD CONSTRAINT FK_IDProjet FOREIGN KEY (idProjet) REFERENCES Projet(idProjet);
       ALTER TABLE ÉtapesxProjet ADD CONSTRAINT FK_DateDébut FOREIGN KEY (dateDébut) REFERENCES Projet(dateDébut);
       ALTER TABLE ÉtapesxProjet ADD CONSTRAINT FK_DateFin FOREIGN KEY (dateFin) REFERENCES Projet(dateFin);
       
	INSERT INTO client(idClient,nomClient,adresse,téléphone,adresseCourriel) VALUES
    (321,"Financière Québec","1234 Rue de La Montagne, Trois Rivières, Québec",8193765244,"info@fquebec.ca"),
    (345,"Services Comptable Garneau","8721 Rue St-Laurent, Montréal, Québec", 5143217896,"services@comptablegarneau.ca");
     
    INSERT INTO projet(idProjet,idClient,nomProjet,dateDébut,dateFin,idResponsable) VALUES
    (1,321,"Devéloppement du site web","2011-08-01","2012-06-20",1876),
    (2,321,"Maintenance du système de ressources humaines","2012-05-01","2012-07-23",2231),
    (3,345,"Devéloppement du système de gestion de fournisseurs","2011-11-01","2012-07-24",2231);

    INSERT INTO employé(idEmployé,nomEmployé,adresse,téléphone,adresseCourriel) VALUES
    (1876,"Martin Rey","3345, Avenue Poirier, Montréal, Québec",5149871245,"martin.rey@jegere.ca"), 
    (2231,"Jean Pierre Bordeau","2309, Boulevard PIE X11, Québec, Québec",4186573298,"jean.bordeau@jegere.ca"),
    (4354,"Louise Gagnon","2101, Boulevard Bois Franc, Trois Rivières, Québec",8196574028,"louise.gagnon@jegere.ca"),  
    (1212,"Marie St-Jérôme","1111, Avenue Jean Francois, Montréal, Québec",5144932876,"marie.stjerome@jegere.ca"); 
    
    INSERT INTO ressourcesprojet(idProjet,idEmployé,nbrHeures,prixHeure) VALUES                         
    (1,1876,500,65),
    (1,4354,200,31),
    (2,2231,250,55),
    (3,2231,500,65), 
    (3,1212,3000,35),
    (3,1876,2000,35);
    
    INSERT INTO étape(idÉtape,nomÉtape,livrable) VALUES
    (1,"Démarrage","Définition de la base du projet(objectifs, chef du projet)"),
    (2,"Prévision","Planification du projet(perimètre, activités, ressources, requis, coûts)"),
    (3,"Réalisation","Exécution du plan du projet"),
    (4,"Surveillance et maitrise","Rapport de performance"),
    (5,"Clôture","Document de clotûre du projet");
    
    INSERT INTO étapesxProjet(idÉtape,idProjet,dateDébut,dateFin) VALUES
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