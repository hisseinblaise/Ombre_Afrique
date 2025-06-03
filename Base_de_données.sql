-- MySQL dump 10.13  Distrib 8.0.42, for Linux (x86_64)
--
-- Host: localhost    Database: OMBRE_AFRIQUE
-- ------------------------------------------------------
-- Server version	8.0.42-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Client`
--

DROP TABLE IF EXISTS `Client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Client` (
  `ID_client_Client` int DEFAULT NULL,
  `nom_prenom_Client` varchar(50) DEFAULT NULL,
  `contact_Client` varchar(20) DEFAULT NULL,
  `adresse_Client` varchar(20) DEFAULT NULL,
  `preference_alimentaire_Client` varchar(20) DEFAULT NULL,
  `point_fielite_Client` int DEFAULT NULL,
  `Num_commande_Commande` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Client`
--

LOCK TABLES `Client` WRITE;
/*!40000 ALTER TABLE `Client` DISABLE KEYS */;
INSERT INTO `Client` VALUES (2,'Mht Brahim','91560605','Djatinié','chawourma',10,3),(1,'Ali Cherif','93024154','Kamina','poission',30,3);
/*!40000 ALTER TABLE `Client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Commande`
--

DROP TABLE IF EXISTS `Commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Commande` (
  `Num_commande_Commande` int DEFAULT NULL,
  `date_heure_Commande` varchar(30) DEFAULT NULL,
  `type_Commande` varchar(20) DEFAULT NULL,
  `montant_total_Commande` float DEFAULT NULL,
  `statut_Commande` varchar(20) DEFAULT NULL,
  `ID_employe_Employé` int DEFAULT NULL,
  `num_facture_Facture` int DEFAULT NULL,
  `table_num_table_table` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Commande`
--

LOCK TABLES `Commande` WRITE;
/*!40000 ALTER TABLE `Commande` DISABLE KEYS */;
INSERT INTO `Commande` VALUES (1,'01-02-2022','14: 35 : 00',5250,'domicile',3,1,0),(2,'01-02-2022','09: 35 : 00',3400,'sur place',2,2,1);
/*!40000 ALTER TABLE `Commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employé`
--

DROP TABLE IF EXISTS `Employé`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employé` (
  `ID_employe_Employé` int DEFAULT NULL,
  `nom_prenom_Employé` varchar(50) DEFAULT NULL,
  `contacct_Employé` varchar(40) DEFAULT NULL,
  `adresse_Employé` varchar(20) DEFAULT NULL,
  `poste_Employé` varchar(30) DEFAULT NULL,
  `salaire_Employé` float DEFAULT NULL,
  `date_embauche_Employé` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employé`
--

LOCK TABLES `Employé` WRITE;
/*!40000 ALTER TABLE `Employé` DISABLE KEYS */;
INSERT INTO `Employé` VALUES (1,'Haroun mht','65030211','Goz-Amir','cuisinié',5500,'01-06-2024'),(2,'Hissein Bechir','99994111','Taradona','caissier',9500,'11-06-2014'),(3,'Bachar khamis','66545251','Taradona','cuisinier',6500,'03-06-2021'),(4,'Seid Massar','66660001','Bendjedid II','Courier',8500,'03-08-2011'),(5,'Rahim Hamza','90012101','Bendjedid Sud','Serveur de table',4500,'03-01-2016');
/*!40000 ALTER TABLE `Employé` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Facture`
--

DROP TABLE IF EXISTS `Facture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Facture` (
  `num_facture_Facture` int DEFAULT NULL,
  `date_Facture` varchar(20) DEFAULT NULL,
  `montant_Facture` float DEFAULT NULL,
  `detail_plat_Facture` varchar(20) DEFAULT NULL,
  `mode_paiement_Facture` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Facture`
--

LOCK TABLES `Facture` WRITE;
/*!40000 ALTER TABLE `Facture` DISABLE KEYS */;
INSERT INTO `Facture` VALUES (1,'01-05-2025',2500,'Faccturation poulet','payé comptant'),(2,'06-4-2025',4000,'Faccturation poisson','payé comptant');
/*!40000 ALTER TABLE `Facture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fournisseur`
--

DROP TABLE IF EXISTS `Fournisseur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Fournisseur` (
  `ID_fournisseur_Fournisseur` int DEFAULT NULL,
  `nom_prenom_Fournisseur` varchar(50) DEFAULT NULL,
  `contact_Fournisseur` varchar(20) DEFAULT NULL,
  `condition_paiement_Fournisseur` varchar(30) DEFAULT NULL,
  `specialite_Fournisseur` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fournisseur`
--

LOCK TABLES `Fournisseur` WRITE;
/*!40000 ALTER TABLE `Fournisseur` DISABLE KEYS */;
INSERT INTO `Fournisseur` VALUES (1,'Brahim Moussa','62001212','paiement mensuel','fournit des poulets'),(2,'Mahamat Ali','65458565','paiement mensuel','fournit des fruits'),(3,'Matar Abakar','91254658','paiement hebdomadaire','fournit oignon');
/*!40000 ALTER TABLE `Fournisseur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ingredient`
--

DROP TABLE IF EXISTS `Ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ingredient` (
  `ID_client_Client` int DEFAULT NULL,
  `ID_ingredient_Ingredient` int DEFAULT NULL,
  `nom_Ingredient` varchar(20) DEFAULT NULL,
  `quantite_Ingredient` int DEFAULT NULL,
  `prix_Ingredient` float DEFAULT NULL,
  `description_Ingredient` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ingredient`
--

LOCK TABLES `Ingredient` WRITE;
/*!40000 ALTER TABLE `Ingredient` DISABLE KEYS */;
INSERT INTO `Ingredient` VALUES (2,1,'tabac',20,2000,'fum'),(2,2,'café',15,200,'boisson');
/*!40000 ALTER TABLE `Ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Plat`
--

DROP TABLE IF EXISTS `Plat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Plat` (
  `code_plat_Plat` int DEFAULT NULL,
  `nom_Plat` varchar(50) DEFAULT NULL,
  `description_Plat` varchar(30) DEFAULT NULL,
  `prix_Plat` float DEFAULT NULL,
  `cotegorie_Plat` varchar(20) DEFAULT NULL,
  `temps_preparation_Plat` varchar(20) DEFAULT NULL,
  `liste_ingredient_Plat` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Plat`
--

LOCK TABLES `Plat` WRITE;
/*!40000 ALTER TABLE `Plat` DISABLE KEYS */;
INSERT INTO `Plat` VALUES (1,'poulette','poulette rotti',4000,'nourriture','25 minutes',5),(2,'Jus','Jus avocat mangue',500,'fruit','5 minutes',3);
/*!40000 ALTER TABLE `Plat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `composer`
--

DROP TABLE IF EXISTS `composer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `composer` (
  `code_plat_Plat` int DEFAULT NULL,
  `ID_client_Client` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `composer`
--

LOCK TABLES `composer` WRITE;
/*!40000 ALTER TABLE `composer` DISABLE KEYS */;
INSERT INTO `composer` VALUES (1,2);
/*!40000 ALTER TABLE `composer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contenir`
--

DROP TABLE IF EXISTS `contenir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contenir` (
  `code_plat_Plat` int DEFAULT NULL,
  `Num_commande_Commande` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenir`
--

LOCK TABLES `contenir` WRITE;
/*!40000 ALTER TABLE `contenir` DISABLE KEYS */;
INSERT INTO `contenir` VALUES (2,1),(1,2);
/*!40000 ALTER TABLE `contenir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fournir`
--

DROP TABLE IF EXISTS `fournir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fournir` (
  `ID_fournisseur_Fournisseur` int DEFAULT NULL,
  `ID_client_Client` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fournir`
--

LOCK TABLES `fournir` WRITE;
/*!40000 ALTER TABLE `fournir` DISABLE KEYS */;
INSERT INTO `fournir` VALUES (1,2);
/*!40000 ALTER TABLE `fournir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserver`
--

DROP TABLE IF EXISTS `reserver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserver` (
  `ID_client_Client` int DEFAULT NULL,
  `Num_table_Table` int DEFAULT NULL,
  `date_reservation_reserver` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserver`
--

LOCK TABLES `reserver` WRITE;
/*!40000 ALTER TABLE `reserver` DISABLE KEYS */;
INSERT INTO `reserver` VALUES (1,1,'12-06-2025'),(2,2,'25-06-2025');
/*!40000 ALTER TABLE `reserver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tables`
--

DROP TABLE IF EXISTS `tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tables` (
  `Num_table_Table` int DEFAULT NULL,
  `capacite_Table` int DEFAULT NULL,
  `zone_emplacement_Table` varchar(20) DEFAULT NULL,
  `etat_Table` varchar(20) DEFAULT NULL,
  `commande_num_commande_commande` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tables`
--

LOCK TABLES `tables` WRITE;
/*!40000 ALTER TABLE `tables` DISABLE KEYS */;
INSERT INTO `tables` VALUES (1,20,'rangé du milieu','couleur rouge',1),(2,30,'rangé gauche','chaud',1);
/*!40000 ALTER TABLE `tables` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-03 15:00:10
