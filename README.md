# Création de la base de données du restaueant Ombre d'Abéché 

## Identification des entités et les associations

#### Les entités

Employé, Commende, Plat, tables,Fournisseur, Client, Facture, Ingredient.

#### Les associations

composer, contenir, concerner, servir, passer, reserver, destiner, fournir.

---

## Modelèle conceptionnel de ddonnées (MCD)

![image](https://github.com/user-attachments/assets/2d5aeb36-5e4c-4cf5-8ab4-a07d2b6ae3c8)

## Modelèle logique de ddonnées (MLD)

- Plat (code_plat_Plat, nom_Plat, description_Plat, prix_Plat, cotegorie_Plat, temps_preparation_Plat, liste_ingredient_Plat);

- Fournisseur (ID_fournisseur_Fournisseur, nom_prenom_Fournisseur, contact_Fournisseur, condition_paiement_Fournisseur, specialite_Fournisseur);

- Employé (ID_employe_Employé, nom_prenom_Employé, contacct_Employé, adresse_Employé, poste_Employé, salaire_Employé, date_embauche_Employé);

- Client (ID_client_Client, nom_prenom_Client, contact_Client, adresse_Client, preference_alimentaire_Client, point_fielite_Client, #Num_commande_Commande);

- Ingredient (ID_client_Client, ID_ingredient_Ingredient, nom_Ingredient, quantite_Ingredient, prix_Ingredient, description_Ingredient);

- Facture (num_facture_Facture, date_Facture, montant_Facture, detail_plat_Facture, mode_paiement_Facture);

- Table (Num_table_Table, capacite_Table, zone_emplacement_Table, etat_Table, #commande_num_commande_commande);

- Commande (Num_commande_Commande, date_heure_Commande, type_Commande, montant_total_Commande, statut_Commande, #ID_employe_Employé, #num_facture_Facture, #table_num_table_table);

- contenir (code_plat_Plat, Num_commande_Commande);

- reserver (ID_client_Client, Num_table_Table, date_reservation_reserver);

- fournir (ID_fournisseur_Fournisseur, ID_client_Client);

- composer (code_plat_Plat, ID_client_Client).

## Modèle physique de données (MPD)

CREATE TABLE Plat (code_plat_Plat INT AUTO_INCREMENT NOT NULL,
nom_Plat VARCHAR(20),
description_Plat VARCHAR(20),
prix_Plat FLOAT,
cotegorie_Plat INT,
temps_preparation_Plat TIME,
liste_ingredient_Plat VARCHAR(30),
PRIMARY KEY (code_plat_Plat)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Fournisseur ;
CREATE TABLE Fournisseur (ID_fournisseur_Fournisseur INT AUTO_INCREMENT NOT NULL,
nom_prenom_Fournisseur VARCHAR(50),
contact_Fournisseur VARCHAR(20),
condition_paiement_Fournisseur VARCHAR(30),
specialite_Fournisseur VARCHAR(20),
PRIMARY KEY (ID_fournisseur_Fournisseur)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Employé ;
CREATE TABLE Employé (ID_employe_Employé INT AUTO_INCREMENT NOT NULL,
nom_prenom_Employé VARCHAR(50),
contacct_Employé VARCHAR(20),
adresse_Employé VARCHAR(20),
poste_Employé VARCHAR(20),
salaire_Employé FLOAT,
date_embauche_Employé DATE,
PRIMARY KEY (ID_employe_Employé)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Client ;
CREATE TABLE Client (ID_client_Client BIGINT AUTO_INCREMENT NOT NULL,
nom_prenom_Client VARCHAR(50),
contact_Client VARCHAR(20),
adresse_Client VARCHAR(20),
preference_alimentaire_Client VARCHAR(20),
point_fielite_Client VARCHAR(20),
Num_commande_Commande **NOT FOUND**,
PRIMARY KEY (ID_client_Client)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Ingredient ;
CREATE TABLE Ingredient (ID_client_Client BIGINT AUTO_INCREMENT NOT NULL,
ID_ingredient_Ingredient INT,
nom_Ingredient VARCHAR(20),
quantite_Ingredient INT,
prix_Ingredient FLOAT,
description_Ingredient VARCHAR(30),
PRIMARY KEY (ID_client_Client)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Facture ;
CREATE TABLE Facture (num_facture_Facture INT AUTO_INCREMENT NOT NULL,
date_Facture DATE,
montant_Facture FLOAT,
detail_plat_Facture VARCHAR(30),
mode_paiement_Facture VARCHAR(30),
PRIMARY KEY (num_facture_Facture)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Table ;
CREATE TABLE Table (Num_table_Table INT AUTO_INCREMENT NOT NULL,
capacite_Table FLOAT,
zone_emplacement_Table VARCHAR(30),
etat_Table VARCHAR(20),
commande_num_commande_commande **NOT FOUND**,
PRIMARY KEY (Num_table_Table)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Commande ;
CREATE TABLE Commande (Num_commande_Commande INT AUTO_INCREMENT NOT NULL,
date_heure_Commande DATETIME,
type_Commande VARCHAR(20),
montant_total_Commande FLOAT,
statut_Commande VARCHAR(20),
ID_employe_Employé **NOT FOUND**,
num_facture_Facture **NOT FOUND**,
table_num_table_table **NOT FOUND**,
PRIMARY KEY (Num_commande_Commande)) ENGINE=InnoDB;

DROP TABLE IF EXISTS contenir ;
CREATE TABLE contenir (code_plat_Plat **NOT FOUND** AUTO_INCREMENT NOT NULL,
Num_commande_Commande **NOT FOUND** NOT NULL,
PRIMARY KEY (code_plat_Plat,
 Num_commande_Commande)) ENGINE=InnoDB;
DROP TABLE IF EXISTS reserver ;
CREATE TABLE reserver (ID_client_Client **NOT FOUND** AUTO_INCREMENT NOT NULL,
Num_table_Table **NOT FOUND** NOT NULL,
date_reservation_reserver DATE,
PRIMARY KEY (ID_client_Client,
 Num_table_Table)) ENGINE=InnoDB;

DROP TABLE IF EXISTS fournir ;
CREATE TABLE fournir (ID_fournisseur_Fournisseur **NOT FOUND** AUTO_INCREMENT NOT NULL,
ID_client_Client **NOT FOUND** NOT NULL,
PRIMARY KEY (ID_fournisseur_Fournisseur,
 ID_client_Client)) ENGINE=InnoDB;
DROP TABLE IF EXISTS composer ;
CREATE TABLE composer (code_plat_Plat **NOT FOUND** AUTO_INCREMENT NOT NULL,
ID_client_Client **NOT FOUND** NOT NULL,
PRIMARY KEY (code_plat_Plat,
 ID_client_Client)) ENGINE=InnoDB;

 ---
 
## Présentation des tables

---
voici les différentes tables que comprend cette base de données:

	|table Employé|
 
	|table Commande|
 
	|table Plat|
 
	|table tables|
 
	|table Fournisseur|
 
	|table Ingredient|
 
	|table Client|
 
	|table Facture|

 ![image](https://github.com/user-attachments/assets/c49e2368-01cc-4ce9-af6c-e5adadcb9670)


 ---

  ## SQL fontionnel: scripts exécutables 

  ![image](https://github.com/user-attachments/assets/41a3b02b-9fcb-43e3-8c9f-d207f25fc901)

  ![image](https://github.com/user-attachments/assets/45108243-14fa-456d-9abc-a56edde52e4d)



  
	
