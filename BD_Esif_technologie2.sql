CREATE database esif;

CREATE TABLE client (
    clientid int NOT NULL AUTO_INCREMENT,
    nom varchar(255),
    prenom varchar (255),
    telephone int(255),
    email varchar(255),
    PRIMARY KEY (clientid)
);

 CREATE TABLE categorie (
    categorieid int NOT NULL AUTO_INCREMENT,
    nom varchar(255),
    PRIMARY KEY (categorieid)
);

CREATE TABLE article (
    articleid int NOT NULL AUTO_INCREMENT,
    nom varchar(255),
    prix varchar(255),
    categorieid int,
    PRIMARY KEY (articleid),
    FOREIGN KEY (categorieid) REFERENCES categorie(categorieid)
);


CREATE TABLE fournisseur (
    fournisseurid int NOT NULL AUTO_INCREMENT,
    nom varchar(255),
    telephone int(255),
    email varchar(255),
    PRIMARY KEY (fournisseurid)
);

 
CREATE TABLE achat (
    achatid int NOT NULL AUTO_INCREMENT,
    prix integer(20),
    fournisseurid int,
    articleid int,
    PRIMARY KEY (achatid),
    FOREIGN KEY (fournisseurid) REFERENCES fournisseur(fournisseurid),
    FOREIGN KEY (articleid) REFERENCES article(articleid)
);

 
CREATE TABLE ventes (
    venteid int NOT NULL AUTO_INCREMENT,
    prix int(255),
    clientid int,
    articleid int,
    PRIMARY KEY (venteid),
    FOREIGN KEY (clientid) REFERENCES client(clientid),
    FOREIGN KEY (articleid) REFERENCES article(articleid)
);

            

INSERT INTO client (nom, prenom, telephone, email)
VALUES ('kabore', 'clementine', '76407417', 'kaboreclecle@gmail.com'),
       ('maboundou', 'guy andre','78891665', 'maboundouguyandre@gmail.com'),
       ('sawadogo', 'theophil','61415820', 'sawdogotheophil@gmail.com'),
       ('nguila', 'stevie rose', '75258912', 'stevierosenguila2023@gmail.com'),
       ('kpandjom', 'sara', '56542574', 'kpandjom@gmail.com');


INSERT INTO categorie (nom)
VALUES ('accessoire informatique'),
       ('electromenager');

INSERT INTO article (nom, prix, categorieid)
VALUES ('Ordinateur','300000',1),
       ('Telephone','155000',1),
       ('cle_usb','10000',1),
       ('machine_a_laver','250000',2),
       ('mixeur','25000',2);


INSERT INTO ventes (prix, clientid, articleid)
VALUES ('300000',2,1),
       ('155000',3,3),
       ('10000',5,4),
       ('250000',4,2),
       ('25000',2,5);


INSERT INTO fournisseur (nom, telephone, email)
VALUES ('wisetelecom', '78255578', 'wisetelecom@gmail.com'),
       ('bobototelecom', '76407417', 'bobotom@gmail.com'),
       ('salakatelecom', '71225815', 'salakatelecom@gmail.com'),
       ('benietelecom', '61415820', 'benietelecom@gmail.com'),
       ('ouitelecom', '78255578', 'ouitelecom@gmail.com');


INSERT INTO achat (prix, fournisseurid, articleid)
VALUES ('300000',2,4),
       ('155000',4,1),
       ('10000',3,2),
       ('250000',1,1),
       ('25000',5,5);
          
   


    
   
    
    
 
 
       




