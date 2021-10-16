-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: cima2
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno` (
  `AL_MATRICULA` varchar(10) NOT NULL,
  `AL_NOM_ALUMNO` varchar(100) DEFAULT NULL,
  `AL_PLAN` varchar(45) DEFAULT NULL,
  `AL_CAMBIOS` varchar(45) DEFAULT NULL,
  `AL_CORREO` varchar(45) DEFAULT NULL,
  `AL_SEMESTRE` varchar(2) DEFAULT NULL,
  `AL_CDTOS_SEMESTRE` int DEFAULT NULL,
  `AL_ESPECIALIDAD` varchar(50) DEFAULT NULL,
  `AL_FECHA_INICIO` datetime DEFAULT NULL,
  `AL_CVE_TUTOR` varchar(45) DEFAULT NULL,
  `AL_DOM` varchar(60) DEFAULT NULL COMMENT 'DOMICILIO CALLE,COL,MPIO',
  `AL_TELCASA` varchar(12) DEFAULT NULL COMMENT 'TELEFONO DE CASA',
  `AL_TELCEL` varchar(10) DEFAULT NULL COMMENT 'TELEFOMO CELULAR',
  `AL_SEXO` varchar(2) DEFAULT NULL COMMENT 'SEXO H,M',
  `AL_FECH_NAC` date DEFAULT NULL COMMENT 'FECHA DE NACIMIENTO DEL ALUMNO',
  `AL_LUGAR_NAC` varchar(60) DEFAULT NULL COMMENT 'LUGAR DE NACIMIENTO DEL ALUMNO ',
  `AL_E_CIVIL` varchar(10) CHARACTER SET cp1250 COLLATE cp1250_general_ci DEFAULT NULL COMMENT 'ESTADO CIVIL DEL ALUMNO CASADO, SOLTERO, DIVORCIADO ',
  `AL_HIJOS` varchar(10) DEFAULT NULL,
  `AL_ACTIVO` char(1) DEFAULT 'A',
  `AL_FEC_INSERT` datetime DEFAULT CURRENT_TIMESTAMP,
  `AL_FEC_UP` datetime DEFAULT NULL,
  `AL_LAST_IP` int unsigned DEFAULT NULL,
  `AL_ROL` char(1) DEFAULT '2',
  `AL_EST_FICHA` varchar(15) DEFAULT 'INCOMPLETO',
  PRIMARY KEY (`AL_MATRICULA`),
  KEY `alumno_ibfk_10` (`AL_PLAN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES ('14011027','ÁNGELES SOTELO ERIKA JOCELYN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('14011077','ÁNGELES MONTES PEDRO JAEN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('15011001','BERNAL LORENZO ALEXIS ALEXANDER','ISIC-2010-224','NA',NULL,'7',27,NULL,'2018-10-10 00:00:00','7022',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('16011032','LEON AGUILAR EMILY                    ','ISIC-2010-238','na','c@itsoe.ed.mx','1',27,'na','2018-08-06 00:00:00','7022',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('16011048','OLGUIN RUFINO ANLEN LIZETT            ','ISIC-2010-248','na','c@itsoe.ed.mx','1',27,'na','2018-08-06 00:00:00','7022',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('16011061','CORTES RIOS JESUS ANTONIO             ','ISIC-2010-230','na','c@itsoe.ed.mx','1',27,'na','2018-08-06 00:00:00','7022',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('16011065','AMBROCIO RAMIREZ JUAN JOSE            ','ISIC-2010-225','na','c@itsoe.ed.mx','1',27,'na','2018-08-06 00:00:00','7022',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('16011066','GODINEZ CALVA MELISA                  ','ISIC-2010-236','na','c@itsoe.ed.mx','1',27,'na','2018-08-06 00:00:00','7022',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('16011089','BANDA VILLEDA JAVIER DAVID            ','ISIC-2010-226','na','c@itsoe.ed.mx','1',27,'na','2018-08-06 00:00:00','7022',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('16011099','CERON GARCIA ANAHI JAZMIN             ','ISIC-2010-228','na','c@itsoe.ed.mx','1',27,'na','2018-08-06 00:00:00','7022',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('16011120','FRIAS DANIEL HILARY                   ','ISIC-2010-234','na','c@itsoe.ed.mx','1',27,'na','2018-08-06 00:00:00','7022',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('16011135','MONROY MORALES MONSERRAT              ','ISIC-2010-244','na','c@itsoe.ed.mx','1',27,'na','2018-08-06 00:00:00','7022',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('16011139','LOPEZ GARCIA NORMA                    ','ISIC-2010-240','na','c@itsoe.ed.mx','1',27,'na','2018-08-06 00:00:00','7022',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('16011174','BARRERA LUGO CARLOS ALBERTO           ','ISIC-2010-227','na','c@itsoe.ed.mx','1',27,'na','2018-08-06 00:00:00','7022',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('16011184','MONTES SAN NICOLAS CESAR FRANCISCO    ','ISIC-2010-245','na','c@itsoe.ed.mx','1',27,'na','2018-08-06 00:00:00','7022',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('16011219','LOPEZ BRIONES ANGEL ROBERTO           ','ISIC-2010-239','na','c@itsoe.ed.mx','1',27,'na','2018-08-06 00:00:00','7022',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('16011225','LOZANO HERNANDEZ JAVIER               ','ISIC-2010-242','na','c@itsoe.ed.mx','1',27,'na','2018-08-06 00:00:00','7022',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('16011237','ALVARADO MENDOZA LIZETH               ','ISIC-2010-224   ','na','c@itsoe.ed.mx','1',27,'na','2018-08-06 00:00:00','7022',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('16011244','RAMIREZ CAMACHO LIZETH                ','ISIC-2010-252','na','c@itsoe.ed.mx','1',27,'na','2018-08-06 00:00:00','7022',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('16011258','GARCIA GARCIA LUIS ANDRES             ','ISIC-2010-235','na','c@itsoe.ed.mx','1',27,'na','2018-08-06 00:00:00','7022',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('16011334','OBREGON CRUZ GRIZEL                   ','ISIC-2010-247','na','c@itsoe.ed.mx','1',27,'na','2018-08-06 00:00:00','7022',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('16011367','MOTA CRUZ ADAN                        ','ISIC-2010-246','na','c@itsoe.ed.mx','1',27,'na','2018-08-06 00:00:00','7022',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('16011379','PEREZ ROMERO OMAR ALEJANDRO           ','ISIC-2010-250','na','c@itsoe.ed.mx','1',27,'na','2018-08-06 00:00:00','7022',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('16011451','PEREZ VIOLANTE KARLA                  ','ISIC-2010-251','na','c@itsoe.ed.mx','1',27,'na','2018-08-06 00:00:00','7022',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('16011514','DE LA BARRERA BARCENAS DANIA ISLA     ','ISIC-2010-233','na','c@itsoe.ed.mx','1',27,'na','2018-08-06 00:00:00','7022',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('16011592','LUGO MOTA FRANK                       ','ISIC-2010-243','na','c@itsoe.ed.mx','1',27,'na','2018-08-06 00:00:00','7022',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('16011616','CRUZ GONZALEZ RUBEN ALDAIR            ','ISIC-2010-231','na','c@itsoe.ed.mx','1',27,'na','2018-08-06 00:00:00','7022',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('16011672','GRANADOS BALTAZAR MARIA GUADALUPE     ','ISIC-2010-237','na','c@itsoe.ed.mx','1',27,'na','2018-08-06 00:00:00','7022',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('16011757','CORTES ANGELES NELY GUADALUPE         ','ISIC-2010-229','na','c@itsoe.ed.mx','1',27,'na','2018-08-06 00:00:00','7022',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('16011824','SANCHEZ CORONA HECTOR OSMAR           ','ISIC-2010-253','na','c@itsoe.ed.mx','1',27,'na','2018-08-06 00:00:00','7022',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('16011827','CRUZ ZUNIGA SAMUEL EDUARDO            ','ISIC-2010-232','na','c@itsoe.ed.mx','1',27,'na','2018-08-06 00:00:00','7022',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('16011871','PEREZ CRUZ JESUS ALEJANDRO            ','ISIC-2010-249','na','c@itsoe.ed.mx','1',27,'na','2018-08-06 00:00:00','7022',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('16011891','LOPEZ SANTOS ROMARIO FABIAN           ','ISIC-2010-241','na','c@itsoe.ed.mx','1',27,'na','2018-08-06 00:00:00','7022',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('17011287','ESPINO LÓPEZ ANGELA GABRIELA','ISIC-2010-224',NULL,NULL,'3',27,NULL,NULL,NULL,NULL,NULL,NULL,'M',NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('17011288 ','CONTRERAS DIMAS NEDILSON YERIBER','ISIC-2010-224',NULL,NULL,'3',27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('17011574','Jose Jair Valdez Martinez','ISC-2010-224','NA','jvaldez@itsoeh.edu.mx','9',280,'Ciencia de datos','2021-09-06 00:00:00',NULL,'25 CJN Lazaro Cardenas','7721458493','7387253781','H','2021-09-04','Progreso Obregon','S','1','A','2021-06-14 10:35:21',NULL,NULL,'2','COMPLETO'),('17011578','Mariana de Israel Martinez Artega','ISIC-2010-224',NULL,'mimartinez@itoseh.edu.mx','9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-09-27 15:07:47',NULL,NULL,'2','INCOMPLETO'),('17011579','Lindsey Craft Cannon 1','ISIC-2010-224',NULL,'999902@itoseh.edu.mx','9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-09-27 15:09:13',NULL,NULL,'2','INCOMPLETO'),('17011580','Erika Moreno Alguilar','ISIC-2010-224',NULL,'999902@itoseh.edu.mx','9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-09-27 15:16:14',NULL,NULL,'2','INCOMPLETO'),('17011581','Enrique Calva Valdez','ISIC-2010-224',NULL,'ecalva@itoseh.edu.mx','9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-09-27 15:48:46',NULL,NULL,'2','INCOMPLETO'),('17011582','Osvaldo Montiel Rodriguez','ISIC-2010-224',NULL,'999902@itoseh.edu.mx','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-09-27 15:51:07',NULL,NULL,'2','INCOMPLETO'),('17011583','Alma Patricia Martinez','ISIC-2010-224',NULL,'999902@itoseh.edu.mx','9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-09-27 16:08:23',NULL,NULL,'2','INCOMPLETO'),('17011585','Alejandro Perez Olguin','ISIC-2010-224',NULL,'xjairx96@gmail.com','9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-09-27 17:22:34',NULL,NULL,'2','INCOMPLETO'),('17011670','Lindsey Craft Cannon','',NULL,'999000@itsoeh.edu.mx','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-09-27 17:57:30',NULL,NULL,'2','INCOMPLETO'),('17011987','ESTRADA CRUZ MARIA JOSE','ISIC-2010-224',NULL,NULL,'3',27,NULL,NULL,'7022',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('18011276','VELAZAQUEZ HUERTA JUAN  PABLO','ISIC-2010-224',NULL,NULL,'1',27,NULL,NULL,'7022',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('18011679','AGUILAR SANCHEZ OSCAR ALEXIS','ISIC-2010-224',NULL,NULL,'5',27,NULL,NULL,'7022',NULL,NULL,NULL,'H',NULL,NULL,NULL,NULL,'A','2021-03-21 23:03:49',NULL,NULL,'2','INCOMPLETO'),('999001','Kendra Allen Fry','ISC-2010-224','NA','999001@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','1209 Broad Road. Hardwicke','9212588391','7407842397','','2021-09-06','1000 Buttermilk Road. Bowman','S','0','A','2021-06-14 10:35:19',NULL,NULL,'2','INCOMPLETO'),('999002','Alisha Dunn Cook','ISC-2010-224','NA','999002@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','725 Hospital Blvd. Stone Mountain','4533137494','7005879559','','2021-09-06','1790 Galigher Rd. Unadilla','S','0','A','2021-06-14 10:35:19',NULL,NULL,'2','INCOMPLETO'),('999003','Margaret Kane Decker','ISC-2010-224','NA','999003@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','1317 Bobby Heights. Daisy','9486404187','4571022916','','2021-09-06','1207 Norris Drive. Watkinsville','S','0','A','2021-06-14 10:35:19',NULL,NULL,'2','INCOMPLETO'),('999005','Greg Melton Snider','ISC-2010-224','NA','999005@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','418 Traci Blvd. Cartersville','3615188340','7615224107','','2021-09-06','1515 Deerpath Ridge. Queensland','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999006','Nancy Merritt Jarvis','ISC-2010-224','NA','999006@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','1305 Leslie Drv. Harrietts Bluff','1126090134','7582243988','','2021-09-06','1553 Mast Boulevard. Bloomingdale','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999007','Ruth Kinney Collins','ISC-2010-224','NA','999007@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','908 Greiner Ave. Quitman','4837485811','9639213181','','2021-09-06','893 Blue Lane. Sparta','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999008','Jean Pugh Bender','ISC-2010-224','NA','999008@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','864 Cedar Lane. Register','3614418377','2584645695','','2021-09-06','1329 Laneway Trail. Commerce','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999009','Rachel Melton Fields','ISC-2010-224','NA','999009@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','535 Rigny Heights. Janis','3124924956','3569212222','','2021-09-06','1161 Miner Terrace. Hartwell','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999010','Charlie Davis Moon','ISC-2010-224','NA','999010@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','692 Sherman Parkway. Buford','6756896257','0224262380','','2021-09-06','476 Herron Way. Villa Rica','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999011','Lindsay Richardson Gill','ISC-2010-224','NA','999011@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','1769 Theobald Terrace. Augusta','5202745442','4103338152','','2021-09-06','728 Harmony Path. Portal','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999012','Bob Meyer Albert','ISC-2010-224','NA','999012@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','911 Klotz Drv. Ambrose','8838259132','8129879546','','2021-09-06','1591 Bisson Avenue. Dawsonville','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999013','Helen Mills Taylor','ISC-2010-224','NA','999013@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','406 Watts Station. Tarver','6793378317','8110475049','','2021-09-06','622 Caston Trail. Duluth','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999014','Logan Hopper Franco','ISC-2010-224','NA','999014@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','992 Meadowbrook St. Lithonia','8441955208','6569880139','','2021-09-06','1651 Pallas Crescent. Roswell','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999015','Roger Melendez Rowe','ISC-2010-224','NA','999015@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','978 Phillips Blvd. Wrightsville','3807803530','9327039964','','2021-09-06','972 Harbor Boulevard. Dalton','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999017','Gabriel Molina Dyer','ISC-2010-224','NA','999017@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','425 Blalock Circle. Lake Park','7005627995','2679227708','','2021-09-06','1151 Eldwood Place. Buford','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999018','Alex Higgins Ruiz','ISC-2010-224','NA','999018@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','1346 Pinkley Rd. Appling','2365632813','1001734597','','2021-09-06','578 Eastman Ridge. Suwanee','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999019','Lindsey Stein Stephenson','ISC-2010-224','NA','999019@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','1217 Carbondale Ave. Byron','4034191114','8935337286','','2021-09-06','1621 Rehl Heights. Trudie','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999020','Clara Shannon Garcia','ISC-2010-224','NA','999020@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','1589 Schaum Terrace. Sunsweet','0220585507','5671467204','','2021-09-06','714 Waltham Place. Johns Creek','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999021','Tyrone Haley Sheppard','ISC-2010-224','NA','999021@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','934 Penney Crescent. Alapaha','1911419263','9083461749','','2021-09-06','1734 Wilhelm Avenue. Kinderlou','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999022','Lori Crawford Sloan','ISC-2010-224','NA','999022@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','1798 Newlon Way. Lawrenceville','9896628530','4343062335','','2021-09-06','437 Lancaster-Chillicoth Rd. Alma','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999023','Jean Workman Goodwin','ISC-2010-224','NA','999023@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','1771 Parkwood Place. Walthourville','0453909780','5589022411','','2021-09-06','1159 Bisson Drv. Kirkland','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999024','Christopher Payne Carpenter','ISC-2010-224','NA','999024@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','1739 Eddie Ln. Swainsboro','3293705229','4606030224','','2021-09-06','1519 Leonard Way. Flowery Branch','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999025','Tristan Ortiz Montoya','ISC-2010-224','NA','999025@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','1151 Riverview Way. Nelson','0570174817','0438011947','','2021-09-06','424 Holbein Road. Cave Spring','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999026','Olivia Hutchinson Cooley','ISC-2010-224','NA','999026@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','1232 Perdue Run. Ellijay','6721179317','5647915061','','2021-09-06','1528 Deewood Avenue. Dawson','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999027','Dixie Alexander Lopez','ISC-2010-224','NA','999027@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','1572 Stoutsville Run. Hickox','4351852518','4183513445','','2021-09-06','1758 Stanton Boulevard. Peachtree City Website','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999028','Brian Wallace Horne','ISC-2010-224','NA','999028@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','562 Reeves Drive. Eulonia','2602769788','2431930022','','2021-09-06','926 Julian Run. Twin Peaks','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999029','Charles Wilkinson Tate','ISC-2010-224','NA','999029@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','649 Heritage St. Talbotton','5848370541','4625476516','','2021-09-06','689 Shady St. Ray City','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999030','Jake Carver Mueller','ISC-2010-224','NA','999030@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','1076 Dietz Run. Cochran','2918240538','5434610281','','2021-09-06','1447 Homestead Boulevard. Blackshear','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999031','Jill Mercer Cotton','ISC-2010-224','NA','999031@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','1232 Milton Crescent. Soperton','7558137900','6790545387','','2021-09-06','1495 Gantz Court. Garfield','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999032','Austin Prince May','ISC-2010-224','NA','999032@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','1180 Maysville Place. Royston','7965555518','1682740475','','2021-09-06','530 Lock Lane. Axson','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999033','Dave Rogers Skinner','ISC-2010-224','NA','999033@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','1400 Myrtle Rd. Conyers','4901009807','9051745742','','2021-09-06','1078 Beulah Heights. Phillipsburg','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999034','Bruce Hunt Lopez','ISC-2010-224','NA','999034@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','726 Madison Terrace. Vienna','8689656879','2207050678','','2021-09-06','1326 Sudbury Run. Baxley','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999035','Carolyn Casey Blake','ISC-2010-224','NA','999035@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','939 Boston Rd. Mcrae','8624826300','3772083506','','2021-09-06','1108 Spielbusch Station. Graham','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999036','Skyler Davidson Rodriquez','ISC-2010-224','NA','999036@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','1046 Goddard Drv. Jesup','3352395924','1496799969','','2021-09-06','1689 Hanover Crescent. Sale City','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999037','Joseph Collins Valentine','ISC-2010-224','NA','999037@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','1616 Schaum Ln. Unadilla','0483937273','1118089536','','2021-09-06','801 Moore Way. Nicholls','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999038','Tracey Guzman Hampton','ISC-2010-224','NA','999038@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','626 Severt Ave. Augusta','3041501649','0876954420','','2021-09-06','1353 Bardith Court. Lumber City','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999039','Brandon Salinas Hester','ISC-2010-224','NA','999039@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','1233 Cliffwood Blvd. Clyatteville','4472010521','1450746238','','2021-09-06','578 Walnut Avenue. Atkinson','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999040','Chasity Russo Livingston','ISC-2010-224','NA','999040@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','541 Eastfield Ave. Morven','5458592426','4572099070','','2021-09-06','726 Ritenour Ave. Shellman Bluff','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999041','Haley Witt Griffin','ISC-2010-224','NA','999041@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','1028 Watkins St. Hiawassee','5575896646','2149426226','','2021-09-06','1687 Florence Place. Perry','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999042','Taylor Hunter Gallagher','ISC-2010-224','NA','999042@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','1419 Tileston Trail. Riverside','8956567258','4818043875','','2021-09-06','1109 Forry St. Odum','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999043','Wyatt Warren Conley','ISC-2010-224','NA','999043@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','1046 Richman Place. Nicholls','7108187716','9629748769','','2021-09-06','750 Westmore St. Loganville','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999044','Glen Leblanc Ellis','ISC-2010-224','NA','999044@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','1627 Hampton Blvd. Ringgold','6246155128','4163165680','','2021-09-06','532 Perry Station. Gumbranch','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999045','Debbie Leonard Middleton','ISC-2010-224','NA','999045@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','1098 Ruth Crescent. Brinson','6756010962','5338787400','','2021-09-06','549 Lubring Ln. Isle Of Hope-Dutch Island','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999046','Diane Sutton Baker','ISC-2010-224','NA','999046@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','1383 Morrison Circle. Hoboken','2347065970','5007414125','','2021-09-06','1780 Home Way. Carrollton','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999047','Sarah Lambert Harvey','ISC-2010-224','NA','999047@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','1726 Somerset Way. Pembroke','2230534525','9203413671','','2021-09-06','706 Steele Station. Washington','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999048','Andy Sloan Edwards','ISC-2010-224','NA','999048@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','749 Dellwood Heights. Ambrose','4158983012','0652859563','','2021-09-06','1625 Caleb Run. Register','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999049','Lawrence Bender Fry','ISC-2010-224','NA','999049@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','805 Ritenour Station. Edison','4281137109','7727723612','','2021-09-06','1565 Cecil Station. Augusta','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999050','Brenda McKenzie Deleon','ISC-2010-224','NA','999050@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','1192 Sealover Station. Brookfield','6060662620','1291501725','','2021-09-06','1051 Lindale Trail. Rockmart','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999051','Elizabeth Hobbs Rosario','ISC-2010-224','NA','999051@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','1324 Turtle Blvd. Kite','7301896589','3461080740','','2021-09-06','1564 Doru Crescent. Hazlehurst','S','0','A','2021-06-14 10:35:20',NULL,NULL,'2','INCOMPLETO'),('999052','Bonnie Castillo Walters','ISC-2010-224','NA','999052@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','1302 Carson Boulevard. Valdosta','3731164582','8785959220','','2021-09-06','1096 Sycamore Park. Lovejoy','S','0','A','2021-06-14 10:35:21',NULL,NULL,'2','INCOMPLETO'),('999053','Kristina Horn Reid','ISC-2010-224','NA','999053@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','728 Exchange Station. West Point','2730720663','0554293730','','2021-09-06','1340 Short Path. Dixie','S','0','A','2021-06-14 10:35:21',NULL,NULL,'2','INCOMPLETO'),('999054','Ray Wooten Boyle','ISC-2010-224','NA','999054@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','1644 Ashley Square. Iron City','8413002395','4560681623','','2021-09-06','918 Nolan Lane. Maxeys','S','0','A','2021-06-14 10:35:21',NULL,NULL,'2','INCOMPLETO'),('999055','Rob Bullock Lawrence','ISC-2010-224','NA','999055@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','1718 Denmark Place. Blue Ridge','5629227929','5279889429','','2021-09-06','902 Alfred Way. Eastman','S','0','A','2021-06-14 10:35:21',NULL,NULL,'2','INCOMPLETO'),('999056','Chad Albert Barker','ISC-2010-224','NA','999056@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','1692 Fernstone Road. Lexington','2520124702','3243304903','','2021-09-06','973 Canal Way. Darien','S','0','A','2021-06-14 10:35:21',NULL,NULL,'2','INCOMPLETO'),('999057','Taylor Knowles Boyer','ISC-2010-224','NA','999057@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','977 Wilhelm Street. Rentz','3345351318','4507124339','','2021-09-06','823 Homewood Drv. Lovejoy','S','0','A','2021-06-14 10:35:21',NULL,NULL,'2','INCOMPLETO'),('999058','Ronnie Leon Hampton','ISC-2010-224','NA','999058@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','613 Severt Boulevard. Winder','5478925651','5106508603','','2021-09-06','1514 Parish Drv. Folkston','S','0','A','2021-06-14 10:35:21',NULL,NULL,'2','INCOMPLETO'),('999059','Earl Bird Pruitt','ISC-2010-224','NA','999059@itsoeh.edu.mx','1',0,'','2021-09-06 00:00:00','','1182 Gratiot-Newark Court. Riceboro','6744298379','5156936732','','2021-09-06','917 Bristol Court. Irwinton','S','0','A','2021-06-14 10:35:21',NULL,NULL,'2','INCOMPLETO'),('999100','Lindsey Craft Cannon','ISIC-2010-224',NULL,'999100@itoseh.edu.mx','5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','2021-09-28 10:28:02',NULL,NULL,'2','INCOMPLETO');
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `antecedentes_de_localizacion`
--

DROP TABLE IF EXISTS `antecedentes_de_localizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `antecedentes_de_localizacion` (
  `ANLO_ANT_LOCALIZACION` int NOT NULL AUTO_INCREMENT,
  `ANLO_CALLE` varchar(30) NOT NULL,
  `ANLO_MUNICIPIO` varchar(45) NOT NULL,
  `ANLO_ESTADO` varchar(45) NOT NULL,
  `ANLO_LATITUDE` varchar(45) NOT NULL,
  `ANLO_LOGITUDE` varchar(45) NOT NULL,
  `ANLO_NOM_TUTOR` varchar(45) NOT NULL,
  `ANLO_TEL_CASA` varchar(10) NOT NULL,
  `ANLO_TEL_MOVIL` varchar(10) NOT NULL,
  `ANLO_MAP_IMG` blob,
  `ANLO_AL_MATRICULA` varchar(10) NOT NULL,
  PRIMARY KEY (`ANLO_ANT_LOCALIZACION`),
  KEY `fk_localiza_alumno_idx` (`ANLO_AL_MATRICULA`),
  CONSTRAINT `fk_localiza_alumno` FOREIGN KEY (`ANLO_AL_MATRICULA`) REFERENCES `alumno` (`AL_MATRICULA`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antecedentes_de_localizacion`
--

LOCK TABLES `antecedentes_de_localizacion` WRITE;
/*!40000 ALTER TABLE `antecedentes_de_localizacion` DISABLE KEYS */;
INSERT INTO `antecedentes_de_localizacion` VALUES (3,'6 de Enero','Mixquiahuala','HGO','20.21803','-99.2001','Esther Barrera Neria','7387253781','7721458493','','17011574');
/*!40000 ALTER TABLE `antecedentes_de_localizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `antecedentes_escolares`
--

DROP TABLE IF EXISTS `antecedentes_escolares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `antecedentes_escolares` (
  `AE_ESCOLARES` int NOT NULL AUTO_INCREMENT,
  `AE_TIPO_ESC` varchar(45) NOT NULL,
  `AE_ESPECIALIDAD` varchar(45) NOT NULL,
  `AE_NOM_ESC` varchar(50) NOT NULL,
  `AE_PROMEDIO` varchar(10) NOT NULL,
  `AE_BECA` char(2) NOT NULL,
  `AE_VIVE_CON` varchar(30) NOT NULL,
  `AE_TIPO_BECA` varchar(15) NOT NULL,
  `AE_OTRO_TB` varchar(45) NOT NULL,
  `AE_AL_MATRICULA` varchar(10) NOT NULL,
  PRIMARY KEY (`AE_ESCOLARES`),
  KEY `FK_AE_AL_MATRICULA_idx` (`AE_AL_MATRICULA`),
  CONSTRAINT `fk_alumno_ant_escolares` FOREIGN KEY (`AE_AL_MATRICULA`) REFERENCES `alumno` (`AL_MATRICULA`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antecedentes_escolares`
--

LOCK TABLES `antecedentes_escolares` WRITE;
/*!40000 ALTER TABLE `antecedentes_escolares` DISABLE KEYS */;
INSERT INTO `antecedentes_escolares` VALUES (7,'Bachillerato Técnico','Programacion','CBTIS 199','7.8','SI','Familia','Otro','Manutención','17011574');
/*!40000 ALTER TABLE `antecedentes_escolares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `antecedentes_gen_salud`
--

DROP TABLE IF EXISTS `antecedentes_gen_salud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `antecedentes_gen_salud` (
  `ANGS_GEN_SALUD` int NOT NULL AUTO_INCREMENT,
  `ANGS_PRO_SALUD` char(2) NOT NULL,
  `ANGS_ESPECIFIQUE` varchar(45) NOT NULL,
  `ANGS_TIP_SANGRE` char(5) NOT NULL,
  `ANGS_ALERGIAS` char(2) NOT NULL,
  `ANGS_TIP_ALERGIA` varchar(15) NOT NULL,
  `ANGS_ESP_ALERGIA` varchar(45) NOT NULL,
  `ANGS_DIS_SENSORIAL` varchar(45) NOT NULL,
  `ANGS_DIS_MOTORA` char(2) NOT NULL,
  `ANGS_ESP_DIS_MOTORA` varchar(45) NOT NULL,
  `ANGS_DIS_TEMPORAL` varchar(12) NOT NULL,
  `ANGS_TIPO_DIS` varchar(45) NOT NULL,
  `ANGS_AL_MATRICULA` varchar(10) NOT NULL,
  PRIMARY KEY (`ANGS_GEN_SALUD`),
  KEY `fk_alum_gen_salud_idx` (`ANGS_AL_MATRICULA`),
  CONSTRAINT `fk_alum_gen_salud` FOREIGN KEY (`ANGS_AL_MATRICULA`) REFERENCES `alumno` (`AL_MATRICULA`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antecedentes_gen_salud`
--

LOCK TABLES `antecedentes_gen_salud` WRITE;
/*!40000 ALTER TABLE `antecedentes_gen_salud` DISABLE KEYS */;
INSERT INTO `antecedentes_gen_salud` VALUES (12,'Si','HASMA','A-','No','Otros','Ninguna','Ninguna','Si','FRACTURA','Transistoria','Parcial','17011574');
/*!40000 ALTER TABLE `antecedentes_gen_salud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `antecedentes_generales`
--

DROP TABLE IF EXISTS `antecedentes_generales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `antecedentes_generales` (
  `ANG_GENERALES` int NOT NULL AUTO_INCREMENT,
  `ANG_PROG_EDUCATIVO` varchar(45) NOT NULL,
  `ANG_MATRICULA` varchar(10) NOT NULL,
  `ANG_SEMESTRE` char(1) NOT NULL,
  `ANG_GRUPO` char(1) NOT NULL,
  `ANG_NOMBRE` varchar(100) NOT NULL,
  `ANG_SEXO` char(1) NOT NULL,
  `ANG_CORREO` varchar(45) NOT NULL,
  `ANG_TELMOVIL` varchar(10) NOT NULL,
  `ANG_TELCASA` varchar(10) NOT NULL,
  `ANG_FECHA_NAC` date NOT NULL,
  `ANG_LUGAR_NAC` varchar(45) NOT NULL,
  `ANG_EST_CIVIL` varchar(10) NOT NULL,
  `ANG_DOMICILIO` varchar(45) NOT NULL,
  `ANG_HIJOS` char(2) NOT NULL,
  `ANG_CUANTOS` char(1) NOT NULL,
  `ANG_FECHA_APL` date DEFAULT NULL,
  `ANG_AL_MATRICULA` varchar(10) NOT NULL,
  PRIMARY KEY (`ANG_GENERALES`),
  KEY `fk_AL_a_ANG_idx` (`ANG_AL_MATRICULA`),
  CONSTRAINT `fk_AL_a_ANG` FOREIGN KEY (`ANG_AL_MATRICULA`) REFERENCES `alumno` (`AL_MATRICULA`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antecedentes_generales`
--

LOCK TABLES `antecedentes_generales` WRITE;
/*!40000 ALTER TABLE `antecedentes_generales` DISABLE KEYS */;
INSERT INTO `antecedentes_generales` VALUES (2,'Ingeniería en Sistemas Computacionales','17011574','9','B','Jose Jair Valdez Martinez','M','jvaldez@itsoeh.edu.mx','7721343434','2372434373','1996-09-04','Progreso de Obregon','Soltero','Lazaro Cardenas #26','Si','1','2021-10-07','17011574');
/*!40000 ALTER TABLE `antecedentes_generales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `antecendentes_laborales`
--

DROP TABLE IF EXISTS `antecendentes_laborales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `antecendentes_laborales` (
  `ANL_LAVORALES` int NOT NULL AUTO_INCREMENT,
  `ANL_TRABAJO` varchar(5) NOT NULL,
  `ANL_NOM_TRABAJO` varchar(45) NOT NULL,
  `ANL_HORARIO` varchar(20) NOT NULL COMMENT 'HORA INICIO, HORA FINAL',
  `ANL_DEP_ECONO` varchar(50) NOT NULL COMMENT 'EL ALUMNO DEPENDE ECOMOMICAMENTE DE PADRE, MADRE, DE SI MISMO, ESPESIFIQUE',
  `ANL_ESP_DEP` varchar(45) NOT NULL,
  `ANL_ING_MEN_FAMILIAR` varchar(10) NOT NULL COMMENT 'INGRESO MENSUAL DEL ALUMNO',
  `ANL_ING_MEN_PERSONAL` varchar(10) NOT NULL COMMENT 'INGRESO INDEPENDIENTE',
  `ANL_DOMICILIO` varchar(45) NOT NULL COMMENT 'DOMICILIO DEL PADRE O TUTOR',
  `ANL_ESC_PADRE` varchar(35) NOT NULL,
  `ANL_EST_DEF_PA` varchar(15) NOT NULL COMMENT 'TELEFONO DEL PADRE O TUTOR',
  `ANL_OC_PADRE` varchar(45) NOT NULL,
  `ANL_ESC_MADRE` varchar(45) NOT NULL,
  `ANL_EST_DEF_MA` varchar(15) NOT NULL COMMENT 'TELEFONO DEL PADRE O TUTOR',
  `ANL_OC_MADRE` varchar(45) NOT NULL,
  `ANL_AL_MATRICULA` varchar(10) NOT NULL,
  PRIMARY KEY (`ANL_LAVORALES`),
  KEY `FK_ANL_AL_MATRICULA_idx` (`ANL_AL_MATRICULA`),
  CONSTRAINT `fk_alum_ant_laborales` FOREIGN KEY (`ANL_AL_MATRICULA`) REFERENCES `alumno` (`AL_MATRICULA`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Guarda información sobre el fromato Identificación tutorado ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antecendentes_laborales`
--

LOCK TABLES `antecendentes_laborales` WRITE;
/*!40000 ALTER TABLE `antecendentes_laborales` DISABLE KEYS */;
INSERT INTO `antecendentes_laborales` VALUES (1,'no','No Trabajo','Sin horario','Madre','Ninguno','0','7000','lazaro cardenas ','Pre.','Vive','Jefe de mudanza','Sec.','Vive','Ama de casa','17011574');
/*!40000 ALTER TABLE `antecendentes_laborales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignatura`
--

DROP TABLE IF EXISTS `asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignatura` (
  `AS_CVE_ASIGNATURA` varchar(15) NOT NULL,
  `AS_NOMBRE_ASIGNATURA` varchar(100) DEFAULT NULL,
  `AS_CREDITOS_HORA_TEORIA` varchar(2) DEFAULT NULL,
  `AS_CREDITOS_HORA_PRACTICA` varchar(2) DEFAULT NULL,
  `AS_TOTAL_HORAS` varchar(4) DEFAULT NULL,
  `AS_CREDITOS` int DEFAULT NULL,
  `AS_AREA_CONOCIMIENTO` varchar(50) DEFAULT NULL,
  `AS_DEPENDENCIAS` varchar(15) DEFAULT NULL,
  `AS_TIPO` tinyint NOT NULL DEFAULT '1' COMMENT 'Este campo contiene el valor de 1 si es asignatura, diferente  si es una actividad sustantiva o derivada de la misma.',
  `AS_ESPECIALIDAD` varchar(18) DEFAULT NULL COMMENT 'DAM_',
  `AS_FEC_INSERT` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Almacena la fecha de alta del registro.',
  `AS_FEC_LAST_UP` datetime DEFAULT NULL COMMENT 'Almacena la ultima actualización del rgistro\n',
  `AS_LAS_IP` int unsigned DEFAULT NULL COMMENT 'Almacena la ultima ip que agrego o modifico ',
  `AS_BY_USER` int DEFAULT NULL,
  `AS_ACTIVO` char(1) DEFAULT 'A',
  PRIMARY KEY (`AS_CVE_ASIGNATURA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignatura`
--

LOCK TABLES `asignatura` WRITE;
/*!40000 ALTER TABLE `asignatura` DISABLE KEYS */;
INSERT INTO `asignatura` VALUES ('1090001','Residencia Profesinal',NULL,'10','500',10,'Residencia',NULL,1,NULL,'2021-04-21 10:28:28',NULL,NULL,NULL,'A'),('1090002','Residencia Profesional 2',NULL,NULL,'500',10,'Residencia',NULL,1,NULL,'2021-04-26 00:08:44',NULL,NULL,NULL,'A'),('1090003','Residencia Profesional 3',NULL,NULL,'500',10,'Residencia',NULL,1,NULL,'2021-04-26 00:08:44',NULL,NULL,NULL,'A'),('1090004','Residencia Profesional 4',NULL,NULL,'500',10,'Residencia',NULL,1,NULL,'2021-04-26 00:08:44',NULL,NULL,NULL,'A'),('A01','Actividades Complementarias I','0','0','0',0,'Cursos Complementario',NULL,2,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('A02','Actividades Complementarias II','0','0','0',0,'Cursos Complementario',NULL,2,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('A03','Actividades Complementarias III','0','0','0',0,'Cursos Complementario',NULL,2,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('A04','Actividades Complementarias \nIV','0','0','0',0,'Cursos Complementario',NULL,2,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('A05','Actividades Complementarias V','0','0','0',5,'Cursos Complementario',NULL,2,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('ACA0907','Taller de Ética','0','4','64',4,'Ciencias Sociales y Humanidades',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('ACA0909','Taller de Investigación I','0','4','64',4,'Ciencias Sociales y Humanidades',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('ACA0910','Taller de Investigación II','0','4','64',4,'Ciencias Sociales y Humanidades',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('ACC0906','Fundamentos de Investigación','2','2','64',4,'Ciencias Sociales y Humanidades',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('ACD0908','Desarrollo Sustentable ','2','3','80',5,'Cursos Complementario',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('ACF0901','Cálculo Diferencial','3','2','80',5,'Ciencias Básicas',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('ACF0902','Cálculo Integral','3','2','80',5,'Ciencias Básicas',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('ACF0903','Álgebra Lineal','3','2','80',5,'Ciencias Básicas',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('ACF0904','Cálculo Vectorial','3','2','80',5,'Ciencias Básicas',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('ACF0905','Ecuaciones Diferenciales','3','2','80',5,'Ciencias Basícas',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('AEB1055','Progamación Web','1','4','80',5,'Diseño en Ingeniería',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('AEC1008','Contabilidad Financiera','2','2','64',4,'Ciencias Económico Administrarivas',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('AEC1034','Fundamentos de Telecomunicaciones ','2','3','5',5,'Ciencias de la Ingeniería',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('AEC1058','Química General','2','2','64',4,'Ciencias Básicas',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('AEC1061','Sistemas Operativos ','2','3','5',5,'Ciencias de la Ingeniería',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('AED1026','Estructura de Datos','2','3','80',5,'Ciencias de la Ingeniería',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('AED1285','Fundamentos de Programación','2','3','80',5,'Ciencias de la Ingeniería',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('AED1286','Programación Orientada a Objetos','2','3','80',5,'Ciencias de la Ingeniería',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('AEF1031','Fundamentos de Base de Datos','3','2','80',5,'Ingeniería Aplicada',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('AEF1041','Matemáticas Discretas','3','2','80',5,'Ciencias Básicas',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('AEF1052','Probabilidad y Estadística','3','2','80',5,'Ciencias Básicas',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('CAFPOSG','Formación en programas de posgrado','0','0','0',0,NULL,NULL,0,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('CAPCDIS','Programas de Capacitación Disciplinaria','0','0','0',0,NULL,NULL,0,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('CDDT2001','Introducción a la Ciencia de Datos','2','3','80',5,'Especialidad',NULL,1,'ISIE-CDDT-2020-02','2021-03-17 11:44:26',NULL,NULL,NULL,'A'),('CDDT2002','Lenguajes de Programación para Ciencia de Datos','2','3','80',5,'Especialidad',NULL,1,'ISIE-CDDT-2020-02','2021-03-17 11:47:36',NULL,NULL,NULL,'A'),('CDDT2003','Mineria de Datos','2','3','80',5,'Especialidad',NULL,1,'ISIE-CDDT-2020-02','2021-03-17 11:49:35',NULL,NULL,NULL,'A'),('CDDT2004','Aprendizaje Maquina','2','3','80',5,'Especialidad',NULL,1,'ISIE-CDDT-2020-02','2021-03-17 11:51:11',NULL,NULL,NULL,'A'),('CDDT2005','Inteligencia de Negocios','2','3','80',5,'Especialidad',NULL,1,'ISIE-CDDT-2020-02','2021-03-17 11:52:05',NULL,NULL,NULL,'A'),('DAD1801','Desarrollo de Aplicaciones Moviles','2','3','80',5,NULL,NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'I'),('DAD1803','Desarrollo de Aplicaciones Móviles II','2','3','80',5,NULL,NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'I'),('DAD1804','Desarrollo de Aplicaciones Moviles Multiplataforma ','2','3','80',5,NULL,NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'I'),('DAD1805','Modelo de negocios y marketing en tecnología','2','3','80',5,'Económico Administrativo',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'I'),('GAVACAD','Academias','0','0','0',0,NULL,NULL,2,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('GAVALAB','Apoyo a Laboratorios','0','0','0',0,'',NULL,3,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('GAVCSPE','Coordinación y Supervisión del PE','0','0','0',0,NULL,NULL,4,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('GAVDICU','Diseño Curricular','0','0','0',0,NULL,NULL,4,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('GAVSIGI','Sistema de Gestión Integral','0','0','0',0,NULL,NULL,5,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('GAVVINC','Vinculación ','0','0','0',0,NULL,NULL,5,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('IAD1802','Seguridad en Tecnologia Móvil','2','3','80',5,NULL,NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,''),('IDESTEC','Desarrollo Tecnológico','0','0','0',0,NULL,NULL,0,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('IINVEST','Investigación','0','0','0',0,NULL,NULL,5,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('OACCE','Correción de Examenes ','0','0','0',0,NULL,NULL,5,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('OACPC','Preparación de Clases ','0','0','0',0,NULL,NULL,5,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('OACRPMA','Redacción y Preparacion de Material de Apoyo','0','0','0',0,NULL,NULL,5,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('OADAA','Asesoría Académicas','0','0','0',0,NULL,NULL,5,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('SCA1002','Administración de Redes','0','4','64',4,'Diseño en Ingeniería',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('SCA1025','Taller de Base de Datos','0','4','64',4,'Diseño en Ingeniería',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('SCA1026','Taller de Sistemas Operativos','0','4','64',4,'Diseño en Ingeniería',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('SCB1001','Administración de Bases de Datos','1','4','80',5,'Diseño en Ingeniería',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('SCC1005','Cultura Empresarial','2','2','64',4,'Ciencias Económico Administrativas',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('SCC1007','Fundamentos de Ingeniería de Software','2','2','64',4,'Ingeniería Aplicada',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('SCC1010','Graficación','2','2','64',4,'Diseño en Ingeniería',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('SCC1012','Inteligencia Artificial','2','2','64',4,'Diseño en Ingeniería',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('SCC1013','Investigación de Operaciones ','2','2','64',4,'Ciencias de la Ingeniería',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('SCC1014','Lenguajes de Interfaz','2','2','64',4,'Ingeniería Aplicada',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('SCC1017','Métodos Numéricos','2','2','64',4,'Ciencias Basícas',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('SCC1019','Programación Lógica y Funcional','2','2','64',4,'Ingeniería Aplicada',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('SCC1023','Sistemas Programables ','2','2','64',4,'Diseño en Ingeniería',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('SCD1003','Arquitectura de Computadoras','2','3','80',5,'Ingeniería Aplicada',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('SCD1004','Conmutacion y Enrutamiento de redes de datos ','2','3','5',5,'Diseño en Ingeniería',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('SCD1011','Ingeniería de Software','2','3','80',5,'Diseño en Ingeniería',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('SCD1015','Lenguajes y Autómatas I','2','3','80',5,'Ingeniería Aplicada',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('SCD1016','Lenguajes y Autómatas II','2','3','80',5,'Ingeniería Aplicada','SCD1015',1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('SCD1018','Principios Electricos y Aplicaciones Digitales','2','3','80',5,'Ciencias de la Ingeniería',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('SCD1021','Redes de Computadoras','2','3','80',5,'Diseño en Ingeniería',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('SCD1022','Simulación','2','3','80',5,'Ingeniería Aplicada',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('SCD1027','Tópicos Avanzados de Programación','2','3','80',5,'Ciencias de la Ingeniería',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('SCF1006','Fisica General','3','2','80',5,'Ciencias Basícas',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('SCG1009','Gestión de Proyectos de Software','3','3','96',6,'Ciencias Economico Administrativas',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('SCH1024','Taller de Administración','1','3','64',4,'Ciencias Económico Administrarivas',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('T1','Tutoría I','0','0','0',0,NULL,NULL,2,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('T2','Tutoría II','0','0','0',0,NULL,'T1',2,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('T3','Tutoría III','0','0','0',0,NULL,'T2',2,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('T4','Tutoría IV','0','0','0',0,NULL,'T3',2,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('T5','Tutoría V','0','0','0',0,NULL,'T4',2,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('T6','Tutoría VI','0','0','0',0,NULL,'T5',2,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('T7','Tutoría VII','0','0','0',0,NULL,'T6',2,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('T8','Tutoría VIII','0','0','0',0,NULL,'T7',2,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('TAD1801','Desarrollo de aplicaciones multiplataforma','2','3','80',5,'Ingnería Aplicada',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'I'),('TAD1802','Sensores, Actuadores y Comunicaciones en Sistemas embebidos','2','3','80',5,'Ingeniería Aplicada',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'I'),('TAD1803','Sistemas Inteligentes','2','3','80',5,NULL,NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'I'),('TAD1804','Sistemas emb. aplicados a la automatización','2','3','80',5,NULL,NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'I'),('TAD1805','Modelos de negocios y marketing','2','3','80',5,'Económico Administrativo',NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'I'),('TDAM2001','Aplicaciones Nativas para Móviles de Código Abierto','2','3','80',5,'Especialidad',NULL,1,'ISIE-TDAM-2020-01','2021-03-17 11:55:51',NULL,NULL,NULL,'A'),('TDAM2002','Programación Móvil Nativo para Sistema Propietario','2','3','80',5,'Especialidad',NULL,1,'ISIE-TDAM-2020-01','2021-03-17 11:57:09',NULL,NULL,NULL,'A'),('TDAM2003','Visión por Computadora en Dispositivos Móviles','2','3','80',5,'Especialidad',NULL,1,'ISIE-TDAM-2020-01','2021-03-17 11:58:23',NULL,NULL,NULL,'A'),('TDAM2004','Lenguajes Multiplataforma para el Desarrollo Móvil','2','3','80',5,'Especialidad',NULL,1,'ISIE-TDAM-2020-01','2021-03-17 12:00:38',NULL,NULL,NULL,'A'),('TDAM2005','Segiridad y Testing en Tencología Móvil','2','3','80',5,'Especialidad',NULL,1,'ISIE-TDAM-2020-01','2021-03-17 12:01:47',NULL,NULL,NULL,'A'),('TID-1008','Circuitos Eléctricos y Electrónicos','2','3','80',5,'Diseño en ingenieria','null',4,NULL,'2019-10-21 12:53:12',NULL,NULL,NULL,'A'),('TIF-1007','Bases de Datos Distribuidas','3','2','5',5,'Diseño en ingenieria','AEH-1063',5,NULL,'2019-10-21 12:38:45',NULL,NULL,NULL,'A'),('TUTTUES','Tutoría de Estudiantes','0','0','0',0,NULL,NULL,5,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('TUTTURP','Tutoría de Residencia Profesional','0','0','0',0,NULL,NULL,5,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('TUTTUTE','Tutoría de Tesis ','0','0','0',0,NULL,NULL,5,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('X01','Inglés I','0','0','0',0,NULL,NULL,1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('X02','Inglés II','0','0','0',0,NULL,'X01',1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('X03','Inglés III','0','0','0',0,NULL,'X02',1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('X04','Inglés IV','0','0','0',0,NULL,'X03',1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('X05','Inglés V','0','0','0',0,NULL,'X04',1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('X06','Inglés VI','0','0','0',0,NULL,'X05',1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('X07','Inglés VII','0','0','0',0,NULL,'X06',1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('X08','Inglés VIII','0','0','0',0,NULL,'X07',1,NULL,'2019-06-17 12:18:59',NULL,NULL,NULL,'A'),('z01','trt','0','0',NULL,NULL,NULL,NULL,1,NULL,'2021-03-19 01:14:12',NULL,NULL,NULL,'I');
/*!40000 ALTER TABLE `asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignatura_caracterizacion`
--

DROP TABLE IF EXISTS `asignatura_caracterizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignatura_caracterizacion` (
  `AC_CVE` int NOT NULL AUTO_INCREMENT COMMENT 'Contiene un identificador de clave de registro.',
  `AC_CVE_ASIGNATURA` varchar(15) NOT NULL COMMENT 'Clave foranea de la asignatura.',
  `AC_PRACTICAS` text COMMENT 'Contiene las prácticas de las asignatura.',
  `AC_PROYECTO_ASIGNATURA` text COMMENT 'Contiene el proyecto final de la asignatura.',
  `AC_COMPETENCIA_PREVIA` text COMMENT 'Contiene las competencias previas de la asignatura, viene del programa de estudio.',
  `AC_COMPETENCIA_ASIGNATURA` text COMMENT 'Contiene la competencia de la asignatura, que esta declarada en el programa de asignatura.',
  `AC_INTENCION_DIDACTICA` text COMMENT 'Intención didáctica de la asignatura, viene del programa de asigntura.',
  `AC_CARACTERIZACION_ASIGNATURA` text COMMENT 'Contiene la caracterización de la asignatura, como viene el programa de asignatura.',
  `AC_FEC_ALTA` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Almacena la fecha de alta del registro.',
  `AC_FEC_LAST_UP` datetime DEFAULT NULL COMMENT 'Almacena la ultima actualización del rgistro.',
  `AC_LAS_IP` int unsigned DEFAULT NULL COMMENT 'Almacena la ultima ip que agrego o modifico.',
  `AC_CVE_USER` int DEFAULT NULL COMMENT 'Contiene la clave del usuario que a modificado el registro.',
  PRIMARY KEY (`AC_CVE`),
  KEY `fk_as_caracterizacion_asignatura_idx` (`AC_CVE_ASIGNATURA`),
  CONSTRAINT `fk_as_caracterizacion_asignatura` FOREIGN KEY (`AC_CVE_ASIGNATURA`) REFERENCES `asignatura` (`AS_CVE_ASIGNATURA`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacena los detalles del programa de asignatura.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignatura_caracterizacion`
--

LOCK TABLES `asignatura_caracterizacion` WRITE;
/*!40000 ALTER TABLE `asignatura_caracterizacion` DISABLE KEYS */;
INSERT INTO `asignatura_caracterizacion` VALUES (1,'ACA0907','Crear proyectos que contemplen: - Organización debates (foros) sobre temas de interés y actualidad, para propiciar el análisis al contrastar ideas de juicios éticos y morales, valores, y derechos humanos y otros aspectos éticos. - Programas de difusión y práctica de los valores éticos fundamentales., por ejemplo la semana de valores, concurso de ética, etc. - Campañas dirigidas a la sensibilización por medio de la labor social y axiológica en la institución y/o comunidad.',NULL,'No aplica por el momento por la dificultad para evaluarlas al inicio.','Desarrolla conciencia sobre el significado y sentido de la Ética para orientar su comportamiento en el contexto social y profesional. 1. Reflexiona sobre el significado de la Ética y sus implicaciones en el comportamiento para orientar su práctica en los diversos ámbitos y contextos. 2. Relaciona la ética con el desarrollo de la ciencia y la tecnología para determinar sus implicaciones sociales. 3. Adquiere el compromiso al proponer soluciones a problemas mediante la aplicación de la ética profesional, para contribuir a la mejora de los ámbitos del desempeño humano. 4. Fundamente la práctica ética del ejercicio profesional en la toma de decisiones para la solución de problemas en las instituciones y organizaciones. ','El docente que imparta la asignatura debe desenvolverse en ámbitos diversos; el de la propia profesión, la docencia, la filosofía y la ética y lo ético. La evaluación de la ética, supone el uso sistemas diferenciados de evaluación. Debe crear una actitud positiva hacia los valores que deben orientar la actividad de nuestros profesionistas. Otras posibilidades didácticas del Taller de ética:  Su vinculación con la Residencia Profesional y con otras asignaturas básicas.  Estimular el trabajo integrador entre asignaturas disciplinarias. ','El Taller de ética se plantea como una asignatura común a todas las carreras del SNIT. Esto se fundamenta en lo siguiente: En el Modelo del Siglo XXI del SNEST se busca una formación profesional que integre, en una totalidad dinámica, la competencia en el quehacer profesional con el ejercicio de una ciudadanía activa, responsable y el desarrollo psicosocial de la persona. Además, en el Código de ética del SNEST, se promueve el desarrollo armonioso de todas las facultades del ser humano. El desarrollo del profesionista requiere de una sólida formación ética. Esta asignatura permite reflexionar y desarrollar el juicio ético, permitirá al estudiante formarse en el convencimiento de que el ejercicio de su profesión constituye no sólo una práctica con compromisos laborales y técnicas diversas, sino que es al mismo tiempo una práctica con responsabilidades como ciudadanos y como personas en la construcción de una mejor sociedad. Se busca desarrollar la comprensión de conceptos y métodos de la ética, así como la reflexión y experiencia de actos éticos, propicia que se involucre de manera consciente en la búsqueda de la congruencia entre su pensamiento, sus palabras y sus actos. Integrando el saber, el saber hacer con el saber ser. La asignatura brinda la ocasión de aprender a aprender para desarrollar su capacidad de confrontarse consigo mismo, de interrogarse y de reconocerse como un ser que posee dignidad, ideas propias y convicción de su quehacer profesional; derechos, deberes y compromisos en contextos organizacionales, tecnológicos, comunitarios y sociales cada vez más complejos, inciertos y cambiantes que requieren cada vez con mayor frecuencia de reflexiones y decisiones tecnoéticas. Consideraciones generales: El conocimiento de la ética como rama del saber práctico aporta al estudiante unos contenidos y un método. Aunque esto no llegue a modificar las convicciones de quien estudia ética, sí le ayudarán a la reflexión.','2019-08-20 14:33:56',NULL,NULL,NULL),(2,'ACA0909',NULL,NULL,NULL,NULL,NULL,NULL,'2019-08-20 14:33:56',NULL,NULL,NULL),(3,'ACA0910','- Visitas virtuales y/o presenciales a centros de investigación, con el objetivo de conocer las investigaciones que están desarrollando en el ámbito local, nacional e internacional. Centros de Investigación Consejo Nacional de Ciencia y Tecnología (CONACYT) http://www.conacyt.gob.mx/ElConacyt/CentrosConacyt/Paginas/default.aspx; Centro de Investigación y de Estudios Avanzados del Instituto Politécnico Nacional (CINVESTAV) www.cinvestav.mx; Centro Nacional de Investigación y Desarrollo Tecnológico (CENIDET) www.cenidet.edu.mx; Instituto Nacional de Astrofísica, Óptica y Electrónica (INAOE) http://www.inaoep.mx/; Instituto Nacional de Investigaciones Nucleares (ININ) http://www.inin.gob.mx; Instituto Mexicano del Petróleo (IMP) http://www.imp.mx/, Instituto de Investigaciones Eléctricas (IIE) http://vmwl1.iie.org.mx, Instituto Mexicano de Tecnología del Agua (IMTA) http://imta.gob.mx/, entre otros). - Organizar un foro, seminario o coloquio en el que se presenten los proyectos generados en la asignatura de los diferentes programas educativos de la institución, con la participación de organismos y autoridades con las cuales se pueda dar una vinculación en el desarrollo y financiamiento de proyectos. - - Promover la participación de estudiantes en convocatorias para la presentación de proyectos como; la Feria Mexicana de las ciencias, Ferias estatales de la ciencia, Concurso de Innovación Tecnológica, Jóvenes investigadores, entre otros.',NULL,'Aplica los elementos de la investigación documental para elaborar escritos académicos de su entorno profesional. Elabora un protocolo de investigación en el que presenta soluciones científico - tecnológicas a problemáticas relacionadas con su campo profesional en diversos contextos.','Consolida el protocolo para ejecutar la investigación y obtener productos para su exposición, defensa y gestión de su transcendencia.','El profesor de la asignatura debe haber desarrollado, dirigido o participado en proyectos de investigación y sobre todo fomentar actividades de aprendizaje o estrategias que impulsen el desarrollo de habilidades de indagación y búsqueda, previas al abordaje teórico de los temas, que faciliten la conceptualización, provocar la reflexión y el análisis de procesos intelectuales complejos (inducción, deducción, análisis y síntesis), debe favorecer la metacognición, potenciar la autonomía, la toma de decisiones, estimular el trabajo colaborativo y contribuir a la interacción personal. El docente de la asignatura deberá tener habilidad para vincular el saber, con el saber hacer y con el saber ser para que el proceso formativo sea integral. Deberá auxiliarse de la construcción de un portafolio de evidencias para desarrollar la reflexión y actitud crítica de sus estudiantes. Las estrategias contempladas en este programa son propuestas que pueden adaptarse o modificarse de acuerdo a la experiencia del docente, implementando en base a su experiencia práctica algunas no contempladas que le hayan dado buenos resultados. La evaluación de la asignatura debe ser integral y valorar todos los productos y los procesos generados en la construcción del aprendizaje.','Ésta asignatura apoya el proceso de titulación de los estudiantes del SNIT; aporta elementos a través de la realización, culminación terminación y defensa de un proyecto de investigación, lo anterior buscando que el futuro profesionista desarrolle habilidades que le permitan la integración de proyectos en su ámbito profesional. Taller de investigación II se ubica en el séptimo semestre, después de que el estudiante ha delineado los aspectos generales del protocolo durante el Taller de investigación I, por lo que el propósito de ésta asignatura es enriquecerlo, consolidarlo y transformarlo en proyecto de investigación aplicada, como proyecto de creatividad, de desarrollo empresarial (creación de empresas, nuevos productos), innovación y desarrollo tecnológico (generación de nuevas tecnologías), diseño, construcción de equipo, prototipos, residencia profesional o prestación de servicios profesionales. En esta asignatura el estudiante desarrolla el marco teórico (marco conceptual, histórico, legal, contextual), y profundiza en la metodología (identificación de variables, diseño y validación de instrumentos) considerando que ya ha cursado asignaturas de su especialidad que le permitirán ubicar su propuesta en el contexto profesional. Además en esta materia el alumno desarrolla la metodología propuesta, para su revisión y la entrega de los productos de investigación. Parte importante de la formación del profesionista es la habilidad para exponer y defender con argumentos sólidos y consistentes su proyecto, por esta razón la defensa deberá hacerse ante un sínodo integrado por el profesor de la asignatura, el asesor y un oponente, con la posible presencia de otros estudiantes. En el tema I. Evaluación y complementación de protocolo de investigación, se busca hacer una revisión del documento elaborado en Taller I. En este apartado se desarrolla totalmente el marco teórico y la validación de instrumentos para su aplicación. En el segundo tema: Desarrollo de la metodología del proyecto de investigación, el estudiante desarrolla los métodos, utilizando los instrumentos que permitan recolectar la información. Se efectúa el procesamiento de los datos, el análisis e interpretación de los resultados y elabora las conclusiones. ','2019-08-20 14:33:56',NULL,NULL,NULL),(4,'ACC0906','Desarrollar una investigación documental, en equipo, cuyo tema esté relacionado directamente con su profesión, presentando como resultado un informe en el que se muestren las competencias adquiridas en la asignatura. - Ubicar la profesión dentro de un contexto social - Aplicar reglas gramaticales, ortografía y sintaxis. - Emplear Normas Internacionales para el registro y citación de fuentes ',NULL,' No aplica','Aplica los elementos de la investigación documental para elaborar escritos académicos de su entorno profesional.','En el primer tema, el reto es que el estudiante comprenda la investigación como un proceso natural del ser humano por la búsqueda del conocimiento. Conozca e identifique los conceptos básicos de la investigación, los tipos de métodos que existen y las diferentes formas de elaborar un reporte documental, en beneficio propio y del entorno en que se desenvuelve. En el segundo tema, el estudiante aplica las herramientas de comunicación oral y escrita en el proceso de investigación, ya que redactar es un asunto medular en su formación, demostrando un orden de pensamiento y una lógica formal. Con relación al tercer tema, el estudiante reconoce la importancia de la investigación en el desarrollo de su campo profesional. Finalmente, la competencia consiste en que los estudiantes tengan la capacidad de gestionar información para realizar una investigación documental, sobre un tema estrechamente relacionado con su campo profesional.','El programa de la asignatura de Fundamentos de investigación, está diseñado para contribuir en la formación integral de los estudiantes del Sistema Nacional de Institutos Tecnológicos (SNIT); desarrolla las competencias de búsqueda, y manejo de información que se utilizan para el aprendizaje conceptual, procedimental y actitudinal contenido en los planes de estudio de los programas educativos que oferta. La investigación es un proceso que habilita al profesional para conocer, analizar y descubrir áreas de oportunidad en los diferentes ámbitos donde desarrollará su profesión y proponer soluciones interdisciplinarias y colaborativas con un enfoque sustentable. La formación de ingenieros y licenciados en un mundo globalizado, exige el dominio de herramientas de investigación que le permitan gestionar, aplicar y transformar información a contextos complejos y plurales, cuya solución de problemáticas de manera sustentable, es fundamental para la configuración de la sociedad del conocimiento. Esta asignatura se ubica en primer semestre de las carreras del SNIT, ya que integra las competencias necesarias para el desarrollo de investigación documental útil en el proceso de formación profesional durante la carrera, fortaleciendo el compromiso humano y social. El aprendizaje como proceso social, se configura con la presencia activa de experiencias y conocimientos, de profesores, estudiantes y el contexto, en una relación dialógica con el saber y el saber ser. El profesor que imparta la asignatura de Fundamentos de investigación, debe tener experiencia en la práctica de la investigación que le permita orientar a los estudiantes, promoviendo inquietudes hacia la indagación, para vincular la teoría y la práctica. El profesor de esta asignatura deberá emplear estrategias de aprendizaje constructivistas que permitan al estudiante lograr competencias de: análisis y síntesis (desarrollo de una investigación documental), fortalecer la comunicación oral y escrita con apoyo de las TIC´s (elaborar escritos redactando sus ideas y exponerlas); permitiéndole identificar escenarios de intervención en su campo profesional.','2019-08-20 14:33:56',NULL,NULL,NULL),(5,'ACD0908','1. Estudio de campo para identificar y analizar los diferentes escenarios. 2. Desarrollar un sociodrama u otra actividad grupal para demostrar los valores y actitudes en el medio ambiente. 3. Visita de campo o en el jardín del Tecnológico, para registrar el número de formas de vida observadas. . 4. Realizar programas de reúso de residuos sólidos (por ejemplo papel) y determinar el ahorro económico en la Institución y el impacto ambiental 5. Visitar empresas regionales con avances en mejorías ambientales o alguna calificación de sustentabilidad, (Empresas Socialmente Responsables),para identificar los elementos y características que las encauzan a la sustentabilidad. 6. Análisis FODA y PER (presión-estado-respuesta), de una empresa, un área del Tecnológico, un ecosistemas, dependiendo de la carrera. 7. Viajes de prácticas a Asociaciones, Cooperativas, Grupos dedicados al desarrollo sustentable.',NULL,' Conoce conceptos básicos de ciencias naturales y ciencias sociales.   Aplica los elementos de la investigación documental para elaborar escritos académicos de su entorno profesional.  Identifica y resuelve problemas afines a su ámbito profesional, aplicando el método inductivo y deductivo, el método de análisis-síntesis y el enfoque sistémico.  Posee iniciativa y espíritu emprendedor.  Asume actitudes éticas en su entorno.','Aplica una visión sustentable, en los ámbitos social, económico y ambiental que le permitirá evaluar y disminuir el impacto de la sociedad sobre el entorno, tomando en cuenta estrategias y considerando profesionalmente los valores ambientales.','Debido a la trascendencia de esta materia en la formación integral del estudiante es necesario que el docente como ejemplo a seguir, participe y conozca actividades de investigación, desarrollo tecnológico, innovación, gestión, y vinculación con los sectores sociales que pueden ser utilizados como casos de estudio de desarrollo sustentable en su localidad o región. Esta asignatura está dividida en cinco temas los cuales abordan cuatro escenarios. El primer tema es una introducción donde se abordan los conceptos básicos del desarrollo sustentable. El segundo tema revisa los elementos del escenario natural para que el alumno comprenda las relaciones entre la naturaleza y los organismos. El escenario sociocultural es el tercer tema, donde se explica el impacto que la sociedad tiene en el funcionamiento de los ecosistemas. En el cuarto tema se muestra el escenario económico en el que se aborda a la economía como punto eje para el desarrollo de los escenarios anteriores. Como último tema se presentan los escenarios modificados en donde se analiza el impacto de nuestro actual estilo de vida y como la capacidad de consumo puede traer aspectos positivos o negativos dependiendo de las decisiones sociales. Cabe mencionar que en cada tema se abordan estrategias que el alumno puede aplicar dentro de su ámbito profesional e incluso privado. Finalmente, la intención de este curso es formar al estudiante considerando los principios holistas y la filosofía perenne para educarlo integralmente, lograr interesarlo en el cuidado del medio ambiente de su entorno.','La intención de esta asignatura es que el egresado adopte valores y actitudes humanistas, que lo lleven a vivir y ejercer profesionalmente de acuerdo con principios orientados hacia la sustentabilidad, la cual es el factor medular de la dimensión filosófica del SNIT. Se pretende, entonces, la formación de ciudadanos con valores de justicia social, equidad, respeto y cuidado del entorno físico y biológico, capaces de afrontar, desde su ámbito profesional, las necesidades emergentes del desarrollo y los desafíos que se presentan en los escenarios natural, social-cultural y económico. El reto es formar individuos que hagan suya la cultura de la sustentabilidad y en poco tiempo transfieran esta cultura a la sociedad en general. La diversidad temática del programa conforma la comprensión del funcionamiento de las dimensiones de la sustentabilidad y su articulación entre sí. Se presentan estrategias para la sustentabilidad que se han diseñado y desarrollado por especialistas, organizaciones y gobiernos a nivel internacional, nacional y local. Se refuerzan competencias para mejorar el ambiente y la calidad de vida humana, desde una perspectiva sistémica y holística. La asignatura, por su aportación al perfil profesional, debe impartirse entre el quinto y séptimo semestre de las carreras del SNIT. Se sugiere integrar grupos con estudiantes de las distintas carreras, para fomentar el análisis y ejecución de estrategias para el desarrollo sustentable regional desde la multidisciplina, a la vez que se desarrolla la competencia de trabajar de manera interdisciplinaria. El docente que imparta esta asignatura deberá tener conocimientos en las áreas de: química, biología, microbiología, economía, sociología, educación ambiental; es recomendable que el docente tenga experiencia en la elaboración de proyectos dirigidos a temas de desarrollo sustentable.','2019-08-20 14:33:56',NULL,NULL,NULL),(6,'ACF0901','Identificar situaciones reales donde se involucren desigualdades. Utilizar TICs para identificar y analizar los desplazamientos horizontales y verticales de funciones algebraicas y trascendentes. Modelar físicamente el concepto de función. Identificar situaciones reales donde se puedan establecer funciones. Utilizar TICs para calcular límites. Calcular la pendiente de una recta tangente a una curva en un punto determinado. Calcular derivadas utilizando TICs. Utilizar modelos matemáticos para resolver problemas de optimización y razón de cambio. TICs propuestos a utilizar: Sistemas Algebraicos Computarizados (SAC) como Mathematica, Maple, Derive, Mathcad, Matlab, Geogebra, Wiris, Winplot, etc.',NULL,'Utiliza la aritmética para realizar operaciones. Emplea el álgebra para simplificar expresiones. Resuelve ecuaciones y sistemas de ecuaciones. Utiliza la trigonometría para resolver problemas. Describe las ecuaciones de los principales lugares geométricos.','Plantea y resuelve problemas utilizando las definiciones de límite y derivada de funciones de una variable para la elaboración de modelos matemáticos aplicados.','La asignatura de Cálculo Diferencial se organiza en cinco temas. El primer tema se inicia con un estudio sobre los números reales y sus propiedades básicas, así como la solución de problemas con desigualdades. Esto servirá de sustento para el estudio de las funciones de variable real. El tema dos incluye el estudio del dominio y rango de funciones, así como las operaciones relativas a éstas. También las funciones simétricas, par e impar, escalonadas (definidas por más de una regla de correspondencia), crecientes y decrecientes, periódicas, de valor absoluto, etc. En el tema tres se introduce la noción intuitiva de límite, así como la definición formal. Se aborda el cálculo de límites por valuación, factorización, racionalización, de límites trigonométricos y los límites laterales. Se incluyen casos especiales de límites infinitos y límites al infinito, así como asíntotas horizontales y verticales. El tema concluye con el estudio de la continuidad en un punto y en un intervalo. La derivada, en el tema cuatro, se aborda de manera intuitiva obteniendo la pendiente de la recta tangente a una curva y como una razón de cambio. La definición de derivada permite deducir propiedades y reglas de derivación de funciones. El último tema consiste principalmente en aplicar las propiedades y reglas de derivación para modelar y resolver problemas de razones de cambio y optimización específicos de cada área. El estudiante debe desarrollar la habilidad para modelar situaciones cotidianas en su entorno. Es importante que el estudiante valore las actividades que realiza, que desarrolle hábitos de estudio y de trabajo para que adquiera características tales como: la curiosidad, la puntualidad, el entusiasmo, el interés, la tenacidad, la flexibilidad y la autonomía. El Cálculo Diferencial contribuye principalmente para el desarrollo de las siguientes competencias genéricas: de capacidad de abstracción, análisis y síntesis, capacidad para identificar, plantear y resolver problemas, habilidad para trabajar en forma autónoma, habilidades en el uso de las TIC’s, capacidad crítica y autocrítica y la capacidad de trabajo en equipo.','La asignatura contribuye a desarrollar un pensamiento lógico-matemático al perfil del ingeniero y aporta las herramientas básicas para introducirse al estudio del cálculo y su aplicación, así como las bases para el modelado matemático. Además, proporciona herramientas que permiten modelar fenómenos de contexto. La importancia del estudio del Cálculo Diferencial radica principalmente en proporcionar las bases para los temas en el desarrollo de las competencias del Cálculo Integral, Cálculo Vectorial, Ecuaciones Diferenciales y asignaturas de física y ciencias de la ingeniería, por lo que se pueden diseñar proyectos integradores con cualquiera de ellas. La característica más sobresaliente de esta asignatura es que en ella se estudian las bases sobre las que se construye el cálculo diferencial. Utilizando las definiciones de función y límite se establece uno de los conceptos más importantes del cálculo: la derivada, que permite analizar razones de cambio y problemas de optimización, entre otras. La derivada es tema de trascendental importancia en las aplicaciones de la ingeniería.','2019-08-20 14:33:56',NULL,NULL,NULL),(7,'ACF0902','Aproximar el área bajo la curva por medio de sumas de Riemann usando TIC’s. Crear y modelar un prototipo didáctico para el cálculo de volúmenes (figuras simples: conos, vasos, cilindros circular recto). Resolver integrales utilizando TIC’s. Identificar situaciones reales donde se pueda utilizar la definición de integral. Calcular el área bajo la curva y el área entre curvas utilizando TIC’s. Mediante un modelo físico representar la definición de serie. TIC’s propuestos a utilizar: Sistemas Algebraicos Computarizados (SAC) como Mathematica, Maple, Derive, Mathcad, Matlab, Geogebra, Wiris, Winplot, etc. ',NULL,'Plantea y resuelve problemas utilizando las definiciones de límite y derivada de funciones de una variable para la elaboración de modelos matemáticos aplicados.','Aplica la definición de integral y las técnicas de integración para resolver problemas de ingeniería.','La asignatura de Cálculo Integral se organiza en cuatro temas. En el primer tema se inicia con el concepto del cálculo de áreas mediante sumas de Riemann como una aproximación a ella. Se incluye la notación sumatoria para que el alumno la maneje. La función primitiva (antiderivada) se define junto con el Teorema de Valor Intermedio y el primer y segundo Teorema Fundamental del Cálculo. Se estudia la integral definida antes de la indefinida puesto que aquélla puede ser abordada a partir del acto concreto de medir áreas. En el segundo tema se estudia la integral indefinida y los métodos de integración principales. Se remarca la importancia de este tema para desarrollar con detalle cada uno de los métodos y considerar esto para la evaluación. El tercer tema de aplicaciones de la integral se trata del cálculo de áreas, volúmenes y longitud de arco. Otras aplicaciones de utilidad que se pueden abordar son los centroides, áreas de superficie, trabajo, etc. En el cálculo de áreas se considerarán además aquellas que requieren el uso de integrales impropias de ambos tipos. Todo lo anterior aplicado en el contexto de las ingenierías. En el último tema de series se inicia con el concepto de sucesiones y series para analizar la convergencia de algunas series que se utilizan para resolver ciertas integrales. La serie de Taylor permite derivar e integrar una función como una serie de potencias. El estudiante debe desarrollar la habilidad para modelar situaciones cotidianas en su entorno. Es importante que el estudiante valore las actividades que realiza, que desarrolle hábitos de estudio y de trabajo para que adquiera características tales como: la curiosidad, la puntualidad, el entusiasmo, el interés, la tenacidad, la flexibilidad y la autonomía. El Cálculo Integral contribuye principalmente para el desarrollo de las siguientes competencias genéricas: de capacidad de abstracción, análisis y síntesis, capacidad para identificar, plantear y resolver problemas, habilidad para trabajar en forma autónoma, habilidades en el uso de las TIC’s, capacidad crítica y autocrítica y la capacidad de trabajo en equipo. El docente de Cálculo Integral debe mostrar y objetivar su conocimiento y experiencia en el área para construir escenarios de aprendizaje significativo en los estudiantes que inician su formación profesional. ','La asignatura contribuye a desarrollar un pensamiento lógico-matemático al perfil del ingeniero y aporta las herramientas básicas para desarrollar el estudio del cálculo integral y sus aplicaciones. Además, proporciona herramientas que permiten modelar fenómenos de contexto. Cálculo Integral requiere como competencia previa todos los temas de Cálculo Diferencial y a su vez proporciona las bases para el desarrollo de las competencias del Cálculo Vectorial y Ecuaciones Diferenciales y asignaturas de física y ciencias de la ingeniería, por lo que se pueden diseñar proyectos integradores con cualquiera de ellas. La característica más sobresaliente de esta asignatura es que en ella se estudian las bases sobre las que se construye el cálculo integral. Utilizando las definiciones de suma de Riemann, integral definida para el cálculo de áreas. Para integral indefinida se consideran los métodos de integración como parte fundamental del curso. La integral es tema de trascendental importancia en las aplicaciones de la ingeniería.','2019-08-20 14:33:56',NULL,NULL,NULL),(8,'ACF0903','Utilizar tics para; Realizar operaciones con números complejos. Realizar operaciones con matrices, obtener el determinante y calcular su inversa. Resolver problemas de aplicación de sistemas de ecuaciones lineales, a través de la gráfica verificar la solución del sistema. Encontrar la matriz de transformación y representar un vector de una base a otra y realizar el proceso de ortonormalización de Gram-Schmidt. Resolver ejercicios relacionados con aplicaciones de las transformaciones lineales. TIC’s propuestos a utilizar: Sistemas Algebraicos Computarizados (SAC) como Mathematica, Maple, Derive, Mathcad, Matlab, Geogebra, Wiris, Winplot, etc.',NULL,'Plantea y resuelve problemas utilizando las definiciones de límite y derivada de funciones de una variable para la elaboración de modelos matemáticos aplicados. Aplica la definición de integral y las técnicas de integración para resolver problemas de ingeniería. ','Resuelve problemas de modelos lineales aplicados en ingeniería para la toma de decisiones de acuerdo a la interpretación de resultados utilizando matrices y sistemas de ecuaciones. Analiza las propiedades de los espacios vectoriales y las transformaciones lineales para vincularlos con otras ramas de las matemáticas y otras disciplinas.','La asignatura de Álgebra Lineal se organiza en cinco temas. En el primer tema se estudian los números complejos como una extensión de los números reales, tema ya abordado en Cálculo Diferencial. Se propone iniciar con este tema para así utilizar los números complejos en el álgebra de matrices y el cálculo de determinantes. Además, el concepto de número complejo será retomado otros cursos dentro de los planes de estudio. Se proponen aplicaciones de complejos como: Teoría de Telecomunicaciones, Análisis de Fourier, Transformada de Laplace, Triangulo de Potencias, etc. El tema dos, matrices y determinantes, se propone previo al tema de sistemas de ecuaciones lineales con la finalidad de darle mayor importancia a las aplicaciones de las matrices, ya que prácticamente todos los problemas del álgebra lineal pueden enunciarse en términos de matrices. Por la necesidad de que el alumno comprenda si una matriz tiene inversa, además del cálculo para obtenerla, se ha añadido antes del subtema cálculo de la inversa de una matriz, los conceptos: transformaciones elementales por renglón, escalonamiento de una matriz y núcleo y rango de una matriz. Es importante para el estudiante, aprender el concepto de transformaciones elementales por renglón para desarrollar el escalonamiento de una matriz como método para obtener la inversa. Para determinar si una matriz tiene inversa o no, evitando el concepto de determinante en este momento, se aborda el concepto de rango como el número de renglones con al menos un elemento diferente de cero de cualquiera de sus matrices escalonadas. El tercer tema, sistemas de ecuaciones lineales, constituye una parte fundamental en esta asignatura por lo que se hace énfasis en el modelaje, representación gráfica y solución de problemas para las diferentes aplicaciones en ingeniería. En el cuarto tema se estudian los espacios vectoriales que se presentan en el temario de manera concisa, pero comprenden lo esencial de ellos. Se proponen estudiar aplicaciones como: componentes simétricas, solución de modelos de estado, transformaciones de similitud, procesamiento de imágenes, etc. El último tema, transformaciones lineales, se presenta condensado haciendo énfasis en las aplicaciones y en la representación de la transformación lineal como una matriz. El estudiante debe desarrollar la habilidad para modelar procesos lineales en su entorno.','El Álgebra Lineal aporta al perfil del ingeniero la capacidad para desarrollar un pensamiento lógico, heurístico y algorítmico al modelar fenómenos de naturaleza lineal y resolver problemas. Esta asignatura proporciona al estudiante de ingeniería una herramienta para resolver problemas de aplicaciones de la vida ordinaria y de aplicaciones de la ingeniería. Muchos fenómenos de la naturaleza, que se presentan en la ingeniería, se pueden aproximar a través de un modelo lineal. Esta asignatura nos sirve para caracterizar estos fenómenos y convertirlos en un modelo lineal ya que es más accesible, de allí la importancia de estudiar Álgebra Lineal. Esta asignatura proporciona además conceptos matemáticos relacionados con Cálculo Vectorial, Ecuaciones Diferenciales, Investigación de Operaciones y en otras asignaturas de especialidad por lo que se pueden diseñar proyectos integradores con cualquiera de ellas.','2019-08-20 14:33:56',NULL,NULL,NULL),(9,'ACF0904','Establecer las ecuaciones de los planos correspondientes a cada una de las caras de un poliedro, por ejemplo, un tetraedro, una pirámide truncada, un dodecaedro, etc., en donde el estudiante seleccione un sistema de coordenadas, mida las coordenadas de los vértices y usando vectores determine las ecuaciones. Se realizarán varios ejercicios de aplicación para encontrar las ecuaciones paramétricas de una recta y la ecuación de un plano, así como su representación geométrica, utilizando hilos sujetos a tensión en dos puntos en el espacio, estableciendo un sistema de referencia. Hacer uso de juegos disponibles en diferentes tecnologías a fin de ejemplificar la representación de vectores con una simulación. Realizar ejemplos de problemas donde sea necesario calcular el trabajo y el momento producido por una fuerza en distintos contextos de la ingeniería. Construir una maqueta con tres cables en tensión para verificar el equilibrio del sistema. Asociar ecuaciones en coordenadas polares a cintas enrolladas. Hacer uso de juegos d i d á c t i c o s d i s p o n i b l e s para encontrar la función vectorial de la trayectoria del proyectil, su velocidad, su aceleración, etc. Establecer la relación entre una escritura pública de una propiedad y el uso de las coordenadas polares. Resolver distintos casos de problemas de tiro parabólico, graficando mediante TIC’s las trayectorias propuestas, y modificando algunos parámetros para analizar los cambios que se producen en el comportamiento de la trayectoria. Construir maquetas que contengan curvas en el espacio y elaborar un reporte sobre su construcción y descripción de las ecuaciones paramétricas de las curvas que contenga. Por ejemplo: escaleras de caracol y hélices cónicas. Construir un globo aerostático y determinar las ecuaciones de las superficies involucradas en su construcción. Utilizar TIC’s para graficar funciones de dos variables y se intersectarán con diferentes planos para observar la interpretación geométrica de la derivada parcial con respecto a x y con respecto a y. TIC’s propuestos a utilizar: Sistemas Algebraicos Computarizados (SAC) como Mathematica, Maple, Derive, Mathcad, Matlab, Geogebra, Wiris, Winplot, CalcPlot3D, etc.',NULL,'Plantea problemas que requieren el concepto de función de una variable para el diseño de modelos matemáticos de problemas aplicados al ámbito profesional, mediante el uso de la derivada para su solución. Aplica los principios y técnicas del cálculo integral en la solución de problemas reales de la ingeniería en su entorno.','Aplica los principios y técnicas básicas del cálculo vectorial para resolver problemas de ingeniería del entorno.','La asignatura de Cálculo Vectorial se organiza en cinco temas. En el primer tema de la asignatura se inicia con la comprensión, manejo algebraico y representación geométrica de los vectores, utilizando el producto escalar para la obtención del trabajo realizado por una fuerza y el producto vectorial para el cálculo del momento de la misma, entre otras aplicaciones. Se estudia el triple producto escalar como parte de las propiedades de los productos de vectores para calcular el volumen de un paralelepípedo rectangular y el momento de una fuerza con respecto a un eje, entre otras aplicaciones. Terminando el tema con la obtención de ecuaciones de rectas y planos en el espacio. En el segundo tema se estudian diferentes tipos de curvas en el plano para su aplicación en el estudio y representación del movimiento de un cuerpo, su posición, velocidad y aceleración. Se trabaja en coordenadas rectangulares y coordenadas polares, de acuerdo a la geometría de las trayectorias propuestas y aprovechando en cada caso, la facilidad en el manejo algebraico de las ecuaciones utilizadas. Se obtiene las tangentes horizontal y vertical a una curva y la longitud de arco, así como el área de una superficie. En el tercer tema se inicia con el estudio de diferentes tipos de curvas en el espacio en forma paramétrica. Analiza el límite de las funciones y su continuidad. Se obtiene la derivada de una función vectorial y sus propiedades, y las integrales correspondientes. Del mismo modo se analizan los vectores tangente, normal y binormal que caracterizan una curva en el espacio, así como la longitud de arco y su curvatura. Se estudian las aplicaciones de funciones vectoriales para representar modelos físicos como: escaleras de caracol, hélices cónicas, etc. En el cuarto tema se grafican funciones de dos variables y se utilizan los mapas de contorno y las curvas de nivel para comprender la definición de función de dos variables. Analiza el límite de las funciones de varias variables y su continuidad. Se obtienen las derivadas parciales de una función y se estudian sus propiedades. Se calculan las derivadas parciales de las funciones de dos variables y se muestra la interpretación geométrica de las mismas. Se estudia el concepto de diferencial y la linealización de una función. ','La asignatura contribuye a desarrollar un pensamiento lógico-matemático al perfil del ingeniero y aporta las herramientas básicas para introducirse al estudio del cálculo vectorial y su aplicación, así como las bases para el modelado matemático. Además proporciona herramientas que permiten modelar fenómenos de contexto. La importancia del estudio del Cálculo Vectorial radica principalmente en que en diversas aplicaciones de la ingeniería, la concurrencia de variables espaciales y temporales, hace necesario el análisis de fenómenos naturales cuyos modelos utilizan funciones vectoriales o escalares de varias variables. La asignatura está diseñada de manera que el estudiante pueda representar conceptos, que aparecen en el campo de la ingeniería por medio de vectores; resolver problemas en los que intervienen variaciones continuas; resolver problemas geométricos en forma vectorial; graficar funciones de varias variables; calcular derivadas parciales; representar campos vectoriales que provengan del gradiente de un campo escalar, así como su divergencia y rotacional; resolver integrales dobles y triples; aplicar las integrales en el cálculo de áreas y volúmenes. Con esta asignatura se espera desarrollar la capacidad de análisis y síntesis en actividades de modelación matemática; adquirir estrategias para resolver problemas; elaborar desarrollos analíticos para la adquisición de un concepto; pensar conceptualmente, desarrollar actitudes para la integración a grupos interdisciplinarios; aplicar los conocimientos adquiridos a la práctica y aprovechar los recursos que la tecnología ofrece, como el uso TIC’s.','2019-08-20 14:33:56',NULL,NULL,NULL),(10,'ACF0905','Identificar fenómenos físicos variantes en el tiempo y modelar su ecuación diferencial. Utilizar TIC’s para resolver ecuaciones diferenciales ordinarias. Construir un diseño físico o diseñar una simulación de un sistema dinámico. Construir la ecuación diferencial, resolverla, analizar e interpretar la solución. Utilizar TIC’s para resolver sistemas de ecuaciones diferenciales lineales. Construir un diseño físico o diseñar una simulación de un sistema dinámico que se pueda modelar mediante un sistema de ecuaciones diferenciales. Construir el sistema, resolverlo, analizarlo e interpretar la solución. Utilizar TIC’s para graficar una serie de Fourier. TIC’s propuestos a utilizar: Sistemas Algebraicos Computarizados (SAC) como Mathematica, Maple, Derive, Mathcad, Matlab, etc.',NULL,'Plantea y resuelve problemas utilizando las definiciones de límite y derivada de funciones de una variable para la elaboración de modelos matemáticos aplicados. Aplica la definición de integral y las técnicas de integración para resolver problemas de ingeniería. Resuelve problemas de modelos lineales aplicados en ingeniería para la toma de decisiones de acuerdo a la interpretación de resultados utilizando matrices y sistemas de ecuaciones. Analiza las propiedades de los espacios vectoriales y las transformaciones lineales para vincularlos con otras ramas de las matemáticas y otras disciplinas. Aplica los principios y técnicas básicas del cálculo vectorial para resolver problemas de ingeniería del entorno.','Aplica los métodos de solución de ecuaciones diferenciales ordinarias para resolver problemas que involucran sistemas dinámicos que se presentan en la ingeniería.','La asignatura de Ecuaciones Diferenciales se organiza en cinco temas. En el primer tema se aborda la teoría preliminar para el estudio de los métodos de solución de las ecuaciones diferenciales ordinarias. En la solución de algunas ecuaciones diferenciales se pueden realizar cambios de variable para reducirlas a separables. Se precisa que en algunos casos un factor integrante puede reducir una ecuación a tipo exacta. Es importante remarcar la relación que existe entre los métodos de solución de las ecuaciones diferenciales estudiadas. Al finalizar el estudiante resuelve problemas de aplicación que puedan ser modelados con una ecuación diferencial ordinaria de primer orden. En el segundo tema se generalizan las definiciones a ecuaciones diferenciales de orden superior. Se utilizan conceptos del Álgebra Lineal para el estudio de las soluciones de una ecuación diferencial lineal homogénea y se extiende a las soluciones de ecuaciones no homogéneas. Se desarrollan los métodos de coeficientes indeterminados y variación de parámetros para construir la solución general de una ecuación lineal no homogénea. Como un ejemplo de ecuaciones con coeficientes variables se presenta la ecuación de Cauchy- Euler considerando los tres diferentes tipos de raíces características. Se modelan y resuelven problemas dinámicos de ingeniería como movimiento vibratorio, circuitos eléctricos en serie, entre otros. En el tercer tema se estudia la definición de transformada de Laplace y se discuten sus propiedades de linealidad. Se define la transformada inversa de Laplace como un proceso algebraico inverso. Una vez deducidas las fórmulas fundamentales se calculan transformadas de manera directa. Al definir la función escalón unitario se hace posible el estudio de funciones escalonadas mediante los teoremas de traslación. Otros resultados importantes son la derivada de una transformada, la transformada de una derivada y el teorema de convolución que permitirán la solución de un problema de valor inicial utilizando la transformada de Laplace. Finalmente se aborda la función delta de Dirac. En el tema cuatro se utilizan los conocimientos adquiridos para modelar y resolver sistemas de ecuaciones diferenciales utilizando operadores y la transformada de Laplace. Se estudian aplicaciones en procesos simultáneos: péndulos, resortes, tanques, brazos robóticos, etc. ','Esta asignatura consolida su formación matemática como ingeniero y potencia su capacidad en el campo de las aplicaciones, aportando al perfil del ingeniero una visión clara sobre el dinamismo de la naturaleza. Además, contribuye al desarrollo de un pensamiento lógico, heurístico y algorítmico al modelar sistemas dinámicos. El curso de ecuaciones diferenciales es un campo fértil de aplicaciones ya que una ecuación diferencial describe la dinámica de un proceso; el resolverla permite predecir su comportamiento y da la posibilidad de analizar el fenómeno en condiciones distintas. Esta es la asignatura integradora en los temas de matemáticas y pueden diseñarse proyectos integradores con asignaturas que involucren sistemas dinámicos para cada una de las ingenierías. La característica más sobresaliente de esta asignatura es que en ella se aplican todos los conocimientos previos de las matemáticas.','2019-08-20 14:33:56',NULL,NULL,NULL),(11,'AEB1055','Es recomendable la realización de prácticas en todos los temas que consistan en el modelado y resolución de problemas utilizando un lenguaje de programación orientado a Objetos y orientado al desarrollo web; la entrega final de cada tema puede ser de una aplicación que refuerce los temas vistos en clase y la entrega de un proyecto integrador que contemple los conocimientos, habilidades y aptitudes adquiridas en la asignatura, este debe ser definido al final del primer tema. Las prácticas sugeridas son las siguientes:  Instalar y configurar: manejador de base de datos, servidor web y lenguaje de programación del lado servidor.  Realizar aplicaciones donde se haga el uso de archivos CSS (internos, externos y en línea).  Realizar aplicaciones en donde se haga el uso de los controles y se modifiquen sus propiedades.  Realizar aplicaciones en donde se haga el uso de paso de parámetros entre páginas web.  Realizar aplicaciones donde se manipulen los controles a través del lenguaje de programación del lado cliente.  Realizar aplicaciones en donde se lleve a cabo la validación de entrada de datos desde el lado del cliente y el lado servidor.  Realizar aplicaciones en donde se implementen mecanismos de seguridad para el acceso de información de algún origen de datos.  Realizar aplicaciones en donde se implemente Ajax.  Realizar aplicaciones en donde se apliquen librerías como son: JQuery, Mootools y Prototype.  Realizar aplicaciones en donde se apliquen los servicios web y estos puedan ser consultados de manera remota.  Realizar aplicaciones que incorporen servicios web para ubicación satelital y cartografía.  Implementar una aplicación web en una infraestructura de nube pública.',NULL,' Aplica métodos y herramientas de la ingeniería del software en el desarrollo de software aplicando estándares de calidad y productividad.  Aplica un lenguaje orientado a objetos para la solución de problemas.  Crea y aplica esquemas de bases de datos para garantizar la confiabilidad de los datos en aplicaciones para el tratamiento de información.','Desarrolla aplicaciones web dinámicas del lado cliente y del servidor, considerando la conectividad a orígenes de datos, la interconectividad entre aplicaciones y cómputo en la nube.','La asignatura está organizada en cinco temas: El primer tema, se centra en antecedentes de las aplicaciones web, su arquitectura, las tecnologías utilizadas y la forma en que se deberán planificar. El segundo, aborda los lenguajes de marcado, como lo es HTML, XML en sus versiones más recientes, de la misma forma se aborda el tema de lenguaje de presentación CSS para la creación de hojas de estilo en cascada, en donde se obtenga una comprensión de su estructura y forma de trabajar con los elementos que la integran. El tercer tema, se centra en la creación, control y manipulación de objetos utilizados por el cliente de las aplicaciones web así como la integración de diversos Frameworks disponibles. En el cuarto tema, se aborda la programación del lado del servidor en donde se logre la manipulación de objetos y el acceso a datos para la presentación de procesos dinámicos y sus resultados en una aplicación web. En el quinto tema, se trata lo relacionado al cómputo en la nube, los patrones de diseño y desarrollo, para su posterior integración con servicios web. La importancia de la asignatura se centra en conocer y desarrollar cada una de las etapas de la programación para la solución de problemas en un lenguaje de programación en ambiente web, por lo que se recomienda que el estudiante desarrolle programas demostrativos en cada tema visto en clase generando un proyecto integrador y poniendo atención en los avances de los estudiantes.','Esta asignatura aporta al perfil del egresado la capacidad para desarrollar y administrar software que apoye la productividad y competitividad de las organizaciones cumpliendo con estándares de calidad, mediante el desarrollo de aplicaciones web utilizando lenguajes de marcas, de presentación, del lado del cliente, del servidor y con la colaboración de cómputo en la nube. Es de suma importancia porque permite al estudiante concluir en un proyecto formal de desarrollo de software aplicando varias competencias adquiridas durante su trayectoria de formación, por ello se inserta en los últimos semestres. Para adquirir la competencia planteada en esta asignatura es necesario que el estudiante haya acreditado la asignatura de Programación Orientada a Objetos, Taller de Bases de Datos y Taller de Ingeniería de Software.','2019-08-20 14:33:56',NULL,NULL,NULL),(12,'AEC1008',' Buscar en internet estados financieros reales de diversas empresas para analizarlos a través de los métodos aprendidos.  Buscar en la página oficial de la Bolsa Mexicana de Valores estados financieros analizados e interpretados y elaborar un reporte donde argumente dicho análisis.',NULL,'Ninguna','Conoce, analiza e interpreta la información financiera para la toma de decisiones empresariales. ','Se organiza el programa en cinco temas, agrupando los conceptos generales de la contabilidad, hasta la elaboración de estados financieros, así como su análisis e interpretación, mediante el uso de software contable. Al inicio, se abordan las generalidades de la contabilidad y la información financiera, las formas de organización de las entidades, con la finalidad de que el estudiante comprenda los conceptos básicos de esta área. En el segundo tema se contempla la elaboración de estados financieros. Se abordan estos temas con la finalidad de que se comprenda primeramente su estructura y posteriormente los interprete para la toma de decisiones. El tercer tema contempla la teoría de la partida doble, así como las reglas del cargo y el abono con la finalidad de que al estudiante se le facilite la aplicación de los sistemas de registro que se contemplan en el siguiente tema. En los temas anteriores se trató lo relacionado con la integración de la información financiera para su análisis e interpretación mediante los métodos especificados en el último tema','Esta asignatura aporta al perfil del egresado los conocimientos básicos de contabilidad e información financiera como una herramienta para la toma de decisiones; además de ser parte fundamental para las materias afines con temas de emprendedores que serán vistas en cursos posteriores. Se dota al alumno de las habilidades para analizar, distinguir y aplicar los temas relacionados con la Gestión de Proyectos de Software, en términos de estimaciones de tiempo, costos y personal requerido, análisis de riesgo y análisis de la viabilidad del proyecto.','2019-08-20 14:33:56',NULL,NULL,NULL),(13,'AEC1034',' Análisis de señales utilizando herramientas de medición (osciloscopio, generador de señales).  Convertir una señal analógica a una señal digital.  Aplicar una herramienta de software para el análisis de la transformada de Fourier de un pulso cuadrado.  Elaborar un generador de ruido para observar los cambios que sufre la información.  Identificar visualmente los diferentes medios de transmisión.  Instalar y configurar un circuito de transmisión vía modem.  Conectar al menos dos equipos utilizando cables null-modem u otros medios de interconexión.  Utilizar un simulador para analizar las técnicas de modulación y conmutación.  Implementar electrónicamente un multiplexor.  Implementar electrónicamente un modulador.  Construir una antena para transmisión inalámbrica.',NULL,' Comprende e identifica los elementos de la electrónica básica para aplicar los conocimientos adquiridos en las prácticas de esta asignatura.  Identifica, modela y manipula sistemas dinámicos para predecir comportamientos, tomar decisiones fundamentadas y resolver problemas.  Implementar circuitos digitales utilizando circuitos integrados de distintas familias lógicas, para la construcción de unidades más complejas de procesamiento de datos.','Analiza los componentes y la funcionalidad de diferentes sistemas de comunicación para evaluar las tecnologías utilizadas actualmente como parte de la solución de un proyecto de conectividad.','En el primer tema se aborda la base conceptual necesaria para el estudio del campo de las telecomunicaciones y el impacto en su entorno. En el segundo tema se cubre la taxonomía y características de los diferentes medios de transmisión de datos. Así como las técnicas de control de flujo y manejo de errores en la transmisión. En el tercer y cuarto tema se abordan las técnicas de modulación, conmutación y multiplexación, buscando una visión de conjunto en este campo de estudio. Al tratar cada técnica se consideran aspectos relacionados con la actividad profesional, para conseguir experiencias de aprendizaje más significativas, oportunas e integradas. El quinto tema es integrador e involucra el conocimiento de los modelos de comunicación así como el análisis de dispositivos de comunicación, haciendo énfasis en su funcionalidad, componentes y normatividad. Lo cual permitirá al estudiante realizar evaluaciones de diferentes soluciones de conectividad. El docente deberá promover actividades en las que el estudiante desarrolle las competencias genéricas para el análisis de las telecomunicaciones, así como la capacidad para identificar y resolver problemas.','Esta asignatura aporta al perfil del egresado la capacidad de identificar y analizar los elementos de un sistema de comunicación para el diseño eficiente de redes. Lo trabajado en esta asignatura se aplica en el estudio de los temas: codificación, tipos de medios de transmisión, técnicas de modulación analógica y digital, conmutación y multiplexación. Para cursar esta asignatura se requiere de los fundamentos de la electrónica básica adquiridos en las asignaturas de Sistemas electrónicos para Informática y Principios eléctricos y aplicaciones digitales. Esta asignatura aporta los conocimientos y habilidades básicas en los temas de Redes de Computadoras. ','2019-08-20 14:33:56',NULL,NULL,NULL),(14,'AEC1058',' Revisar las normas de seguridad, materiales y equipos más comunes en el laboratorio de química básica.  Comprobar las propiedades de la materia: color, dureza, estado, punto de ebullición, punto de fusión, etc.  Aplicar la estequiometria a la ley de la conservación de la materia.  Cambios de estado de la materia: evaporación, sublimación, etc.  Métodos de separación de mezclas: destilación, decantación, cristalización, filtración, etc.  Determinación de elementos y compuestos a la flama.  Identificación de las propiedades periódicas de los elementos como electronegatividad, conductividad, radio iónico, etc.  Comprobar la conductividad eléctrica de los elementos.  Determinación de pH de compuestos inorgánicos.  Electrólisis del agua.  Comprobar diferentes tipos de reacciones químicas como sustitución simple y compuesta, descomposición, oxidación, síntesis, etc.',NULL,' Ninguna','Comprende la estructura de la materia y su relación con las propiedades físicas y químicas, enfocadas a sus aplicaciones a los dispositivos eléctricos y electrónicos, así como a las técnicas requeridas para la construcción de equipos o sistemas electrónicos.','El programa de la asignatura de Química se organiza en cuatro temas, en los cuales se incluyen aspectos teóricos y de aplicación. En el primer tema se estudia de qué está compuesta la materia haciendo énfasis en la estructura atómica y empleada como antecedente para el estudio de la tabla periódica. En el tema dos se estudian los elementos químicos y su clasificación, así como el impacto que estos tienen en el ambiente; haciendo énfasis en la estructura atómica como antecedente para el estudio de la tabla periódica. El tercer tema, enlaces químicos, se enfoca en los tipos de enlaces y las propiedades de los compuestos químicos para entender cómo se forman las moléculas y los compuestos. Se debe de poner especial interés en los elementos de interés industrial, así como a procesos eléctricos y electrónicos. En el cuarto tema se estudian las diversas reacciones químicas, así como los cálculos estequiométricos con reacciones químicas, para comprender la formación de compuestos y las diferentes aplicaciones de la electroquímica y nanoquímica. Es importante que el estudiante valore las actividades que realiza, para que desarrolle hábitos de estudio y de trabajo que le permitan adquirir aspectos formativos tales como: la curiosidad, puntualidad, flexibilidad, tenacidad, autonomía, el interés y entusiasmo. El docente de Química debe mostrar y objetivar su conocimiento y experiencia en el área para construir escenarios de aprendizaje significativo en los estudiantes que inician su formación profesional. El docente enfatiza el desarrollo de las actividades de aprendizaje de esta asignatura a fin de que ellas refuercen los aspectos formativos del estudiante a sus ideas y enfoques, así como el respeto y la tolerancia hacia sus compañeros y docentes, sin dejar de contemplar también la responsabilidad social y el respeto al medio ambiente.','Esta asignatura aporta al perfil del Ingeniero los elementos necesarios de fenómenos químicos y eléctricos involucrados en el comportamiento de diferentes tipos de materiales, con los cuales pueda ayudar a tomar decisiones pertinentes ante las situaciones que se presenten en los diferentes procesos químicos dados en la industria; ayudando a fortalecer la seguridad e higiene, así como el cuidado al medio ambiente. Asimismo, le proporciona los elementos necesarios para predecir el comportamiento de las reacciones para poder optimizar los materiales obtenidos. Al abordar los contenidos de este programa, se pretende que el estudiante integre sus conocimientos con los de otras disciplinas, siendo las bases para la asignatura de tecnología de los materiales en ingeniería eléctrica y electromecánica; la asignatura de ciencia e ingeniería de materiales en ingeniería mecatrónica; así como la asignatura de ingeniería de materiales en ingeniería aeronáutica que se encuentran vinculadas estrechamente con su desempeño profesional capacitándole para hacer un uso sustentable de los recursos naturales. ','2019-08-20 14:33:56',NULL,NULL,NULL),(15,'AEC1061',' Realizar una práctica de monitoreo de memoria de un proceso.  Realizar una práctica para la administración de entrada/salida.  Realizar una práctica de introducción de una nueva llamada al sistema en el kernel.  Realizar una práctica de gestión de archivos (creación, lectura, escritura e identificación de permisos).  Desarrollar una práctica de recompilación del núcleo de un sistema operativo.  Elaborar algunas llamadas al sistema y distinguir el mecanismo de las interrupciones en el contexto de los Procesos.  Realizar una práctica de simulación total del sistema operativo.',NULL,' Selecciona, diseña, implementa y manipula estructuras de datos que optimicen el rendimiento de aplicaciones de software, considerando la complejidad de los algoritmos utilizados.  Comprende las distintas arquitecturas de computadoras, así como las filosofías de diseño para desarrollar aplicaciones compatibles con la tecnología más avanzada en sistemas de cómputo','Aplica los paradigmas de diseño de los sistemas operativos actuales y emergentes, para el manejo de los recursos del sistema.','Los conjuntos de conocimientos organizados en esta asignatura se encuentran divididos en seis temas, mismas que pretenden guiar a los estudiantes en la comprensión de los fundamentos teóricos sobre los sistemas operativos y lo orientan capacitándolo para analizar y construir procesos que realicen sus actividades de forma correcta, así como la capacidad de desarrollar elementos que se integren al software de sistema (módulos, drivers, etc.). En el tema uno se encuentran los contenidos básicos: los conceptos fundamentales y terminologías asociadas al sistema operativo. En el tema dos se establecen los conceptos que se relacionan con el análisis, diseño y desarrollo de procesos, así como el manejo de comunicación y sincronización entre procesos, empleando técnicas y métodos disponibles tanto en el sistema operativo como las disponibles en los lenguajes de programación utilizados. Se analizan las técnicas que emplea el sistema operativo para la planificación y ejecución de tareas en el mismo. En el tema tres, el estudiante adquiere los conocimientos necesarios para comprender, como el sistema operativo administra la memoria, a su vez, comprende las técnicas que emplea el sistema operativo para controlar la memoria real y la memoria virtual. En el tema cuatro se orienta al estudiante, sobre como el sistema operativo gestiona los dispositivos de entrada/salida y la capacidad de evolución e integración de módulos (drivers) que controlan dichos dispositivos. En el tema cinco se orienta al estudiante sobre como están estructurados los sistemas de archivos, sus características, ventajas y desventajas. Además, se presentan los conceptos y técnicas que emplea el sistema operativo, para acceder al sistema de archivos. En el tema seis se proporcionan los conocimientos de seguridad indispensables que emplea el sistema operativo en la protección orientada a los procesos, memoria y archivos, así como control de usuarios y permisos de acceso a diferentes recursos.','La asignatura aporta al perfil del egresado, los conocimientos y habilidades necesarios para el uso y administración de sistemas operativos, así como para diseñar, configurar y administrar redes de computadoras para crear soluciones de conectividad en la organización, aplicando las normas y estándares vigentes. Los sistemas operativos son la plataforma base a través de la cual el software puede funcionar y los usuarios pueden manipular las computadoras. Por este motivo, es importante que el estudiante conozca a detalle el diseño de un sistema operativo para entender su funcionamiento. Ésta asignatura se requiere de las competencias adquiridas en asignaturas que contengan temas como: estructura y organización de datos, arquitectura de computadoras, computación distribuida y virtualización de sistemas operativos.','2019-08-20 14:33:56',NULL,NULL,NULL),(16,'AED1026',' Desarrollar una aplicación donde se utilicen TDA para comprobar el comportamiento estático y dinámico.  Desarrollar una aplicación que resuelva mediante la técnica de recursividad un problema específico.  Desarrollar una aplicación que simule una lista de espera para la asignación de mesas en un restaurante  Desarrollar una aplicación para simular las llamadas a funciones utilizando una pila.  Desarrollar una aplicación para simular el almacenamiento de las páginas visitadas en un navegador de internet haciendo uso del concepto de pilas.  Desarrollar una aplicación que simule la salida de aviones en un aeropuerto utilizando colas de prioridad.  Desarrollar una aplicación utilizando los conceptos de árboles binarios  Implementar el algoritmo “El viajero” mediante (camino mínimo) grafos.  Construir un grafo ponderado que modele una sección de su Estado de origen. Utilice el algoritmo de Dijkstra para determinar el camino más corto, desde el vértice inicial hasta el último vértice.  Elaborar un cuadro comparativo de los registros del tiempo empleado por cada método de ordenamiento para datos en orden aleatorio, ordenados y orden inverso.  Aplicar los métodos de búsqueda a un conjunto de n datos y determinar su eficiencia.  Elaborar su propio método de búsqueda  Realizar dos cuadros comparativos que reflejen la complejidad en el tiempo y en el espacio de los métodos de ordenamiento y búsqueda.',NULL,' Comprende y aplica los conceptos básicos de lógica matemática, relaciones, grafos y árboles para aplicarlos a modelos que resuelvan problemas computacionales.  Aplica un lenguaje orientado a objetos para la solución de problemas. ','Conoce, comprende y aplica eficientemente estructuras de datos, métodos de ordenamiento y búsqueda para la optimización del rendimiento de soluciones a problemas del mundo real.','Esta asignatura está organizada en seis temas. En ella, se distinguen claramente dos apartados: primero, la implementación de las estructuras de datos lineales y no lineales a través del manejo de memoria estática y dinámica; segundo, el análisis de los métodos de ordenamiento de datos internos para considerar su eficiencia en la aplicación de soluciones computacionales. Se inicia el curso con el tratamiento de los tipos de datos abstractos. Para estudiar cada tipo de dato abstracto, es necesario aplicar la modularidad, analizando la forma en que se gestiona la memoria para almacenarlos. Se realiza además un estudio sobre el análisis de la complejidad y eficiencia de los algoritmos, lo cual permitirá determinar cuáles son los algoritmos más eficientes para solucionar un problema. El segundo tema aborda la definición, mecanismos y características de la recursividad, aplicando éstos a la creación de procedimientos, así como el análisis de las ventajas y desventajas de estas soluciones recursivas. Los estudiantes identifican dichas características de la recursividad y ejemplifican el caso de las Torres de Hanoi, Serie de Fibonacci y Factorial entre otros para comprender mejor el mecanismo recursivo. El tercer tema trata sobre las estructuras lineales: listas, pilas y colas. La representación de pilas y colas puede darse a través de vectores (memoria estática) o apuntadores y/o referencias (memoria dinámica). Se analizan también otras variantes como el caso de colas circulares, colas de prioridad, listas simples y doblemente enlazadas. Los estudiantes desarrollan aplicaciones para resolver problemas que requieran de estos tipos de estructuras. El cuarto tema se refiere a las estructuras no lineales conocidas como árboles y grafos que permiten dar solución a problemas más complejos a través de la recursividad y la utilización de memoria dinámica. Se analizan los recorridos típicos de árboles binarios, búsquedas, entre otros, así como el algoritmo del viajero para operaciones con grafos. En el quinto tema, los estudiantes identifican la metodología de cada algoritmo de ordenamiento interno (memoria principal) y externos (memoria secundaria) midiendo su comportamiento en condiciones similares. Al finalizar la asignatura se habrá adquirido las bases para evaluar e implementar soluciones por medio de estructuras.','Esta asignatura proporciona al perfil del egresado habilidades para la selección y aplicación de algoritmos y las estructuras de datos en el desarrollo e implementación de programas que permitan la solución de problemas. La relevancia de la asignatura es que el alumno identifique claramente la forma en cómo se estructuran y organizan los datos internamente, para poder hacerlos más eficientes en cuanto a la administración del tiempo de procesador y el uso de la memoria. Para cursar esta asignatura se requiere tener habilidades básicas de programación e interpretación de algoritmos y tener el dominio del paradigma orientado a objetos. Además, debe de conocer y manejar los conceptos generales de la lógica matemática, relaciones y la teoría de grafos, por esta razón se encuentra ubicada para ser cursada después de Fundamentos de Programación y de Programación Orientada a Objetos y Matemáticas Discretas, a su vez, esta asignatura es el pilar fundamental en el análisis, diseño y desarrollo de aplicaciones de software de bajo y alto nivel. ','2019-08-20 14:33:56',NULL,NULL,NULL),(17,'AED1285','Elaborar diagrama de flujo, pseudocódigo y programa a problemas planteados que impliquen entrada y salida de datos, que impliquen declaración de variables y uso de expresiones aritméticas.  Solucionar problemas planteados en la clase a través de diagramas de flujo y pseudocódigo y codificarlos para comprobar su funcionamiento.  Resolver ejercicios que involucren diferentes expresiones algebraicas que ilustren la precedencia de los operadores aritméticos, utilizar un programa sugerido por el docente para comprobar los resultados obtenidos.  En un lenguaje de programación, definir y manipular diferentes tipos de datos y comprobar sus características a través de un programa asignado por el docente.  Elaborar ejercicios que impliquen estructuras secuenciales y selectivas entregando pseudocódigo, diagrama de flujo y programa.  Elaborar ejercicios que impliquen las estructuras iterativas soportadas por un lenguaje de programación, entregando pseudocódigo, diagrama de flujo y programa.  Elaborar ejercicios que impliquen organización de datos por medio de la implementación de arreglos entregando diagrama de flujo, pseudocódigo y programa.  Elaborar ejercicios que impliquen organización de datos por medio de la implementación estructuras o registros entregando diagrama de flujo, pseudocódigo y programa.  Elaborar ejercicios que impliquen la implementación de funciones entregando diagrama de flujo, pseudocódigo y programa.',NULL,' Ninguna','Aplica algoritmos y lenguajes de programación para diseñar e implementar soluciones a problemáticas del entorno.','La asignatura se organiza en cinco temas donde se abordan los conceptos esenciales del diseño algorítmico y de la programación, así como el uso de entornos de desarrollo. En el primer tema, se estudian los conceptos básicos para introducir al estudiante en la programación con la finalidad de obtener el fundamento conceptual para el análisis, diseño y desarrollo de algoritmos, así como los primeros pasos al mundo de la programación a través de ejercicios dirigidos. En este tema es fundamental propiciar el pensamiento lógico del estudiante. El segundo tema, tiene la finalidad de propiciar que el estudiante adquiera los conocimientos necesarios para diseñar e implementar soluciones en un lenguaje de programación y resolver problemas del contexto. El tercer tema, tiene como objetivo que se comprenda, seleccione e implemente la estructura de control adecuada para la resolución de un problema específico. El cuarto tema, se buscará propiciar la capacidad de aplicar e implementar los arreglos para proporcionar un medio eficaz en la organización de datos para la resolución de problemas reales. El quinto tema tiene como finalidad que el estudiante implemente el diseño de bloques de códigos reutilizables, que optimizan la funcionalidad y reducen la complejidad de los programas desarrollados. Para cada uno de los temas se sugiere que el docente promueva la práctica a través de herramientas computacionales que propicien la habilidad en el desarrollo de programas.','Esta asignatura aporta al perfil del egresado, la capacidad para desarrollar un pensamiento lógico a través del diseño de algoritmos utilizando herramientas de programación para el desarrollo de aplicaciones computacionales que resuelvan problemas reales. Está diseñada para el logro de competencias específicas y genéricas dirigidas al aprendizaje de los conceptos básicos de la programación, siendo capaz de aplicar expresiones aritméticas y lógicas en un lenguaje de programación; así como el uso y funcionamiento de las estructuras secuenciales, selectivas y repetitivas, como también la organización de los datos, además de la declaración e implementación de funciones para construir y desarrollar aplicaciones de software que requieran dichas estructuras. Se relaciona con todas aquellas asignaturas en donde se apliquen metodologías de programación y desarrollo de software de las carreras de Ingeniería en Sistemas Computacionales e Ingeniería en Animación Digital y Efectos Visuales.','2019-08-20 14:33:56',NULL,NULL,NULL),(18,'AED1286',' Crear un programa que instancie y use un objeto predefinido por el lenguaje para practicar el envío de mensajes, el uso de parámetros y la recepción de su respuesta. Sugerencia: objeto de clase String.  Implementar clases para instanciar objetos que modelen sus contrapartes de la vida real usando tipos de datos simples y objetos como parámetros y valores de retorno, así como métodos sin valores de retorno.  Intercambiar clases de objetos entre compañeros para usar sus miembros con valores o situaciones erróneas que evidencien la necesidad de protegerlos con modificadores de acceso. Modificar el código fuente aplicando los distintos niveles de acceso para experimentar y descubrir (aprender) el impacto de cada uno de ellos.  Implementar la clase Persona con los atributos nombre y edad; un constructor, un destructor, y al menos el método crecer para mapear el ciclo de vida de una persona con el de un objeto.  Implementar la clase Calculadora que realice al menos las cuatro operaciones básicas de la aritmética sobrecargando métodos para cada tipo de dato numérico del lenguaje de los parámetros.  Implementar la clase Matriz que sobrecargue los operadores +, -, * y / para este tipo de dato definido por el usuario.  Programar una aplicación sobre figuras geométricas que implemente la clase base FiguraGeometrica de la cual hereden sus miembros las clases derivadas y que éstas solo especialicen sus características o comportamientos.  Implementar constructores y destructores a las clases base y derivadas de la aplicación sobre figuras geométricas para experimentar y comprender su funcionamiento cuando está implicada la herencia.  Modificar la clase FiguraGeometrica para convertirla en abstracta y programar al menos un método abstracto que todas las clases derivadas deberán implementar con su propio comportamiento.  Programar la interfaz Vehiculo con un conjunto de métodos abstractos que todo vehículo de la vida real debería tener. Programar varias clases que implementen la interfaz anterior y definan el comportamiento particular de sus métodos.  Especializar la interfaz Vehiculo en al menos dos subinterfaces (VehiculoTerreste o VehiculoAereo) que agreguen comportamientos abstractos que las clases deberán implementar.  Programar clases que generen excepciones comunes como referencias nulas o desbordamientos numéricos para estudiar su naturaleza, comportamiento, prevención y lanzamiento.',NULL,' Aplica algoritmos y lenguajes de programación para diseñar e implementar soluciones a problemáticas del entorno.','Aplica la programación orientada a objetos para resolver problemas reales y de ingeniería.','El enfoque sugerido para la asignatura requiere que las actividades prácticas promuevan el desarrollo de habilidades para la resolución de problemas, tales como: identificación, manejo, control de variables, datos relevantes, planteamiento de hipótesis, trabajo en equipo, asimismo, propicien procesos intelectuales como inducción-deducción y análisis-síntesis con la intención de generar una actividad intelectual compleja; las actividades teóricas se han descrito como actividades previas al tratamiento práctico de los temas. En las actividades prácticas sugeridas, es conveniente que el profesor sólo guie al estudiante en la construcción de su conocimiento. En el primer tema se presentan los conceptos de la programación orientada a objetos, teniendo la intención de introducir al estudiante en los elementos del modelo de objetos, así como el uso básico del lenguaje de modelado unificado. El segundo tema se centra en la definición e implementación de clases y objetos permitiendo al estudiante adquirir las competencias fundamentales de la programación orientada a objetos. El tercer tema tiene como propósito la creación de objetos que incorporen propiedades y métodos de otros objetos, construyéndolos a partir de éstos sin necesidad de reescribirlo todo. El cuarto tema trata una de las características fundamentales de la programación orientada a objetos: el polimorfismo, que permite reutilizar métodos con el mismo nombre, pero con relación a la clase a la que pertenece cada uno, con comportamientos diferentes. En el quinto tema se tratan situaciones excepcionales que se presentan en tiempo de ejecución. En el tema seis, se aplica las operaciones necesarias para el manejo de archivos de texto y binarios, temas que se utilizarán en materias posteriores.','Esta asignatura aporta al perfil del Ingeniero la capacidad de analizar, desarrollar, implementar y administrar software de aplicación orientado a objetos, cumpliendo con estándares de calidad, con el fin de apoyar la productividad y competitividad de las organizaciones. Esta materia es muy importante porque proporciona soporte a otras, más directamente vinculadas con desempeños profesionales; se ubica en el segundo semestre de la trayectoria escolar. Proporciona al estudiante las competencias necesarias para abordar el estudio de cualquier lenguaje orientado a objetos, metodología de análisis y diseño orientado a objetos, de los sistemas gestores de bases de datos, y en general de cualquier materia basada en el modelo orientado a objetos. Para cursarla se requiere de los conocimientos y habilidades adquiridas en Fundamentos de la Programación.','2019-08-20 14:33:56',NULL,NULL,NULL),(19,'AEF1031',' Diseñar la base de datos en el modelo E-R del planteamiento de un problema real  Convertir el esquema conceptual de base de datos del modelo E-R al modelo relacional  Diseñar la base de datos en el modelo relacional y aplicar el proceso de normalización a un problema real.  Crear el esquema general de la base de datos a partir del diseño conceptual  Resolver ejercicios de consulta a una base de datos aplicando los operadores del álgebra relacional básica y extendida.  Aplicar las cláusulas del lenguaje SQL para realizar operaciones básicas (INSERT, UPDATE, DELETE Y SELECT) sobre la base de datos. ',NULL,' Comprende y aplica los conceptos básicos de lógica matemática, conjuntos y relaciones para aplicarlos en modelos que resuelvan problemas computacionales','Analiza requerimientos y diseña bases de datos para generar soluciones al tratamiento de información basándose en modelos y estándares.','El tema uno proporciona al estudiante el sustento teórico de las bases de datos, como son los objetivos, los diferentes modelos, la clasificación, las áreas de aplicación y arquitecturas que sirven de fundamento para que el estudiante incursione en el área de conocimiento de base de datos. Se recomienda que, en el tema de Arquitectura de la base de datos, se aborden los temas de niveles de abstracción, tipos de usuarios y tipos de lenguajes. En el tema dos se estudia el proceso de diseño conceptual de las bases de datos aplicando el modelo Entidad – Relación (E-R), como una herramienta para modelar los esquemas en una forma consistente y estandarizada. El docente debe promover que el estudiante elija problemas reales y efectúe un análisis de las reglas de negocio antes de elaborar los diagramas E-R. La mayoría de los sistemas gestores de bases de datos (SGBD) están basados en el modelo relacional, por lo que en el tema tres, se aborda este modelo, en el que se conoce y comprende su estructura, elementos que lo conforman y sus reglas de integridad. El docente deberá propiciar que el estudiante identifique la relación que existe entre el modelo E-R y el modelo relacional. En el tema cuatro se estudian las formas normales de base de datos que garantizan la integridad de la base de datos y evitan la redundancia de información, contando con la posibilidad de ahondar en otras formas normales como la cuarta y quinta. Se recomienda que el docente proponga ejemplos de entidades para aplicar las reglas de normalización y demostrar claramente la diferencia o diferencias de entidades no normalizadas y normalizadas. En el tema cinco se conoce y comprende el uso y aplicación del álgebra relacional como lenguaje de consulta formal a base de datos, los operadores básicos y los operadores del álgebra relacional extendida. Se sugiere que el docente realice planteamientos de consulta a base de datos. El tema seis contempla aplicar los comandos básicos del Lenguaje de Definición y de Manipulación de Datos, haciendo uso de las herramientas del Sistema Gestor de Base de Datos, entre los cuales se deben considerar la creación de base de datos, creación de tablas y definición de llaves primarias y foráneas, la manipulación y consulta de la base de datos por medio de las operaciones de inserción, eliminación, modificación y consulta de datos.','Esta asignatura aporta al perfil del egresado la capacidad para analizar, diseñar y gestionar sistemas de bases de datos conforme a los requerimientos del entorno para garantizar la integridad, disponibilidad y confidencialidad de la información, así como para desarrollar e implementar sistemas de información para la gestión de procesos y apoyo en la toma de decisiones, utilizando metodologías basadas en estándares internacionales. Es importante porque el estudiante adquiere las competencias en el análisis y el diseño de base de datos, que le permitirán desarrollar aplicaciones para sistemas de información robustos que ofrezcan garantía en el manejo de la información. Es conveniente mencionar que hoy en día la información forma parte del capital intangible de las organizaciones y cada vez se demandan sistemas de información que garanticen la integridad y seguridad de la misma. La asignatura propicia el dominio de modelos de diseño de base de datos basados en reglas de normalización, de integridad y de seguridad. Esta asignatura requiere como competencia previa que el estudiante comprenda y aplique los conceptos y propiedades de álgebra de conjuntos, relaciones y álgebra booleana adquiridas en matemáticas discretas. Se relaciona con asignaturas posteriores donde se apliquen bases de datos y desarrollen aplicaciones para el tratamiento de información.','2019-08-20 14:33:56',NULL,NULL,NULL),(20,'AEF1041',' Elaborar a través de una hoja electrónica de cálculo un proceso para la conversión y realización de operaciones aritméticas básicas de cantidades en diferentes bases numéricas.  Buscar en Internet software que permita llevar a cabo ejercicios de conversión, operaciones matemáticas básicas (suma, resta, multiplicación y división) en diferentes sistemas numéricos, utilizarlo para resolver problemas planteados en clase.  Utilizando herramientas computacionales disponibles para el estudiante, representar el comportamiento de las operaciones con conjuntos mediante diagramas de Venn.  Elaborar, con ayuda de una hoja electrónica de cálculo, un proceso para llevar a cabo la evaluación de una proposición compuesta mediante tablas de verdad.  Utilizando un simulador, verificar el comportamiento de una expresión proposicional.  Utilización de diagramas de Venn para la determinación de razonamiento.  Construir un circuito usando compuertas lógicas, implementarlas utilizando software para la construcción de circuitos electrónicos.  Utilizando software disponible para el estudiante, determinar las propiedades de una relación, aplicar cerraduras para lograr que una relación sea de equivalencia y determinar el diagrama de Hasse de relaciones de orden parcial.  Representar un grafo utilizando una hoja electrónica de cálculo, y obtener el número de caminos de longitud n mediante el cálculo correspondiente.  Mediante software disponible para el estudiante, determinar características, propiedades y recorridos importantes en un grafo.  Realizar el recorrido de un árbol que represente una expresión matemática y obtener su valor usando para ello el concepto de pila para almacenar resultados.  Crear un árbol binario a partir de una lista de números aleatorios y llevar a cabo búsquedas y ordenamiento de dichos datos.  Usar software disponible para el estudiante, con el cual se simule el recorrido, búsqueda de información, representación y evaluación de un árbol.',NULL,' Ninguna','Comprende y aplica los conceptos básicos de lógica matemática, relaciones, grafos y árboles para aplicarlos a modelos que resuelvan problemas computacionales','La asignatura se organiza en seis temas de aprendizaje. Los dos primeros temas abordan conceptos básicos que serán utilizados a lo largo de curso, mientras que los cuatro restantes analizan contenidos propios del área de las ciencias computacionales. El primer tema se revisan los procedimientos para realizar la conversión entre diferentes bases numéricas, examinando las operaciones básicas: suma, resta, multiplicación y división, buscando que el estudiante analice y genere un procedimiento general de conversión entre bases numéricas. Los conceptos básicos de conjuntos y relaciones son revisados en el tema dos de la asignatura, en ella se analiza las características, propiedades y operaciones entre conjuntos, mismos que serán validados en los temas de álgebra booleana y lógica matemática. Por otro lado, los tópicos concernientes a las relaciones se abordan por medio del conocimiento del producto cartesiano, enfatizando en las relaciones de tipo binario y su representación. Adicionalmente se revisan las propiedades, relaciones de equivalencia, órdenes parciales y funciones como casos particulares de relaciones. Por su parte el tema tres, hace un análisis de la lógica proposicional con la finalidad de llegar a procesos de demostración formal, así mismo se examinan los conceptos de lógica de predicados y algebra declarativa. El concepto de inducción matemática es abordado en forma particular dada su aplicación en proceso de análisis y demostración de modelos matemáticos. En el tema cuatro, se estudian los teoremas y postulados con operaciones básicas en la simplificación de expresiones booleanas. El penúltimo tema de la asignatura, proporciona los conocimientos relacionados con la Teoría de grafos: conceptos básicos, representación, clasificación; así como los algoritmos de recorrido y búsqueda son analizados para su posterior aplicación. Finalmente, el tema seis Árboles y redes son revisados como un caso especial de grafos. Los contenidos se abordarán de manera secuencial como los marca el programa, buscando la aplicación del conocimiento, basado en actividades que promuevan en el estudiante el desarrollo de sus habilidades para trabajar en equipo y llevar el conocimiento a la práctica, buscando con ello que integre ese saber a su experiencia personal mediante un aprendizaje significativo. La extensión y profundidad de los temas será la suficiente para garantizar que el estudiante logre las competencias señaladas oportunamente.','Esta asignatura aporta al perfil del egresado los conocimientos lógico-matemáticos para entender, inferir, aplicar y desarrollar modelos matemáticos tendientes a resolver problemas en el área de las ciencias computacionales. Es el soporte para un conjunto de asignaturas que se encuentran vinculadas directamente con las competencias profesionales que se desarrollarán, por lo que se incluye en los primeros semestres de la trayectoria escolar. Aporta conocimientos a las asignaturas de Estructura de Datos y Redes de Computadoras con los conceptos básicos de Grafos y Árboles','2019-08-20 14:33:56',NULL,NULL,NULL),(21,'AEF1052',' Realizar una visita de campo para obtener datos.    Representar los datos mediante histogramas y analizar las medidas de tendencia central y su dispersión, utilizando TIC’s.  Determinar las probabilidades de eventos simples y espacios muestrales mediante el uso de juegos de azar.  Comprobar el Teorema de Bayes mediante eventos simples.  Resolver problemas de las diferentes distribuciones muestrales.  Elaborar sus gráficos y comprobar los resultados mediante el uso de TIC’s.  Realizar una visita de campo para obtener datos.  Realizar análisis de regresión lineal en procesos.  Establecer la relación entre variables seleccionadas, obtener el modelo de regresión lineal y analizar su comportamiento con el uso de TIC’s.  Resolver problemas de las diferentes distribuciones muestrales, estimación y prueba de hipótesis.  Desarrollo por equipos de trabajo con los estudiantes de la colección de una muestra de datos grande, para su análisis, aplicando las técnicas y métodos de trabajo desarrollados a lo largo del curso y su presentación por avances para cada tema. TIC’s propuestos a utilizar:  Microsoft Excel  Statgraphics (www.statgraphics.com)  Minitab.  SPSS  Softwares Matemáticos: Mathcad, Maple, Scientific Workplace, Mathematica, Matlab.',NULL,'Conoce la teoría de conjuntos para definir el espacio muestral. Resuelve y grafica funciones algebraicas para interpretar su comportamiento. Calcula integrales definidas para determinar áreas bajo la curva.','Aplica los conceptos de la teoría de la probabilidad y estadística para organizar, clasificar, analizar e interpretar datos para la toma decisiones en aplicaciones de ingeniería biomédica, en computación y comunicaciones.','La asignatura se encuentra dividida en cinco temas. Los dos primeros enfocados al estudio formal de la probabilidad y los tres siguientes a la estadística propiamente. El primer tema agrupa los contenidos conceptuales de la estadística descriptiva, identificando las diferentes medidas de tendencia central y de dispersión, de igual forma se abarca la distribución de frecuencias, gráficos estadísticos básicos y las técnicas de agrupación de datos para interpretar los valores esperados. Los conceptos de distribución de frecuencia y el análisis de las técnicas de agrupación de datos y muestreo son fortalecidos con la generación de histogramas, analizando sus diferencias y aplicaciones en situaciones específicas, especialmente en el área de las ciencias computacionales. En el segundo tema se revisan los conceptos básicos de probabilidad, como primera parte se abordan las técnicas de conteo los principios aditivo y de multiplicación para determinar la forma en que podrá llevarse a cabo una serie de experimentos. En la segunda parte se analizan las probabilidades con técnicas de conteo, la probabilidad condicional, la ley multiplicativa y los eventos independientes. En el tema tres se estudian de variables aleatorias en las que se distingue entre variables discretas y continuas. El estudiante las utilizará para definir en un experimento el tipo de resultados de acuerdo a los experimentos que esté realizando de procesos biomédicos, computación y comunicaciones. Las distribuciones de probabilidad del tema cuatro se trata del comportamiento de la variable aleatoria relacionada con su probabilidad. Aquí se resuelven problemas que conducen a la toma de decisiones en el ámbito agropecuario estimando el nivel de incertidumbre. Se revisan las distribuciones: binomial, hipergeométrica y de Poisson. Se analiza en especial la distribución normal: ecuación, gráficas, tablas y aplicaciones. Finalmente se revisan la distribución T-student, Chi cuadrada y F. El tema cinco introduce al estudiante al análisis de las relaciones entre variables, la aplicación de la teoría de mínimos cuadrados y el modelo matemático resultante del caso de estudio y sus límites de validez. El último tema de Estadística Aplicada es el más importante y es la parte fundamental de la estadística que comienza con el muestreo para después estimar el tamaño de la muestra definitiva y poder realizar una prueba estadística.','Esta asignatura aporta al perfil del Ingeniero en las áreas referentes a la computación, comunicaciones y de Ingeniería Biomédica las competencias que le permitan entender, aplicar y desarrollar modelos matemáticos utilizando técnicas de probabilidad y estadística para el análisis de información y la toma de decisiones en las diferentes áreas de las ciencias computacionales. La asignatura se encuentra ubicada al principio de la carrera. Probabilidad y Estadística consiste en los conceptos básicos de la teoría de la probabilidad y la estadística descriptiva de datos agrupados y no agrupados. Se enseña como razonar de manera lógica la toma decisiones en presencia de incertidumbre y variación. El programa de este curso incluye el estudio y aplicación de las técnicas de la Estadística, aporta los conceptos y métodos de Probabilidad, modela fenómenos aleatorios, resuelve problemas reales, hace inferencias, respalda la toma de decisiones, estudia variables aleatorias, tanto de tipo discreto como de tipo continuo por lo que apoya a las asignaturas de Formulación y Evaluación de Proyectos. Probabilidad y Estadística provee los conocimientos básicos sobre conceptos de probabilidad y pruebas estadísticas para la asignatura de Simulación, para la asignatura de Investigación de operaciones los temas de estadística descriptiva y distribuciones de probabilidad. Para la asignatura de Matemáticas para la Toma de Decisiones los temas de probabilidad y estadística le dan la introducción a teoría de inventarios. Por lo que se pueden desarrollar proyectos integradores con cualquiera de esas asignaturas.','2019-08-20 14:33:56',NULL,NULL,NULL),(22,'DAD1801',NULL,NULL,NULL,NULL,NULL,NULL,'2019-08-20 14:33:56',NULL,NULL,NULL),(23,'DAD1803',NULL,NULL,NULL,NULL,NULL,NULL,'2019-08-20 14:33:56',NULL,NULL,NULL),(24,'DAD1804',NULL,NULL,NULL,NULL,NULL,NULL,'2019-08-20 14:33:56',NULL,NULL,NULL),(25,'DAD1805',NULL,NULL,NULL,NULL,NULL,NULL,'2019-08-20 14:33:56',NULL,NULL,NULL),(26,'IAD1802',NULL,NULL,NULL,NULL,NULL,NULL,'2019-08-20 14:33:56',NULL,NULL,NULL),(27,'SCA1002',' Verificar el estado de dispositivos de red usando protocolos de administración.  Crear cuentas y perfiles de acceso.  Configurar bitácoras de acceso y uso de recursos en diferentes elementos de red.  Utilizar un analizador de protocolos para verificar el estado del tráfico de una red en funcionamiento.  Instalar un sistema de monitoreo basado en un protocolo de administración de red.  Habilitar un programador de tareas para generar avisos ante eventos predefinidos.  El estudiante instalará un sistema operativo de red configurando su conectividad TCP/IP, así como los servicios que este provea como por ejemplo, el servicio Web, correo electrónico, conexión remota, transferencia de archivos, sistemas de archivos en red, DHCP.  Instalación de una entidad emisora de certificados, creación de firmas digitales.  Instalación de firewalls, proxys, filtros de contenido.  El estudiante configurará un sistema de cuotas que administre el uso de espacio en disco por parte de los usuarios que en el sistema él haya creado.  Utilizar algoritmos para cálculo de ancho de banda.',NULL,'Diseña y elabora un proyecto de cableado estructurado aplicando normas y estándares vigentes para la solución de problemas de conectividad.','Configura y administra servicios de red para el uso eficiente y confiable de la infraestructura tecnológica de la organización.','La asignatura debe ser abordada desde un enfoque práctico, aplicando los atributos funcionales de la administración de redes a la implementación de servicios, monitoreo, administración de la configuración y desempeño para la resolución de casos diseñados para simular situaciones reales con herramientas de software. Se instalarán y configurarán diferentes servicios de red, monitoreando y analizando el tráfico que se genera con su uso. Además de implementar mecanismos básicos de seguridad física y lógica. Se debe privilegiar el uso de diferentes plataformas en el desarrollo de las prácticas de la materia, de tal suerte que esta aporte a la capacidad del futuro ingeniero de integrar soluciones con diferentes tecnologías, plataformas, dispositivos y elementos sobre los cuales ésta se sustenta. Se sugiere que las prácticas se desarrollen de manera cooperativa y colaborativa para incentivar el desarrollo de sus competencias interpersonales, así como la capacidad de resolución de problemas ante situaciones que se equiparen a la realidad encontrada en el mercado laboral. En el transcurso de las actividades programadas es relevante que el estudiante se desenvuelva de manera proactiva y responsable; de igual manera, que aprecie la importancia del conocimiento y los hábitos de trabajo; desarrolle la precisión y la curiosidad, la puntualidad, el entusiasmo y el interés, la tenacidad, la flexibilidad, la autonomía y el trabajo en equipo.','Esta asignatura integra los conocimientos y habilidades para soportar y mantener los servicios y recursos de una red; implementa políticas de seguridad con el propósito de mejorar la fiabilidad y el desempeño de la misma. Se compone de cuatro temas, el primero está orientado a la comprensión de las funciones de la administración de redes para aplicarlas en el aseguramiento y optimización del desempeño de las mismas. El segundo tema comprende la instalación, configuración y administración diferentes servicios de red para satisfacer las necesidades de las organizaciones. El tercer y cuarto tema se enfoca en el dominio de herramientas de análisis y monitoreo de redes para medir su desempeño y fiabilidad bajo la implementación de métricas de seguridad vigentes. Esta asignatura aporta al perfil del Ingeniero en Sistemas Computacionales las siguientes habilidades:  Coordina y participa en equipos multidisciplinarios para la aplicación de soluciones innovadoras en diferentes contextos  Desarrolla y administra software para apoyar la productividad y competitividad de las organizaciones cumpliendo con estándares de calidad  Evalúa tecnologías de hardware para soportar aplicaciones de manera efectiva  Detecta áreas de oportunidad empleando una visión empresarial para crear proyectos aplicando las Tecnologías de la Información y Comunicación  Diseña, configura y administra redes de computadoras para crear soluciones de conectividad en la organización, aplicando las normas y estándares vigentes Integra la capacidad de conocer, analizar y aplicar los diversos componentes tanto físicos como lógicos involucrados en la administración y configuración de una red local, mediante el análisis de los fundamentos, estándares y normas vigentes.','2019-08-20 14:33:56',NULL,NULL,NULL),(28,'SCA1025','Tema 1  Instalación de un SGBD.  Creación y modificación de esquemas de base de datos Tema 2  Manipulación de registros.  Creación de consultas mediante un problemario  Solución de problemas mediante instrucciones DML. Tema 3  Mecanismos de seguridad; creación de usuarios y roles.  Autorizaciones a objetos de la base de datos.   Tema 4  Análisis de problemas de la concurrencia  Aplicación de conceptos de granuralidad, grados de consistencia, niveles de aislamiento.  Reporte de desempeño y consistencia de una base de datos, en referencia con el nivel de aislamiento de las transacciones Tema 5  Problemario acerca de Stored procedures, functions y triggers.  Implementación de reglas de negocio y/o auditoría utilizando disparadores. Tema 6  Instalación de librerías de conectividad para distintos SGBD.  Conectividad desde lenguajes huésped y/o anfitriones.  Conectividad mediante entre un SGBD y protocolos de comunicación.',NULL,'Analiza requerimientos definidos por el cliente por la organización y diseña bases de datos para generar soluciones al tratamiento de información de acuerdo a sus reglas de negocio','Implementa bases de datos para apoyar la toma de decisiones considerando las reglas de negocio ','En el Tema 1 se instala el motor de un SGBD y una herramienta de administración para poder aplicar el contenido temático del curso, posteriormente se conduce al alumno en la creación y modificación de esquemas de bases de datos mediante el uso del lenguaje de definición de datos y elementos de integridad. En el tema 2, se desarrollan prácticas que incluyen el uso de instrucciones para manipulación de registros, recuperación de datos y manejo de vistas. En el tema 3, el alumno aprende a asignar roles, cuentas de usuarios y privilegios sobre un SGBD. En el tema 4, se lleva al alumno a la operación multiusuario de la base de datos, el acceso concurrente y el control de transacciones, se puede hacer énfasis en las anomalías derivadas de la concurrencia y los mecanismos para tratarlas. En el tema 5, se estudia la creación y llamada de Stored Procedures, Functions y Triggers, con lo cual se muestra al estudiante como los distintos SGBD pueden implementar codificaciones para automatizar procesos que garanticen consistencia e integridad de datos independiente a los lenguajes de programación. En el tema 6, se muestra la conectividad de la base de datos con distintas tecnologías de conexión y su integración con diversos lenguajes de programación. Se realizará un proyecto integrador que involucre de manera práctica los conocimientos de todos los temas del curso, mismo que incorpora competencias específicas que posteriormente serán parte de proyectos relacionados con otras asignaturas y que requieran la implementación profesional de bases de datos. El enfoque indica que los temas se desarrollen en su totalidad con prácticas diseñadas para la aplicación y desarrollo de las técnicas consideradas para cada tema, con lo que se introduce al estudiante en la manipulación directa de los esquemas e instancias de bases de datos con la utilización de niveles de seguridad en su acceso, mediante consolas y/o herramientas comerciales vigentes. En la parte de instalación se abordará únicamente como requisito para la realización de las prácticas y se sugiere que se incluya un SGBD adicional. En el manejo del lenguaje de definición de datos, se deben estudiar los comandos de creación y modificación de esquemas y aplicar los conceptos de integridad y restricciones.',' Esta asignatura aporta al perfil del Ingeniero en Sistemas Computacionales las competencias para implementar bases de datos y apoyar la toma de decisiones, conforme a las normas vigentes de manejo y seguridad de la información, utilizando tecnologías emergentes con el fin de integrar soluciones computacionales con diferentes plataformas y/o dispositivos considerando los aspectos legales, éticos, sociales y de desarrollo sustentable.  Consiste en el uso de lenguaje de definición de datos, lenguaje de manipulación de datos, control de acceso, transacciones, SQL procedural, conectividad de base de datos  También proporciona las bases para otras asignaturas directamente vinculadas con el desarrollo de software y uso de bases de datos. De manera particular, los temas cubiertos en esta asignatura se aplican en la definición de esquemas de bases de datos relacionales y la manipulación de la información considerando ambientes transaccionales multiusuario.  Para el buen desarrollo de esta asignatura es necesario contar con las competencias desarrolladas en las materias previas de: fundamentos de bases de datos y tópicos avanzados de programación en temas como diseño y modelado, manejo de SQL y aspectos de conectividad entre bases de datos y lenguajes huésped.  Se aportan competencias a las asignaturas de Administración de Bases de Datos, Ingeniería de Software, Gestión de Proyectos de Software y Programación Web, que se cursarán posteriormente.','2019-08-20 14:33:56',NULL,NULL,NULL),(29,'SCA1026','1. Elaborar algunos procesos básicos en el sistema operativo (procesos pesados y threads), para reforzar el conocimiento sobre multiprogramación. 2. Instalar y Configurar una maquina virtual. 3. Instalar el sistema operativo propietario ya sea en un Servidor, Maquina Virtual o PC 4. Instalar y Configurar diferentes aplicaciones que resuelvan algunas necesidades de la organización. 5. Configurar, Monitorear y Administrar el sistema operativo propietario. (Red, Memoria, Procesos, Procesador, Sistemas de Archivos, RAID, LVM, etc.) 6. Planear las estrategias de seguridad, uso y mantenimientos al sistema operativo propietario. 7. Aplicar mecanismos del sistema operativo propietario para respaldar y restaurar información en diferentes dispositivos de almacenamiento. 8. Instalar el sistema operativo de software libre ya sea en un Servidor, Maquina Virtual o PC 9. Instalar y Configurar diferentes aplicaciones que resuelvan algunas necesidades de la organización. 10. Configurar, Monitorear y Administrar el sistema operativo de software libre. (Red, Memoria, Procesos, Procesador, Sistemas de Archivos, RAID, LVM, etc.) 11. Planear las estrategias de seguridad, uso y mantenimientos al sistema operativo de software libre. 12. Aplicar mecanismos del sistema operativo de software libre para respaldar y restaurar información en diferentes dispositivos de almacenamiento. 13. Configurar y publicar un sistema de archivos por red frente a otros sistemas operativos. 14. Crear un proceso que comunique y comparta recursos con otro proceso empleando diferentes sistemas operativos mediante Sockets y RPC.',NULL,' Aplica los paradigmas de diseño de los sistemas operativos actuales y emergentes, para el manejo de los recursos del sistema.','Conoce, identifica, selecciona y administra diferentes sistemas operativos con el fin de resolver problemáticas reales, así como aplicar procedimientos de interoperabilidad entre diferentes sistemas operativos.','El presente temario, se encuentra organizado en cuatro temas integrados por contenidos teórico- prácticos, que contemplan situaciones que son aplicables en la industria. En el tema 1, se retoman temas vistos en la asignatura de sistemas operativos con el fin de recordar conceptos previos analizados en el ámbito de la multiprogramación y el reconocimiento de las diferencias entre los modelos de multiprogramación (conmutación de contextos y multitarea cooperativa) empleados en sistemas operativos de propósito general y de servidor. El tema 2, se estructura de tal forma que el estudiante identifique los requerimientos de instalación de algún sistema operativo propietario (a elección del profesor o recomendación del estudiante), lo implemente y comience a usarlo de forma básica, con el propósito de que adquiera las competencias necesarias para la futura administración y monitorización del mismo. Se propone que el profesor, muestre a los estudiantes los procedimientos que se emplean en la administración del sistema (manejo de archivos y directorios, administración de usuarios, grupos de trabajo y permisos, configuración de RAID, LVM, Memoria, etc.), así como procedimientos para la realización de respaldos y recuperación de datos, con respecto a la medición y desempeño, es recomendable que el estudiante investigue sobre como miden el desempeño de un sistema operativo sitios especializados, cuales herramientas son empleadas en dichas pruebas y de ser posible, implementarlas y usarlas en el sistema operativo. En el tema 3, el estudiante debe identificar los requerimientos de instalación de algún sistema operativo de software libre (a elección del profesor o recomendación del estudiante), lo implemente y comience a usarlo de forma básica, con el propósito de que adquiera las competencias necesarias para la futura administración y monitorización del mismo. En el tema 4, el profesor explicará las características y conceptos básicos sobre como los sistemas operativos y los procesos llevan a cabo la interoperabilidad y que mecanismos se emplean para ello. Se propone que el estudiante programe un proceso que emplee RPC y/o Sockets para compartir datos entre ellos y sea ejecutado entre los sistemas operativos empleados durante el curso. ','Esta asignatura aporta al perfil del egresado las habilidades para:  Implementa aplicaciones computacionales para solucionar problemas de diversos contextos, integrando diferentes tecnologías, plataformas o dispositivos  Diseña, configura y administra redes de computadoras para crear soluciones de conectividad en la organización, aplicando las normas y estándares vigentes. El estudiante obtendrá los conocimientos y habilidades necesarias para la administración de diferentes sistemas operativos, con el propósito de brindar diferentes alternativas de solución a problemas reales en la industria. La aportación de dicha materia, pretende emplear, competencias previas adquiridas de la asignatura de sistemas operativos, con el fin de que el estudiante posea un criterio base para la elección del sistema operativo a emplear. A su vez, las competencias que desarrolla el estudiante al finalizar dicha materia, le permitirán instalar y administrar sistemas operativos para la implementación futura de servicios de red y su monitorización. ','2019-08-20 14:33:56',NULL,NULL,NULL),(30,'SCB1001',' Instalar y configurar un SGBD  Crea espacios asignados en disco para el sistema y usuarios, asignando cuotas límite.  Crear índices y los reorganiza.  Manipular los modos de operación.  Verifica archivos log verificando buen funcionamiento.  Espejeo y Réplica de datos  Respaldo de Base de Datos  Recuperación de datos  Migración de datos  Activa, verifica y desactiva auditoria Monitorea recursos del SGBD',NULL,'Crea y gestiona bases de datos para resolver problemas del contexto considerando la concurrencia e interoperabilidad de los datos. Diseña y elabora un proyecto de cableado estructurado aplicando normas y estándares vigentes para la solución de problemas de conectividad. Realiza el análisis de un proyecto de software a partir del modelo de negocios de la organización que permita alcanzar estándares y métricas de calidad. Aplica los paradigmas de diseño de los sistemas operativos actuales y emergentes para el manejo de los recursos del sistema.','Instala, configura y administra un gestor de base de datos para el manejo de la información de una organización, optimizando la infraestructura computacional existente.','A fin de obtener los resultados esperados, esta asignatura debe centrarse en la realización de prácticas y propiciar la participación en la implementación de un proyecto conjunto con otra(s) asignatura(s) y/o carreras. El contenido se organiza en seis temas: Perspectiva de la Administración de Base de Datos, Arquitectura e instalación del SGBD, Configuración y administración del espacio en disco, Operación y Mantenimiento, Seguridad, Monitoreo y Auditoría. El enfoque sugerido para la asignatura requiere que las actividades prácticas promuevan el desarrollo de habilidades para la configuración y administración de sistemas gestores de base de datos utilizando las herramientas de que disponen, y además lograr su integración a la infraestructura existente. También deben propiciar mediante prácticas, la implementación de casos de estudio reales que ofrezcan escenarios distintos que permitan la aplicación de los conceptos para lograr que el aprendizaje sea significativo para el desarrollo de las competencias. En el desarrollo de la materia, deberá observarse: • Que los contenidos sean abordados en su totalidad. • Que se cuente con la infraestructura necesaria para realizar las prácticas • Que el laboratorio de prácticas cuente con al menos dos SGBD instalados que deberán utilizarse durante el desarrollo de la materia. • Que toda práctica diseñada por el docente sea afín a los temas del programa. • Que los estudiantes adquieran las competencias específicas de cada tema.','Esta asignatura aporta al perfil del Ingeniero en Sistemas Computacionales las siguientes habilidades:  Coordinar y participar en equipos multidisciplinarios para la aplicación de soluciones innovadoras en diferentes contextos.  Diseñar, implementar y administrar bases de datos optimizando los recursos disponibles, conforme a las normas vigentes de manejo y seguridad de la información.  Desarrollar y administrar software para apoyar la productividad y competitividad de las organizaciones cumpliendo con estándares de calidad. Actualmente la información es un activo importante en las organizaciones, ya que si posee las características necesarias apoya a las personas en la eficiente toma de decisiones, por lo que se requiere que inviertan en infraestructura que les permita gestionar y resguardar dicho activo, pero también necesitan de profesionistas especializados que sean capaces de administrarlo. Esta asignatura provee al estudiante con la capacidad para integrar eficientemente la infraestructura existente en una organización y Sistemas Gestores de Base de Datos con el propósito de apoyar la toma de decisiones. En esta asignatura se abordan las bases teóricas y prácticas referentes a la administración de bases de datos desde la instalación, configuración, mantenimiento, seguridad de acceso y datos, monitoreo del desempeño, así como, métodos de respaldo y recuperación de un SGBD; aplica conocimientos de otras asignaturas, tales como: Taller de Base de Datos, Fundamentos de Base de Datos, Redes de Computadoras, Fundamentos de Ingeniería del Software y Sistemas Operativos.','2019-08-20 14:33:56',NULL,NULL,NULL),(31,'SCC1005','Se recomienda que para que el plan de negocios quede entendido y comprendido por el estudiante, éste debe de seleccionar una idea emprendedora en el tema no. 1, sobre la cual desarrolle todos y cada uno de los temas que conforman este contenido temático. Como prácticas adicionales se recomienda para el tema 1: presentar ejemplificaciones de cómo se desarrolla la misión, visión, objetivos de la empresa, así como, el análisis, diseño y logro de un FODA.  Realizar un panel de emprendedores, en el cual se inviten a expertos en el tema y que los estudiantes interactúen con ellos.  Desarrollar una estrategia para que el estudiante determine de manera eficiente el cálculo de la oferta y la demanda, así como la determinación adecuada del precio del producto.  Desarrollar y presentar un plan de negocio que de forma a la iniciativa de empresa seleccionada por el emprendedor  Realizar una entrevista con el personal de la Procuraduría Federal del Consumidor (PROFECO) para conocer la información sobre las normas y reglamentos de protección al consumidor  Desarrollar un estudio de mercado que permita identificar las principales fortalezas y debilidades, así como las amenazas y oportunidades que tiene la empresa de nueva creación, todo esto con la intención de minimizar el riesgo e incrementar el factor de éxito.  Realizar una entrevista con el personal de la secretaría de economía para investigar cómo se aplica la propiedad intelectual e industrial así como los derechos de autor.  Elaborar el diseño y desarrollo de un proceso productivo, incluyendo todas sus etapas,  Diseñar el desarrollo de una agenda de labores y las actividades relacionadas con el IMPI  Calcular la rentabilidad financiera del proyecto a través de VPN,TIR y punto de equilibrio',NULL,'SE REQUIERE LA COMPETENCIA DE CONTABILIDAD ADMINISTRATIVA, SE COLOCARÀ UNA VEZ REVISADA Y COMPLETADA ESA MATERIA ','Construye un plan de negocios para crear una empresa considerando el análisis de mercado, estudio técnico, organización, análisis financiero y estados financieros del proyecto. ','El temario se organiza en cinco temas, las cuales proporcionan al estudiante de la carrera de Ingeniería en Sistemas Computacionales, las habilidades y capacidades necesarias para que genere una idea emprendedora que pueda ser, en el futuro su fuente de ingresos. Al comienzo del curso el estudiante, además de analizar el contexto empresarial, aborda su papel de ingeniero en sistemas computacionales como emprendedor y creador de su propia empresa especificando los procesos del sistema de negocios y su aportación al mercado en un proyecto donde presente un plan de negocios personal. El tema número 1 explora en el estudiante su parte emprendedora, podrá desempeñarse satisfactoriamente en empresa gubernamental o del sector privado, además podrá generar un proyecto emprendedor que podría ser su fuente de ingresos. Una vez que el estudiante ha obtenido esa idea emprendedora, ahora es momento de analizar el primer contexto, desarrollar la justificación pertinente a la misma: misión, visión, objetivos, valores. Analizar mediante un análisis FODA las oportunidades de negocio que tienen en el mercado y en primera instancia, los probables competidores con quienes tendría que negociar. Con lo anterior, el profesor detalla los elementos que contiene el plan de negocios, los cuales se desarrollarán en el transcurso de la asignatura. El tema 2 se denomina “Análisis del mercado”, aquí el docente enfatiza en el tema para que el estudiante comprenda qué es y cómo está conformado un mercado, cómo se llega a él, cómo se obtiene la información y qué decisiones se toman con esta. Además, la realización del estudio sobre la demanda, la oferta, el precio y la competencia es primordial, ya que sin estos elementos no es posible saber si la idea emprendedora es factible de implementarse. En el tema 3 se revisa el proceso productivo de la idea emprendedora, éste debe de analizarse y determinarse a profundidad, con el propósito de que el estudiante obtenga una visión completa particularizando en procesos de diseño, de ingeniería y normatividad para la puesta en marcha de su empresa. El tema número 4 estudia los aspectos administrativos-gerenciales que toda organización debe de tener, considerando el capital humano, el diseño organizacional y la constitución legal de la propuesta. En el tema número 5 se promueve el desarrollo y aplicación del aspecto contable y financiero, usando recursos computacionales para realizar la evaluación económica y el plan de sensibilidad.','Esta asignatura aporta al perfil de del ingeniero en Sistemas computacionales la capacidad para coordinar y participar en equipos multidisciplinarios para la aplicación de soluciones innovadoras en diferentes contextos, así como detectar áreas de oportunidad empleando una visión empresarial para crear proyectos aplicando las Tecnologías de la Información y Comunicación mediante la construcción de un plan de negocios para crear una empresa considerando el análisis de mercado, estudio técnico, organización, análisis financiero y estados financieros del proyecto. Cabe destacar que el contenido de esta materia se apega a los lineamientos marcados por la convocatoria del concurso nacional de emprendedores convocado por la SEP y por el concurso nacional de innovación y desarrollo tecnológico convocado por DGEST. Para integrarla se ha hecho un análisis de los procesos que debe conocer toda persona que presta sus servicios profesionales de manera independiente. Esta materia es transversal a la carrera de Ingeniería en Sistemas Computacionales porque en la actualidad todo profesional debe ser capaz de ofrecer y vender sus servicios de manera autónoma; está enfocada a favorecer las habilidades en el estudiante para diseñar, desarrollar e implementar un plan de negocio traduciéndolo en una empresa rentable que opere bajo marcos legales. De manera particular, la competencia adquirida en esta asignatura se aplica a la implementación, operación, administración y proyección de una empresa que atiende las necesidades computacionales y comerciales de su entorno. Esta asignatura se relaciona con contabilidad financiera en los temas análisis financiero, registro de operaciones, Teoría de la partida doble, sistemas de registro, análisis e interpretación de la información financiera. ','2019-08-20 14:33:56',NULL,NULL,NULL),(32,'SCC1007',NULL,NULL,NULL,NULL,NULL,NULL,'2019-08-20 14:33:56',NULL,NULL,NULL),(33,'SCC1010',' Práctica 1.- Trazo de líneas y polígonos. Construir una aplicación en la que se pueda trazar la línea recta que une dos puntos, que trace las líneas rectas que unan puntos sucesivos marcados con el ratón y dado el valor del número de lados (n), dibujar el polígono correspondiente de n lados.  Práctica 2.- Fuentes de texto. Diseñar una nueva fuente de texto, construir un pequeño conjunto de caracteres usando la nueva fuente creada y usarla en una aplicación de prueba.  Práctica 3.- Transformación de Objetos Bidimensionales. Desarrolle una aplicación en la que se dibujen objetos bidimensionales a los que se les puedan aplicar operaciones de traslación, rotación y escalamiento. Además utilice la representación matricial para realizar transformaciones que sean combinaciones de las anteriores, en una sola operación.  Práctica 4.- Trazado de curvas usando Curvas de Bézier. Construya una aplicación en la que se puedan marcar puntos con el ratón y se unan por múltiples curvas de Bézier de n = 4, cuidando las restricciones correspondientes de unión.  Práctica 5.- Dibujo de Objetos en 3D. Desarrolle una aplicación que dibuje un cubo a partir de los 8 vértices. Defina el conjunto de aristas y el conjunto de caras o planos que forman el cubo y consérvelos en estructuras de datos adecuadas..  Práctica 6.- Aplicación de transformaciones geométricas de 3D. Al gráfico de la práctica anterior aplicarle operaciones de escalamiento, traslación, rotación en los ejes x, y, y z, así como con respecto de un eje arbitrario. o Rote el objeto en incrementos de 10 grados en torno a cada uno de los ejes cartesianos X, Y y Z.  Práctica 7.- Eliminación de caras ocultas. Defina en un archivo de texto la información tridimensional de un objeto en 3D cóncavo, como por ejemplo un cubo, un octaedro, un prisma o una pirámide.  Práctica 8.- Aplicación de color y uso de una fuente de luz. Utilizando el cubo o la esfera en su representación planar aplicar color a cada una de las caras (planos) visibles, considerando una gama de tonos de acuerdo al ángulo entre el vector normal al plano y el vector.  Práctica 9.- Animación en 2D y 3D. Desarrolle una aplicación que realice una animación de un objeto o figura tanto en 2D como en 3D con alguna de las técnicas vistas.',NULL,'Diseña y desarrolla programas para la solución de problemas computacionales utilizando el paradigma orientado a objetos. Conoce, comprende y aplica las estructuras de datos, métodos de ordenamiento y búsqueda para la optimización del rendimiento de soluciones de problemas del contexto. Resuelve problemas de modelos lineales aplicados en ingeniería para la toma de decisiones de acuerdo a la interpretación de resultados utilizando matrices y sistemas de ecuaciones. Analiza las propiedades de los espacios vectoriales y las transformaciones lineales para vincularlos con otras ramas de las matemáticas y otras disciplinas. Aplica los principios y técnicas básicas del cálculo vectorial para resolver problemas de ingeniería del entorno.','Diseña e implementa modelos gráficos para enriquecer visualmente software diverso de aplicación en entornos de programación web, móvil y stand-alone, con base al trazo, manipulación, iluminación, sombreado y animación de objetos bidimensionales y tridimensionales.','El presente programa cubre los puntos fundamentales de cualquier aplicación gráfica, desde la base matemática necesaria, hasta el conocimiento de librerías gráfica s u t i l i z a das a n i ve l mundi a l . Al t ér mi no del curso, el estudiante será capaz de desarrollar cualquier proyecto que requiera el uso de gráficos por computadora. El temario se organiza en cinco temas, en el primero se estudia la historia de la graficación, su evolución, los fundamentos matemáticos y la teoría del color. Adicionalmente, el alumno implementa los modelos matemáticos básicos de graficación y manipula imágenes BMP. El segundo y tercer tema comprenden el desarrollo y aplicación del modelado en dos y tres dimensiones, incluyendo trazo de líneas rectas y curvas, polígonos y superficies, fuentes, así como sus transformaciones en el plano y en el espacio. En el cuarto tema se aplican modelos básicos de relleno de polígonos y superficies con color y textura, técnicas de iluminación y sombreado a las diferentes imágenes desarrolladas en el segundo y tercer tema, con la finalidad de mejorar el aspecto visual de dichas gráficas. El quinto y último tema, sirve como introducción para motivar a los estudiantes a la implementación de técnicas básicas de animación por computadora en dos y tres dimensiones. Las actividades de trazado y transformación de objetos gráficos en dos y tres dimensiones, promueven el desarrollo de habilidades para la experimentación e investigación, tales como: identificación, implementación y manejo de APIs gráficas de bajo nivel (OpenGL y Direct 3D) y alto nivel (Java 2D, Java 3D, JOGL, jMonkey Engine y OpenGL Performer), utilizando lenguajes de programación como Java, C# y C++. En las actividades prácticas sugeridas, es conveniente que el profesor busque solamente guiar a sus estudiantes para que hagan la elección del API, lenguaje e IDE a utilizar; de esta manera, lograrán entender y aplicar el proceso de planificación. Durante el desarrollo de las actividades programadas con fechas de entrega preestablecidas, el estudiante aprende a valorar el trabajo en el aula y en casa, comprendiendo que construye su hacer futuro. Lo anterior, lo impulsa a actuar de una manera profesional, reconociendo la importancia del conocimiento y de los hábitos del trabajo individual y en equipo. El estudiante también desarrolla precisión, curiosidad, imaginación, puntualidad, entusiasmo, interés, tenacidad, flexibilidad y autonomía.','Esta asignatura aporta al perfil del Ingeniero en Sistemas Computacionales las siguientes habilidades:  Diseña, desarrolla y aplica modelos computacionales para solucionar problemas, mediante la selección y uso de herramientas matemáticas.  Diseña e implementa interfaces para la automatización de sistemas de hardware y desarrollo del software asociado.  Coordina y participa en equipos multidisciplinarios para la aplicación de soluciones innovadoras en diferentes contextos. En la actualidad el ambiente que prevalece en los sistemas de cómputo es el visual, teniendo cada vez más interfaces vistosas y atrayentes; tomando en consideración esta perspectiva, un estudiante de ingeniería en sistemas computacionales debe conocer los elementos fundamentales que sirven de base para la creación de este tipo de entornos, así como, las diversas herramientas disponibles en el mercado. Esta asignatura aporta la capacidad para diseñar modelos gráficos que requieran el trazado y manipulación de objetos bidimensionales y tridimensionales, que coadyuven su implementación en diversas áreas, tales como: simulación, arte, diseño, capacitación, medicina, noticias, entretenimiento, entre otras. La asignatura pretende que el estudiante adquiera una formación consistente en la generación de gráficos en 2 y 3 dimensiones, su transformación y efectos diversos, de cara a su aplicación posterior en el mundo de la animación y la realidad virtual.','2019-08-20 14:33:56',NULL,NULL,NULL),(34,'SCC1012',' Investigar sobre los avances en materia de IA, exponiendo los criterios que le sean más importantes frente a grupo.  Desarrollar mapas conceptuales para cada tema.  Desarrollar los métodos de búsqueda en profundidad y en anchura en un grafo dirigido. Por ejemplo, usar un mapa de carreteras e ir de una ciudad a otra.  Resolver problemas de juegos clásicos de la IA, empleando un lenguaje simbólico: gato, ajedrez, puzzle, el agente viajero, misioneros y caníbales, el problema de las jarras.  Realizar prácticas en computadora para ilustrar una red neuronal.  Realizar una red neuronal con mínimo 3 circuitos.  Controlar un robot a través de software. ',NULL,'Analiza los componentes y la funcionalidad de sistemas de comunicación para evaluar las tecnologías actuales como parte de la solución de un proyecto de conectividad.','Definir, diseñar, construir y programar las fases del analizador léxico y sintáctico de un traductor o compilador.','La asignatura se dividió en cuatro unidades, de tal manera que el estudiante en las primeras tres unidades obtendrá los conocimientos generales, para que en la última unidad diseñe soluciones del entorno táles como robótica, redes neuronales, visión artificial, lógica difusa, procesamiento de lenguaje natural, sistemas expertos, etcétera. La primera unidad aborda conocimientos esenciales que el estudiante debe poseer para comprender el origen, los distintos enfoques y el estado actual de los desarrollos en el campo de la inteligencia artificial, que le serán útiles para desarrollar su capacidad de análisis crítico y ubicar la materia en el contexto global. Las unidades dos y tres tratan los conceptos necesarios para que el estudiante obtenga la capacidad de solucionar problemas, mediante técnicas de búsqueda y la capacidad de generar nuevas ideas para la representación del conocimiento y del razonamiento, retomando los conceptos de la lógica de predicados, inducción y teoría de grafos estudiados en la asignatura de matemáticas discretas. Dentro de la unidad cuatro, se le sugiere al docente coordinar a los estudiantes para que desarrollen un proyecto de aplicación en alguna de las distintas ramas de la Inteligencia Artificial, que será seleccionada de acuerdo a la demanda del sector productivo de la región. Es primordial que el alumno logre desarrollar una solución final o proyecto integrador, puesto que la necesidad de una solución terminada es el claro escenario que se presenta en el ambiente laboral y para que el alumno sea capaz de enfrentar dicha situación, debe reunir habilidades de investigación, capacidad de adaptarse a nuevas situaciones y de generar nuevas ideas y al mismo tiempo, capacidad de trabajar en un equipo interdisciplinario. Por último, es importante que el profesor proporcione una visión completa de la asignatura sabiendo delimitar las aplicaciones al sector productivo y las del sector de investigación.','Esta asignatura aporta al perfil del Ingeniero en Sistemas Computacionales la capacidad de aplicar técnicas de Inteligencia Artificial mediante el desarrollo y programación de modelos matemáticos, estadísticos y de simulación a la solución de problemas complejos de control automático, diagnóstico, toma de decisiones, clasificación, minería de datos, es decir, problemas propios de la Inteligencia Artificial. Con esta asignatura se da una Introducción a la Inteligencia Artificial (IA) presentando a los estudiantes, algunos de los métodos más utilizados en las diferentes áreas de la Inteligencia Artificial. Para ello, se introducen las técnicas más comunes de manipulación y representación del conocimiento y se analizan las características de las herramientas disponibles para la construcción de aplicaciones reales, en las diferentes áreas de la IA, con el fin de conformar una actitud científica, crítica y responsable del egresado. Esta materia está situada como una de las últimas del plan de estudio, debido a que el alumno necesita tener de base el aprendizaje de otras materias que permitan que posea habilidades de estructuras de control, listas, arboles, recursividad, así como, conocimientos de teoría de la probabilidad, autómatas 1 y 2, programación lógica y funcional, programación en lenguajes de alto nivel, conocimientos de estructura y bases de datos. La aportación de la asignatura al perfil del egresado sin las siguientes:  Coordina y participa en equipos multidisciplinarios para la aplicación de soluciones innovadoras en diferentes contextos  Diseña, implementa y administra bases de datos optimizando los recursos disponibles, conforme a las normas vigentes de manejo y seguridad de la información  Desarrolla y administra software para apoyar la productividad y competitividad de las organizaciones cumpliendo con estándares de calidad  Evalúa tecnologías de hardware para soportar aplicaciones de manera efectiva','2019-08-20 14:33:56',NULL,NULL,NULL),(35,'SCC1013','1. Modelar un sistema real contextualizándolo y resolverlo manualmente.   2. Realizar el análisis de un caso real relacionado con la ingeniería en sistemas y resolverlo por el método simplex, utilizando un software 3. Aplicar un método de solución del problema de transporte y resolverlo manualmente. 4. Aplicar un método de solución del problema de asignación y resolverlo manualmente. 5. Resuelva un problema del camino más corto utilizando software especial o un lenguaje de programación. 6. Resuelva manualmente el algoritmo del árbol expandido mínimo. 7. Construya la ruta crítica y evalué un problema real. 8. Aplique un algoritmo de solución de optimización clásica a un problema real. 9. Hacer la ejemplificación de los modelos determinísticos de los sistemas de inventarios. 10. Resolver un problema de la literatura correspondiente de un sistema de inventarios utilizando un software 11. Resolver un problema de líneas de espera mediante un lenguaje de programación o un software.',NULL,'Conocer y comprender los conceptos básicos de lógica matemática, relaciones, grafos y árboles para aplicarlos a modelos que resuelvan problemas de computación. Resuelve problemas de aplicación e interpretar las soluciones utilizando matrices y sistemas de ecuaciones lineales para las diferentes áreas de la ingeniería. Identificar las propiedades de los espacios vectoriales y las transformaciones lineales para describirlos, r es ol ver p r obl emas y v i ncul ar l os c on ot r as ramas de las matemáticas Plantea y resuelve problemas que requieren del concepto de función de una variable para modelar y de la derivada para resolver. Contextualiza el concepto de Integral así como discernir cuál método puede ser más adecuado para resolver una integral dada y resolverla usándolo. Seleccionar modelos probabilísticos, aplicar cálculos de inferencia estadística sobre datos y desarrollar modelos para la toma de decisiones en sistemas con componentes aleatorios.','Formula soluciones óptimas para generar una mejor alternativa para la toma de decisiones aplicando conceptos de los modelos matemáticos, técnicas y algoritmos.','El propósito de la materia es plantear los contenidos desde un punto de vista conceptual, comprenderlos e identificarlos en el entorno cotidiano o el de desempeño profesional Se organiza el temario, en cinco temas, agrupando los contenidos conceptuales de la asignatura en cada unidad incluyendo los contenidos necesarios para la aplicación de los conceptos tratados en estas. Se abordan los conceptos de la programación lineal y de análisis de redes en el primer tema y el segundo tema al comienzo del curso buscando una visión de conjunto de este campo de estudio. En el tercer tema se inicia caracterizando los conceptos básicos de la programación no lineal para dar una visión de los parámetros asociados al modelo y su distribución de probabilidad asociada. El cuarto tema aborda el estudio de la teoría de inventarios aplicando los modelos determinísticos. Se integra en el quinto tema, el proceso de nacimiento o muerte de una línea de espera. Esto permite dar un cierre a la materia mostrándola como útil por sí misma en el desempeño profesional, independientemente de la utilidad que representa en el tratamiento de temas en materias posteriores. El enfoque sugerido para la materia requiere que las actividades prácticas promuevan el desarrollo de habilidades para la experimentación, tales como: identificación, manejo y control de variables y datos relevantes; planteamiento de hipótesis; trabajo en equipo; asimismo, propicien procesos intelectuales como inducción-deducción y análisis-síntesis con la intención de generar una actividad intelectual compleja; esto permite la integración del alumno con el conocimiento durante el curso. Principalmente se busca partir de experiencias concretas, cotidianas, para que el estudiante se acostumbre a reconocer los modelos de decisión y no sólo se hable de ellos en el aula. En el transcurso de las actividades programadas es muy importante que el estudiante aprenda a valorar las actividades que lleva a cabo y entienda que está construyendo su hacer futuro y en consecuencia actúe de una manera profesional; de igual manera, aprecie la importancia del conocimiento y los hábitos de trabajo; desarrolle la precisión y la curiosidad, la puntualidad, el entusiasmo y el interés, la tenacidad, la flexibilidad y la autonomía.','Esta asignatura aporta al perfil del Ingeniero en Sistemas Computacionales la capacidad para aplicar técnicas y modelos de investigación de operaciones en la solución de problemas, utilizando o desarrollando herramientas de software para la toma de decisiones. El conocer y comprender las técnicas para la modelación de sistemas es importante en la formación de la lógica de solución de problemas. Para ello el estudiante de Ingeniería en Sistemas Computacionales, recopila, clasifica y ordena la información del sistema a modelar para analizarlo mediante los modelos adecuados al sistema en estudio, y así obtener la mejor solución o la óptima. Su integración se ha hecho en base a un análisis de la administración de las operaciones, identificando los temas de programación, optimización y modelos heurísticos que tienen una mayor aplicación en el quehacer profesional y la toma de decisiones. Puesto que esta materia dará soporte a otras, más directamente vinculadas con desempeños profesionales; se inserta en la primera mitad de la trayectoria escolar; antes de cursar aquéllas a las que da soporte. De manera particular, lo trabajado en esta asignatura se aplica en el modelado de sistemas y en la simulación, que auxilia en la toma de decisiones. ','2019-08-20 14:33:56',NULL,NULL,NULL),(36,'SCC1014',' Generar el glosario de conceptos clave de cada tema.  Desarrollar mapas conceptuales para cada tema.  Desarrollar programas en ensamblador que realicen operaciones básicas en memoria.  Programación de dispositivos en lenguaje ensamblador.',NULL,'Reconoce diferentes modelos de arquitecturas y recomienda aplicaciones para resolver problemas de su entorno profesional. Aplica algoritmos y lenguajes de programación para diseñar e implementar soluciones a problemas del entorno.','Desarrollar software para establecer la interfaz hombre-máquina y máquina-máquina.','En la primera unidad se pretende dar un panorama general de lo que es el lenguaje ensamblador y donde se puede utilizar. La segunda unidad se da a conocer las principales instrucciones y funciones del lenguaje ensamblador, la forma de estructurar un programa, los parámetros que se tienen que tomar en cuenta realizando ejemplos sencillos. En l a uni da d t r es el e s t udi a nt e desarrollará programas en lenguaje ensamblador que haga uso de macros o procedimientos, posteriormente, analizar el funcionamiento interno de los programas desarrollados haciendo el uso del software que permita obtener datos estadísticos sobre el funcionamiento de los mismos. En la última unidad el estudiante obtendrá los conocimientos necesarios para la programación de los puertos de la computadora, así como, poder analizar la interfaz de video del buffer en modo texto. En esta unidad se pretende que el estudiante realice una interfaz de hardware, la cual será la base para la creación de las aplicaciones de software, ya que la interfaz de hardware será controlada mediante la interfaz de software.','Esta asignatura aporta al perfil del Ingeniero en Sistemas Computacionales las siguientes habilidades:  Implementa aplicaciones computacionales para solucionar problemas de diversos contextos, integrando diferentes tecnologías, plataformas o dispositivos  Desarrolla y administra software para apoyar la productividad y competitividad de las organizaciones cumpliendo con estándares de calidad.  Coordina y participa en equipos multidisciplinarios para la aplicación de soluciones innovadoras en diferentes contextos.  Diseña e implementa interfaces para la automatización de sistemas de hardware y desarrollo del software asociado. La presente asignatura aporta los conocimientos para el diseño e implementación de interfaces hombremáquina y máquina-máquina para la automatización de sistemas. El desarrollo, implementación y administración de software de sistemas o de aplicación que cumpla con los estándares de calidad con el fin de apoyar la productividad y competitividad de las organizaciones. Para que desempeñe sus actividades profesionales considerando los aspectos legales, éticos, sociales y de desarrollo sustentable y a la vez le permita poseer las habilidades metodológicas de investigación que fortalezcan el desarrollo cultural, científico y tecnológico en el ámbito de sistemas computacionales y disciplinas afines.','2019-08-20 14:33:56',NULL,NULL,NULL),(37,'SCC1017',' Elaboración de programas en un lenguaje de propósito general con cada uno de los métodos estudiados en el curso.  Uso de los métodos numéricos en un software para aplicaciones científicas y de ingeniería (por ejemplo MatLab).  Análisis de la complejidad en el tiempo de las soluciones obtenidas, evaluando sus posibilidades de aplicación.',NULL,'Cálculo vectorial: Conoce los principios y técnicas básicas del Cálculo en Varias Variables para que interprete y resuelva modelos que representan fenómenos de la naturaleza en los cuales interviene más de una variable continua. Algebra Lineal: Resuelve problemas de aplicación e interpreta las soluciones utilizando matrices y sistemas de ecuaciones lineales para las diferentes áreas de la ingeniería. Identifica las propiedades de los espacios vectoriales y las transformaciones lineales para describirlos y resuelve problemas para vincularlo con otras ramas de las matemáticas. Estructura de datos: Identifica, selecciona y aplica eficientemente tipos de datos abstractos, métodos de ordenamiento y búsqueda para la optimización del rendimiento de soluciones de problemas del mundo real.','Aplica los métodos numéricos para resolver problemas científicos y de ingeniería utilizando la computadora.','Se organiza el temario, en seis temas, agrupando los contenidos conceptuales de la asignatura en cada tema, incluyendo los contenidos necesarios para el uso de software de cómputo numérico y lenguajes de programación de propósito general. En el primer tema abordan los conceptos básicos de los métodos numéricos, así como los tipos de errores. El segundo tema trata los diferentes métodos de solución de ecuaciones lineales, ecuaciones no lineales y sus aplicaciones. En el tercer tema se contemplan los métodos de solución de sistemas de ecuaciones, sus iteraciones, convergencia y aplicaciones correspondientes. El cuarto tema aborda la diferenciación numérica, la integración numérica, la integración múltiple y sus aplicaciones. Se integran en el quinto tema los elementos correspondientes a la interpolación segmentada, de Newton, de Lagrange, Mínimos cuadrados, etc. En el sexto tema se trata la solución de ecuaciones diferenciales usando los métodos de un paso, de pasos múltiples y las aplicaciones correspondientes, dando así un cierre a la asignatura. El enfoque sugerido para esta asignatura requiere que las actividades prácticas promuevan el desarrollo de habilidades para la experimentación, tales como: identificación, manejo y control de variables y datos relevantes; planteamiento de hipótesis; trabajo en equipo; así mismo, propicien procesos intelectuales como inducción-deducción y análisis-síntesis con la intención de generar una actividad intelectual compleja; esto permite la integración del estudiante con el conocimiento durante el curso. Principalmente se busca partir de experiencias concretas y cotidianas, para que el estudiante se acostumbre a reconocer los fenómenos físicos en su alrededor y no sólo se hable de ellos en el aula. Es importante ofrecer problemas diversos, ya sean propuestos, artificiales, virtuales o naturales. En el transcurso de las actividades programadas es muy importante que el estudiante aprenda a valorar las actividades que lleva a cabo y entienda que está construyendo su hacer futuro y en consecuencia actúe de una manera profesional; de igual manera, aprecie la importancia del conocimiento y los hábitos de trabajo; desarrolle la precisión y la curiosidad, la puntualidad, el entusiasmo y el interés, la tenacidad, la flexibilidad y la autonomía.','Esta asignatura aporta al perfil del ingeniero la capacidad de aplicar métodos numéricos en la resolución de problemas de la ingeniería y la ciencia, auxiliándose del uso de computadoras. Su integración se ha hecho con base en un análisis de las técnicas mediante las cuales es posible formular problemas de tal forma que pueden resolverse usando operaciones aritméticas. Puesto que esta materia dará soporte a otras, más directamente vinculadas con desempeños profesionales; se inserta en la primera mitad de la trayectoria escolar; De manera particular, lo trabajado en esta asignatura se aplica en el estudio de los temas: modelos y control, validación de un simulador, métodos para generar variables aleatorias, entre otros. ','2019-08-20 14:33:56',NULL,NULL,NULL),(38,'SCC1019',' Elaboración de mapas conceptuales y/o mentales de la programación lógica y funcional.  Desarrollo de programas funcionales con un grado creciente de complejidad, utilizando herramientas de programación funcional, que den solución a problemas reales.  Desarrollo de programas lógicos con un grado creciente de complejidad, utilizando herramientas de programación lógica, que den solución a problemas reales.  Diseñar y construir una base de conocimiento a través de programación funcional.  A partir de una situación real, diseñar y construir una base de conocimiento a través de herramientas de sistemas expertos basado en programación lógica.  Construir un sistema experto a partir de la base de conocimiento creada en programación lógica.',NULL,'Implementa un compilador para un lenguaje específico considerando las etapas del mismo.','Conoce los principios lógicos y funcionales de la programación para aplicarlos en la resolución de problemas.','La inteligencia artificial incluye varios campos de desarrollo tales como: la robótica, usada principalmente en el campo industrial; comprensión de lenguajes y traducción; visión en máquinas que distinguen formas y que se usan en líneas de ensamblaje; reconocimiento de palabras y aprendizaje de máquinas; sistemas computacionales expertos, etc. El temario está organizado en cuatro unidades y con una estructura lógica. En la primera unidad se inicia con un acercamiento a los diferentes estilos de programación y una comparación entre ellos, con la idea de que el estudiante desarrolle una visión de conjunto de los lenguajes de alto nivel y sirva como marco de referencia a la metodología de los lenguajes de inteligencia artificial, como lo son la programación lógica y funcional. La unidad dos integra la programación funcional, haciendo énfasis, al uso de nuevas metodologías para que las actividades del estudiante vayan más allá de la intuición y reflexión. Proporciona nuevas habilidades, distintas a las desarrolladas en los paradigmas convencionales de la programación. Para las unidades tres y cuatro, se realizarán prácticas en los lenguajes simbólicos y lógicos, implementando algoritmos de juegos para aplicar los conceptos aprendidos en cada tema. Se recomienda el desarrollo de un sistema experto básico para la unidad cuatro; en la presentación de cada sistema es conveniente que el estudiante viva la aplicación del mismo en el aula, con sus exigencias y responda con profesionalismo y responsabilidad.','El desarrollo de sistemas basados en computadora y la búsqueda de soluciones para problemas de procesamiento de información s La asignatura de Programación Lógica y Funcional aporta al perfil del Ingeniero en Sistemas Computacionales la capacidad de desarrollar habilidades para la generación de soluciones automatizadas basadas en lenguajes de inteligencia artificial, considerando el entorno y la aplicación de diversas técnicas, herramientas y conocimientos. Los programas para computadora actualmente son fundamentales en muchas áreas del ser humano, debido a que se usan para resolver diversos problemas en la ciencia, la industria y los negocios. Para cubrir estas necesidades, se han desarrollado lenguajes de programación dentro de la inteligencia artificial. El Ingeniero en Sistemas Computacionales contribuirá, aplicando estos conocimientos para la solución de problemas a través de la programación lógica y funcional, con una conciencia ética y de respeto al medio ambiente. La Programación Lógica y Funcional, es una asignatura que requiere tener conocimientos esenciales acerca de lenguajes de programación estructurados y orientados a objetos así como el conocimiento de las asignaturas de Lenguajes y Autómatas 1 y 2. Esta asignatura aporta al perfil de la carrera de Ingeniería en Sistemas Computacionales los siguientes elementos:  Implementa aplicaciones computacionales para solucionar problemas de diversos contextos, integrando diferentes tecnologías, plataformas o dispositivos  Coordina y participa en equipos multidisciplinarios para la aplicación de soluciones innovadoras en diferentes contextos  Diseña, implementa y administra bases de datos optimizando los recursos disponibles, conforme a las normas vigentes de manejo y seguridad de la información  Desarrolla y administra software para apoyar la productividad y competitividad de las organizaciones cumpliendo con estándares de calidad','2019-08-20 14:33:56',NULL,NULL,NULL),(39,'SCC1023',' Identificación de principios físicos y leyes que relaciona variables de interés mensurable y las características, formas y materiales con los que se construyen los diferentes tipos de sensores.  Identificación de principios físicos y leyes que relaciona variables de interés mensurable y las características, formas y materiales con que se construyen los diferentes tipos de actuadores.  Codificación de un programa de ejemplo que despliegue un mensaje en la pantalla de LCD de 2 líneas, utilización del grabador/programador de PICs y ensamble del prototipo con microcontrolador que gobierne el proceso de visualización.  Análisis y programación de la activación de un servomotor y motorPAP mediante los temporizadores del microcontrolador. Ensamble de circuito respectivo.  Programación y simulación del microcontrolador para la construcción de interface máquinamáquina y hombre-máquina en la transmisión y recepción de información utilizando los puertos y los buses de comunicación (RS-232, I2C,USB, y otros).  Implementación de circuitos para la adquisición de datos a través de sensores.  Implementación de circuito de adecuación entre actuadores y microcontroladores utilizando drivers.  Realización de programa de monitoreo del hardware de la PC  Diseño y programación de interfaces para la detección de diferentes variables.',NULL,'Comprende y aplica las herramientas básicas de análisis de los sistemas analógicos y digitales para resolver problemas del ámbito computacional. Reconoce diferentes modelos de arquitecturas y recomienda aplicaciones para resolver problemas de su entorno profesional. Desarrolla software para establecer la interfaz hombre-máquina y máquina-máquina.','Aplica microcontroladores en el diseño de interfaces hombre—máquina y máquina-máquina de sistemas programables.','Se organiza el temario en seis temas, agrupando contenidos conceptuales referentes a los sensores y actuadores de la asignatura en el primer y segundo temas, considerando sus características como tipos, funcionamiento, variables y los modos de comunicación. En el tercer tema se incluye lo concerniente a los microcontroladores, abordando sus características para dar una visión global como rangos, circuitería, puertos de comunicación y manejo de diversos dispositivos (LCD, motoresPAP, LED, etc.). El cuarto tema comprende los elementos de la programación del microcontrolador; considerando sus registros, conjunto de instrucciones y modos de direccionamiento. El quinto tema contempla los puertos y buses de comunicación, sus tipos, programación y aplicaciones. El tema seis trata los elementos conceptuales de interfaces, su clasificación, diseño y los módulos de adquisición de datos. El enfoque sugerido para la materia, requiere actividades prácticas utilizando microcontroladores, de modo tal que promuevan el desarrollo de habilidades para la experimentación, tales como: identificación, clasificación y análisis de los elementos de procesos y su relación con los sistemas programables; por tanto el trabajo en equipo es indispensable; asimismo se propician procesos intelectuales como inducción-deducción y análisis-síntesis con la intención de generar una actividad intelectual compleja; esto permite la integración del alumno con los contenidos y el conocimiento en la asignatura. Es importante ofrecer escenarios distintos, locales o cercanos, nacionales y globales. En el transcurso de las actividades programadas es muy importante que el estudiante aprenda a valorar las actividades que lleva a cabo y entienda que está construyendo su hacer futuro y en consecuencia actúe de una manera profesional; de igual manera, aprecie la importancia del conocimiento y los hábitos de trabajo; desarrolle la precisión y la curiosidad, la puntualidad, el entusiasmo y el interés, la tenacidad, la flexibilidad, la autonomía y la toma de decisiones. Es necesario que el docente ponga atención y cuidado en estos aspectos en el desarrollo de las actividades de aprendizaje y en la elaboración de cada una de las prácticas sugeridas de esta asignatura.','Esta asignatura aporta al perfil del Ingeniero en Sistemas Computacionales las siguientes habilidades:  Implementar aplicaciones computacionales para solucionar problemas de diversos contextos, integrando diferentes tecnologías, plataformas o  Evaluar tecnologías de hardware para soportar aplicaciones de manera efectiva.  Coordinar y participar en equipos multidisciplinarios para la aplicación de soluciones innovadoras en diferentes contextos.  Diseñar e implementar interfaces para la automatización de sistemas de hardware y desarrollo del software asociado. Sistemas programables aporta la capacidad de diseñar e implementar interfaces hombre- máquina y máquina-máquina para la automatización de sistemas e integrar soluciones computacionales con diferentes tecnologías, plataformas o dispositivos. Para integrarla, se ha hecho un análisis de las materias Principios eléctricos y aplicaciones digitales, Arquitectura de computadoras y Lenguajes de interfaz; identificando los temas de electrónica analógica y digital, lenguajes de bajo nivel, programación de dispositivos y arquitecturas de cómputo. Esta asignatura se relaciona con las materias de inteligencia artificial y programación lógica y funcional respectivamente, más específicamente, los temas de robótica, visión artificial, programación lógica, entre otros.','2019-08-20 14:33:56',NULL,NULL,NULL),(40,'SCD1003','1. Identificar las características de los elementos que integran un sistema de cómputo, utilizando componentes físicos. 2. Manejar software de diagnóstico. 3. Desarmar e identificar los elementos de una computadora personal, como componentes y subsistemas 4. Ensamblar y probar el funcionamiento de una computadora. 5. Analizar casos de estudio sobre computación paralela.',NULL,'Comprende y aplica las herramientas básicas de análisis de los sistemas analógicos y digitales para resolver problemas del ámbito computacional','Conoce diferentes modelos de arquitecturas y recomienda aplicaciones para resolver problemas de su entorno profesional.','Se organiza el temario, en cuatro unidades, agrupando los contenidos conceptuales de la asignatura en las dos primeras unidades. En la primera unidad se abordan los temas de modelos de arquitectura de cómputo. En la segunda unidad se estudia y analiza la estructura y comunicación interna, y funcionamiento del CPU. Se incluye una tercera unidad que se destina a la aplicación práctica del ensamble de un equipo de cómputo y se utilizan los conceptos abordados en las dos primeras. Se aplican conocimientos de electricidad, magnetismo y electrónica y la correlación que guardan éstos con una arquitectura computacional actual. En la cuarta y última unidad se pretende que el alumno se involucre con las arquitecturas de computadoras que trabajen en forma paralela, observando el rendimiento del sistema en los módulos de memoria compartida y distribuida a través de casos de estudio. El enfoque sugerido para la materia requiere que las actividades prácticas promuevan el desarrollo de habilidades para la experimentación, tales como: identificación y manejo de componentes de hardware y su funcionamiento; planteamiento de hipótesis; trabajo en equipo; asimismo, propicien procesos intelectuales como inducción-deducción y análisis-síntesis con la intención de generar una actividad intelectual de análisis y aplicación interactiva. En las actividades prácticas sugeridas, es conveniente que el profesor busque y sugiera además de guiar a sus alumnos para que ellos hagan la elección de los componentes a elegir y controlar. Para que aprendan a planificar, que no planifique el profesor todo por ellos, sino involucrarlos en el proceso de planeación y desarrollo de actividades de aprendizaje. Es importante ofrecer escenarios de trabajo y de problemática distintos, ya sean construidos, o virtuales. En las actividades de aprendizaje sugeridas, generalmente se propone la formalización de los conceptos a partir de experiencias concretas; se busca que el alumno tenga el primer contacto con el concepto en forma concreta y sea a través de la observación, la reflexión y la discusión que se dé la formalización; la resolución de problemas se hará después de este proceso.','Esta asignatura aporta al perfil del Ingeniero en Sistemas Computacionales las siguientes habilidades:  Implementa aplicaciones computacionales para solucionar problemas de diversos contextos, integrando diferentes tecnologías, plataformas o dispositivos.  Diseña e implementa interfaces para la automatización de sistemas de hardware y desarrollo del software asociado.  Coordina y participa en equipos multidisciplinarios para la aplicación de soluciones innovadoras en diferentes contextos.  Evalúa tecnologías de hardware para soportar aplicaciones de manera efectiva.  Se desempeña con ética, legalidad y responsabilidad social. Para integrarla se hizo un análisis de la materia de Principios Eléctricos y Aplicaciones Digitales, identificando temas de electrónica digital que tienen mayor aplicación en el quehacer profesional del Ingeniero en Sistemas Computacionales. Puesto que esta materia dará soporte a Lenguajes y Autómatas I, y Lenguajes de Interfaz, directamente vinculadas con desempeño profesionales, se inserta después de la primera mitad de la trayectoria escolar. De manera particular, lo trabajado en esta asignatura, se aplicará a los temas de estudios: Programación básica, Programación de dispositivos, Programación Móvil, Estructura de un traductor y los Autómatas I y II.','2019-08-20 14:33:56',NULL,NULL,NULL),(41,'SCD1004',' Calcular un esquema de direccionamiento IP (Subredes).  Optimización de direccionamiento IP (VLSM).  A partir de tablas de enrutamiento, diseñar diagramas de red.  Configuración de enrutamiento estático y dinámico.  Configuración de NAT.  Configuración de VLAN.  Utilizar herramientas de software para la simulación del comportamiento lógico de un diseño de red.  Identificación visual de dispositivos inalámbricos y de interconexión de redes.',NULL,'Diseña y elabora un proyecto de cableado estructurado aplicando normas y estándares vigentes para la solución de problemas de conectividad.','Diseña, instala y configura redes LAN inalámbricas aplicando normas y estándares vigentes para la solución de problemas de conectividad. ','La asignatura se estructura en cuatro temas, agrupando los contenidos de acuerdo al nivel de aplicación. En el primer tema se establecen los fundamentos del direccionamiento IP y enrutamiento como base para el diseño lógico en una Red WAN. En el segundo tema se abordan las tecnologías y métodos para segmentar tráfico en una red LAN conmutada. En el tercer tema se abordan las tecnologías WAN con la finalidad de que el alumno conozca y utilice las tecnologías que actualmente implementan las organizaciones que interconectan sus sucursales a distancia. En el cuarto tema se tratarán los fundamentos teóricos de las redes inalámbricas, se analizarán los dispositivos y su configuración, para después enfocar el tema de protocolos y los mecanismos de seguridad, como parte integral de soluciones de conectividad en las empresas u organizaciones.','Esta asignatura aporta al perfil del Ingeniero en Sistemas Computacionales las siguientes habilidades:  Implementa aplicaciones computacionales para solucionar problemas de diversos contextos, integrando diferentes tecnologías, plataformas o dispositivos  Desarrolla y administra software para apoyar la productividad y competitividad de las organizaciones cumpliendo con estándares de calidad.  Evalúa tecnologías de hardware para soportar aplicaciones de manera efectiva.  Diseña, configura y administra redes de computadoras para crear soluciones de conectividad en la organización, aplicando las normas y estándares vigentes. Desarrolla las capacidades básicas para el diseño e implementación de soluciones en redes de datos LAN y WAN en base a las normas y estándares vigentes. La importancia de esta asignatura radica en la necesidad que tienen las empresas de optimizar sus procesos con el adecuado aprovechamiento de las tecnologías de la información, redes de datos, así como la infraestructura que soporta dichas tecnologías. Se ubica en el séptimo semestre, es subsecuente a la asignatura de Redes de Computadoras y desarrolla las competencias necesarias para cursar la asignatura Administración de Redes ','2019-08-20 14:33:56',NULL,NULL,NULL),(42,'SCD1011','1. Elaboración y revisión del anteproyecto del sistema de desarrollo. 2. Con la ayuda de una herramienta CASE elabora el análisis del modelo de negocio seleccionado, considerando el modelo de requisitos, casos de uso, documentación de casos de uso y modelo de dominio. 3. Elaborar un estudio de factibilidad y el costo-beneficio aplicado a la organización. 4. Establecer un diseño preliminar de las interfaces de usuario de acuerdo a los requisitos. 5. Elaborar un diseño de bases de datos emanado del modelo entidad-relación. 6. A partir del diccionario de datos y el diagrama E-R crear una base de datos. 7. Usando un lenguaje de programación establecer la conexión a una base de datos. 8. Desarrollar los procesos identificados, asegurando las operaciones básicas de todo sistema: registro, actualización, consulta y estadística. 9. Probar el sistema con las técnicas existentes y validar que el modelo de requisitos esté atendido. 10. Implementar el sistema, capacitar a los usuarios y verificar la estabilidad del sistema para su liberación.',NULL,' Diseña y desarrolla programas para la solución de problemas computacionales utilizando el paradigma orientado a objetos.  Desarrolla soluciones de software para resolver problemas en diversos contextos utilizando programación concurrente, acceso a datos, que soporten interfaz gráfica de usuario y consideren dispositivos móviles.  Crea y gestiona bases de datos para resolver problemas del contexto considerando la concurrencia e interoperabilidad de los datos.  Realiza el análisis de un proyecto de software, a partir de la identificación del modelo de negocios de la organización que permitan alcanzar estándares y métricas de calidad.','Desarrolla soluciones de software, considerando la metodología y herramientas para la elaboración de un proyecto aplicativo en diferentes escenarios.','La asignatura debe ser teórico – práctico, y capaz de desarrollar en el estudiante la habilidad para la aplicación de las diferentes técnicas en el desarrollo de software, considerando siempre los principios de la ingeniería de software, para lo cual se organiza el temario en cuatro temas. En el tema uno, el Modelo de Análisis, es generado a través de la obtención de requisitos, selección y uso de herramientas CASE, se realiza el estudio de factibilidad mediante la información obtenida estableciendo así el costo- beneficio del sistema; es de suma importancia profundizar en el modelo de requisitos, casos de uso, documentación de estos últimos y derivar en e l model o d e domi ni o d el s i s t ema a desarrollar. En el tema dos, Diseño, se integra la información obtenida en el análisis, se elaboran los modelos de: clases, de datos, diagramas de secuencia o colaboración y diseño de interfaz, estas últimas orientadas a los casos de uso. En el tema tres, Desarrollo, se construye el sistema tomando como base la selección de los lenguajes de programación, manejadores de bases de datos y desarrollo rápido de las aplicaciones, estableciendo la validación y consistencia del sistema. En el tema cuatro, Pruebas e Implantación, se realiza las diferentes pruebas para verificar la eficiencia del sistema generando las pruebas del sistema, pruebas de componentes, diseño de caso de prueba, documentación de las pruebas; una vez probado se implanta y se procede a la capacitación a usuarios dando un tiempo para la estabilidad del mismo. Una vez que se estabiliza se procede a liberar y entregar la documentación del sistema del cliente. El papel del docente es ejemplificar cada etapa de la Ingeniería de software y propiciar el trabajo en equipo para atender proyectos del contexto que induzcan al estudiante a la aplicación de la metodología en un ambiente real.','Esta asignatura aporta al perfil del Ingeniero en Sistemas Computacionales las siguientes habilidades:  Implementa aplicaciones computacionales para solucionar problemas de diversos contextos, integrando diferentes tecnologías, plataformas o dispositivos  Diseña e implementa interfaces para la automatización de sistemas de hardware y desarrollo del software asociado.  Coordina y participa en equipos multidisciplinarios para la aplicación de soluciones innovadoras en diferentes contextos.  Desarrolla y administra software para apoyar la productividad y competitividad de las organizaciones cumpliendo con estándares de calidad. La importancia de esta asignatura, es que permite al estudiante aplicar las fases de la metodología para el desarrollo de un sistema en un contexto multidisciplinario; aplicando el conocimiento científico, a través de los métodos, técnicas y normas adecuados, para el desarrollo de software. La disciplina de Ingeniería de Software se relaciona con materias precedentes como: Fundamentos de Programación, Programación Orientada a Objetos, Estructura de Datos, Fundamentos de Ingeniería de Software, Tópicos Avanzados de Programación, Sistemas Operativos, Arquitectura de Computadoras y Taller de Bases de Datos; y con las materias posteriores: Gestión de Proyectos de Software y Programación Web. Requiere de competencias previas como: Manejo de un lenguaje de modelado, dominio en el uso de herramientas CASE, uso de algún Sistema Manejador de Bases de Datos, dominio de algún lenguaje de programación orientado a objetos, identificación de las etapas del ciclo de desarrollo de sistemas y de las diferentes plataformas operativas','2019-08-20 14:33:56',NULL,NULL,NULL),(43,'SCD1015',' Realizar un cuadro comparativo de los traductores y compiladores que incluya ventajas, desventajas y características.  Clasificar una lista de lenguajes, ambientes de desarrollo y utilerías en herramientas computacionales.  Clasificar los componentes léxicos de un programa fuente.  Obtener un alfabeto a partir de un lenguaje y viceversa.  Relacionar los componentes léxicos con una expresión regular.  Obtener expresiones regulares a partir de casos de estudio.  Realizar un programa que implemente una expresión regular.  Realizar programas que implemente lenguajes simples representados con AFD´s.  Realizar ejercicios de construcción de AF a partir de ER o casos de estudio.  Realizar conversiones de AFN a AFD.  Definir las reglas de un lenguaje de programación propio.  Generar el autómata correspondiente al lenguaje definido.  Analizar la funcionalidad de diferentes generadores para análisis léxico de compilador.  Realizar prácticas en algún generador para analizadores léxico.  Construir un analizador léxico (utilizar un generador de analizador como ejemplo).  Construir diagramas de sintaxis para el lenguaje propuesto.  Construir una GLC para el lenguaje propuesto.  Analizar la funcionalidad de diferentes generadores para análisis sintáctico.  Realizar prácticas en algún generador para analizadores sintáctico.  Construir un analizador sintáctico (utilizar un generador de analizador sintáctico o un lenguaje de programación)  Construir MT a partir de casos de estudio.  Simular a través de un lenguaje de alto nivel, la representació n de una máquina de Turing.',NULL,'Conoce, comprende y aplica las estructuras de datos, métodos de ordenamiento y búsqueda para la optimización del rendimiento de soluciones de problemas del contexto.','Define, diseña y programa las fases del analizador léxico y sintáctico de un traductor o compilador para preámbulo de la construcción de un compilador.','Esta asignatura es de vital importancia para toda la carrera, como es una asignatura sobre lenguajes formales, el enfoque debe coincidir con la formalidad de los mismos. Cada tema debe ser acompañado de una serie de ejercicios y prácticas que permitan redondear los temas revisados en clase. Esta asignatura se presta para la participación activa de los estudiantes en la discusión de los temas y ejemplificación de casos. También permite que el estudiante se acerque al análisis de problemas del área industrial, como diseño, manufactura, tratamiento de lenguaje natural, robótica, inteligencia artificial, procesamiento de consultas en base de datos, procesamiento de consultas en Web, análisis y diseño de algoritmos, entre otros. En este sentido, el profesor debe guiar, comentar, corregir o completar las investigaciones que el estudiante realice. Estas investigaciones deben buscar como objetivo el desarrollo de la creatividad y la integración del estudiante dentro del grupo. La creatividad permitirá vislumbrar las fronteras dentro de este campo. Como puede apreciarse, las competencias generales que pueden estimularse son, entre otras:  Capacidad de discernir los aspectos relevantes de investigaciones documentales.  Comunicación oral y escrita para presentar resultados de investigación documental.  Análisis y síntesis de problemas de procesamiento de información.  Integración de grupos de trabajo, a veces multidisciplinarios.  Solución de problemas a planteamientos específicos.  Toma de decisiones para determinar la mejor forma de resolver un problema.  Uso de Estándares de desarrollo para la implementación de soluciones','El desarrollo de sistemas basados en computadora y la búsqueda de soluciones para problemas de procesamiento de información son la base tecnológica de la carrera de Ingeniería en Sistemas. Todo egresado de esta ingeniería debe poseer los conocimientos necesarios para resolver de manera óptima cualquier problema relacionado con procesamiento de información. El conocimiento de las características, fortalezas y debilidades de los lenguajes de programación y su entorno le permitirán proponer las mejores soluciones en problemas de índole profesional y dentro de las realidades de su entorno. Como parte integral de la asignatura, se debe promover el desarrollo de las habilidades necesarias para que el estudiante implemente sistemas sujetándose en los estándares de desarrollo de software, esto con el fin de incentivar la productividad y competitividad de las empresas donde se desarrollen. Sin duda alguna, los problemas que se abordarán requerirán la colaboración entre grupos interdisciplinarios, por ello el trabajo en grupos es indispensable. Debe quedar claro que los proyectos que serán desarrollados son de diversas áreas y complejidades, y en ocasiones requieren la integración de equipos externos. Esta complejidad debe considerarse una oportunidad para experimentar con el diseño de interfaces hombre-máquina y máquina-máquina. Como todos sabemos, un mismo problema puede ser resuelto computacionalmente de diversas formas. Una de las condiciones a priori de la asignatura, es el conocimiento de las arquitecturas de computadoras (microprocesadores) y de las restricciones de desempeño que deben considerarse para la ejecución de aplicaciones. Esto aportará los conocimientos que le permitirán al estudiante desarrollar aplicaciones eficientes en el uso de recursos. De manera adicional, es posible que se integren dispositivos externos dentro de las soluciones. Esta área, por sus características conceptuales, se presta para la investigación de campo. Los estudiantes tendrán la posibilidad de buscar proyectos que les permitan aplicar los conocimientos adquiridos durante las sesiones del curso. El desarrollo de este proyecto es una oportunidad excelente para aplicar todos los conceptos, técnicas y herramientas orientadas al modelado.','2019-08-20 14:33:56',NULL,NULL,NULL),(44,'SCD1016',NULL,NULL,NULL,NULL,NULL,NULL,'2019-08-20 14:33:56',NULL,NULL,NULL),(45,'SCD1018',' Simulación en la PC y medición física de voltaje, corriente y resistencia, en circuitos analógicos.  Simulación en la PC y construcción de una fuente de voltaje de CD.  Simulación en la PC y construcción de un temporizador astable y monoestable con CI 555.  Comprobación de tablas de verdad de compuertas básicas en circuitos integrados de función fija de tres variables en su forma normal y simplificada, se puede utilizar solo NANDs  Diseñar, Simular en la PC y construir un circuito sumador completo de un bit con compuertas SSI.  Diseñar y construir un circuito decodificador de BCD a 7 segmentos utilizando un circuito MSI y un display de 7 segmentos.  Simular en la PC y construir un contador de 3 bits con CI 74LS76.  Diseñar y construir circuitos convertidores A/D y D/A.',NULL,'Comprende los fenómenos físicos en los que intervienen fuerzas, movimiento, trabajo, energía, así como los principios básicos de óptica y termodinámica, además comprende y aplica las leyes y principios fundamentales de la electricidad y el magnetismo. Plantea y resuelve problemas utilizando las definiciones de límite y derivada de funciones de una variable para la elaboración de modelos matemáticos aplicados. Resuelve problemas de modelos lineales aplicados en ingeniería para la toma de decisiones de acuerdo a la interpretación de resultados utilizando matrices y sistemas de ecuaciones. Analiza las propiedades de los espacios vectoriales y las transformaciones lineales para vincularlos con otras ramas de las matemáticas y otras disciplinas. Comprende y aplica los conceptos y propiedades de las estructuras matemáticas discretas para la representación y estudio de fenómenos discretos.','Comprende y aplica las herramientas básicas de análisis de los sistemas analógicos y digitales para resolver problemas del ámbito computacional.','El temario se organiza en cuatro temas, agrupando los contenidos conceptuales en el primer y segundo tema, así como el desarrollo de ejemplos prácticos. Para el tercer tema se aplican los principios de conversión A/D y D/A. En el primer tema se aborda Electrónica Analógica, cuyo contenido es necesario para conocer las características eléctricas de los principales elementos pasivos. En el segundo tema se aborda Electrónica Digital, la cual es necesaria enfocarla al Algebra Booleana, para aplicarla en el diseño e implementación de circuitos. El tercer tema se centra en los Convertidores “Analógicos y Digitales”, donde el estudiante realiza prácticas con circuitos integrados. El enfoque sugerido para la asignatura requiere que las actividades prácticas promuevan el desarrollo de habilidades en el estudiante, para la experimentación, tales como: identificación y manejo de componentes de hardware y su funcionamiento; planteamiento de hipótesis; trabajo en equipo; así mismo, propicien procesos intelectuales como inducción-deducción y análisis-síntesis, con la intención de generar una actividad intelectual de análisis y aplicación interactiva. En las actividades prácticas sugeridas, es conveniente que el docente busque y sugiera además de guiar a sus estudiantes para que ellos hagan la elección de los componentes a utilizar y controlar. Para que aprendan a planificar, el docente debe involucrarlos y orientarlos en el proceso de planeación y desarrollo de sus propias actividades de aprendizaje. Es importante ofrecer escenarios de trabajo y de problemática distintos, ya sean de construcción real o virtual. En las actividades de aprendizaje sugeridas, generalmente se propone la formalización de los conceptos a partir de experiencias concretas; se busca que el estudiante tenga el primer contacto con el concepto de manera concreta y sea a través de la observación, la reflexión y la discusión que se dé la formalización; la resolución de problemas se hará después de este proceso. En el transcurso de las actividades programadas, es muy importante que el estudiante aprenda a valorar las actividades que lleva a cabo y entienda que está construyendo su hacer futuro y en consecuencia actúe de una manera profesional; de igual manera, aprecie la importancia del conocimiento y los hábitos de trabajo; desarrolle la precisión y la curiosidad, la puntualidad, el entusiasmo, el interés, la tenacidad, la flexibilidad y la autonomía.','Esta asignatura aporta al perfil del Ingeniero en Sistemas Computacionales las siguientes habilidades:  Diseña e implementa interfaces para la automatización de sistemas de hardware y desarrollo del software asociado.  Coordina y participa en equipos multidisciplinarios para la aplicación de soluciones innovadoras en diferentes contextos. Principios Eléctricos y Aplicaciones Digitales, es una asignatura que aporta al perfil del Ingeniero en Sistemas Computacionales conocimientos y habilidades básicas para identificar y comprender las tecnologías de hardware, aplicando teorías para la solución de problemas que engloben escenarios de circuitos digitales. Para integrarla se ha hecho un análisis de las asignaturas de Física General, identificando los temas de Electrodinámica, Electrostática, y Matemáticas Discretas, identificando los temas de Lógica Matemática y Algebra Booleana, aportando herramientas en el quehacer profesional del Ingeniero en Sistemas Computacionales. Puesto que esta asignatura dará soporte a otras más, como lo son, Arquitectura de Computadoras, Lenguajes de Interfaz, Sistemas Programables, Fundamentos de Telecomunicaciones, se inserta en la primera mitad de la trayectoria escolar, antes de cursar aquellas a las que dará soporte. De manera particular, lo trabajado en esta asignatura se aplicará a temas tales como: Programación de Microcontroladores, Programación de Interfaces hombre-máquina y en la selección de componentes para el ensamble de equipos de cómputo.','2019-08-20 14:33:56',NULL,NULL,NULL),(46,'SCD1021',' Configurar diferentes tipos de cables siguiendo los estándares del cableado estructurado.  Utilizar las diferentes herramientas de diagnóstico para asegurar el correcto funcionamiento del cableado.  Enlazar nodos por medio de dispositivos de interconexión y medios de transmisión.  Configuración TCP/IP en estaciones de trabajo.  Realizar diferentes pruebas de interconectividad.  Realizar pruebas básicas de comunicación entre aplicaciones.  Realizar el diseño de una red utilizando herramientas CAD basada en el planteamiento de un problema real.',NULL,'Analiza los componentes y la funcionalidad de sistemas de comunicación para evaluar las tecnologías actuales como parte de la solución de un proyecto de conectividad.','Diseña y elabora un proyecto de cableado estructurado aplicando normas y estándares vigentes para la solución de problemas de conectividad.','Se organiza el temario, en cinco bloques teórico-prácticos relacionados con la planificación e identificación de cada uno de los elementos necesarios para el diseño y documentación de una red, que le permitirán al estudiante solucionar problemas de conectividad dentro de una organización. El tema uno propone escenarios que permiten a los estudiantes identificar y seleccionar la topología de red adecuada en función de las necesidades de manejo de información. El tema dos enfatiza la relación entre los conceptos, modelos, estándares vigentes así como su aplicación en el campo de las redes. El tema tres propicia la interacción con los dispositivos de interconexión catalogados en los diversos niveles del modelo OSI, implementando soluciones de conectividad. El tema cuatro prepara al estudiante para diseñar un sistema de cableado estructurado, aplicando pruebas de certificación y normas vigentes en una red LAN básica; así como la elaboración de la memoria técnica e identificación de los servicios. El tema cinco es integrador, y establece una metodología de trabajo para la planificación y diseño de redes de datos de acuerdo a las necesidades especificadas en un proyecto organizacional. En el transcurso de las actividades programadas es relevante que el estudiante se desenvuelva de manera proactiva y responsable; de igual manera, que aprecie la importancia del conocimiento y los hábitos de trabajo; desarrolle la precisión y la curiosidad, la puntualidad, el entusiasmo y el interés, la tenacidad, la flexibilidad, la autonomía y el trabajo en equipo.','Esta asignatura aporta al perfil del Ingeniero en Sistemas Computacionales las siguientes habilidades:  Implementa aplicaciones computacionales para solucionar problemas de diversos contextos, integrando diferentes tecnologías, plataformas o dispositivos  Desarrolla y administra software para apoyar la productividad y competitividad de las organizaciones cumpliendo con estándares de calidad.  Evalúa tecnologías de hardware para soportar aplicaciones de manera efectiva.  Diseña, configura y administra redes de computadoras para crear soluciones de conectividad en la organización, aplicando las normas y estándares vigentes. Integra la capacidad de conocer, analizar y aplicar los diversos componentes tanto físicos como lógicos involucrados en la planeación, diseño e instalación de las redes de computadoras, mediante el análisis de los fundamentos, estándares y normas vigentes.','2019-08-20 14:33:56',NULL,NULL,NULL),(47,'SCD1022','Práctica 1.- Determine las características que se requieren para simular un sistema como: un aeropuerto, una bodega de distribución de productos, un sistema de control de tránsito para la ciudad. Práctica 2.- Utilice uno de los métodos de generación vistos y construya un programa en un lenguaje de alto nivel en que, dados los datos que requiera, genere un período completo de al menos 4096 números pseudoaleatorios. Práctica 3.- Con el archivo obtenido en la práctica anterior y el generador utilizado, implemente un programa que aplique las pruebas estadísticas para demostrar la uniformidad de los números pseudoaleatorios generados (una de bondad de ajuste, la de medias y la de varianza). Práctica 4: Con el archivo obtenido en la práctica anterior y el generador utilizado, implemente un programa que aplique las pruebas estadísticas para demostrar la independencia de los números pseudoaleatorios generados (una prueba de corridas, la de póquer y una prueba de series). Práctica 5: Con el archivo obtenido en la práctica anterior y el generador utilizado, resuelva un problema aplicando el método de Monte Carlo implementándolo en un lenguaje de alto nivel. Práctica 6: Con el archivo obtenido en la práctica cuatro y el generador utilizado aplique a un problema donde no se conoce su distribución, el método de la transformada inversa, impleméntelo con un lenguaje de alto nivel. Práctica 7.- Implemente en un lenguaje de alto nivel los algoritmos de las variables aleatorias discretas utilizando el archivo de la práctica cuatro y el generador de la práctica dos. Incluya todas las variables en una clase. Práctica 8.- Implemente en un lenguaje de alto nivel los algoritmos de las variables aleatorias continuas utilizando el archivo de la práctica cuatro y el generador de la práctica dos. Práctica 9.- Desarrolle un programa en lenguaje de alto nivel que compruebe las variables aleatorias generadas en la clase final de la práctica ocho. Práctica 10.- Utilice un simulador o un lenguaje de simulación comercial como Arena, Promodel, WebGPSS, etc. (versión escolar si no se tiene el profesional) para resolver un problema real o hipotético. Práctica 11.- Utilice un lenguaje de alto nivel para simular un sistema de inventarios o de líneas de espera utilizando todos los elementos que requiera de los obtenidos en las prácticas anteriores.',NULL,'Investigación de operaciones: Formula soluciones óptimas para generar una mejor alternativa para la toma de decisiones aplicando conceptos de los modelos matemáticos, técnicas y algoritmos. Estructura de datos: Identifica, selecciona y aplica eficientemente tipos de datos abstractos, métodos de ordenamiento y búsqueda para la optimización del rendimiento de soluciones de problemas del mundo real','Analiza, modela, desarrolla y experimenta sistemas productivos y de servicios, reales o hipotéticos, a través de la simulación de eventos discretos, para dar servicio al usuario que necesite tomar decisiones, con el fin de describir con claridad su funcionamiento, aplicando herramientas matemáticas.','La asignatura está integrada por cinco temas dentro de las cuales el estudiante deberá realizar análisis, modelado, desarrollo y experimentación de sistemas reales. En las actividades de aprendizaje sugeridas, se propone la formalización de los conceptos a partir de experiencias; se busca que el estudiante tenga el primer contacto con el concepto en forma concreta y sea a través de la observación, la reflexión y la discusión, que se dé la formalización, la resolución de problemas se hará después de este proceso. En el primer tema, se abordan conceptos básicos y la metodología empleada en la simulación. En el segundo tema, el estudiante será capaz de generar números aleatorios uniformemente distribuidos utilizando los métodos y pruebas estadísticas más pertinentes para ello. El tercer tema, conocerá y comprenderá métodos y procedimientos especiales para generar variables aleatorias, siguiendo las distribuciones estadísticas más conocidas utilizando los algoritmos obtenidos para generarlas. En el cuarto tema el estudiante aprenderá a manejar, por lo menos, un simulador de eventos discretos o lineales, para que reconozca los elementos que los integran y utilizarlos en la simulación modelos matemáticos. Además, aplicará métodos estadísticos para la validación de los resultados y del modelo de simulación para garantizar los resultados de la simulación. En el quinto tema el estudiante analizará, modelará y simulará un sistema o subsistema, utilizando las técnicas aprendidas con anterioridad. En el transcurso de las actividades programadas es muy importante que el estudiante aprenda a valorar las actividades que lleva a cabo y entienda que está construyendo su quehacer futuro y en consecuencia actúe de una manera profesional; de igual manera, aprecie la importancia del conocimiento y los hábitos de trabajo; desarrolle la precisión y la curiosidad, la puntualidad, el entusiasmo y el interés, la tenacidad, la flexibilidad y la autonomía. Es necesario que el profesor ponga atención y cuidado en estos aspectos en el desarrollo de las actividades de aprendizaje de esta asignatura, que promueva el establecimiento de relaciones objetivas entre los conocimientos que el estudiante va construyendo y la realidad social y profesional de su entorno y así vaya ampliando su cultura.','La asignatura de Simulación aporta al perfil del Ingeniero en Sistemas Computacionales la habilidad de establecer modelos de simulación que le permitan analizar el comportamiento de un sistema real, así como la capacidad de seleccionar y aplicar herramientas matemáticas para el modelado, diseño y desarrollo de tecnología computacional. La importancia de esta materia para un Ingeniero en Sistemas Computacionales es la de aplicar los conocimientos adquiridos para plantear modelos matemáticos a sistemas reales complejos lineales para la toma de decisiones y la solución a estos, empleando herramientas matemáticas y computacionales, dado que las tendencias actuales exigen realizar la simulación en áreas como la ciencia, la industria y los negocios. Esta asignatura agrupa los conocimientos necesarios para modelar y simular sistemas discretos y lineales, abarcando desde la generación de números aleatorios y métodos para la generación de variables aleatorias, hasta la construcción de modelos de simulación. Simulación, es una asignatura que requiere la aplicación de métodos de probabilidad y la habilidad de realizar pruebas estadísticas, así como resolver modelos de Investigación de Operaciones como sistemas de inventarios y de líneas de espera, incluyendo la competencia de programar en un lenguaje de alto nivel.','2019-08-20 14:33:56',NULL,NULL,NULL),(48,'SCD1027',' Editar compilar y ejecutar distintos programas que incluyan el uso de formularios, botones, etiquetas y cajas de texto.  Desarrollar aplicaciones que incluyan la programación de eventos.  Desarrollar aplicaciones que incluyan la generación de nuevos eventos.  Desarrollar aplicaciones que maneje gráficos en un componente tipo canvas.  Desarrollar aplicaciones que maneje componentes visuales y no visuales proporcionados por la IDE.  Desarrollar aplicaciones que maneje librerías proporcionados por la IDE.  Desarrollar componentes visuales o no visuales a partir de requerimientos previamente definidos y aplicarlos en el diseño de aplicaciones.  Desarrollar librerías a partir de requerimientos previamente definidos y aplicarlos en el diseño de aplicaciones.  Analizar las diferencias de funcionalidad entre programas de flujo único contra programas de flujo múltiple.  Desarrollar programas que implementen el uso de un hilo y manipulen sus distintos estados.  Desarrollar programas que implementen el uso de varios hilos que compartan recursos y estén sincronizados.  Desarrollar una aplicación con programación concurrente que resuelva un problema real.  Desarrollar una aplicación que permita establecer la conexión a un origen de datos.  Desarrollar aplicaciones donde utilice el envío, recepción y visualización de datos.  Desarrollar un juego para un dispositivo móvil.',NULL,'Diseña y desarrolla programas para la solución de problemas computacionales utilizando el paradigma orientado a objetos.','Desarrolla soluciones de software para resolver problemas en diversos contextos utilizando programación concurrente, acceso a datos, que soporten interfaz gráfica de usuario y consideren dispositivos móviles.','Se organiza el temario, en cinco unidades, en la primera tema se estudia la Interfaz Gráfica de Usuario (GUI), dependiendo de las herramientas utilizadas en los cursos anteriores se puede elegir la misma herramienta o una distinta con el fin de que el estudiante aprenda a utilizar los componentes gráficos que brinde el entorno de desarrollo, que incluya el manejo de eventos y que desarrolle nuevos componentes derivados de los ya existentes pero que incluyan nuevas propiedades. Es recomendable considerar los conocimientos previos del grupo y las herramientas de desarrollo con las que están familiarizados. La resolución de problemas como una herramienta resulta eficaz para aprender estos conocimientos, partiendo de la definición de un problema real que pueda ser resuelto utilizando la programación de eventos y requiera de una interfaz gráfica. El segundo tema se enfoca al estudio de la creación y manejo de librerías y componentes (estos términos pueden variar según el lenguaje de programación utilizado). Se entiende como librería a un conjunto de bloques de códigos de programación normalmente compilados, que pueden ser incluidos en una aplicación para su uso. Y a un componente como una clase de uso específico, lista para usar, que puede ser configurada o utilizada de forma visual, desde el entorno de desarrollo. En el tercer tema se aborda el tema de programación concurrente requiere de iniciar con el estudio a nivel conceptual sobre los hilos y su funcionamiento, y después ir implementando aplicaciones multihilos. Uno de los puntos más sensibles es la sincronización por lo que deben hacerse hincapié en una buena implementación. En el cuarto tema se aborda el tema de acceso a datos, donde se requiere aprender cómo realizar la conexión con diferentes orígenes de datos, su manipulación y visualización. El quinto tema se refiere al estudio de la programación de dispositivos móviles, la intención de este tema es realizar un estudio a nivel introductorio sobre las distintas tecnologías que hay en el mercado, y desarrollar aplicaciones sencillas para esta clase de dispositivos.','Esta asignatura apoya en la implementación de aplicaciones computacionales para solucionar problemas de diversos contextos, integrando diferentes tecnologías, plataformas o dispositivos, por medio del desarrollo de software utilizando programación concurrente, acceso a datos, que soporte interfaz gráfica de usuario e incluya programación móvil. Para el logro de los objetivos es necesario que el estudiante tenga competencias previas en cuanto a paradigmas de programación, el uso de metodologías para la solución de problemas mediante la construcción de algoritmos utilizando un lenguaje de programación orientada a objetos, el manejo de conceptos básicos de Hardware y Software, construcción de modelos de software empleando diagramas de clases. Para adquirir la competencia planteada en esta asignatura es necesario que el estudiante haya acreditado la asignatura de Programación Orientada a Objetos y evitar cursarla en semestres muy avanzados tomando en cuenta que en esta asignatura el estudiante desarrollará competencias necesarias para cursos posteriores entre los que se encuentran los talleres de bases de datos y programación web.','2019-08-20 14:33:56',NULL,NULL,NULL),(49,'SCF1006','1. Equilibrio en dos dimensiones. 2. Movimiento rectilíneo uniforme. 3. Tiro parabólico. 4. Medición de temperaturas de acuerdo a sus diferentes escalas. 5. Espejos y lentes. 6. Imanes y campo magnético. 7. Cargas electrostáticas. 8. Capacitores. 9. Circuitos con resistencias. 10. Inductores',NULL,'Conocer el concepto de derivada, integrales, algebra vectorial y sus aplicaciones ','Comprender los fenómenos físicos en los que intervienen fuerzas, movimiento, trabajo, energía, así como los principios básicos de Óptica y Termodinámica, además comprende y aplica las leyes y principios fundamentales de la electricidad y el magnetismo.','Se organiza el temario en 7 unidades, con los conceptos básicos de la Física en la primera unidad, permite que el estudiante interprete el manejo vectorial de las fuerzas, así como la resolución de problemas de equilibrio, involucrando las ecuaciones básicas de equilibrio, momentos y sus aplicaciones. En la segunda unidad se hace una revisión del movimiento de los cuerpos clasificando y diferenciando lo que es velocidad, rapidez y aceleración en ejemplos prácticos de la partícula. Y la cinética permite conocer las causas que ocasiona el movimiento y las que se oponen a éste. La tercera unidad da una visión al estudiante sobre los conceptos de óptica geométrica y sus aplicaciones en el mundo que lo rodea. En la cuarta unidad se estudian las leyes de la termodinámica, buscando una visión de conjunto de éste campo de estudio. Al hacer una revisión de éstas leyes, se incluyen los conceptos involucrados. La segunda ley es esencial para fundamentar una visión de economía energética. El estudio y la aplicación de fenómenos electrostáticos se encuentra en la quinta unidad, donde se diferencía el concepto de campo eléctrico y las leyes electrostáticas que rigen este campo. También, permite conocer el potencial eléctrico que generan las cargas electrostáticas, involucrándose con el mundo real. La sexta unidad, permite al estudiante conocer el flujo de electrones a través de conductores, identificando el efecto Joule en éstos, debido al paso de la corriente y la integración de circuitos serieparalelos y estructuración de redes complejas, que le permitan desarrollar los conocimientos elementales de física en aplicaciones prácticas. Mediante la séptima unidad de este curso, el estudiante conoce la interacción de fuerzas magnéticas entre corrientes eléctricas y campos magnéticos, las leyes que rigen los campos magnéticos y las leyes de generación de la fuerza electromecánica, así como la inductancia magnética.','La Física es una ciencia que proporciona al estudiante una presentación clara y lógica de los conceptos y principios básicos, los cuales permiten entender el comportamiento de fenómenos de la naturaleza, y con ello, fortalecer la comprensión de los diversos conceptos a través de una amplia gama de interesantes aplicaciones al mundo real. La disposición de éstos objetivos hace hincapié en las situaciones con argumentos físicos sólidos. Al mismo tiempo, se motiva la atención del estudiante a través de ejemplos prácticos para demostrarle las formas de aplicar la Física en otras disciplinas, como circuitos eléctricos, aplicaciones electrónicos, etc.; además, coadyuva en el análisis y razonamiento crítico que debe privar en todo ingeniero para la resolución de problemas que se le presenten durante su quehacer profesional. El ingeniero en Sistemas Computacionales tendrá las herramientas necesarias para poder interactuar con profesionales en otros campos del saber, para que de ésta manera solucione problemas con bases cimentadas en la Física y poder afrontar los retos actuales del desarrollo tecnológico.','2019-08-20 14:33:56',NULL,NULL,NULL),(50,'SCG1009','1. Elija un escenario ya sea simulado u organizacional donde se pueda detectar alguna problemática para que realice su análisis correspondiente y presenta una solución a la problemática. 2. Analiza y documenta la solución dada en la práctica anterior, utilizando métricas, estándares y adapta el resultado obtenido enfocado en un entorno de calidad. 2.1 Gestión del proyecto mediante un plan de calidad. 2.2 Utiliza una herramienta automática para controlar los cambios de los artefactos generados durante la gestión de proyectos de software 3. Lleva a cabo la gestión del proyecto de software elegido por los equipos de trabajo, considerando lo siguiente: 3.1. Documenta adecuadamente cada fase 3.2. Integra y justifica un equipo de desarrollo acorde a la metodología seleccionada para el desarrollo del proyecto de software. 3.3. Presenta durante el semestre avances. 3.4. Expone al final del semestre los resultados. 4. Realiza un informe ejecutivo del proyecto en base a la metodología tratada en el tema cuatro. 5. Supervisa, revisa el proyecto y presenta los resultados obtenidos.',NULL,'Desarrolla soluciones de software, considerando la metodología y herramientas para la elaboración de un proyecto aplicativo en diferentes escenarios. ','Aplica metodologías e instrumentos, para garantizar la gestión adecuada de un proyecto de software.','Los contenidos de la asignatura de gestión de proyectos de software deben ser abordados de tal manera que cada tema esté dividido en dos partes, la primera parte del tema será para que el docente le presente al alumno los conceptos que la conforman, y la segunda parte deberá abarcar el diseño de la práctica a realizar. Por la naturaleza de los temas, el estudiante inicia el proyecto desde el tercer tema y se le dará seguimiento a lo largo de la asignatura. En el primer tema, se podrá conocer y comprender el entorno global para la gestión de proyectos. En el segundo tema, se conocerán los factores que más afectan la calidad del software, las normas, estándares y herramientas para mejorar la calidad del producto de software a desarrollar. En el tercer tema el estudiante podrá comenzar a planificar un proyectos que solucione una problemática real iniciando con la determinación de objetivos, el análisis costo beneficio, análisis y recuperación de riesgos, todo esto con la finalidad de determinar la viabilidad del proyecto propuesto. En el cuarto tema, conocerá la forma en que se debe presentar la propuesta del plan del proyecto. En el quinto tema, se proporcionará al alumno los conocimientos de administración de recursos, tiempo y de cómo llevar a cabo el seguimiento del desarrollo del proyecto. De tal manera que al finalizar la asignatura el estudiante debe de realizar una presentación en la empresa que describa los resultados de la gestión del proyecto. Se sugiere que el docente, presente al estudiante ejemplos reales de gestión de software para que el estudiante tenga una visión clara de la actividad que debe de realizar. El estudiante debe:  Verificar una propuesta de solución a la problemática detectada.  Llevar a cabo la gestión de un proyecto de software elegido por los equipos de trabajo, para lo cual es necesario: o Integrar y justificar un equipo de desarrollo acorde a la metodología. seleccionada para el desarrollo del proyecto de software. o Presentar durante el semestre avances.  Exponer al final del semestre los resultados','La aportación que esta asignatura le da al perfil profesional es la siguiente:  Implementa aplicaciones computacionales para solucionar problemas de diversos contextos, integrando diferentes tecnologías, plataformas o dispositivos  Diseña e implementa interfaces para la automatización de sistemas de hardware y desarrollo del software asociado.  Coordina y participa en equipos multidisciplinarios para la aplicación de soluciones innovadoras en diferentes contextos.  Desarrolla y administra software para apoyar la productividad y competitividad de las organizaciones cumpliendo con estándares de calidad. La asignatura de Gestión de proyectos de software, proporciona al estudiante los conceptos que requiere y que debe contemplar para la gestión de un proyecto de software. Por otro lado, le da la posibilidad de poner en práctica dicha gestión, ya que se sugiere que en esta asignatura, el estudiante desarrolle un proyecto de gestión de software para una organización, adquiriendo las competencias necesarias para estar al frente de dichos proyectos. La intención es que los estudiantes gestionen un proyecto de software de carácter multidisciplinario, a fin de trabajar las competencias genéricas que exige su formación profesional. La asignatura de gestión de proyectos se relaciona con asignaturas previas como Taller de administración, Ingeniería de software, Taller y Administración de bases de datos; y es la base para asignaturas de octavo semestre en adelante.','2019-08-20 14:33:56',NULL,NULL,NULL),(51,'SCH1024','1. Aplicar el proceso de selección y reclutamiento en un caso práctico 2. Elaborar un perfil de competencia para un ingeniero en informática. 3. Aplicación del proceso administrativo en empresas de la región. 4. Elaboración de una síntesis sobre los diversos tipos de empresas 5. Desarrollo de un análisis aplicando la matriz FODA 6. Investigar sistemas de control aplicables a los sistemas computacionales 7. Realizar un análisis de puestos relacionado con un área computacional 8. Analizar el perfil profesional del ISC y compararlo con un puesto tomando como base una empresa 9. Elaborar un cronograma de actividades. 10. Desarrollo de prácticas administrativas enfocadas a la planeación, organización dirección y control 11. Construcción del portafolio de evidencias de los productos académicos que evidencien los ejercicios desarrollados en el temario como producto final',NULL,' Compromiso ético  Habilidades para la comprensión de la lectura y redacción de textos  Capacidad para trabajar en equipo','Comprender y aplicar los principios generales de la administración y su proceso en las estructuras y funciones fundamentales de las organizaciones acorde a las necesidades de la misma, para contribuir sustantivamente con los procesos de planeación y toma de decisiones, con una visión crítica del contexto empresarial','Se organiza el temario, en seis unidades, agrupando los contenidos conceptuales de la asignatura en la primera unidad referentes a la empresa, los tipos y las áreas básicas de una organización. En la segundad unidad se trata el entorno de las empresas, su cultura corporativa y el impacto de la globalización en las organizaciones. En la tercera unidad se incluyen los temas concernientes a la toma de decisiones; desde los tipos y niveles de decisiones hasta el proceso mismo de la toma de decisiones. La cuarta unidad contempla la mecánica del proceso administrativo; es decir los elementos de la planeación y organización. La quinta unidad abarca el proceso administrativo en su parte dinámica, con los elementos de la dirección y el control de las empresas. La sexta unidad integra la administración de proyectos, dando un cierre de la materia al contemplar los fundamentos, las etapas y la metodología de la administración de proyectos; elementos necesarios para el desempeño profesional. El enfoque sugerido para la materia requiere que las actividades prácticas promuevan el desarrollo de habilidades para la experimentación, tales como: identificación, clasificación, análisis y registro de los elementos del proceso administrativo; trabajo en equipo; asimismo, propicien procesos intelectuales como inducción-deducción y análisis-síntesis con la intención de generar una actividad intelectual compleja; esto permite la integración del alumno con el conocimiento durante el curso. Principalmente se busca formalizar los conceptos a partir de experiencias concretas, cotidianas, para que el estudiante se acostumbre a reconocer las situaciones de su entorno y no sólo se hable de ellos en el aula. Es importante ofrecer escenarios distintos, locales o cercanos, nacionales y globales. En el transcurso de las actividades programadas es muy importante que el estudiante aprenda a valorar las actividades que lleva a cabo y sea consiente que está construyendo su hacer futuro y en consecuencia actúe de una manera profesional; de igual manera, aprecie la importancia del conocimiento y los hábitos de trabajo; desarrolle la precisión y la curiosidad, la puntualidad, el entusiasmo y el interés, la tenacidad, la flexibilidad, la autonomía y la toma de decisiones.','Esta asignatura aporta al perfil del Ingeniero en sistemas computacionales la capacidad de coordinar y participar en proyectos interdisciplinarios y una visión empresarial para detectar áreas de oportunidad que le permitan emprender y desarrollar proyectos aplicando las tecnologías de la información y comunicación. La importancia de la materia radica en la comprensión y aplicación de los principios generales de la administración y su proceso en las estructuras y funciones fundamentales de las organizaciones para el desarrollo de una visión crítica del contexto empresarial. La materia consiste en la identificación de las áreas básicas de una organización, su administración y su entorno considerando el aspecto de tomas de decisiones y la dinámica del proceso administrativo. Esta asignatura se relaciona con los temas de etapas de la administración de proyecto y metodología de administración de proyectos con la materia de gestión de proyectos de software y con los temas de desempeño gerencial y organizacional con la materia de cultura empresarial.','2019-08-20 14:33:56',NULL,NULL,NULL),(52,'TAD1801',NULL,NULL,NULL,NULL,NULL,NULL,'2019-08-20 14:33:56',NULL,NULL,NULL),(53,'TAD1802',NULL,NULL,NULL,NULL,NULL,NULL,'2019-08-20 14:33:56',NULL,NULL,NULL),(54,'TAD1803',NULL,NULL,NULL,NULL,NULL,NULL,'2019-08-20 14:33:56',NULL,NULL,NULL),(55,'TAD1804',NULL,NULL,NULL,NULL,NULL,NULL,'2019-08-20 14:33:56',NULL,NULL,NULL),(56,'TAD1805',NULL,NULL,NULL,NULL,NULL,NULL,'2019-08-20 14:33:56',NULL,NULL,NULL),(57,'X01',NULL,NULL,NULL,NULL,NULL,NULL,'2019-08-20 14:33:56',NULL,NULL,NULL),(58,'X02',NULL,NULL,NULL,NULL,NULL,NULL,'2019-08-20 14:33:56',NULL,NULL,NULL),(59,'X03',NULL,NULL,NULL,NULL,NULL,NULL,'2019-08-20 14:33:56',NULL,NULL,NULL),(60,'X04',NULL,NULL,NULL,NULL,NULL,NULL,'2019-08-20 14:33:56',NULL,NULL,NULL),(61,'X05',NULL,NULL,NULL,NULL,NULL,NULL,'2019-08-20 14:33:56',NULL,NULL,NULL),(62,'X06',NULL,NULL,NULL,NULL,NULL,NULL,'2019-08-20 14:33:56',NULL,NULL,NULL),(63,'X07',NULL,NULL,NULL,NULL,NULL,NULL,'2019-08-20 14:33:56',NULL,NULL,NULL),(64,'X08',NULL,NULL,NULL,NULL,NULL,NULL,'2019-08-20 14:33:56',NULL,NULL,NULL);
/*!40000 ALTER TABLE `asignatura_caracterizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignatura_cd`
--

DROP TABLE IF EXISTS `asignatura_cd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignatura_cd` (
  `ACD_CVE_CD` varchar(20) NOT NULL COMMENT 'CLAVE DEL CRITERIO DE DESEMPEÑO, se obtiene de la lista de criterios que componen un atributo de egreso por dependencia',
  `ACD_CVE_ASIGNATURA` varchar(15) NOT NULL COMMENT 'CLAVE DE LA ASIGNURA, es la clave de la asigntura que correponde al programa educativo',
  `ACD_DCD_CVE` varchar(20) DEFAULT NULL,
  `ACD_NIVEL` varchar(3) DEFAULT NULL COMMENT 'contiene el nivel del criterio del desempeño "A- AVANZADO, M - MEDIO, I- INCIPIENTE"',
  `ACD_FEC_INSERT` datetime DEFAULT CURRENT_TIMESTAMP,
  `ACD_FEC_UPDATE` datetime DEFAULT NULL,
  `ACD_LAST_USER` int unsigned DEFAULT NULL,
  `ACD_LAST_IP` int unsigned DEFAULT NULL,
  `ACD_ACTIVO` char(1) DEFAULT 'A',
  PRIMARY KEY (`ACD_CVE_CD`,`ACD_CVE_ASIGNATURA`),
  KEY `FK_ACD_ASIGNATURA_idx` (`ACD_CVE_ASIGNATURA`),
  KEY `FK_DCD_CVE_idx` (`ACD_DCD_CVE`),
  CONSTRAINT `FK_ACD_ASIGNATURA` FOREIGN KEY (`ACD_CVE_ASIGNATURA`) REFERENCES `asignatura` (`AS_CVE_ASIGNATURA`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ACD_CD` FOREIGN KEY (`ACD_CVE_CD`) REFERENCES `criterios_desempenio` (`cd_clave`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Contiene los valores del los criterios de evaluación por cada materia';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignatura_cd`
--

LOCK TABLES `asignatura_cd` WRITE;
/*!40000 ALTER TABLE `asignatura_cd` DISABLE KEYS */;
INSERT INTO `asignatura_cd` VALUES ('ISC_AE1_CD1','1090004',NULL,'A','2021-04-26 10:39:18',NULL,NULL,NULL,'A'),('ISC_AE1_CD1','ACF0903',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD1','AEB1055',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD1','AEC1061',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD1','AED1026',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD1','AED1285',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD1','AED1286',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD1','AEF1031',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD1','AEF1052',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD1','DAD1803',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD1','DAD1804',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD1','GAVACAD',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD1','IAD1802',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD1','SCA1026',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD1','SCC1007',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD1','SCC1010',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD1','SCC1012',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD1','SCC1013',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD1','SCC1019',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD1','SCC1023',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD1','SCD1003',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD1','SCD1011',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD1','SCD1015',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD1','SCD1016',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD1','SCD1027',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD1','SCH1024',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD1','TAD1801',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD1','TAD1802',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD1','TAD1803',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD1','X01',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD2','1090004',NULL,'A','2021-04-26 10:40:17',NULL,NULL,NULL,'A'),('ISC_AE1_CD2','DAD1803',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD2','GAVACAD',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD2','IAD1802',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD2','SCA1026',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD2','SCC1007',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD2','SCC1010',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD2','SCC1012',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD2','SCC1023',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD2','SCD1015',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD2','SCD1027',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD2','TAD1802',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD2','TAD1804',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD2','X01',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD3','1090004',NULL,'A','2021-04-26 10:40:36',NULL,NULL,NULL,'A'),('ISC_AE1_CD3','AEB1055',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD3','AEC1034',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD3','DAD1803',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD3','DAD1804',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD3','GAVACAD',NULL,'i','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD3','IAD1802',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD3','SCA1002',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD3','SCC1007',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD3','SCC1010',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD3','SCD1011',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD3','SCD1015',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD3','SCH1024',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD3','TAD1801',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD3','TAD1802',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE1_CD3','X01',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD1','1090004',NULL,'A','2021-04-26 10:41:09',NULL,NULL,NULL,'A'),('ISC_AE2_CD1','ACF0901',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD1','ACF0902',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD1','ACF0903',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD1','ACF0904',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD1','AED1026',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD1','AED1286',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD1','AEF1031',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD1','AEF1041',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD1','AEF1052',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD1','GAVACAD',NULL,'i','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD1','IAD1802',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD1','SCC1010',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD1','SCC1012',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD1','SCC1013',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD1','SCD1015',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD1','SCD1016',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD1','SCD1022',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD1','SCF1006',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD1','TAD1802',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD1','X01',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD2','1090004',NULL,'A','2021-04-26 10:41:14',NULL,NULL,NULL,'A'),('ISC_AE2_CD2','AED1026',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD2','AED1286',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD2','AEF1052',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD2','IAD1802',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD2','SCC1010',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD2','SCC1012',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD2','SCC1017',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD2','SCD1015',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD2','SCD1016',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD2','SCD1022',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD2','SCF1006',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD2','TAD1802',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD2','X01',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD3','1090004',NULL,'A','2021-04-26 10:41:16',NULL,NULL,NULL,'A'),('ISC_AE2_CD3','ACF0901',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD3','ACF0902',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD3','ACF0904',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD3','AEC1034',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD3','AEF1031',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD3','AEF1052',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD3','IAD1802',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD3','SCC1010',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD3','SCC1012',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD3','SCC1013',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD3','SCC1017',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD3','SCD1015',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD3','SCD1022',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD3','SCD1027',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD3','TAD1802',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD3','TAD1803',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE2_CD3','X01',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE3_CD1','1090004',NULL,'A','2021-04-26 10:41:24',NULL,NULL,NULL,'A'),('ISC_AE3_CD1','ACA0909',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE3_CD1','GAVACAD',NULL,'i','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE3_CD1','IAD1802',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE3_CD1','SCA1002',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE3_CD1','SCC1007',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE3_CD1','SCC1010',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE3_CD1','SCC1014',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE3_CD1','SCC1019',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE3_CD1','SCC1023',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE3_CD1','SCD1003',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE3_CD1','SCD1011',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE3_CD1','SCD1015',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE3_CD1','SCD1018',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE3_CD1','SCD1021',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE3_CD1','TAD1802',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE3_CD1','TAD1804',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE3_CD1','X01',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE3_CD2','1090004',NULL,'A','2021-04-26 10:41:27',NULL,NULL,NULL,'A'),('ISC_AE3_CD2','ACA0909',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE3_CD2','AEC1061',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE3_CD2','GAVACAD',NULL,'i','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE3_CD2','IAD1802',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE3_CD2','SCA1002',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE3_CD2','SCC1010',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE3_CD2','SCC1014',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE3_CD2','SCC1019',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE3_CD2','SCC1023',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE3_CD2','SCD1003',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE3_CD2','SCD1015',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE3_CD2','SCD1016',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE3_CD2','SCD1021',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE3_CD2','TAD1802',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE3_CD2','TAD1804',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE3_CD2','X01',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD1','1090004',NULL,'A','2021-04-26 10:41:37',NULL,NULL,NULL,'A'),('ISC_AE4_CD1','ACA0907',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD1','ACA0910',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD1','ACC0906',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD1','ACD0908',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD1','ACF0902',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD1','AEC1008',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD1','AEC1034',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD1','AED1286',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD1','DAD1801',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD1','DAD1803',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD1','DAD1805',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD1','IAD1802',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD1','SCC1007',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD1','SCC1014',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD1','SCC1019',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD1','SCD1003',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD1','SCD1004',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD1','SCD1011',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD1','SCD1015',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD1','SCG1009',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD1','TAD1802',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD1','TAD1805',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD1','X01',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD2','1090004',NULL,'A','2021-04-26 10:41:44',NULL,NULL,NULL,'A'),('ISC_AE4_CD2','ACA0910',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD2','AEC1008',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD2','AEC1034',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD2','DAD1803',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD2','IAD1802',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD2','SCC1007',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD2','SCC1019',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD2','SCD1015',NULL,'','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD2','SCG1009',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD2','TAD1802',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD2','TAD1805',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD2','X01',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD3','1090004',NULL,'A','2021-04-26 10:41:46',NULL,NULL,NULL,'A'),('ISC_AE4_CD3','ACA0907',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD3','ACA0910',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD3','ACC0906',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD3','ACF0903',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD3','AEC1008',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD3','AEC1034',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD3','AED1026',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD3','AED1286',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD3','AEF1031',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD3','DAD1804',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD3','DAD1805',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD3','IAD1802',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD3','SCB1001',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD3','SCC1007',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD3','SCC1012',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD3','SCC1014',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD3','SCD1003',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD3','SCD1004',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD3','SCD1011',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD3','SCD1015',NULL,'','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD3','SCD1016',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD3','SCD1018',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD3','SCD1022',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD3','SCD1027',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD3','SCF1006',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD3','SCG1009',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD3','TAD1801',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD3','TAD1802',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD3','TAD1805',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE4_CD3','X01',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE5_CD1','1090004',NULL,'A','2021-04-26 10:41:58',NULL,NULL,NULL,'A'),('ISC_AE5_CD1','AEB1055',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE5_CD1','AED1286',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE5_CD1','AEF1031',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE5_CD1','DAD1801',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE5_CD1','DAD1803',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE5_CD1','DAD1804',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE5_CD1','IAD1802',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE5_CD1','SCA1025',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE5_CD1','SCB1001',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE5_CD1','SCC1019',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE5_CD1','TAD1801',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE5_CD1','X01',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE5_CD2','1090004',NULL,'A','2021-04-26 10:42:00',NULL,NULL,NULL,'A'),('ISC_AE5_CD2','AEB1055',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE5_CD2','AEC1008',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE5_CD2','AEF1031',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE5_CD2','DAD1801',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE5_CD2','DAD1803',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE5_CD2','DAD1804',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE5_CD2','IAD1802',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE5_CD2','SCA1025',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE5_CD2','SCB1001',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE5_CD2','SCD1027',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE5_CD2','TAD1801',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE5_CD2','X01',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE5_CD3','1090004',NULL,'A','2021-04-26 10:42:02',NULL,NULL,NULL,'A'),('ISC_AE5_CD3','DAD1804',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE5_CD3','IAD1802',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE5_CD3','SCB1001',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE5_CD3','TAD1801',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE5_CD3','X01',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE6_CD1','1090004',NULL,'A','2021-04-26 10:42:13',NULL,NULL,NULL,'A'),('ISC_AE6_CD1','AEB1055',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE6_CD1','AEC1008',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE6_CD1','AED1285',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE6_CD1','AED1286',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE6_CD1','AEF1031',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE6_CD1','DAD1801',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE6_CD1','DAD1803',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE6_CD1','DAD1804',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE6_CD1','GAVACAD',NULL,'i','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE6_CD1','IAD1802',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE6_CD1','SCD1011',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE6_CD1','SCG1009',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE6_CD1','TAD1801',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE6_CD1','TAD1802',NULL,' M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE6_CD1','X01',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE6_CD2','1090004',NULL,'A','2021-04-26 10:42:16',NULL,NULL,NULL,'A'),('ISC_AE6_CD2','AEB1055',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE6_CD2','AEC1008',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE6_CD2','GAVACAD',NULL,'i','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE6_CD2','IAD1802',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE6_CD2','SCC1007',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE6_CD2','SCD1021',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE6_CD2','SCG1009',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE6_CD2','TAD1802',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE6_CD2','X01',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE7_CD1','1090004',NULL,'A','2021-04-26 10:42:20',NULL,NULL,NULL,'A'),('ISC_AE7_CD1','ACA0909',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE7_CD1','ACA0910',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE7_CD1','AEC1034',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE7_CD1','AEC1061',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE7_CD1','DAD1803',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE7_CD1','GAVACAD',NULL,'i','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE7_CD1','IAD1802',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE7_CD1','SCA1002',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE7_CD1','SCC1023',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE7_CD1','SCD1003',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE7_CD1','SCD1004',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE7_CD1','SCD1021',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE7_CD1','TAD1802',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE7_CD1','TAD1804',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE7_CD1','X01',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE8_CD1','ACA0907',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE8_CD1','ACA0909',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE8_CD1','ACA0910',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE8_CD1','AEB1055',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE8_CD1','AEC1008',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE8_CD1','AEC1034',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE8_CD1','AED1285',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE8_CD1','DAD1801',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE8_CD1','DAD1803',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE8_CD1','DAD1805',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE8_CD1','IAD1802',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE8_CD1','SCA1002',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE8_CD1','SCA1025',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE8_CD1','SCB1001',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE8_CD1','SCD1004',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE8_CD1','SCD1021',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE8_CD1','SCD1022',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE8_CD1','SCG1009',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE8_CD1','SCH1024',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE8_CD1','TAD1804',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE8_CD1','TAD1805',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE8_CD1','X01',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE8_CD2','ACA0909',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE8_CD2','ACA0910',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE8_CD2','ACC0906',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE8_CD2','AEC1008',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE8_CD2','DAD1803',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE8_CD2','DAD1805',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE8_CD2','IAD1802',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE8_CD2','SCC1005',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE8_CD2','SCG1009',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE8_CD2','SCH1024',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE8_CD2','TAD1805',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE8_CD2','X01',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE9_CD1','AEB1055',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE9_CD1','AEC1034',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE9_CD1','IAD1802',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE9_CD1','SCA1002',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE9_CD1','SCA1026',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE9_CD1','SCD1004',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE9_CD1','SCD1021',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE9_CD1','X01',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE9_CD2','AEB1055',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE9_CD2','DAD1801',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE9_CD2','DAD1804',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE9_CD2','IAD1802',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE9_CD2','SCA1002',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE9_CD2','SCA1026',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE9_CD2','SCC1023',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE9_CD2','SCD1004',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE9_CD2','SCD1021',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE9_CD2','TAD1801',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE9_CD2','X01',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE9_CD3','AEC1061',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE9_CD3','IAD1802',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE9_CD3','SCA1002',NULL,'A','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE9_CD3','SCD1021',NULL,'M','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE9_CD3','X01',NULL,'I','2019-07-05 14:59:02',NULL,2,NULL,'A'),('ISC_AE98_CD1','X01',NULL,'A','2019-07-08 12:41:39',NULL,138,2130706433,'A'),('ISC_AE98_CD2','X01',NULL,'A','2019-07-08 13:38:38',NULL,138,2130706433,'A');
/*!40000 ALTER TABLE `asignatura_cd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asistencias`
--

DROP TABLE IF EXISTS `asistencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asistencias` (
  `AS_ID` int NOT NULL AUTO_INCREMENT COMMENT 'CONTIENE LA CLAVE DEL REGISTRO DE LA ASISTENCIA EL CUAL ES AUTOINCREMENTABLE',
  `AS_DETALLE_ASISTENCIAS` varchar(2) DEFAULT NULL COMMENT 'Va a contener el valor de la asistencia, A= Asistencia, I=Inasistencia, J= Justificante, R=Retardo',
  `AS_CVE_GRUPO` varchar(10) DEFAULT NULL COMMENT 'CONTIENE LA CLAVE DEL GRUPO',
  `AS_CVE_ALUMNO` varchar(10) DEFAULT NULL COMMENT 'CONTIENE LA MATRICULA DEL ALUMNO',
  `AS_FEC_ALTA` datetime DEFAULT NULL COMMENT 'FECHA EN LA QUE SE INGRESO EL REGRISTRO COMPUESTO DE FECHA Y HORA',
  `AS_FEC_MOD` datetime DEFAULT NULL COMMENT 'FEHCA EN LA QUE SE MODIFICO EL REGRISTRO',
  PRIMARY KEY (`AS_ID`),
  KEY `asistencias_ibfk_3` (`AS_CVE_ALUMNO`),
  KEY `asistencias_ibfk_1` (`AS_CVE_GRUPO`),
  CONSTRAINT `asistencias_ibfk_1` FOREIGN KEY (`AS_CVE_GRUPO`) REFERENCES `grupo` (`gr_cve_grupo`),
  CONSTRAINT `asistencias_ibfk_3` FOREIGN KEY (`AS_CVE_ALUMNO`) REFERENCES `alumno` (`AL_MATRICULA`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='SE GUARDA EL VALOR DE LA ASISTENCIA POR GRUPO';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencias`
--

LOCK TABLES `asistencias` WRITE;
/*!40000 ALTER TABLE `asistencias` DISABLE KEYS */;
INSERT INTO `asistencias` VALUES (1,'A','ISC-5OA','16011891','2018-09-25 00:00:00',NULL),(2,NULL,'ISC-5OA','16011871',NULL,NULL),(3,NULL,'ISC-5OA','16011827',NULL,NULL);
/*!40000 ALTER TABLE `asistencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atributos_egreso`
--

DROP TABLE IF EXISTS `atributos_egreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atributos_egreso` (
  `AE_CLAVE` varchar(20) NOT NULL COMMENT 'Contiene la clave del atributo ',
  `AE_DESCRIPCION` text COMMENT 'Contiene la descripción del atributo en función de lo estipulado por la academia del PE.',
  `AE_TIPO` varchar(10) DEFAULT NULL COMMENT 'Contiene la especificación del tipo de atributo',
  `AE_FEC_ALTA` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Contiene la fecha de alta del registro',
  `AE_FEC_UPATE` datetime DEFAULT NULL COMMENT 'Contiene la fecha de modificación del registro',
  `AE_LAST_IP` int unsigned DEFAULT NULL COMMENT 'Contiene la última dirección ip que efectuo la ultima modificación del registro.',
  `AE_ACTIVO` char(1) DEFAULT 'A',
  PRIMARY KEY (`AE_CLAVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Contiene la lista de los atributos de egreso, el Acrónimo ISC representa el área a la que pertenecen esos atributos ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atributos_egreso`
--

LOCK TABLES `atributos_egreso` WRITE;
/*!40000 ALTER TABLE `atributos_egreso` DISABLE KEYS */;
INSERT INTO `atributos_egreso` VALUES ('ISC_AE','',NULL,'2019-10-04 12:45:47',NULL,2130706433,'I'),('ISC_AE1','Los egresados Implementan aplicaciones computacionales para solucionar problemas complejos de ingeniería en diversos contextos, integrando hardware y software, plataformas o dispositivos dentro de una empresa o consultoría.  ',NULL,'2019-06-20 13:36:28',NULL,NULL,'A'),('ISC_AE10','asdsda asdsdasda ',NULL,'2019-07-01 12:25:26',NULL,2130706433,'I'),('ISC_AE101','qweqwrq dfsdf sdf',NULL,'2019-07-01 13:49:59',NULL,2130706433,'I'),('ISC_AE1053','qeteuer',NULL,'2019-07-01 15:31:11',NULL,2130706433,'I'),('ISC_AE14','wqeqweqwe',NULL,'2019-09-12 16:56:26',NULL,2130706433,'I'),('ISC_AE145','sgasdfgsfd ef',NULL,'2019-07-01 15:35:23',NULL,2130706433,'I'),('ISC_AE2','Diseña, desarrolla y aplica modelos computacionales para solucionar problemas complejos de ingeniería, mediante la selección y uso de herramientas matemáticas',NULL,'2019-06-20 13:36:28',NULL,NULL,'A'),('ISC_AE21','{ñsfjSGHDLFK',NULL,'2019-07-01 13:42:13',NULL,2130706433,'I'),('ISC_AE3','Diseña e implementa interfaces para la automatización de sistemas de hardware y desarrollo del software asociado basado en normas y estándares vigentes.',NULL,'2019-06-20 13:36:28',NULL,NULL,'A'),('ISC_AE4','Coordina y participa en equipos multidisciplinarios para la aplicación de soluciones innovadoras en diferentes contextos, mediante un plan estratégico',NULL,'2019-06-20 13:36:28',NULL,NULL,'A'),('ISC_AE5','Diseña, implementa y administra bases de datos optimizando los recursos disponibles, conforme a las normas vigentes de manejo y seguridad de la información para apoyar la productividad y eficiencia de las organizaciones.',NULL,'2019-06-20 13:36:28',NULL,NULL,'A'),('ISC_AE6','Desarrolla y administra software para apoyar la productividad y competitividad de las organizaciones cumpliendo con estándares de calidad en diferentes contextos integrando diferentes tecnologías, plataformas y/o dispositivos.',NULL,'2019-06-20 13:36:28',NULL,NULL,'A'),('ISC_AE7','Evalúa tecnologías de hardware  para soportar aplicaciones de manera efectiva, tomando en cuenta las diferentes plataformas y/o dispositivos.',NULL,'2019-06-20 13:36:28',NULL,NULL,'A'),('ISC_AE8','Detecta áreas de oportunidad empleando una visión empresarial para crear proyectos aplicando las Tecnologías de la Información.',NULL,'2019-06-20 13:36:28',NULL,NULL,'A'),('ISC_AE9','Diseña, configura y administra redes de computadoras para crear soluciones de conectividad en la organización, aplicando las normas y estándares vigentes',NULL,'2019-06-20 13:36:28',NULL,NULL,'A'),('ISC_AE98','Optimiza modelos de impresión en 3D',NULL,'2019-07-01 15:36:54',NULL,2130706433,'I'),('ISC_AEATR2','ATRA',NULL,'2019-09-10 11:59:45',NULL,2130706433,'I'),('ISC_AEWER','QWEQWEQWE',NULL,'2019-09-10 12:12:15',NULL,2130706433,'I'),('ISC_Z','FD',NULL,'2021-03-19 01:06:32',NULL,NULL,'I'),('ITSOEH_AE','',NULL,'2019-09-03 15:58:45',NULL,2130706433,'I');
/*!40000 ALTER TABLE `atributos_egreso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aulas_laboratorios`
--

DROP TABLE IF EXISTS `aulas_laboratorios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aulas_laboratorios` (
  `AUL_ID` int NOT NULL AUTO_INCREMENT,
  `AUL_AULAS` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`AUL_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aulas_laboratorios`
--

LOCK TABLES `aulas_laboratorios` WRITE;
/*!40000 ALTER TABLE `aulas_laboratorios` DISABLE KEYS */;
INSERT INTO `aulas_laboratorios` VALUES (1,'Aula 401'),(2,'Aula 402'),(3,'Aula 403'),(4,'Aula 404'),(5,'Aula 405'),(6,'Aula 406'),(7,'Aula LPB');
/*!40000 ALTER TABLE `aulas_laboratorios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canalizacion_grupo`
--

DROP TABLE IF EXISTS `canalizacion_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canalizacion_grupo` (
  `CG_ID` int NOT NULL AUTO_INCREMENT,
  `CG_CVE_GRUPO` varchar(10) DEFAULT NULL,
  `CG_AL_DESERTORES` varchar(500) DEFAULT NULL,
  `CG_CAUSAS` varchar(500) DEFAULT NULL,
  `CG_ACCIONES` varchar(500) DEFAULT NULL,
  `CG_NOMBRE` varchar(500) DEFAULT NULL,
  `CG_ALUMNOS_REPROBADOS` int DEFAULT NULL,
  PRIMARY KEY (`CG_ID`),
  UNIQUE KEY `CG_ID_UNIQUE` (`CG_ID`),
  KEY `fk_cve_canalizacion_idx` (`CG_CVE_GRUPO`),
  CONSTRAINT `fk_cve_canalizacion` FOREIGN KEY (`CG_CVE_GRUPO`) REFERENCES `grupo` (`gr_cve_grupo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canalizacion_grupo`
--

LOCK TABLES `canalizacion_grupo` WRITE;
/*!40000 ALTER TABLE `canalizacion_grupo` DISABLE KEYS */;
INSERT INTO `canalizacion_grupo` VALUES (1,'ISC4O1B','5','No asistian a clases.','Mandarlos a psicologia','Jose Luis,Jaen Angeles.Ericka Angeles',2),(2,'ISC4O1C','2','No asistian a clases.','Realizar Ejercicios.','Jose Luis ,Brandon Osiris',1),(3,'ISC4O7B','1','No entrego trabajos','Realizar Ejercicios y entregar trabajos','Cristina Juarez Hernandez',1),(4,'ISC5O5B','0','Calificacion baja en el examen ','Entregar problemario de ejercicios ','Jaen Angeles , Ricardo Sanchez',1);
/*!40000 ALTER TABLE `canalizacion_grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carga_alumno`
--

DROP TABLE IF EXISTS `carga_alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carga_alumno` (
  `CA_ID` int NOT NULL AUTO_INCREMENT,
  `CA_CALF_FINAL` int DEFAULT NULL,
  `CA_CVE_GRUPO` varchar(10) DEFAULT NULL,
  `CA_CVE_ALUMNO` varchar(10) DEFAULT NULL,
  `CA_CVE_PERIODO` varchar(10) DEFAULT NULL COMMENT 'Clave del periodo al que esta inscrito el grupo.',
  `CA_FEC_INSERT` datetime DEFAULT CURRENT_TIMESTAMP,
  `CA_FEC_UP` datetime DEFAULT NULL,
  `CA_LAST_IP` int unsigned DEFAULT NULL,
  `CA_BY_USER` int DEFAULT NULL,
  `CA_ACTIVO` char(1) DEFAULT 'A',
  PRIMARY KEY (`CA_ID`),
  KEY `CA_CVE_ALUMNO` (`CA_CVE_ALUMNO`),
  KEY `carga_alumno_ibfk_1` (`CA_CVE_GRUPO`),
  CONSTRAINT `carga_alumno_ibfk_1` FOREIGN KEY (`CA_CVE_GRUPO`) REFERENCES `grupo` (`gr_cve_grupo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `carga_alumno_ibfk_6` FOREIGN KEY (`CA_CVE_ALUMNO`) REFERENCES `alumno` (`AL_MATRICULA`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carga_alumno`
--

LOCK TABLES `carga_alumno` WRITE;
/*!40000 ALTER TABLE `carga_alumno` DISABLE KEYS */;
INSERT INTO `carga_alumno` VALUES (9,NULL,'ISCTO5A','16011032','20211','2021-03-22 09:06:52',NULL,NULL,NULL,'A'),(10,NULL,'ISCTO5A','15011001',NULL,'2021-03-22 09:06:52',NULL,NULL,NULL,'A'),(11,NULL,'ISCTO2A','16011032',NULL,'2021-03-22 09:06:52',NULL,NULL,NULL,'A'),(12,NULL,'ISC4O1B','14011077',NULL,'2021-03-22 09:06:52',NULL,NULL,NULL,'A'),(13,NULL,'ISC4O1B','14011027',NULL,'2021-03-22 09:06:52',NULL,NULL,NULL,'A'),(15,NULL,'ISCTO2A','15011001',NULL,'2021-03-22 09:06:52',NULL,NULL,NULL,'A'),(18,NULL,'ISCTT9A','16011237','20211','2021-04-21 10:36:32',NULL,NULL,NULL,'A'),(19,NULL,'ISCTT9B','16011237','20211','2021-04-26 10:50:33',NULL,NULL,NULL,'A'),(80,NULL,'ISC30X9A','999001','20213','2021-06-14 10:35:19',NULL,NULL,NULL,'A'),(81,NULL,'ISC30X9A','999002','20213','2021-06-14 10:35:19',NULL,NULL,NULL,'A'),(82,NULL,'ISC30X9A','999003','20213','2021-06-14 10:35:19',NULL,NULL,NULL,'A'),(83,NULL,'ISC30X9A','999005','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(84,NULL,'ISC30X9A','999006','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(85,NULL,'ISC30X9A','999007','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(86,NULL,'ISC30X9A','999008','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(87,NULL,'ISC30X9A','999009','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(88,NULL,'ISC30X9A','999010','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(89,NULL,'ISC30X9A','999011','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(90,NULL,'ISC30X9A','999012','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(91,NULL,'ISC30X9A','999013','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(92,NULL,'ISC30X9A','999014','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(93,NULL,'ISC30X9A','999015','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(94,NULL,'ISC30X9A','999017','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(95,NULL,'ISC30X9A','999018','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(96,NULL,'ISC30X9A','999019','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(97,NULL,'ISC30X9A','999020','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(98,NULL,'ISC30X9A','999021','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(99,NULL,'ISC30X9A','999022','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(100,NULL,'ISC30X9A','999023','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(101,NULL,'ISC30X9A','999024','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(102,NULL,'ISC30X9A','999025','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(103,NULL,'ISC30X9A','999026','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(104,NULL,'ISC30X9A','999027','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(105,NULL,'ISC30X9A','999028','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(106,NULL,'ISC30X9A','999029','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(107,NULL,'ISC30X9B','999030','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(108,NULL,'ISC30X9B','999031','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(109,NULL,'ISC30X9B','999032','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(110,NULL,'ISC30X9B','999033','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(111,NULL,'ISC30X9B','999034','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(112,NULL,'ISC30X9B','999035','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(113,NULL,'ISC30X9B','999036','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(114,NULL,'ISC30X9B','999037','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(115,NULL,'ISC30X9B','999038','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(116,NULL,'ISC30X9B','999039','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(117,NULL,'ISC30X9B','999040','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(118,NULL,'ISC30X9B','999041','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(119,NULL,'ISC30X9B','999042','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(120,NULL,'ISC30X9B','999043','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(121,NULL,'ISC30X9B','999044','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(122,NULL,'ISC30X9B','999045','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(123,NULL,'ISC30X9B','999046','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(124,NULL,'ISC30X9B','999047','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(125,NULL,'ISC30X9B','999048','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(126,NULL,'ISC30X9B','999049','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(127,NULL,'ISC30X9B','999050','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(128,NULL,'ISC30X9B','999051','20213','2021-06-14 10:35:20',NULL,NULL,NULL,'A'),(129,NULL,'ISC30X9B','999052','20213','2021-06-14 10:35:21',NULL,NULL,NULL,'A'),(130,NULL,'ISC30X9B','999053','20213','2021-06-14 10:35:21',NULL,NULL,NULL,'A'),(131,NULL,'ISC30X9B','999054','20213','2021-06-14 10:35:21',NULL,NULL,NULL,'A'),(132,NULL,'ISC30X9B','999055','20213','2021-06-14 10:35:21',NULL,NULL,NULL,'A'),(133,NULL,'ISC30X9B','999056','20213','2021-06-14 10:35:21',NULL,NULL,NULL,'A'),(134,NULL,'ISC30X9B','999057','20213','2021-06-14 10:35:21',NULL,NULL,NULL,'A'),(135,NULL,'ISC30X9B','999058','20213','2021-06-14 10:35:21',NULL,NULL,NULL,'A'),(136,NULL,'ISC30X9B','999059','20213','2021-06-14 10:35:21',NULL,NULL,NULL,'A');
/*!40000 ALTER TABLE `carga_alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carta_acuerdos`
--

DROP TABLE IF EXISTS `carta_acuerdos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carta_acuerdos` (
  `CA_ID` int NOT NULL AUTO_INCREMENT,
  `CA_TITULO` varchar(150) DEFAULT NULL,
  `CA_DESPERIODO` varchar(70) DEFAULT NULL,
  `CA_TIPO` varchar(100) DEFAULT NULL,
  `CA_NOMBRE_ARCHIVO` varchar(255) DEFAULT NULL,
  `CA_FECHA` date DEFAULT NULL,
  `CA_HORA` time DEFAULT NULL,
  PRIMARY KEY (`CA_ID`),
  UNIQUE KEY `id_documento_UNIQUE` (`CA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carta_acuerdos`
--

LOCK TABLES `carta_acuerdos` WRITE;
/*!40000 ALTER TABLE `carta_acuerdos` DISABLE KEYS */;
INSERT INTO `carta_acuerdos` VALUES (5,'CA_5A_LORENA_MENDOZA','AGOSTO-DICIEMBRE 2018','application/pdf','P-DA-01-F-07 Carta de acuerdos de evaluación.pdf','2019-01-21','23:04:23');
/*!40000 ALTER TABLE `carta_acuerdos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias_menu`
--

DROP TABLE IF EXISTS `categorias_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias_menu` (
  `CM_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la categoria',
  `CM_DETALLE` varchar(45) NOT NULL COMMENT 'Texto que se muestra en la interfaz gráfica del menú',
  `CM_FEC_INSERT` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha de creación',
  `CM_FEC_UPDATE` datetime DEFAULT NULL COMMENT 'Fecha de actualización',
  `CM_BY_USER` int DEFAULT NULL COMMENT 'Usuario que raliza la acción (creación o modificación)',
  `CM_ACTIVO` char(1) DEFAULT 'A' COMMENT 'Almana si el registro esta activo o inactivo A=activo I=inactivo',
  PRIMARY KEY (`CM_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='En esta tabla se encuentran las categorias que se muestran a cada usuario y cada una de estas despliega un submenú que contiene los modulos a los que tiene acceso el usuario';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias_menu`
--

LOCK TABLES `categorias_menu` WRITE;
/*!40000 ALTER TABLE `categorias_menu` DISABLE KEYS */;
INSERT INTO `categorias_menu` VALUES (1,'Atributos de egreso','2021-03-10 11:40:20',NULL,NULL,'A'),(2,'Guías de evaluación','2021-03-10 11:40:20',NULL,NULL,'A'),(3,'Proyecto integrador','2021-03-10 11:40:20',NULL,NULL,'A'),(4,'Usuarios','2021-03-10 11:40:20',NULL,NULL,'A'),(5,'Periodo','2021-03-10 11:40:20',NULL,NULL,'A'),(6,'Asignatura','2021-03-10 11:40:20',NULL,NULL,'A'),(7,'Evaluación','2021-03-10 11:40:20',NULL,NULL,'A'),(8,'Residencia profesional','2021-03-10 11:40:20',NULL,NULL,'A'),(9,'Curricula docentes','2021-03-10 11:40:20',NULL,NULL,'A');
/*!40000 ALTER TABLE `categorias_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dni` int NOT NULL,
  `Nombre` varchar(50) NOT NULL DEFAULT '0',
  `Apellido` varchar(50) NOT NULL DEFAULT '0',
  `Correo` varchar(50) NOT NULL,
  `Telefono` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `copy_unidades_asignatura`
--

DROP TABLE IF EXISTS `copy_unidades_asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `copy_unidades_asignatura` (
  `UA_CVE` int NOT NULL DEFAULT '0',
  `UA_CVE_ALUMNO` varchar(50) DEFAULT NULL COMMENT 'Contiene la matricula del estudiante',
  `UA_GRUPO` varchar(45) DEFAULT NULL COMMENT 'Contiene el grupo que viende dede el excel',
  `UA_ASIGNATURA` varchar(255) DEFAULT NULL COMMENT 'Contiene la clave de la asigntura',
  `UA_PROCEDIMENTAL` int DEFAULT NULL COMMENT 'Valor de evaluación procedimental',
  `UA_ACTITUDINAL` int DEFAULT NULL COMMENT 'Valor de evaluación Actitudinal',
  `UA_CONCEPTUAL` int DEFAULT NULL COMMENT 'Valor de evaluación conceptual',
  `UA_MOTIVO_CANALIZACION` varchar(500) DEFAULT NULL,
  `UA_CANALIZACIOES_DEPT` varchar(8) DEFAULT NULL,
  `UA_CVE_UNIDAD` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `copy_unidades_asignatura`
--

LOCK TABLES `copy_unidades_asignatura` WRITE;
/*!40000 ALTER TABLE `copy_unidades_asignatura` DISABLE KEYS */;
INSERT INTO `copy_unidades_asignatura` VALUES (1,'16011032','ISCTO5A','T5',33,33,33,NULL,NULL,1),(2,'16011032','ISCTO5A','T5',33,33,34,NULL,NULL,2),(3,'16011032','ISC5O3B','AEC1061',20,20,20,'Por no asistir a clases','AS',1),(4,'16011032','ISC5O3B','AEC1061',25,25,23,'Faltar a clases','AS,PS',2),(110,'18011679','ISC5O3B','AEC1061',0,0,0,'','',1),(111,'18011595','ISC5O3B','AEC1061',36,19,25,'','PSASMD',1),(112,'18011720','ISC5O3B','AEC1061',40,23,30,'','',1),(113,'18011250','ISC5O3B','AEC1061',36,21,25,'','',1),(114,'10801144','ISC5O3B','AEC1061',38,25,30,'','',1),(115,'18011937','ISC5O3B','AEC1061',36,22,25,'','',1),(116,'18011727','ISC5O3B','AEC1061',36,25,25,'','',1),(117,'18011868','ISC5O3B','AEC1061',40,0,30,'','',1),(118,'18011378','ISC5O3B','AEC1061',36,21,25,'','',1),(119,'18011068','ISC5O3B','AEC1061',38,25,30,'','',1),(120,'18011547','ISC5O3B','AEC1061',40,25,30,'','',1),(121,'18011126','ISC5O3B','AEC1061',40,28,30,'','',1),(122,'18011172','ISC5O3B','AEC1061',36,25,25,'','',1),(123,'18011274','ISC5O3B','AEC1061',0,0,0,'','PSASMD',1),(124,'18011067','ISC5O3B','AEC1061',38,22,30,'','',1),(125,'18011465','ISC5O3B','AEC1061',38,25,30,'','',1),(126,'18011091','ISC5O3B','AEC1061',38,21,30,'','',1),(127,'18011362','ISC5O3B','AEC1061',36,30,25,'','',1),(128,'18011864','ISC5O3B','AEC1061',0,0,0,'','PSASMD',1),(129,'18011830','ISC5O3B','AEC1061',40,21,30,'','',1),(130,'18011492','ISC5O3B','AEC1061',36,20,25,'','',1),(131,'18011572','ISC5O3B','AEC1061',36,21,25,'','',1),(132,'18011081','ISC5O3B','AEC1061',40,26,30,'','',1),(133,'18011241','ISC5O3B','AEC1061',40,21,30,'','',1),(134,'18011276','ISC5O3B','AEC1061',36,22,25,'','',1),(160,'16011032','ISC5O1A','ACD0908',30,30,30,NULL,NULL,1),(161,'16011032','ISC5O1A','ACD0908',20,20,20,NULL,NULL,2),(164,'16011032','ISCTO5A','T5',30,30,30,NULL,NULL,3),(165,'16011032','ISCTO5A','T5',31,31,31,NULL,NULL,4),(166,'16011032','ISC5O3B','AEC1061',30,30,20,NULL,NULL,3),(167,'16011032','ISC5O3B','AEC1061',30,30,25,'No asistir',NULL,4),(168,'16011032','ISC5O1A','ACD0908',30,30,30,NULL,NULL,3),(169,'16011032','ISC5O7A','AEB1055',35,35,30,NULL,NULL,1),(170,'16011032','ISC5O7A','AEB1055',30,30,31,NULL,NULL,2),(171,'16011032','ISC5O7A','AEB1055',28,28,28,NULL,NULL,3),(172,'16011032','ISC5O7A','AEB1055',30,25,25,NULL,NULL,4),(173,'18011679','ISC5O3B','AEC1061',36,22,25,'','',1),(174,'18011595','ISC5O3B','AEC1061',36,19,25,'','PSASMD',1),(175,'18011720','ISC5O3B','AEC1061',40,23,30,'','',1),(176,'18011250','ISC5O3B','AEC1061',36,21,25,'','',1),(177,'10801144','ISC5O3B','AEC1061',38,25,30,'','',1),(178,'18011937','ISC5O3B','AEC1061',36,22,25,'','',1),(179,'18011727','ISC5O3B','AEC1061',36,25,25,'','',1),(180,'18011868','ISC5O3B','AEC1061',40,0,30,'','',1),(181,'18011378','ISC5O3B','AEC1061',36,21,25,'','',1),(182,'18011068','ISC5O3B','AEC1061',38,25,30,'','',1),(183,'18011547','ISC5O3B','AEC1061',40,25,30,'','',1),(184,'18011126','ISC5O3B','AEC1061',40,28,30,'','',1),(185,'18011172','ISC5O3B','AEC1061',36,25,25,'','',1),(186,'18011274','ISC5O3B','AEC1061',0,0,0,'','PSASMD',1),(187,'18011067','ISC5O3B','AEC1061',38,22,30,'','',1),(188,'18011465','ISC5O3B','AEC1061',38,25,30,'','',1),(189,'18011091','ISC5O3B','AEC1061',38,21,30,'','',1),(190,'18011362','ISC5O3B','AEC1061',36,30,25,'','',1),(191,'18011864','ISC5O3B','AEC1061',0,0,0,'','PSASMD',1),(192,'18011830','ISC5O3B','AEC1061',40,21,30,'','',1),(193,'18011492','ISC5O3B','AEC1061',36,20,25,'','',1),(194,'18011572','ISC5O3B','AEC1061',36,21,25,'','',1),(195,'18011081','ISC5O3B','AEC1061',40,26,30,'','',1),(196,'18011241','ISC5O3B','AEC1061',40,21,30,'','',1),(197,'18011276','ISC5O3B','AEC1061',36,22,25,'','',1),(198,'18011679','ISC5O3B','T2',36,22,25,'','',1),(199,'18011595','ISC5O3B','T2',36,19,25,'','PSASMD',1),(200,'18011720','ISC5O3B','T2',40,23,30,'','',1),(201,'18011250','ISC5O3B','T2',36,21,25,'','',1),(202,'10801144','ISC5O3B','T2',38,25,30,'','',1),(203,'18011937','ISC5O3B','T2',36,22,25,'','',1),(204,'18011727','ISC5O3B','T2',36,25,25,'','',1),(205,'18011868','ISC5O3B','T2',40,0,30,'','',1),(206,'18011378','ISC5O3B','T2',36,21,25,'','',1),(207,'18011068','ISC5O3B','T2',38,25,30,'','',1),(208,'18011547','ISC5O3B','T2',40,25,30,'','',1),(209,'18011126','ISC5O3B','T2',40,28,30,'','',1),(210,'18011172','ISC5O3B','T2',36,25,25,'','',1),(211,'18011274','ISC5O3B','T2',0,0,0,'','PSASMD',1),(212,'18011067','ISC5O3B','T2',38,22,30,'','',1),(213,'18011465','ISC5O3B','T2',38,25,30,'','',1),(214,'18011091','ISC5O3B','T2',38,21,30,'','',1),(215,'18011362','ISC5O3B','T2',36,30,25,'','',1),(216,'18011864','ISC5O3B','T2',0,0,0,'','PSASMD',1),(217,'18011830','ISC5O3B','T2',40,21,30,'','',1),(218,'18011492','ISC5O3B','T2',36,20,25,'','',1),(219,'18011572','ISC5O3B','T2',36,21,25,'','',1),(220,'18011081','ISC5O3B','T2',40,26,30,'','',1),(221,'18011241','ISC5O3B','T2',40,21,30,'','',1),(222,'18011276','ISC5O3B','T2',36,22,25,'','',1);
/*!40000 ALTER TABLE `copy_unidades_asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `criterios`
--

DROP TABLE IF EXISTS `criterios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `criterios` (
  `CR_ITEM` varchar(15) NOT NULL,
  `CR_DES_CRITERIO` varchar(400) DEFAULT NULL,
  `CR_DES_PREGUNTA` varchar(400) DEFAULT NULL,
  `CR_DES_AYUDA` varchar(400) DEFAULT NULL,
  `CR_DES_INDICADOR` varchar(1) NOT NULL,
  `CR_DES_VIGENTE` varchar(1) DEFAULT NULL,
  `CR_VALOR_ITEM` varchar(45) DEFAULT NULL,
  `CR_PERIODO_VIGENCIA` varchar(45) DEFAULT NULL,
  `CR_CVE_ASIGNATURA` varchar(15) NOT NULL,
  PRIMARY KEY (`CR_ITEM`),
  KEY `criterios_ibfk_1` (`CR_CVE_ASIGNATURA`),
  CONSTRAINT `criterios_ibfk_1` FOREIGN KEY (`CR_CVE_ASIGNATURA`) REFERENCES `asignatura` (`AS_CVE_ASIGNATURA`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `criterios`
--

LOCK TABLES `criterios` WRITE;
/*!40000 ALTER TABLE `criterios` DISABLE KEYS */;
/*!40000 ALTER TABLE `criterios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `criterios_desempenio`
--

DROP TABLE IF EXISTS `criterios_desempenio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `criterios_desempenio` (
  `CD_CLAVE` varchar(20) NOT NULL COMMENT 'Es la clave del Criterio de desempeño. Refiere a una clave en la forma  de : Acrónimo División-Atributo que aporta-Criterio de desepeño. ed. ISC_AE1_CD1.',
  `CD_DETALLE` text COMMENT 'Contiene la descripción del criterio de desempeño. (Lo contextual de lo que se va a evaluar).\n',
  `CD_CVE_ATR_EG` varchar(20) DEFAULT NULL COMMENT 'Clave del Atribuo de egreso al cual hace referencia el criterio. ',
  `CD_FEC_INSERT` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Contiene la fecha de inserción del registro.',
  `CD_FEC_UPDATE` datetime DEFAULT NULL COMMENT 'Contiene la fecha de actualización del registro.',
  `CD_LAST_IP` int unsigned DEFAULT NULL COMMENT 'Contiene la IP de orginen del cliente (Si es una máscara de red, se agrega como la IP).',
  `CD_LAST_USER` int DEFAULT NULL COMMENT 'Contiene la clave del usuario que ha realizado alguna modificación.',
  `CD_ACTIVO` char(1) DEFAULT 'A' COMMENT 'Muestra si el criterio esta activo A=activo I=inactivo',
  PRIMARY KEY (`CD_CLAVE`),
  KEY `crite_dese_atri_fk` (`CD_CVE_ATR_EG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Contiene los criterios de desempeño de los atributos de egreso.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `criterios_desempenio`
--

LOCK TABLES `criterios_desempenio` WRITE;
/*!40000 ALTER TABLE `criterios_desempenio` DISABLE KEYS */;
INSERT INTO `criterios_desempenio` VALUES ('ISC_AE1_CD1','Ante problemas complejos plantea soluciones mediante aplicaciones computacionales. ','ISC_AE1','2019-07-02 12:11:22',NULL,NULL,NULL,'A'),('ISC_AE1_CD2','Integra hardware y software asociado desde plataformas y/o dispositivos.','ISC_AE1','2019-07-02 12:11:22',NULL,NULL,NULL,'A'),('ISC_AE1_CD3','Dentro de la organización plantea soluciones innovadoras para resolver problemas asociados a la empresa ó desde una consultoría genera una solución a una problemática compleja.','ISC_AE1','2019-07-02 12:11:22',NULL,NULL,NULL,'A'),('ISC_AE2_CD1','Diseña el modelo matemático para dar solución a un problema complejo','ISC_AE2','2019-07-02 12:11:22',NULL,NULL,NULL,'A'),('ISC_AE2_CD2','Desarrolla o construye un programa de software que aplique el modelo matemático.','ISC_AE2','2019-07-02 12:11:22',NULL,NULL,NULL,'A'),('ISC_AE2_CD3','Aplica los modelos para procesar la información y tomar decisiones que afecten al caso de uso.','ISC_AE2','2019-07-02 12:11:22',NULL,NULL,NULL,'A'),('ISC_AE3_CD1','Diseña interfaces de automatización de sistemas hardware.','ISC_AE3','2019-07-02 12:11:22',NULL,NULL,NULL,'A'),('ISC_AE3_CD2','Implementa interfaces para la automatización del hardware y desarrollo de software asociado.','ISC_AE3','2019-07-02 12:11:22',NULL,NULL,NULL,'A'),('ISC_AE4_CD1','Identifica un área de oportunidad y genera una idea innovadora apoyado de un plan estratégico donde le permita coordinar y participar en equipos multidisciplinarios.','ISC_AE4','2019-07-02 12:11:22',NULL,NULL,NULL,'A'),('ISC_AE4_CD2','Gestiona y aplica metodologías e instrumentos para que grupos multidisciplinarios desarrollen proyectos aplicativos a diferentes escenarios.','ISC_AE4','2019-07-02 12:11:22',NULL,NULL,NULL,'A'),('ISC_AE4_CD3','Se comunica oral, escrita y tecnológicamente ante diferentes audiencias.','ISC_AE4','2019-07-02 12:11:22',NULL,NULL,NULL,'A'),('ISC_AE5_CD1','Diseña bases de datos apegado a normas vigentes para optimizar los recursos. ','ISC_AE5','2019-07-02 12:11:22',NULL,NULL,NULL,'A'),('ISC_AE5_CD2','Implementa bases de datos conforme a normas o estándares vigentes, para apoyar la toma de decisiones considerando las reglas de la organización.','ISC_AE5','2019-07-02 12:11:22',NULL,NULL,NULL,'A'),('ISC_AE5_CD3','Administra bases de datos aplicando modelos de seguridad y estándares vigentes.','ISC_AE5','2019-07-02 12:11:22',NULL,NULL,NULL,'A'),('ISC_AE6_CD1','Desarrolla software específico para apoyar la productividad y competitividad de la organización, apegado a estándares de calidad','ISC_AE6','2019-07-02 12:11:22',NULL,NULL,NULL,'A'),('ISC_AE6_CD2','Administra software específico para apoyar la productividad y competitividad de la organización apegado a estándares de calidad.','ISC_AE6','2019-07-02 12:11:22',NULL,NULL,NULL,'A'),('ISC_AE7_CD1','Evalua la tecnología de hardware en base a criterios definidos a estándares o requerimientos de la organización o software específico.','ISC_AE7','2019-07-02 12:11:22',NULL,NULL,NULL,'A'),('ISC_AE8_CD1','Detecta oportunidades de desarrollo tecnológico de procesamiento de la información, utilizando una visión empresarial.','ISC_AE8','2019-07-02 12:11:22',NULL,NULL,NULL,'A'),('ISC_AE8_CD2','Crea proyectos aplicando las TI con una visión empresarial mediante un plan de negocios.','ISC_AE8','2019-07-02 12:11:22',NULL,NULL,NULL,'A'),('ISC_AE9_CD1','Diseña redes de datos de computadora apegado a normas y estándares vigentes, considerando el impacto del diseño o solución en el contexto que le corresponda.','ISC_AE9','2019-07-02 12:11:22',NULL,NULL,NULL,'A'),('ISC_AE9_CD2','Configura redes de datos de computadora apegándose a las necesidades específicas del contexto.','ISC_AE9','2019-07-02 12:11:22',NULL,NULL,NULL,'A'),('ISC_AE9_CD3','Administra redes de computadoras aplicando un juicio ingenieril para los problemas de conectividad.','ISC_AE9','2019-07-02 12:11:22',NULL,NULL,NULL,'A'),('ISC_AE98_CD1','Identifica componentes y puede ensamblar una impresora 3D.','ISC_AE98','2019-07-02 13:48:33','2019-07-08 12:49:20',2130706433,138,'A'),('ISC_AE98_CD2','Algo más  :P)','ISC_AE98','2019-07-08 12:47:43',NULL,2130706433,138,'I'),('xISC_AE98_CD0','Jahaziel Soto','ISC_AE98','2019-07-02 13:51:00','2019-07-08 00:00:00',2130706433,138,'I'),('xISC_AE98_CD8','232313123   13123 13','ISC_AE98','2019-07-02 13:48:58','2019-07-03 00:00:00',2130706433,138,'I'),('xISC_AE98_CD9','JPE','ISC_AE98','2019-07-03 15:41:48','2019-07-03 00:00:00',2130706433,138,'I');
/*!40000 ALTER TABLE `criterios_desempenio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_asignatura`
--

DROP TABLE IF EXISTS `detalle_asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_asignatura` (
  `DA_CVE_UNIDAD` int NOT NULL COMMENT 'Autonumerico ',
  `DA_CVE_ASIGNATURA` varchar(15) NOT NULL,
  `DA_NOMBRE_UNIDAD_UNIDAD` varchar(100) DEFAULT NULL COMMENT 'Nombre de la unidad que aparece en el programa de asignatura',
  `DA_COMPETENCIA_UNIDAD_ESPECIFICAS` varchar(100) DEFAULT NULL COMMENT 'Compentencia especficia de la unidad',
  `DA_ACTIVIDAD_APRENDIZAJE` varchar(45) DEFAULT NULL COMMENT 'Actividad de aprendizaje de la unidad.',
  `DA_COMPETENCIA_UNIDAD_GENERAL` varchar(45) DEFAULT NULL COMMENT 'Competencias genéricas de la unidad',
  `DA_CVE_CRITERIO` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`DA_CVE_UNIDAD`,`DA_CVE_ASIGNATURA`),
  KEY `DA_CVE_CRITERIO` (`DA_CVE_CRITERIO`),
  KEY `detalle_asignatura_ibfk_1` (`DA_CVE_ASIGNATURA`),
  CONSTRAINT `detalle_asignatura_ibfk_1` FOREIGN KEY (`DA_CVE_ASIGNATURA`) REFERENCES `asignatura` (`AS_CVE_ASIGNATURA`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `detalle_asignatura_ibfk_2` FOREIGN KEY (`DA_CVE_CRITERIO`) REFERENCES `criterios` (`CR_ITEM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_asignatura`
--

LOCK TABLES `detalle_asignatura` WRITE;
/*!40000 ALTER TABLE `detalle_asignatura` DISABLE KEYS */;
INSERT INTO `detalle_asignatura` VALUES (1,'AEC1061','Introducción','SE','SE','SE',NULL),(1,'SCB1001','Lenguaje de definicion de datos','Algo especifico','La que viene en el programa','La que viene en el prog estud',NULL),(2,'AEC1061','Desarollo',NULL,NULL,NULL,NULL),(3,'AEC1061',NULL,NULL,NULL,NULL,NULL),(4,'AEC1061',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `detalle_asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_categoria`
--

DROP TABLE IF EXISTS `detalle_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_categoria` (
  `DCAT_CATEGORIA_MENU` int NOT NULL COMMENT 'Relación con la table categorias_menu',
  `DCAT_OPCION_MENU` int NOT NULL COMMENT 'Relación con la table opciones_menu',
  `DCAT_FEC_INSERT` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha de creación',
  `DCAT_FEC_UPDATE` datetime DEFAULT NULL COMMENT 'Fecha de modificación',
  `DCAT_BY_USER` int DEFAULT NULL COMMENT 'Usuario que raliza la acción (creación o modificación)',
  `DCAT_ACTIVO` char(1) DEFAULT 'A' COMMENT 'Almana si el registro esta activo o inactivo A=activo I=inactivo',
  PRIMARY KEY (`DCAT_CATEGORIA_MENU`,`DCAT_OPCION_MENU`),
  KEY `DCAT_OPCION_MENU_idx` (`DCAT_OPCION_MENU`),
  CONSTRAINT `DCAT_CATEGORIA` FOREIGN KEY (`DCAT_CATEGORIA_MENU`) REFERENCES `categorias_menu` (`CM_ID`),
  CONSTRAINT `DCAT_OPCION_MENU` FOREIGN KEY (`DCAT_OPCION_MENU`) REFERENCES `opciones_menu` (`OM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabla que contendra los datos de todas las rutas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_categoria`
--

LOCK TABLES `detalle_categoria` WRITE;
/*!40000 ALTER TABLE `detalle_categoria` DISABLE KEYS */;
INSERT INTO `detalle_categoria` VALUES (1,1,'2021-03-10 12:15:39',NULL,NULL,'A'),(1,2,'2021-03-10 12:15:39',NULL,NULL,'A'),(1,3,'2021-03-16 10:48:49',NULL,NULL,'I'),(2,4,'2021-03-16 10:48:49',NULL,NULL,'A'),(2,5,'2021-03-16 10:48:49',NULL,NULL,'A'),(3,6,'2021-03-16 10:48:49',NULL,NULL,'I'),(4,7,'2021-03-16 10:48:49',NULL,NULL,'A'),(4,14,'2021-03-16 10:48:49',NULL,NULL,'A'),(5,8,'2021-03-16 10:48:49',NULL,NULL,'A'),(5,12,'2021-03-16 10:48:49',NULL,NULL,'A'),(5,13,'2021-03-16 10:48:49',NULL,NULL,'A'),(6,9,'2021-03-17 09:34:24',NULL,NULL,'A'),(7,10,'2021-03-17 09:34:24',NULL,NULL,'A'),(8,11,'2021-03-17 09:34:24',NULL,NULL,'A'),(9,15,'2021-03-17 09:34:24',NULL,NULL,'A'),(9,16,'2021-03-17 09:34:24',NULL,NULL,'A');
/*!40000 ALTER TABLE `detalle_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_criterio_desempenio`
--

DROP TABLE IF EXISTS `detalle_criterio_desempenio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_criterio_desempenio` (
  `DCD_CVE` varchar(20) NOT NULL COMMENT 'CONTIENE LA CLAVE PRIMARIA DEL DETALLE DEL CRITERIO DE EVALUACIÓN -ED.ISC-AE1-CD1-EV1',
  `DCD_ITEM` text COMMENT 'Se almacena el indicador en forma de pregunta para la evaluación',
  `DCD_AYUDA_CONTEXTUAL` text COMMENT 'CONTIENE UNA AYUDA CONTEXTUAL PARA FORMULAR EL ITEM DE EVALUACIÓN',
  `DCD_TIPO_INDICADOR` varchar(5) DEFAULT NULL COMMENT 'PUEDE SER INDICADOR MÍNIMO (MI), INDICADOR DE ALCANCE (IA)',
  `DCD_CVE_CD` varchar(20) DEFAULT NULL COMMENT 'Llave foranea de la tabla criterio_desempeño',
  `DCD_FEC_INSERT` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha de creación del ITEM de evaluación',
  `DCD_FEC_UP` datetime DEFAULT NULL COMMENT 'Fecha de modifiación del ITEM de evaluación',
  `DCD_ACTIVO` char(1) DEFAULT 'A' COMMENT 'Mustra si el ITEM de evaluación esta activo o inactivo A=activo, I=inactivo',
  `DCD_BY_USER` int DEFAULT NULL COMMENT 'Usuario que modifico el ITEM de evaluación',
  `DCD_LAST_IP` int unsigned DEFAULT NULL COMMENT 'Dirección IP del ITEM de evaluación \n',
  PRIMARY KEY (`DCD_CVE`),
  KEY `dcd_cd_fk` (`DCD_CVE_CD`),
  CONSTRAINT `dcd_cd_fk` FOREIGN KEY (`DCD_CVE_CD`) REFERENCES `criterios_desempenio` (`CD_CLAVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_criterio_desempenio`
--

LOCK TABLES `detalle_criterio_desempenio` WRITE;
/*!40000 ALTER TABLE `detalle_criterio_desempenio` DISABLE KEYS */;
INSERT INTO `detalle_criterio_desempenio` VALUES ('ISC_AE1_CD1_E1','Identifica un problema complejo','Identifica un problema complejo','IM','ISC_AE1_CD1','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE1_CD1_E2','Formula una hipótesis','De un enunciado que esta en el caso de uso, producto final o de la interpretación, genera una hipótesis que le permita escribir un proposición lógica, una ecuación o sistema de ecuaciones','IM','ISC_AE1_CD1','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE1_CD1_E3','Aplicando técnicas ingenieriles y herramientas de ciencias básicas','Aplica técnicas o conocimientos de ciencias básicas, aplica su juicio ingenieril (a el grado correspondiente en su formación académica). Aplica TI para apoyar los procedimientos seleccionados.','IM','ISC_AE1_CD1','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE1_CD1_E4','Construye un resultado un modelo computacional.','dando como resultado un modelo computacional','IM','ISC_AE1_CD1','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE1_CD2_E1','Integra hardware y/o software para solucionar un problema complejo.','AYUDA CRITERIO 2','IM','ISC_AE1_CD2','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE1_CD2_E2','La propuesta de solución implica plataformas y/o dispositivos de cómputo.',NULL,'IM','ISC_AE1_CD2','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE1_CD3_E1','Desarrolla una aplicación con herramientas computacionales.',NULL,'IM','ISC_AE1_CD3','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE1_CD3_E2','Identifica una problemática del contexto lo rodea',NULL,'IM','ISC_AE1_CD3','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE1_CD3_E3','Identifica los elementos que hacen a su propuesta innovadora con respecto a otras similares',NULL,'IM','ISC_AE1_CD3','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE2_CD1_E1','Diseña un modelo computacional (Caso de uso)',NULL,'IM','ISC_AE2_CD1','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE2_CD1_E2','Utiliza conocimientos de ciencias básicas',NULL,'IM','ISC_AE2_CD1','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE2_CD1_E3','Hace uso de las TIC',NULL,'IM','ISC_AE2_CD1','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE2_CD1_E4','El diseño es acorde a la nomenclatura o convención propias de la asignatura',NULL,'IM','ISC_AE2_CD1','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE2_CD2_E1','Desarrolla un modelo de simulación del caso de uso, apoyado en TI,',NULL,'IM','ISC_AE2_CD2','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE2_CD2_E2','aplicando técnicas matemáticas, (algoritmos), aplicables a su contexto',NULL,'IM','ISC_AE2_CD2','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE2_CD2_E3','El programa de software desarrollado hace el uso del modelo matemático.',NULL,'IM','ISC_AE2_CD2','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE2_CD3_E1','La evidencia muestra que se hizo una selección y uso de herramientas matemáticas.',NULL,'IM','ISC_AE2_CD3','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE2_CD3_E2','Muestra los resultados y validaciones del modelo aplicado al caso de estudio (Es decir aplica el proceso, analiza resultados y sintetiza el caso de uso)',NULL,'IM','ISC_AE2_CD3','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE2_CD3_E3','Los resultados de los modelos permiten tomar decisiones para dar solución a un problema complejo de ingeniería.',NULL,'IM','ISC_AE2_CD3','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE3_CD1_E1','Diseña una interfaz de automatización hardware ',NULL,'IM','ISC_AE3_CD1','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE3_CD1_E2','Aplica un proceso ingenieril para la automatización de sistemas de hardware',NULL,'IM','ISC_AE3_CD1','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE3_CD1_E3','Aplica estándares vigentes y tecnología vigente para el desarrollo del proyecto',NULL,'IM','ISC_AE3_CD1','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE3_CD2_E1','Construye o desarrolla la interfaz de automatización de hardware para dar solución al caso de uso.',NULL,'IM','ISC_AE3_CD2','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE3_CD2_E2','Desarrolla software asociado a la interfaz de automatización de hardware.',NULL,'IM','ISC_AE3_CD2','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE4_CD1_E1','Identifica un área de oportunidad para aplicar las habilidades y conocimientos adquiridos en la asignatura','Aplicando su criterio ingenieril, detecta el área de oportunidad en el contexto que lo rodea','IM','ISC_AE4_CD1','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE4_CD1_E2','Genera una idea innovadora para dar solución al área de oportunidad detectada','Construye en un en enunciado en donde determina la visión del proyecto','IM','ISC_AE4_CD1','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE4_CD2_E1','Aplican una metodología e instrumentos que permita al equipo desarrollar la aplicación, producto o prototipo.',NULL,'IM','ISC_AE4_CD2','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE4_CD2_E2','El equipo de trabajo es multidisciplinario.',NULL,'IM','ISC_AE4_CD2','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE4_CD2_E3','Reconoce sus responsabilidades dentro del equipo.',NULL,'IM','ISC_AE4_CD2','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE4_CD3_E1','Realiza una presentación oral con entonación y fluidez audible y entendible.',NULL,'IM','ISC_AE4_CD3','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE4_CD3_E2','Realiza una presentación escrita respetando las reglas ortográficas y manejando una estructura establecida.',NULL,'IM','ISC_AE4_CD3','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE4_CD3_E3','Domina el tema haciendo uso del vocabulario técnico acorde a la asignatura en la presentación oral y la escrita.',NULL,'IM','ISC_AE4_CD3','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE4_CD3_E4','Se comunica tecnológicamente (hace uso de las TIC)',NULL,'IM','ISC_AE4_CD3','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE5_CD1_E1','Aplica un juicio ingenieril para realizar el diseño de base de datos.',NULL,'IM','ISC_AE5_CD1','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE5_CD1_E2','Diseña bases de datos procurando optimizar los recursos.',NULL,'IM','ISC_AE5_CD1','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE5_CD1_E3','El diseño de bases de datos se apega a normas y estándares vigentes.',NULL,'IM','ISC_AE5_CD1','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE5_CD2_E1','Instala un motor de bases de datos',NULL,'IM','ISC_AE5_CD2','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE5_CD2_E2','Implementa los diseños de bases de datos para la construcción de sistemas de cómputo que contribuyan a la productividad y/o eficiencia de una organización ',NULL,'IM','ISC_AE5_CD2','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE5_CD2_E3','La implementación de base de datos cuenta con reportes para la toma de decisiones dentro de una organización.',NULL,'IM','ISC_AE5_CD2','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE5_CD3_E1','Evidencia que gestiona el servidor de base de datos para optimizar el acceso y uso de la base de datos.',NULL,'IM','ISC_AE5_CD3','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE5_CD3_E2','El servidor de base de datos cuenta con medidas de seguridad que aseguran la integridad y permanecía de la información.',NULL,'IM','ISC_AE5_CD3','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE5_CD3_E3','Aplica criterios de calidad',NULL,'IM','ISC_AE5_CD3','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE6_CD1_E1','Desarrolla software para apoyar la productividad y competitividad de una organización.',NULL,'IM','ISC_AE6_CD1','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE6_CD1_E2','El desarrollo de software propuesto cumple con estándares de calidad.',NULL,'IM','ISC_AE6_CD1','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE6_CD2_E1','Administra software especifico para apoyar la productividad y competitividad de una organización. ',NULL,'IM','ISC_AE6_CD2','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE6_CD2_E2','El software administrado cumple con estándares de calidad.',NULL,'IM','ISC_AE6_CD2','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE7_CD1_E1','Identifica la tecnología de hardware que soporten las aplicaciones de forma efectiva.',NULL,'IM','ISC_AE7_CD1','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE7_CD1_E2','El análisis de hardware tomó en cuenta la diversidad tecnológica de plataformas y/o dispositivos.',NULL,'IM','ISC_AE7_CD1','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE7_CD1_E3','Realiza la selección de tecnología de hardware con base en un juicio ingenieril.',NULL,'IM','ISC_AE7_CD1','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE7_CD1_E4','Al evaluar el hardware identifica sus responsabilidades éticas y profesionales.',NULL,'IM','ISC_AE7_CD1','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE8_CD1_E1','Identifica áreas de oportunidad para el desarrollo o implementación de sistemas de cómputo.',NULL,'IM','ISC_AE8_CD1','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE8_CD1_E2','Usa una visión empresarial para proponer solución al área de oportunidad detectada.',NULL,'IM','ISC_AE8_CD1','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE8_CD2_E1','Construye un plan de negocio para llevar a cabo la solución del área de oportunidad detectada.',NULL,'IM','ISC_AE8_CD2','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE8_CD2_E2','Hace uso de las tecnologías de la información y las comunicaciones para llevar a cabo la solución del área de oportunidad detectada.',NULL,'IM','ISC_AE8_CD2','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE9_CD1_E1','Diseña redes de datos de computadora apegado a normas y estándares vigentes.',NULL,'IM','ISC_AE9_CD1','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE9_CD1_E2','El diseño de red considera el impacto de la solución en el contexto donde se aplica.',NULL,'IM','ISC_AE9_CD1','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE9_CD2_E1','Configura redes de computadoras apegándose a la normas y estándares vigentes.',NULL,'IM','ISC_AE9_CD2','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE9_CD2_E2','La configuración de red se apega a las necesidades específicas del contexto en el que se aplica.',NULL,'IM','ISC_AE9_CD2','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE9_CD3_E1','Administra redes de computadoras apegándose a la normas y estándares vigentes.',NULL,'IM','ISC_AE9_CD3','2021-03-19 10:32:55',NULL,'A',NULL,NULL),('ISC_AE9_CD3_E2','La administración de red se apega a las necesidades específicas del contexto en el que se aplica.',NULL,'IM','ISC_AE9_CD3','2021-03-19 10:32:55',NULL,'A',NULL,NULL);
/*!40000 ALTER TABLE `detalle_criterio_desempenio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_eval_asignatura`
--

DROP TABLE IF EXISTS `detalle_eval_asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_eval_asignatura` (
  `DEA_ID` int NOT NULL,
  `DEA_ASIGNATURA_CVE` varchar(15) NOT NULL,
  `DEA_UNIDAD_ASIGNATURA` int DEFAULT NULL,
  PRIMARY KEY (`DEA_ID`,`DEA_ASIGNATURA_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_eval_asignatura`
--

LOCK TABLES `detalle_eval_asignatura` WRITE;
/*!40000 ALTER TABLE `detalle_eval_asignatura` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_eval_asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_guia_observacion`
--

DROP TABLE IF EXISTS `detalle_guia_observacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_guia_observacion` (
  `DGO_CVE_PREGUNTA` int NOT NULL AUTO_INCREMENT,
  `DGO_GO_CLAVE` int NOT NULL COMMENT 'CONTIENE LA LLAVE PRIMARIA DE LA TABLA GUÍA DE OBSERVACIÓ',
  `DGO_DCD_CVE` varchar(20) DEFAULT NULL,
  `DGO_DOCENTE_EVALUADOR_CVE` int DEFAULT NULL COMMENT 'CLAVE DEL DOCENTE QUE REALIZA LA EVALUACIÓN INTERNA',
  `DGO_EVALUADOR_EXTERNO_CVE` int DEFAULT NULL COMMENT 'CLAVE DEL EVALUADOR EXTERNO QUE REALIZA LA EVALUACIÓN ',
  `DGO_PREGUNTA` varchar(150) DEFAULT NULL COMMENT 'PREGUNTA QUE ELABORA EL DOCENTE',
  `DGO_ITEM_VALOR` varchar(45) DEFAULT NULL COMMENT 'EL VALOR DE LA PREGUNTA FORMULADA POR EL DOCENTE',
  `DGO_CUMPLIMIENTO_EEX` char(1) DEFAULT 'S' COMMENT 'CUMPLE (S) O NO CUMPLE (N), cumplimieno del evaluador externo',
  `DGO_OBSERVACIONES_EEX` tinytext COMMENT 'Observaciones del evaluador externo ',
  `DGO_CUMPLIMIENTO_EEI` char(1) DEFAULT 'S' COMMENT 'CUMPLE (S) O NO CUMPLE (N), cumplimieno del evaluador interno',
  `DGO_OBSERVACIONES_EEI` tinytext COMMENT 'Observaciones del evaluador interno',
  `DGO_ASPECTO_A_EVALUAR` varchar(45) DEFAULT NULL COMMENT 'ASPECTO QUE SE VA A EVALUAR POR CRITERIO. (AYUDA PARA CONTEXTUALIZAR LA PREGUNTA), POR EJEMPLO QUE SE EVALUE SOBRE SISTEMAS OPERATIVOS O SOBRE INTERFACES HUMANO-MÁQUINA',
  `DGO_FEC_INSERT` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'CONTIENE LA FECHA EN QUE SE CREO LA GUÍA DE OBSERVACIÓN',
  `DGO_FEC_UP` datetime DEFAULT NULL COMMENT 'CONTIENE LA FECHA DE LA ULTIMA MODIFICACIÓN QUE SE LE HIZO A LA TABLA',
  `DGO_LAST_IP` int unsigned DEFAULT NULL COMMENT 'CONTIENE LA DIRECCIÓN IP QUE SE LE ASIGNA A LA GUÍA DE OSERVACIÓN',
  `DGO_BY_USER` int unsigned DEFAULT NULL COMMENT 'MUESTRA EL USUARIO QUE MODIFICO LA TABLA',
  `DGO_ACTIVO` char(1) DEFAULT 'A' COMMENT 'MUESTRA SI EL DETALLE GUÍA DE OSERVACIÓN SE ENCUENTRA ACTIVO A=ACTIVO I=INACTIVO',
  PRIMARY KEY (`DGO_CVE_PREGUNTA`),
  KEY `fk_go_dgo_idx` (`DGO_GO_CLAVE`),
  KEY `fk_dcd_cve_idx` (`DGO_DCD_CVE`),
  CONSTRAINT `fk_dcd_cve` FOREIGN KEY (`DGO_DCD_CVE`) REFERENCES `detalle_criterio_desempenio` (`DCD_CVE`),
  CONSTRAINT `fk_go_dgo` FOREIGN KEY (`DGO_GO_CLAVE`) REFERENCES `guia_observacion` (`GO_CLAVE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1427 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_guia_observacion`
--

LOCK TABLES `detalle_guia_observacion` WRITE;
/*!40000 ALTER TABLE `detalle_guia_observacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_guia_observacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docente`
--

DROP TABLE IF EXISTS `docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docente` (
  `DO_CVE_DOCENTE` int NOT NULL,
  `DO_NOMBRE` varchar(100) DEFAULT NULL,
  `DO_GRADO` varchar(50) DEFAULT NULL,
  `DO_CEDULA` int DEFAULT NULL,
  `DO_ESTUDIOS` varchar(100) DEFAULT NULL,
  `DO_EXPERIENCIA` double DEFAULT NULL,
  `DO_DOCENCIA` double DEFAULT NULL,
  `DO_CATEGORIA` varchar(50) DEFAULT NULL,
  `DO_NUM_EMPLEADO` int DEFAULT NULL,
  `DO_CONTRASENA` varchar(32) DEFAULT NULL COMMENT 'DO_DOCENCIA esta campo es para registra los años de docencia de cada profesor .\nDO_CATEGORIA este campo se refiere al que esta inscrito cada docente.',
  PRIMARY KEY (`DO_CVE_DOCENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Se guarda información sobre el usuario docente';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docente`
--

LOCK TABLES `docente` WRITE;
/*!40000 ALTER TABLE `docente` DISABLE KEYS */;
INSERT INTO `docente` VALUES (3,'RODOLFO LUNA PEREZ','INGENIERIA ',7035541,'MAESTRIA EN CIENCIAS DE LA COMPUTACION',2,4,'30 B',NULL,NULL),(11,'JUAN LUCINO LUGO PEREZ','LICENCIATURA ',9483406,'MAESTRIA EN CIENCIAS DE LA EDUCACION ',13,21,'30 B',11,NULL),(18,'ALINE PEREZ MARTINEZ','INGENIERIA ',3342876,NULL,2,17,'20 B',18,NULL),(69,'ELIUD PAREDES REYES','LICENCIATURA',4982897,NULL,1,13,'PTC ASOCIADOS A',69,NULL),(100,'ELIZABETH GARCIA RIOS ','DOCTORADO',10963792,'DOCTORADO EN COMUNICACIONES Y ELECTRONICA',7,7,'PTC ASOCIADOS A',463,NULL),(129,'GUADALUPE CALVO TORRES','MAESTRIA',6893916,'MAESTRIA EN CIENCIAS DE LA EDUCACION',1,15,'30 B',129,NULL),(130,'MARIO PEREZ BAUTISTA ','INGENIERIA',9483405,'MAESTRIA EN CIENCIAS DE LA EDUCACION',1,12,'PTC ASOCIADOS A',130,NULL),(194,'JUAN CARLOS CERON ALMARAZ','LICENCIATURA',4791473,'MAESTRIA EN CIENCIAS  DE LAS MATEMATICAS ',1,30,'30 B',194,NULL),(199,'GUILLERMO CASTAÑEDA ORTIZ','INGENIERIA ',2703285,NULL,3,17,'15 A',199,NULL),(700,'LORENA MENDOZA GUZMAN ','LICENCIATURA',9791459,'MAESTRA EN TECNOLOGIA EDUCATIVA  ',6,10,'36 A',NULL,'123456789'),(702,'DULCE JAZMIN NAVARRETE ARIAS ','MAESTRIA',NULL,'MAESTRIA EN CIENCIAS COMPUTACIONALES ',4,3,'40 A',NULL,NULL),(703,'JUAN ADOLFO ALVAREZ MARTINEZ','INGENIERIA ',7988280,'MAESTRIA EN MATEMATICAS Y NANOTECNOLOGIA',10,20.5,'9 A',NULL,NULL),(996,'JORGE ARMANDO GARCIA BAUTISTA ','INGENIERIA ',5863132,NULL,5,8,'28 A',373,NULL),(1008,'HECTOR DANIEL HERNANDEZ GARCIA ','MAESTRIA',6871650,'MAESTRIA EN CIENCIAS EN COMPUTACION',2,5,'TITULAR A INVESTIGACION',292,NULL),(4296,'GERMAN REBOLLEDO AVALOS','LICENCIATURA',3874293,NULL,7,17,'10 A',265,NULL),(7022,'JAVIER PEREZ ESCAMILLA','LICENCIATURA',1234,'INGENIERIA',10,2,'36',7022,'123456789'),(7023,'CRISTY ELIZABETH AGUILAR OJEDA','LICENCIATURA',9288125,'MAESTRIA EN TECNOLOGIAS DE LA INFORMACION',4.5,6,'PTC ASOCIADOS A',436,NULL);
/*!40000 ALTER TABLE `docente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `duptable`
--

DROP TABLE IF EXISTS `duptable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `duptable` (
  `a` varchar(15) NOT NULL,
  `b` varchar(15) NOT NULL,
  `level` char(1) DEFAULT NULL,
  PRIMARY KEY (`a`,`b`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='duplicate eky';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duptable`
--

LOCK TABLES `duptable` WRITE;
/*!40000 ALTER TABLE `duptable` DISABLE KEYS */;
INSERT INTO `duptable` VALUES ('ACF0901','ISC_AE2_CD1','A'),('ACF0901','ISC_AE2_CD3','A'),('ACF0904','ISC_AE2_CD1','A'),('ACF0904','ISC_AE2_CD3','A'),('SCD1004','ISC_AE4_CD1','A'),('SCD1004','ISC_AE4_CD3','A'),('SCD1004','ISC_AE7_CD1','A');
/*!40000 ALTER TABLE `duptable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equivalencias`
--

DROP TABLE IF EXISTS `equivalencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equivalencias` (
  `EQ_ID` int NOT NULL,
  `EQ_PLAN_MATERIA` varchar(45) DEFAULT NULL,
  `EQ_MATERIA_VIRTUAL` int DEFAULT NULL,
  `EQ_GRUPO` int DEFAULT NULL,
  `EQ_GRUPO_VIRTUAL` int DEFAULT NULL,
  `EQ_AREA` varchar(45) DEFAULT NULL,
  `EQ_PLAN_VIRTUAL` varchar(45) DEFAULT NULL,
  `EQ_CVE_ASIGNATURA` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`EQ_ID`),
  KEY `equivalencias_ibfk_1` (`EQ_CVE_ASIGNATURA`),
  CONSTRAINT `equivalencias_ibfk_1` FOREIGN KEY (`EQ_CVE_ASIGNATURA`) REFERENCES `asignatura` (`AS_CVE_ASIGNATURA`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equivalencias`
--

LOCK TABLES `equivalencias` WRITE;
/*!40000 ALTER TABLE `equivalencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `equivalencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluacion_alumno`
--

DROP TABLE IF EXISTS `evaluacion_alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evaluacion_alumno` (
  `EA_ID` int NOT NULL AUTO_INCREMENT,
  `EA_CVE_GRUPO` varchar(10) DEFAULT NULL,
  `EA_CVE_ALUMNO` varchar(10) DEFAULT NULL,
  `EA_ACT_1` int DEFAULT NULL,
  `EA_PROC_1` int DEFAULT NULL,
  `EA_CONC_1` int DEFAULT NULL,
  `EA_ACT_2` int DEFAULT NULL,
  `EA_PROC_2` int DEFAULT NULL,
  `EA_CONC_2` int DEFAULT NULL,
  `EA_ACT_3` int DEFAULT NULL,
  `EA_PROC_3` int DEFAULT NULL,
  `EA_CONC_3` int DEFAULT NULL,
  PRIMARY KEY (`EA_ID`),
  KEY `fk_cve_alumno_idx` (`EA_CVE_ALUMNO`),
  KEY `fk_cve_grupo_idx` (`EA_CVE_GRUPO`),
  CONSTRAINT `fk_cve_alumno` FOREIGN KEY (`EA_CVE_ALUMNO`) REFERENCES `alumno` (`AL_MATRICULA`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_cve_grupo` FOREIGN KEY (`EA_CVE_GRUPO`) REFERENCES `grupo` (`gr_cve_grupo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluacion_alumno`
--

LOCK TABLES `evaluacion_alumno` WRITE;
/*!40000 ALTER TABLE `evaluacion_alumno` DISABLE KEYS */;
INSERT INTO `evaluacion_alumno` VALUES (8,'ISC4O1B','14011077',100,80,90,NULL,NULL,NULL,NULL,NULL,NULL),(9,'ISC4O1B','14011027',70,80,75,NULL,NULL,NULL,NULL,NULL,NULL),(11,'ISC4O1C','14011077',80,80,80,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `evaluacion_alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluacion_guia_observacion`
--

DROP TABLE IF EXISTS `evaluacion_guia_observacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evaluacion_guia_observacion` (
  `EGO_ID` int NOT NULL,
  `EGO_TOTAL_EVALUACION` int DEFAULT NULL,
  `EGO_PERIODO` varchar(45) DEFAULT NULL,
  `EGO_CVA_ASINATURA` varchar(15) DEFAULT NULL,
  `EGO_CVE_DOCENTE` varchar(45) DEFAULT NULL,
  `EGO_CVE_GUIA_OBS` int NOT NULL,
  PRIMARY KEY (`EGO_ID`),
  KEY `EGO_CVE_GUIA_OBS` (`EGO_CVE_GUIA_OBS`),
  CONSTRAINT `evaluacion_guia_observacion_ibfk_1` FOREIGN KEY (`EGO_CVE_GUIA_OBS`) REFERENCES `guia_observacion` (`go_clave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluacion_guia_observacion`
--

LOCK TABLES `evaluacion_guia_observacion` WRITE;
/*!40000 ALTER TABLE `evaluacion_guia_observacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluacion_guia_observacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluacion_x_unidad`
--

DROP TABLE IF EXISTS `evaluacion_x_unidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evaluacion_x_unidad` (
  `EUX_ID` int NOT NULL AUTO_INCREMENT,
  `EUX_CVE_CARGA_ALUMNO` int DEFAULT NULL COMMENT 'La referencia al registro de la carga del alumno, así  puedo saber a que grupo, docente, asignatura y periodo esta inscrito.',
  `EUX_CVE_UNIDAD_ASIGNATURA` int DEFAULT NULL COMMENT 'Este elemento contiene la unidad de evaluación de a la asignatura.',
  `EUX_MOTIVO_REPROBACION` varchar(200) DEFAULT NULL,
  `EUX_ASESORIA_ACADEMICA` int unsigned DEFAULT '0' COMMENT 'Representa si un alumno requiere canalización a asesoría académica: 1 =Sí , 0=NO.',
  `EUX_ATENCION_PSICOLOGIA` int unsigned DEFAULT '0' COMMENT 'Representa si un alumno requiere canalización a servicio de Psicología: 1 =Sí , 0=NO.',
  `EUX_SERVICIO_MEDICO` int unsigned DEFAULT '0' COMMENT 'Representa si un alumno requiere canalización a servicio médico: 1 =Sí , 0=NO.',
  `EUX_SERVICIO_SOCIAL` int unsigned DEFAULT '0' COMMENT 'Representa si un alumno requiere canalización a servicio social: 1 =Sí , 0=NO.',
  `EUX_EF_1` int unsigned DEFAULT '0' COMMENT 'Contiene el valor de la Evaluación formativa 1.',
  `EUX_EF_2` int DEFAULT '0' COMMENT 'Contiene el valor de la Evaluación formativa 2.',
  `EUX_EF_3` int DEFAULT '0' COMMENT 'Contiene el valor de la Evaluación formativa 3.',
  `EUX_EF_4` int DEFAULT '0' COMMENT 'Contiene el valor de la Evaluación formativa 4.',
  `EUX_SUMATORIA` int DEFAULT '0' COMMENT 'Contiene la calificación final de la unidad de evaluación.',
  PRIMARY KEY (`EUX_ID`),
  KEY `FK_EVALUACION_CARGA_ALUMNO_idx` (`EUX_CVE_CARGA_ALUMNO`),
  CONSTRAINT `FK_EVALUACION_CARGA_ALUMNO` FOREIGN KEY (`EUX_CVE_CARGA_ALUMNO`) REFERENCES `carga_alumno` (`CA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Contiene las calificaciones por periodo, grupo y asignatura para cada alumno en unidades de evaluación. ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluacion_x_unidad`
--

LOCK TABLES `evaluacion_x_unidad` WRITE;
/*!40000 ALTER TABLE `evaluacion_x_unidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluacion_x_unidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluador_externo`
--

DROP TABLE IF EXISTS `evaluador_externo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evaluador_externo` (
  `EVAE_CVE_EMPRESA` varchar(20) NOT NULL,
  `EVAE_NOMBRE_EMPRESA` varchar(100) DEFAULT NULL COMMENT 'MUESTRA EL NOMBRE DE LA EMPRESA',
  `EVAE_SECTOR` varchar(20) DEFAULT NULL COMMENT 'MUESTRA EL SECTOR AL QUE ESTA INSCRITA LA EMPRESA',
  `EVAE_DOMICILIO` varchar(100) DEFAULT NULL COMMENT 'MUESTRA EL DOMICILIO DONDE SE ENCUENTRA LA EMPRESA',
  `EVAE_MUNICIPIO` varchar(45) DEFAULT NULL COMMENT 'MUESTRA EL MUNICIPIO DONDE SE UBICA LA EMPRESA',
  `EVAE_ESTADO` varchar(50) DEFAULT NULL COMMENT 'MUESTRA EL ESTADO DONDE SE ENCUENTRA UBICADA LA EMPRESA ',
  `EVAE_GIRO` varchar(210) DEFAULT NULL COMMENT 'MUESTRA EL GIRO AL QUE PERTENECE LA EMPRESA',
  `EVAE_CONTACTO_UNO` varchar(15) DEFAULT NULL,
  `EVAE_CONTACTO_DOS` varchar(15) DEFAULT NULL,
  `EVAE_CONTACTO_TRES` varchar(15) DEFAULT NULL,
  `EVAE_EMAIL_UNO` varchar(45) DEFAULT NULL,
  `EVAE_EMAIL_DOS` varchar(45) DEFAULT NULL,
  `EVAE_EMAIL_TRES` varchar(45) DEFAULT NULL,
  `EVAE_FEC_INSERT` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'MUESTRA LA FECHA EN QUE SE INSERTO LA EMPRESA',
  `EVAE_FEC_UP` datetime DEFAULT NULL COMMENT 'MUESTRA LA FECHA EN QUE SE EDITO LOS DATOS DE LA EMPRESA',
  `EVAE_LAST_IP` int unsigned DEFAULT NULL,
  `EVAE_BY_USER` int unsigned DEFAULT NULL COMMENT 'MUESTRA QUE USUARIO HIZO LA MODIFICACION EN LA TABLA',
  `EVAE_ACTIVO` char(1) DEFAULT 'A' COMMENT 'MUESTRA SI LA EMPRESA ESTA ACTIVA A=ACTIVA I=INACTIVA',
  PRIMARY KEY (`EVAE_CVE_EMPRESA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='ESTA TABLA MUESTRA LAS EMPRESAS A LAS CUALES ESTA LABORANDO EL ALUMNO INSCRITO A RESIDENCIA PROFESIONAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluador_externo`
--

LOCK TABLES `evaluador_externo` WRITE;
/*!40000 ALTER TABLE `evaluador_externo` DISABLE KEYS */;
INSERT INTO `evaluador_externo` VALUES ('EVAE_01','Xólotl Creative Labs S. de R.L. de C.V.','Privado','Calderón de la Barca No.359 Int. Col. Polanco ','Alcaldía Miguel Hidalgo','Ciudad de México','Servicios',NULL,NULL,NULL,'roberto.rangel@xolotlcl.com',NULL,NULL,'2021-03-25 10:14:22',NULL,NULL,NULL,'A'),('EVAE_02','Grupo Alternativas Y Solucione, S.A. De C.V.','Privado ','Av. Zeus 252, Col. Pri-Chacón','Mineral de la Reforma ','Hidalgo ','Servicio de telecomunicasiones ','7717185818','7717020375','771 71 90818','jocelyn.hernandez@solucione.com.mx','dania.luna@solucione.com.mx','santillan@solucione.com.mx','2021-03-25 11:25:10',NULL,3361341440,1,'A'),('EVAE_03','Acc Mex S.A de C.V','Privado ','Calle Libramiento Sur-Poniente No. 802, Villas del Cimatario, Campestre Italiana','Santiago de Querétaro','Querétaro','Fabricación','5536175222',NULL,NULL,'rjuarez@accmex.com.mx',NULL,NULL,'2021-03-25 11:59:34',NULL,3232235777,1,'A'),('EVAE_04','Universidad Politécnica Francisco I. Madero ','Público','Conocido s/n, Tepatepec','Francisco I. Madero ','Hidalgo ','Educativo ','7387241174',NULL,NULL,'calidad@upfim.edu.mx',NULL,NULL,'2021-03-25 12:27:56',NULL,NULL,NULL,'A'),('EVAE_05','Instituto Tecnológico Superior del Occidente del Estado de Hidalgo','Educativo ','Paseo del Agrarismo 2000 Carretera Mixquiahuala - Tula km 2.5','Mixquiahuala de Juárez Hidalgo ','Hidalgo ','Educativo ','7387354000','017387354000',NULL,'egarciar@itsoeh.edu.mx','rporras@itsoeh.edu.mx',NULL,'2021-03-25 12:29:56',NULL,NULL,NULL,'A'),('EVAE_06','Integra Telecomm & Security','Privado ','Gral. Daniel Cerecedo Escobar 9 Col. Revolución','Pachuca','Hidalgo ','Telecomunicaciones','77171531835',NULL,NULL,'carlosquintorios@integratelecomm.com.mx',NULL,NULL,'2021-03-25 12:31:02',NULL,NULL,NULL,'A'),('EVAE_07','Centro de Control, Comando, Comunicaciones, Computo, Coordinación e Inteligencia C5i','Público ','Carretera México-Pachuca km 84.5','Pachuca de Soto ','Hidalgo ','Seguridad publica','7717174720',NULL,NULL,'ricardo.monzalvo@hidalgo.gob.mx',NULL,NULL,'2021-03-25 12:32:35',NULL,NULL,NULL,'A'),('EVAE_08','Keystone Industrial de México S.A. de C.V.','Privado ','Av. Francisco I. Madero 618 Santa María Ilucan','Tula de Allende','Hidalgo ','Desarrollo de Ingenieria ','7731640608',NULL,NULL,'jair.acuna@keymex.mx',NULL,NULL,'2021-03-25 12:44:49',NULL,NULL,NULL,'A'),('EVAE_09','Centro de Innovación y Desarrollo Tecnológico Valle del Mezquital CiDT','Privado ','Pedro Moreno #76, 4ta Demarcación','Mixquiahuala de Juárez ','Hidalgo ','\"Generar conocimientos científicos y tecnológico mediante investigación, validación,\nCapacitación y trasferencia de tecnología que demandan los pequeños productores en\nla región del Valle del Mezquital \n\"','7387352739',NULL,NULL,'jaime_ortega227@hotmail.com',NULL,NULL,'2021-03-25 12:50:24',NULL,NULL,NULL,'A'),('EVAE_10','Radio Y Televisión De Hidalgo','Público','Carretera Federal México-Pachuca km 84.5 s/n, Sector Primario ','Pachuca de Soto','Hidalgo ','Radio y Television ','7717179000',NULL,NULL,NULL,NULL,NULL,'2021-03-25 12:44:49',NULL,NULL,NULL,'A'),('EVAE_11','Materiales \"La Estrella Roja\"','Privado ','Av. Insurgentes No. 57, Panuaya','Tezontepec de Aldama ','Hidalgo ','Ferreteria, Tlapaleria y Construcción ','7731257004','',NULL,'sistema.laestrellaroja@gmail.com',NULL,NULL,'2021-03-25 12:44:49',NULL,NULL,NULL,'A'),('EVAE_12','Sección de Estudios de Posgrado e Investigación, ESIME Culhuacan, Instituto Politécnico Nacional','Público ','Av. Santa Ana No. 1000 Col. C.T.M. Culhuacan, Sección V','Alcaldía Coyoacán','Ciudad de México','Estudios de posgrado e investigación','15557296000',NULL,NULL,'eescamillah@ipn.mx',NULL,NULL,'2021-03-25 12:44:49',NULL,NULL,NULL,'A'),('EVAE_13','ND Accesorios Tula S.A. de C.V.','Privado ','Leandro Valle No.147 Col. Centro','Tula de Allende ','Hidalgo ','Papeleria y tecnologia ','7737336515',NULL,NULL,'david.cabrera@grupond.com.mx',NULL,NULL,'2021-03-25 12:44:49',NULL,NULL,NULL,'A'),('EVAE_14','Xwifinity','Privado ','Calderón de la Barca No.359 Int. Col. Polanco ','Alcaldía Miguel Hidalgo','Ciudad de México','De servicios: ofrece el servicio de internet domiciliario ','7721264046',NULL,NULL,'xwifnity@gmail.com',NULL,NULL,'2021-03-25 12:44:49',NULL,NULL,NULL,'A'),('EVAE_15','Software Avanzado SC',NULL,'Matías Romero 1562 - 301, Col. Letrán Valle, Benito Juárez, C.P. 03650','Benito Juárez','Ciudad de México',NULL,'5570303882',' 5556758897',NULL,'anel.acosta@softwareavanzado.com',NULL,NULL,'2021-03-25 23:14:41',NULL,NULL,NULL,'A'),('EVAE_16','PR Y Asociados',NULL,'Nubes Norte 141, colonia Jardines del Pedregal','Alvaro Obregon','Mexico','','5561221454',NULL,NULL,'rsalazar@pryasociados.com.mx',NULL,NULL,'2021-03-25 23:15:52',NULL,NULL,NULL,'A'),('EVAE_17','Presidencia Municipal de Mixquiahuala de Juárez Hidalgo.',NULL,'\"Constitución 1, Centro, 1ra Demarcación Poniente,\n42700 Mixquiahuala, Hgo\n\"','Mixquiahuala de Juárez Hgo.','Hidalgo',NULL,'7387252900',NULL,NULL,'injuve.mix@gmail.com',NULL,NULL,'2021-03-25 23:17:32',NULL,NULL,NULL,'A');
/*!40000 ALTER TABLE `evaluador_externo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `go_pi`
--

DROP TABLE IF EXISTS `go_pi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `go_pi` (
  `GP_CVE` int NOT NULL AUTO_INCREMENT,
  `GP_PI` int DEFAULT NULL,
  `GP_GO` int DEFAULT NULL,
  PRIMARY KEY (`GP_CVE`),
  KEY `fk_gopi_go` (`GP_GO`),
  KEY `fk_gopi_pi` (`GP_PI`),
  CONSTRAINT `fk_gopi_go` FOREIGN KEY (`GP_GO`) REFERENCES `guia_observacion` (`go_clave`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_gopi_pi` FOREIGN KEY (`GP_PI`) REFERENCES `proyecto_integrador` (`pi_cve`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='contiene las guias de observación para los proyectos integradores';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `go_pi`
--

LOCK TABLES `go_pi` WRITE;
/*!40000 ALTER TABLE `go_pi` DISABLE KEYS */;
/*!40000 ALTER TABLE `go_pi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupo` (
  `GR_CVE_GRUPO` varchar(10) NOT NULL COMMENT 'Contiene la clave de el grupo.',
  `GR_PERIODO` varchar(20) NOT NULL COMMENT 'CONTIENE LA INFORMACION DEL PERIODO EN CURSO',
  `GR_CVE_PLAN` varchar(18) DEFAULT NULL COMMENT 'CONTIENE EL PLAN??',
  `GR_CVE_ASIGNATURA` varchar(15) DEFAULT NULL,
  `GR_CVE_DOCENTE` int DEFAULT NULL,
  `GR_FEC_INSERT` datetime DEFAULT CURRENT_TIMESTAMP,
  `GR_FEC_UP` datetime DEFAULT NULL,
  `GR_BY_USER` int DEFAULT NULL,
  `GR_LAST_IP` int unsigned DEFAULT NULL,
  `GR_ACTIVO` char(1) DEFAULT 'A',
  PRIMARY KEY (`GR_CVE_GRUPO`,`GR_PERIODO`),
  KEY `grupo_ibfk_3` (`GR_CVE_ASIGNATURA`),
  KEY `grupo_ibfk_4` (`GR_CVE_DOCENTE`),
  KEY `grupo_periodo_grperiodo` (`GR_PERIODO`),
  KEY `fk_grupo_plan_cve_idx` (`GR_CVE_PLAN`),
  CONSTRAINT `grupo_ibfk_3` FOREIGN KEY (`GR_CVE_ASIGNATURA`) REFERENCES `asignatura` (`AS_CVE_ASIGNATURA`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `grupo_ibfk_4` FOREIGN KEY (`GR_CVE_DOCENTE`) REFERENCES `docente` (`DO_CVE_DOCENTE`),
  CONSTRAINT `grupo_periodo_grperiodo` FOREIGN KEY (`GR_PERIODO`) REFERENCES `periodo` (`pr_cve`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
INSERT INTO `grupo` VALUES ('ISC102C','20191','ISIC-2010-224','ACF0902',194,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC104A','20191','ISIC-2010-224','ACF0905',194,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC104B','20191','ISIC-2010-224','ACF0905',194,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC104C','20211','ISIC-2010-224','ACF0902',130,'2021-03-22 10:36:43',NULL,1,3357671424,'A'),('ISC106A','20191','ISIC-2010-224','SCD1015',130,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC106B','20191','ISIC-2010-224','SCC1019',702,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC106C','20151','ISIC-2010-224','ACF0903',194,'2021-03-22 10:21:46',NULL,1,3368419328,'A'),('ISC1O1A','20181','ISIC-2010-224','ACF0901',3,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC1O1C','20181','ISIC-2010-224','ACF0901',194,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC202A','20191','ISIC-2010-224','AED1286',130,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC202B','20191','ISIC-2010-224','AED1286',1008,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC204A','20191','ISIC-2010-224','SCC1017',100,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC206A','20191','ISIC-2010-224','SCD1021',7023,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC208A','20191','ISIC-2010-224','SCA1002',7023,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC208B','20191','ISIC-2010-224','SCA1002',7023,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC2O1A','20181','ISIC-2010-224','AED1285',702,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC2O1B','20181','ISIC-2010.224','AED1285',702,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC304A','20191','ISIC-2010-224','SCA1026',700,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC304B','20191','ISIC-2010-224','SCA1026',700,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC306A','20191','ISIC-2010-224','ACA0909',100,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC306B','20191','ISIC-2010-224','ACA0909',702,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC306B','20192','ISC-2010.224','SCB1001',7022,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC308A','20191','ISIC-2010-224','ACA0910',702,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC308B','20191','ISIC-2010-224','ACA0910',130,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC30X9A','20213','ISIC-2010-224','SCD1027',7022,'2021-06-07 10:36:53',NULL,NULL,NULL,'A'),('ISC30X9B','20213','ISC-210-224','SCD1027',7022,'2021-06-07 10:37:39',NULL,NULL,NULL,'A'),('ISC3O1A','20181','ISIC-2010-224','ACA0907',7022,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC3O1B','20181','ISIC-2010.224','ACA0907',69,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC404A','20191','ISIC-2010-224','AEF1031',1008,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC404B','20191','ISIC-2010-224','AEF1031',1008,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC4O1A','20181','ISIC-2010-224','AEF1041',18,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC4O1B','20181','ISIC-2010-224','AEF1041',700,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC4O1C','20181','ISIC-2010-224','SCD1003',700,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC4O7B','20181','ISIC-2010-224','SCG1009',700,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC502A','20191','ISIC-2010-224','ACF0903',194,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC506A','20191','ISIC-2010-224','SCD1011',69,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC50B','20191','ISIC-2010-224','SCD1011',69,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC5O1A','20181','ISIC-2010-224','SCH1024',11,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC5O1B','20181','ISIC-2010.224','SCH1024',11,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC5O5B','20181','ISIC-2010-224','SCC10071',700,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC5O7A','20181','ISIC-2010-224','SCC1023',3,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC602A','20191','ISIC-2010-224','AEF1052',700,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC604B','20191','ISIC-2010-224','SCD1018',129,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC606A','20191','ISIC-2010-224','SCC1014',129,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC606B','20191','ISIC-2010-224','SCC1014',129,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC6O1A','20181','ISIC-2010-224','ACC0906',129,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC6O1B','20181','ISIC-2010.224','ACC0906',129,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISC6O5A','20181','ISIC-2010-224','SCD1003',3,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISCTO1A','20181','ISIC-2010-224','T1',11,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISCTO2A','20191','ISC-2010-224','T2',7022,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISCTO5A','20181','ISIC-2010.224','T5',7022,'2021-03-22 00:56:18',NULL,NULL,NULL,'A'),('ISCTT9A','20211','ISC-2010-224','1090001',7022,'2021-04-21 10:34:37',NULL,NULL,NULL,'A'),('ISCTT9B','20211','ISC-2010-224','1090004',7022,'2021-04-26 10:49:12',NULL,NULL,NULL,'A');
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo_cat`
--

DROP TABLE IF EXISTS `grupo_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupo_cat` (
  `GC_ID` int NOT NULL AUTO_INCREMENT,
  `GC_CATEGORIA` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`GC_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo_cat`
--

LOCK TABLES `grupo_cat` WRITE;
/*!40000 ALTER TABLE `grupo_cat` DISABLE KEYS */;
INSERT INTO `grupo_cat` VALUES (1,'A'),(2,'B'),(3,'C');
/*!40000 ALTER TABLE `grupo_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guia_observacion`
--

DROP TABLE IF EXISTS `guia_observacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guia_observacion` (
  `GO_CLAVE` int NOT NULL AUTO_INCREMENT COMMENT 'CLAVE DE LA GUIA DE OBSERVACION A EVALUAR',
  `GO_CA_CVE` int DEFAULT NULL COMMENT 'La clave del registro de carga alumno que contiene información de grupo, docente, alumno, asignatura y periodo.',
  `GO_TOTAL` varchar(45) DEFAULT NULL COMMENT 'EL VALOR TOTAL DE LA GUÍA DE OBSERVACIÓN ES EL TOTAL DE LAS PREGUNTAS EN LA GUIA BASE ',
  `GO_INTEGRADOR` varchar(45) DEFAULT NULL COMMENT 'IDENTIFICADOIR DE PROYECTO INTEGRADOR',
  `GO_NOMBRE_PROYECTO` varchar(45) DEFAULT NULL COMMENT 'CONTIEE EL NOMBRE DEL PROYECTO',
  `GO_FEC_INSERT` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'MUESTRA LA FECHA EN QUE FUE CREADO EL REGISTRO DE LA GUÍA DE OBSERVACIÓN',
  `GO_FEC_UP` datetime DEFAULT NULL COMMENT 'MUESTRA LA FECHA EN QUE SE MODIFICO EL CAMPO',
  `GO_LAST_IP` int unsigned DEFAULT NULL COMMENT 'MUESTRA LA DIRECCIÓN IP QUE SE LE ASIGNO AL REGISTRO ',
  `GO_BY_USER` int unsigned DEFAULT NULL COMMENT 'MUESTRA AL USUARIO QUE HIZO MODIFICACIONES',
  `GO_ACTIVO` char(1) DEFAULT 'A' COMMENT 'MUESTRA SI LA GUIA DE OBSERVACIÓN SE ENCUENTRA ACTIVO A=ACTIVO I=INACTIVO',
  PRIMARY KEY (`GO_CLAVE`),
  KEY `fk_ca_cve_idx` (`GO_CA_CVE`),
  CONSTRAINT `fk_ca_cve` FOREIGN KEY (`GO_CA_CVE`) REFERENCES `carga_alumno` (`CA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Almacenas las guías de observación que se van a generar por el docente';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guia_observacion`
--

LOCK TABLES `guia_observacion` WRITE;
/*!40000 ALTER TABLE `guia_observacion` DISABLE KEYS */;
INSERT INTO `guia_observacion` VALUES (56,19,'100',NULL,'Indicadores de atributos de egreso','2021-04-26 10:59:58',NULL,NULL,NULL,'A');
/*!40000 ALTER TABLE `guia_observacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial_criterios_asignatura`
--

DROP TABLE IF EXISTS `historial_criterios_asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial_criterios_asignatura` (
  `HCA_CVE` int NOT NULL AUTO_INCREMENT,
  `HCA_NIVEL` varchar(3) DEFAULT NULL COMMENT 'nivel del pregunta',
  `HCA_CVE_ASIGNATURA` varchar(15) DEFAULT NULL COMMENT 'asignatura del criterio agregado',
  `HCA_CVE_CD` varchar(20) DEFAULT NULL COMMENT 'clave del criterio agregado',
  `HCA_FECHA_IN` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha en que se agregó el registro',
  PRIMARY KEY (`HCA_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=273 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_criterios_asignatura`
--

LOCK TABLES `historial_criterios_asignatura` WRITE;
/*!40000 ALTER TABLE `historial_criterios_asignatura` DISABLE KEYS */;
INSERT INTO `historial_criterios_asignatura` VALUES (1,'i','GAVACAD','ISC_AE1_CD1','2019-03-13 16:28:58'),(2,'i','GAVACAD','ISC_AE1_CD2','2019-03-13 16:28:58'),(3,'i','GAVACAD','ISC_AE1_CD3','2019-03-13 16:28:58'),(4,'i','GAVACAD','ISC_AE3_CD1','2019-03-13 16:28:58'),(5,'i','GAVACAD','ISC_AE3_CD2','2019-03-13 16:28:58'),(6,'i','GAVACAD','ISC_AE6_CD1','2019-03-13 16:28:58'),(7,'i','GAVACAD','ISC_AE6_CD2','2019-03-13 16:28:58'),(8,'i','GAVACAD','ISC_AE7_CD1','2019-03-13 16:28:58'),(9,'i','GAVACAD','ISC_AE2_CD1','2019-03-13 16:28:58'),(10,'i','GAVACAD','ISC_AE1_CD3','2019-03-13 16:28:58'),(11,'i','GAVACAD','ISC_AE2_CD1','2019-03-13 16:28:58'),(12,'i','GAVACAD','ISC_AE3_CD1','2019-03-13 16:28:58'),(13,'i','GAVACAD','ISC_AE3_CD2','2019-03-13 16:28:58'),(14,'i','GAVACAD','ISC_AE6_CD1','2019-03-13 16:28:58'),(15,'i','GAVACAD','ISC_AE6_CD2','2019-03-13 16:28:58'),(16,'i','GAVACAD','ISC_AE7_CD1','2019-03-13 16:28:58'),(17,'i','GAVACAD','ISC_AE1_CD3','2019-03-13 16:28:58'),(18,'i','GAVACAD','ISC_AE2_CD1','2019-03-13 16:28:58'),(19,'i','GAVACAD','ISC_AE3_CD1','2019-03-13 16:28:58'),(20,'i','GAVACAD','ISC_AE3_CD2','2019-03-13 16:28:58'),(21,'i','GAVACAD','ISC_AE6_CD1','2019-03-13 16:28:58'),(22,'i','GAVACAD','ISC_AE6_CD2','2019-03-13 16:28:58'),(23,'i','GAVACAD','ISC_AE7_CD1','2019-03-13 16:28:58'),(32,'i','GAVACAD','ISC_AE1_CD1','2019-03-13 16:29:16'),(33,'i','GAVACAD','ISC_AE1_CD2','2019-03-13 16:29:16'),(34,'i','GAVACAD','ISC_AE1_CD3','2019-03-13 16:29:16'),(35,'i','GAVACAD','ISC_AE3_CD1','2019-03-13 16:29:16'),(36,'i','GAVACAD','ISC_AE3_CD2','2019-03-13 16:29:16'),(37,'i','GAVACAD','ISC_AE6_CD1','2019-03-13 16:29:16'),(38,'i','GAVACAD','ISC_AE6_CD2','2019-03-13 16:29:16'),(39,'i','GAVACAD','ISC_AE7_CD1','2019-03-13 16:29:16'),(40,'i','GAVACAD','ISC_AE2_CD1','2019-03-13 16:29:16'),(41,'i','GAVACAD','ISC_AE1_CD3','2019-03-13 16:29:16'),(42,'i','GAVACAD','ISC_AE2_CD1','2019-03-13 16:29:16'),(43,'i','GAVACAD','ISC_AE3_CD1','2019-03-13 16:29:16'),(44,'i','GAVACAD','ISC_AE3_CD2','2019-03-13 16:29:16'),(45,'i','GAVACAD','ISC_AE6_CD1','2019-03-13 16:29:16'),(46,'i','GAVACAD','ISC_AE6_CD2','2019-03-13 16:29:16'),(47,'i','GAVACAD','ISC_AE7_CD1','2019-03-13 16:29:16'),(48,'i','GAVACAD','ISC_AE1_CD3','2019-03-13 16:29:16'),(49,'i','GAVACAD','ISC_AE2_CD1','2019-03-13 16:29:16'),(50,'i','GAVACAD','ISC_AE3_CD1','2019-03-13 16:29:16'),(51,'i','GAVACAD','ISC_AE3_CD2','2019-03-13 16:29:16'),(52,'i','GAVACAD','ISC_AE6_CD1','2019-03-13 16:29:16'),(53,'i','GAVACAD','ISC_AE6_CD2','2019-03-13 16:29:16'),(54,'i','GAVACAD','ISC_AE7_CD1','2019-03-13 16:29:16'),(63,'i','GAVACAD','ISC_AE1_CD1','2019-03-13 16:32:29'),(64,'i','GAVACAD','ISC_AE1_CD2','2019-03-13 16:32:29'),(65,'i','GAVACAD','ISC_AE1_CD3','2019-03-13 16:32:29'),(66,'i','GAVACAD','ISC_AE3_CD1','2019-03-13 16:32:29'),(67,'i','GAVACAD','ISC_AE3_CD2','2019-03-13 16:32:29'),(68,'i','GAVACAD','ISC_AE6_CD1','2019-03-13 16:32:29'),(69,'i','GAVACAD','ISC_AE6_CD2','2019-03-13 16:32:29'),(70,'i','GAVACAD','ISC_AE7_CD1','2019-03-13 16:32:29'),(71,'i','GAVACAD','ISC_AE2_CD1','2019-03-13 16:32:29'),(72,'i','GAVACAD','ISC_AE1_CD3','2019-03-13 16:32:29'),(73,'i','GAVACAD','ISC_AE2_CD1','2019-03-13 16:32:29'),(74,'i','GAVACAD','ISC_AE3_CD1','2019-03-13 16:32:29'),(75,'i','GAVACAD','ISC_AE3_CD2','2019-03-13 16:32:29'),(76,'i','GAVACAD','ISC_AE6_CD1','2019-03-13 16:32:29'),(77,'i','GAVACAD','ISC_AE6_CD2','2019-03-13 16:32:29'),(78,'i','GAVACAD','ISC_AE7_CD1','2019-03-13 16:32:29'),(79,'i','GAVACAD','ISC_AE1_CD3','2019-03-13 16:32:29'),(80,'i','GAVACAD','ISC_AE2_CD1','2019-03-13 16:32:29'),(81,'i','GAVACAD','ISC_AE3_CD1','2019-03-13 16:32:29'),(82,'i','GAVACAD','ISC_AE3_CD2','2019-03-13 16:32:29'),(83,'i','GAVACAD','ISC_AE6_CD1','2019-03-13 16:32:29'),(84,'i','GAVACAD','ISC_AE6_CD2','2019-03-13 16:32:29'),(85,'i','GAVACAD','ISC_AE7_CD1','2019-03-13 16:32:29'),(94,'i','GAVACAD','ISC_AE1_CD1','2019-03-13 16:33:07'),(95,'i','GAVACAD','ISC_AE1_CD2','2019-03-13 16:33:07'),(96,'i','GAVACAD','ISC_AE1_CD3','2019-03-13 16:33:07'),(97,'i','GAVACAD','ISC_AE3_CD1','2019-03-13 16:33:07'),(98,'i','GAVACAD','ISC_AE3_CD2','2019-03-13 16:33:07'),(99,'i','GAVACAD','ISC_AE6_CD1','2019-03-13 16:33:07'),(100,'i','GAVACAD','ISC_AE6_CD2','2019-03-13 16:33:07'),(101,'i','GAVACAD','ISC_AE7_CD1','2019-03-13 16:33:07'),(102,'i','GAVACAD','ISC_AE2_CD1','2019-03-13 16:33:07'),(103,'i','GAVACAD','ISC_AE1_CD3','2019-03-13 16:33:07'),(104,'i','GAVACAD','ISC_AE2_CD1','2019-03-13 16:33:07'),(105,'i','GAVACAD','ISC_AE3_CD1','2019-03-13 16:33:07'),(106,'i','GAVACAD','ISC_AE3_CD2','2019-03-13 16:33:07'),(107,'i','GAVACAD','ISC_AE6_CD1','2019-03-13 16:33:07'),(108,'i','GAVACAD','ISC_AE6_CD2','2019-03-13 16:33:07'),(109,'i','GAVACAD','ISC_AE7_CD1','2019-03-13 16:33:07'),(110,'i','GAVACAD','ISC_AE1_CD3','2019-03-13 16:33:07'),(111,'i','GAVACAD','ISC_AE2_CD1','2019-03-13 16:33:07'),(112,'i','GAVACAD','ISC_AE3_CD1','2019-03-13 16:33:07'),(113,'i','GAVACAD','ISC_AE3_CD2','2019-03-13 16:33:07'),(114,'i','GAVACAD','ISC_AE6_CD1','2019-03-13 16:33:07'),(115,'i','GAVACAD','ISC_AE6_CD2','2019-03-13 16:33:07'),(116,'i','GAVACAD','ISC_AE7_CD1','2019-03-13 16:33:07'),(125,'i','GAVACAD','ISC_AE1_CD1','2019-03-13 16:35:43'),(126,'i','GAVACAD','ISC_AE1_CD2','2019-03-13 16:35:43'),(127,'i','GAVACAD','ISC_AE1_CD3','2019-03-13 16:35:43'),(128,'i','GAVACAD','ISC_AE3_CD1','2019-03-13 16:35:43'),(129,'i','GAVACAD','ISC_AE3_CD2','2019-03-13 16:35:43'),(130,'i','GAVACAD','ISC_AE6_CD1','2019-03-13 16:35:43'),(131,'i','GAVACAD','ISC_AE6_CD2','2019-03-13 16:35:43'),(132,'i','GAVACAD','ISC_AE7_CD1','2019-03-13 16:35:43'),(133,'i','GAVACAD','ISC_AE2_CD1','2019-03-13 16:35:43'),(134,'i','GAVACAD','ISC_AE1_CD3','2019-03-13 16:35:43'),(135,'i','GAVACAD','ISC_AE2_CD1','2019-03-13 16:35:43'),(136,'i','GAVACAD','ISC_AE3_CD1','2019-03-13 16:35:43'),(137,'i','GAVACAD','ISC_AE3_CD2','2019-03-13 16:35:43'),(138,'i','GAVACAD','ISC_AE6_CD1','2019-03-13 16:35:43'),(139,'i','GAVACAD','ISC_AE6_CD2','2019-03-13 16:35:43'),(140,'i','GAVACAD','ISC_AE7_CD1','2019-03-13 16:35:43'),(141,'i','GAVACAD','ISC_AE1_CD3','2019-03-13 16:35:43'),(142,'i','GAVACAD','ISC_AE2_CD1','2019-03-13 16:35:43'),(143,'i','GAVACAD','ISC_AE3_CD1','2019-03-13 16:35:43'),(144,'i','GAVACAD','ISC_AE3_CD2','2019-03-13 16:35:43'),(145,'i','GAVACAD','ISC_AE6_CD1','2019-03-13 16:35:43'),(146,'i','GAVACAD','ISC_AE6_CD2','2019-03-13 16:35:43'),(147,'i','GAVACAD','ISC_AE7_CD1','2019-03-13 16:35:43'),(156,'i','GAVACAD','ISC_AE1_CD1','2019-03-13 16:39:07'),(157,'i','GAVACAD','ISC_AE1_CD2','2019-03-13 16:39:07'),(158,'i','GAVACAD','ISC_AE1_CD3','2019-03-13 16:39:07'),(159,'i','GAVACAD','ISC_AE3_CD1','2019-03-13 16:39:07'),(160,'i','GAVACAD','ISC_AE3_CD2','2019-03-13 16:39:07'),(161,'i','GAVACAD','ISC_AE6_CD1','2019-03-13 16:39:07'),(162,'i','GAVACAD','ISC_AE6_CD2','2019-03-13 16:39:07'),(163,'i','GAVACAD','ISC_AE7_CD1','2019-03-13 16:39:07'),(164,'i','GAVACAD','ISC_AE2_CD1','2019-03-13 16:39:07'),(165,'i','GAVACAD','ISC_AE1_CD3','2019-03-13 16:39:07'),(166,'i','GAVACAD','ISC_AE2_CD1','2019-03-13 16:39:07'),(167,'i','GAVACAD','ISC_AE3_CD1','2019-03-13 16:39:07'),(168,'i','GAVACAD','ISC_AE3_CD2','2019-03-13 16:39:07'),(169,'i','GAVACAD','ISC_AE6_CD1','2019-03-13 16:39:07'),(170,'i','GAVACAD','ISC_AE6_CD2','2019-03-13 16:39:07'),(171,'i','GAVACAD','ISC_AE7_CD1','2019-03-13 16:39:07'),(172,'i','GAVACAD','ISC_AE1_CD3','2019-03-13 16:39:07'),(173,'i','GAVACAD','ISC_AE2_CD1','2019-03-13 16:39:07'),(174,'i','GAVACAD','ISC_AE3_CD1','2019-03-13 16:39:07'),(175,'i','GAVACAD','ISC_AE3_CD2','2019-03-13 16:39:07'),(176,'i','GAVACAD','ISC_AE6_CD1','2019-03-13 16:39:07'),(177,'i','GAVACAD','ISC_AE6_CD2','2019-03-13 16:39:07'),(178,'i','GAVACAD','ISC_AE7_CD1','2019-03-13 16:39:07'),(187,'i','GAVACAD','ISC_AE1_CD3','2019-03-13 16:42:32'),(188,'i','GAVACAD','ISC_AE2_CD1','2019-03-13 16:42:32'),(189,'i','GAVACAD','ISC_AE3_CD1','2019-03-13 16:42:32'),(190,'i','GAVACAD','ISC_AE3_CD2','2019-03-13 16:42:32'),(191,'i','GAVACAD','ISC_AE6_CD1','2019-03-13 16:42:32'),(192,'i','GAVACAD','ISC_AE6_CD2','2019-03-13 16:42:32'),(193,'i','GAVACAD','ISC_AE7_CD1','2019-03-13 16:42:32'),(194,'I','GAVACAD','ISC_AE1_CD1','2019-03-13 16:43:07'),(195,'I','GAVACAD','ISC_AE1_CD2','2019-03-13 16:43:07'),(196,'i','GAVACAD','ISC_AE1_CD3','2019-03-13 16:43:07'),(197,'i','GAVACAD','ISC_AE2_CD1','2019-03-13 16:43:07'),(198,'i','GAVACAD','ISC_AE3_CD1','2019-03-13 16:43:07'),(199,'i','GAVACAD','ISC_AE3_CD2','2019-03-13 16:43:07'),(200,'i','GAVACAD','ISC_AE6_CD1','2019-03-13 16:43:07'),(201,'i','GAVACAD','ISC_AE6_CD2','2019-03-13 16:43:07'),(202,'i','GAVACAD','ISC_AE7_CD1','2019-03-13 16:43:07'),(209,'I','GAVACAD','ISC_AE1_CD1','2019-03-13 16:43:17'),(210,'I','GAVACAD','ISC_AE1_CD2','2019-03-13 16:43:17'),(211,'i','GAVACAD','ISC_AE1_CD3','2019-03-13 16:43:17'),(212,'i','GAVACAD','ISC_AE2_CD1','2019-03-13 16:43:17'),(213,'A','GAVACAD','ISC_AE2_CD2','2019-03-13 16:43:17'),(214,'i','GAVACAD','ISC_AE3_CD1','2019-03-13 16:43:17'),(215,'i','GAVACAD','ISC_AE3_CD2','2019-03-13 16:43:17'),(216,'i','GAVACAD','ISC_AE6_CD1','2019-03-13 16:43:17'),(217,'i','GAVACAD','ISC_AE6_CD2','2019-03-13 16:43:17'),(218,'i','GAVACAD','ISC_AE7_CD1','2019-03-13 16:43:17'),(219,'I','GAVACAD','ISC_AE1_CD1','2021-03-24 06:23:22'),(220,'I','GAVACAD','ISC_AE1_CD2','2021-03-24 06:23:22'),(221,'i','GAVACAD','ISC_AE1_CD3','2021-03-24 06:23:22'),(222,'i','GAVACAD','ISC_AE2_CD1','2021-03-24 06:23:22'),(223,'i','GAVACAD','ISC_AE3_CD1','2021-03-24 06:23:22'),(224,'i','GAVACAD','ISC_AE3_CD2','2021-03-24 06:23:22'),(225,'i','GAVACAD','ISC_AE6_CD1','2021-03-24 06:23:22'),(226,'i','GAVACAD','ISC_AE6_CD2','2021-03-24 06:23:22'),(227,'i','GAVACAD','ISC_AE7_CD1','2021-03-24 06:23:22'),(234,'I','GAVACAD','ISC_AE1_CD1','2021-03-24 06:23:25'),(235,'I','GAVACAD','ISC_AE1_CD2','2021-03-24 06:23:25'),(236,'i','GAVACAD','ISC_AE1_CD3','2021-03-24 06:23:25'),(237,'i','GAVACAD','ISC_AE2_CD1','2021-03-24 06:23:25'),(238,'i','GAVACAD','ISC_AE3_CD1','2021-03-24 06:23:25'),(239,'i','GAVACAD','ISC_AE3_CD2','2021-03-24 06:23:25'),(240,'i','GAVACAD','ISC_AE6_CD1','2021-03-24 06:23:25'),(241,'i','GAVACAD','ISC_AE6_CD2','2021-03-24 06:23:25'),(242,'i','GAVACAD','ISC_AE7_CD1','2021-03-24 06:23:25'),(249,'I','GAVACAD','ISC_AE1_CD1','2021-03-24 06:23:57'),(250,'I','GAVACAD','ISC_AE1_CD2','2021-03-24 06:23:57'),(251,'i','GAVACAD','ISC_AE1_CD3','2021-03-24 06:23:57'),(252,'i','GAVACAD','ISC_AE2_CD1','2021-03-24 06:23:57'),(253,'i','GAVACAD','ISC_AE3_CD1','2021-03-24 06:23:57'),(254,'i','GAVACAD','ISC_AE3_CD2','2021-03-24 06:23:57'),(255,'i','GAVACAD','ISC_AE6_CD1','2021-03-24 06:23:57'),(256,'i','GAVACAD','ISC_AE6_CD2','2021-03-24 06:23:57'),(257,'i','GAVACAD','ISC_AE7_CD1','2021-03-24 06:23:57'),(264,'I','GAVACAD','ISC_AE1_CD1','2021-03-24 06:24:08'),(265,'I','GAVACAD','ISC_AE1_CD2','2021-03-24 06:24:08'),(266,'i','GAVACAD','ISC_AE1_CD3','2021-03-24 06:24:08'),(267,'i','GAVACAD','ISC_AE2_CD1','2021-03-24 06:24:08'),(268,'i','GAVACAD','ISC_AE3_CD1','2021-03-24 06:24:08'),(269,'i','GAVACAD','ISC_AE3_CD2','2021-03-24 06:24:08'),(270,'i','GAVACAD','ISC_AE6_CD1','2021-03-24 06:24:08'),(271,'i','GAVACAD','ISC_AE6_CD2','2021-03-24 06:24:08'),(272,'i','GAVACAD','ISC_AE7_CD1','2021-03-24 06:24:08');
/*!40000 ALTER TABLE `historial_criterios_asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kardex`
--

DROP TABLE IF EXISTS `kardex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kardex` (
  `KA_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Guarda el id del registro',
  `KA_CALF_FINAL` int DEFAULT NULL COMMENT 'Guarda la calificacion final de la materia',
  `KA_CVE_GRUPO` varchar(10) DEFAULT NULL COMMENT 'Contiene la clave del grupo',
  `KA_CVE_ASIGNATURA` varchar(15) DEFAULT NULL COMMENT 'Contiene la clave de la asignatura',
  `KA_CVE_PERIODO` varchar(10) DEFAULT NULL COMMENT 'contiene la clave del periodo',
  `KA_CVE_PLAN` varchar(15) DEFAULT NULL COMMENT 'Contiene la clave del plan ',
  `KA_CVE_DOCENTE` int DEFAULT NULL COMMENT 'Contiene el numero de trabajador del docente',
  `KA_NOM_DOCENTE` varchar(60) DEFAULT NULL COMMENT 'Contiene el nombre del docente',
  `KA_CVE_ALUMNO` varchar(10) DEFAULT NULL COMMENT 'Contiene la matricula del alumno',
  `KA_SEM_APROB` varchar(2) DEFAULT NULL COMMENT 'Contiene el semestre en que se curso la materia',
  `KA_ESTATUS` varchar(2) DEFAULT NULL COMMENT 'Contiene el estatus en que se aprobo la materia 1,2,4,5,6',
  `KA_TIPO_APROB` varchar(1) DEFAULT NULL COMMENT 'El formato en que lo aprobo 1=primera oportunidad 2=segunda oportunidad 3= especial 4=rezagada nunca cursada',
  `KA_FEC_INSERT` datetime DEFAULT CURRENT_TIMESTAMP,
  `KA_FEC_UPDATE` datetime DEFAULT NULL,
  `KA_LAST_IP` int unsigned DEFAULT NULL,
  `KA_BY_USER` int DEFAULT NULL,
  PRIMARY KEY (`KA_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Historico de las calificaciones-KARDEX';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kardex`
--

LOCK TABLES `kardex` WRITE;
/*!40000 ALTER TABLE `kardex` DISABLE KEYS */;
INSERT INTO `kardex` VALUES (1,0,'ISC4O7B','SCG1009','20182','ISIC-2010-224',700,'LORENA','16011032','2','1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(2,100,'ISC101A','ACA0907','20141','ISIC-2010-224',700,'LORENA','16011032','1','1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(5,100,'ISC101A','ACA0910','20141','ISIC-2010-224',700,'LORENA','16011032','1','1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(6,100,'ISC101A','SCD1006','20141','ISIC-2010-224',700,'LORENA','16011032','1','1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(7,100,'ISC101A','ACD0908','20141','ISIC-2010-224',700,'LORENA','16011032','1','1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(8,100,'ISC101A','ACF0901','20141','ISIC-2010-224',700,'LORENA','16011032','1','1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(9,100,'ISC101A','ACF0902','20141','ISIC-2010-224',700,'LORENA','16011032','1','1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(10,100,'ISC101A','ACF0903','20141','ISIC-2010-224',700,'LORENA','16011032','1','1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(11,100,'ISC101A','ACF0904','20141','ISIC-2010-224',700,'LORENA','16011032','1','1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(12,100,'ISC101A','ACF0905','20141','ISIC-2010-224',700,'LORENA','16011032','1','1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(13,100,'ISC101A','ACF0905','20141','ISIC-2010-224',700,'LORENA','16011032','1','1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(15,0,'ISC101A','ACF0901','20151','ISC-2010-224',194,'JUAN CARLOS CERON ALMARAZ','15011001','1','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(16,75,'ISC101A','ACF0901','20162','ISC-2010-224',194,'JUAN CARLOS CERON ALMARAZ','15011001','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(17,72,'ISC102A','ACF0902','20163','ISC-2010-224',194,'JUAN CARLOS CERON ALMARAZ','15011001','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(18,0,'ISC103A','ACF0904','20161','ISC-2010-224',194,'JUAN CARLOS CERON ALMARAZ','15011001','3','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(19,72,'ISC103A','ACF0904','20171','ISC-2010-224',194,'JUAN CARLOS CERON ALMARAZ','15011001','5','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(40,80,'ISC105A','ACD0908','20171','ISC-2010-224',11,'JUAN LUCINO LUGO PEREZ','15011001','5','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(41,0,'ISC106A','SCD1015','20182','ISC-2010-224',18,'ALINE PEREZ MARTINEZ','15011001','6','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(42,70,'ISC106A','SCD1015','20183','ISC-2010-224',18,'ALINE PEREZ MARTINEZ','15011001','6','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(44,73,'ISC201A','AED1285','20151','ISC-2010-224',18,'ALINE PEREZ MARTINEZ','15011001','1','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(45,0,'ISC202A','AED1286','20162','ISC-2010-224',18,'ALINE PEREZ MARTINEZ','15011001','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(46,90,'ISC202A','AED1286','20163','ISC-2010-224',18,'ALINE PEREZ MARTINEZ','15011001','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(47,0,'ISC203A','AED1026','20161','ISC-2010-224',18,'ALINE PEREZ MARTINEZ','15011001','3','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(48,74,'ISC203A','AED1026','20172','ISC-2010-224',18,'ALINE PEREZ MARTINEZ','15011001','4','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(49,79,'ISC204A','SCC1017','20172','ISC-2010-224',18,'ALINE PEREZ MARTINEZ','15011001','4','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(50,74,'ISC205A','AEC1034','20171','ISC-2010-224',7023,'CRISTY ELIZABETH AGUILAR OJEDA','15011001','5','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(51,74,'ISC206A','SCD1021','20172','ISC-2010-224',7023,'CRISTY ELIZABETH AGUILAR OJEDA','15011001','6','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(52,94,'ISC301A','ACA0907','20151','ISC-2010-224',11,'JUAN LUCINO LUGO PEREZ','15011001','1','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(53,85,'ISC302A','AEC1008','20162','ISC-2010-224',11,'JUAN LUCINO LUGO PEREZ','15011001','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(54,87,'ISC303A','SCC1005','20161','ISC-2010-224',11,'JUAN LUCINO LUGO PEREZ','15011001','3','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(55,0,'ISC304A','SCD1027','20172','ISC-2010-224',18,'ALINE PEREZ MARTINEZ','15011001','4','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(56,80,'ISC305A','SCA1025','20171','ISC-2010-224',7023,'CRISTY ELIZABETH AGUILAR OJEDA','15011001','5','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(57,77,'ISC306A','SCB1001','20182','ISC-2010-224',11,'JUAN LUCINO LUGO PEREZ','15011001','6','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(58,77,'ISC307A','SCC1019','20182','ISC-2010-224',11,'JUAN LUCINO LUGO PEREZ','15011001','6','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(59,77,'ISC401A','AEF1041','20151','ISC-2010-224',11,'JUAN LUCINO LUGO PEREZ','15011001','1','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(60,77,'ISC402A','AEC1058','20162','ISC-2010-224',11,'JUAN LUCINO LUGO PEREZ','15011001','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(63,91,'ACF101','ACF0901','20171','ISC-2010-224',194,'JUAN CARLOS CERON ALMARAZ','17011287','1','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(66,98,'ACF102','ACF0902','20182','ISC-2010-224',194,'JUAN CARLOS CERON ALMARAZ','17011287','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(67,96,'AED201','AED1285','20171','ISC-2010-224',194,'HÉCTOR D. HERNÁNDEZ GARCÍA','17011287','1','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(68,91,'AED202','AED1286','20182','ISC-2010-224',194,'HÉCTOR D. HERNÁNDEZ GARCÍA','17011287','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(69,96,'ACA301','ACA0907','20171','ISC-2010-224',194,'ALINE PÉREZ MARTÍNEZ','17011287','1','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(70,88,'AEC302','AEC1008','20182','ISC-2010-224',194,'JUAN LUCINO LUGO LÓPEZ','17011287','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(71,96,'AEF401','AEF1041','20171','ISC-2010-224',194,'ALINE PÉREZ MARTÍNEZ','17011287','1','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(72,96,'AEC402','AEC1058','20182','ISC-2010-224',194,'REGINA ESLAVA SANPEDRO','17011287','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(73,84,'SCH501','SCH1024','20171','ISC-2010-224',194,'JUAN LUCINO LUGO LÓPEZ','17011287','1','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(74,98,'ACF502','ACF0903','20182','ISC-2010-224',194,'GUADALUPE CALVO TORRES','17011287','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(75,97,'ACC601','SCD1006','20171','ISC-2010-224',194,'MARIO PÉREZ BAUTISTA','17011287','1','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(76,90,'AEF602','AEF1052','20182','ISC-2010-224',194,'JAVIER PÉREZ ESCAMILLA','17011287','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(78,100,'A02','A02','20182','ISC-2010-224',194,'JAVIER PÉREZ ESCAMILLA','17011287','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(80,100,'T01','T1','20171','ISC-2010-224',194,'JAVIER PÉREZ ESCAMILLA','17011287','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(81,100,'T02','T2','20182','ISC-2010-224',194,'JAVIER PÉREZ ESCAMILLA','17011287','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(82,96,'X01','X01','20171','ISC-2010-224',194,'JAQUELINE RAMÍREZ CERÓN','17011287','1','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(83,95,'X02','X02','20182','ISC-2010-224',194,'JAQUELINE RAMÍREZ CERÓN','17011287','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(85,94,'ACF101','ACF0901','20171','ISC-2010-224',194,'JUAN CARLOS CERON ALMARAZ','17011987','1','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(86,100,'ACF102','ACF0902','20182','ISC-2010-224',194,'JUAN CARLOS CERON ALMARAZ','17011987','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(87,92,'AED201','AED1285','20171','ISC-2010-224',194,'HÉCTOR D. HERNÁNDEZ GARCÍA','17011987','1','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(88,96,'AED202','AED1286','20182','ISC-2010-224',194,'HÉCTOR D. HERNÁNDEZ GARCÍA','17011987','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(89,98,'ACA301','ACA0907','20171','ISC-2010-224',194,'ALINE PÉREZ MARTÍNEZ','17011987','1','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(91,90,'AEC302','AEC1008','20182','ISC-2010-224',194,'JUAN LUCINO LUGO LÓPEZ','17011987','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(92,95,'AEF401','AEF1041','20171','ISC-2010-224',194,'ALINE PÉREZ MARTÍNEZ','17011987','1','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(93,100,'AEC402','AEC1058','20182','ISC-2010-224',194,'REGINA ESLAVA SANPEDRO','17011987','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(94,81,'SCH501','SCH1024','20171','ISC-2010-224',194,'JUAN LUCINO LUGO LÓPEZ','17011987','1','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(95,96,'ACF502','ACF0903','20182','ISC-2010-224',194,'GUADALUPE CALVO TORRES','17011987','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(96,90,'ACC601','SCD1006','20171','ISC-2010-224',194,'MARIO PÉREZ BAUTISTA','17011987','1','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(97,95,'AEF602','AEF1052','20182','ISC-2010-224',194,'JAVIER PÉREZ ESCAMILLA','17011987','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(98,93,'A02','A02','20182','ISC-2010-224',194,'JAVIER PÉREZ ESCAMILLA','17011987','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(99,92,'T01','T1','20171','ISC-2010-224',194,'JAVIER PÉREZ ESCAMILLA','17011987','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(100,97,'T02','T2','20182','ISC-2010-224',194,'JAVIER PÉREZ ESCAMILLA','17011987','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(101,88,'X01','X01','20171','ISC-2010-224',194,'JAQUELINE RAMÍREZ CERÓN','17011987','1','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(102,85,'X02','X02','20182','ISC-2010-224',194,'JAQUELINE RAMÍREZ CERÓN','17011987','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(103,86,'ACF101','ACF0901','20171','ISC-2010-224',194,'JUAN CARLOS CERON ALMARAZ','17011288','1','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(104,88,'ACF102','ACF0902','20182','ISC-2010-224',194,'JUAN CARLOS CERON ALMARAZ','17011288','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(105,95,'AED201','AED1285','20171','ISC-2010-224',194,'HÉCTOR D. HERNÁNDEZ GARCÍA','17011288','1','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(106,90,'AED202','AED1286','20182','ISC-2010-224',194,'HÉCTOR D. HERNÁNDEZ GARCÍA','17011288','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(107,91,'ACA301','ACA0907','20171','ISC-2010-224',194,'ALINE PÉREZ MARTÍNEZ','17011288','1','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(108,85,'AEC302','AEC1008','20182','ISC-2010-224',194,'JUAN LUCINO LUGO LÓPEZ','17011288','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(109,90,'AEF401','AEF1041','20171','ISC-2010-224',194,'ALINE PÉREZ MARTÍNEZ','17011288','1','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(110,95,'AEC402','AEC1058','20182','ISC-2010-224',194,'REGINA ESLAVA SANPEDRO','17011288','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(111,95,'AEC402','AEC1058','20182','ISC-2010-224',194,'REGINA ESLAVA SANPEDRO','17011288','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(112,82,'SCH501','SCH1024','20171','ISC-2010-224',194,'JUAN LUCINO LUGO LÓPEZ','17011288','1','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(113,93,'ACF502','ACF0903','20182','ISC-2010-224',194,'GUADALUPE CALVO TORRES','17011288','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(114,97,'ACC601','SCD1006','20171','ISC-2010-224',194,'MARIO PÉREZ BAUTISTA','17011288','1','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(115,87,'AEF602','AEF1052','20182','ISC-2010-224',194,'JAVIER PÉREZ ESCAMILLA','17011288','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(116,100,'A02','A02','20182','ISC-2010-224',194,'JAVIER PÉREZ ESCAMILLA','17011288','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(117,100,'T01','T1','20171','ISC-2010-224',194,'JAVIER PÉREZ ESCAMILLA','17011288','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(118,100,'T02','T2','20182','ISC-2010-224',194,'JAVIER PÉREZ ESCAMILLA','17011288','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(119,93,'X01','X01','20171','ISC-2010-224',194,'JAQUELINE RAMÍREZ CERÓN','17011288','1','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(120,90,'X02','X02','20182','ISC-2010-224',194,'JAQUELINE RAMÍREZ CERÓN','17011288','2','-1',NULL,'2021-06-25 14:19:26',NULL,NULL,NULL),(121,0,'ISC101A','SCD1027','20192','ISIC-2010-224',7022,'Javier Pérez Escamilla','115598','4','2','1','2021-06-25 14:27:16',NULL,2130706433,115998),(122,80,'ISC101A','SCD1027','20192','ISIC-2010-224',7022,'Javier Pérez Escamilla','115598','6','2','1','2021-06-25 14:27:24',NULL,2130706433,115998);
/*!40000 ALTER TABLE `kardex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `malla_curricular`
--

DROP TABLE IF EXISTS `malla_curricular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `malla_curricular` (
  `MC_CVE_ASIGNATURA` varchar(9) NOT NULL COMMENT 'PRIMERA PARTE DE LA PRIMARY KEY QUE CONTIENE LA CLAVE DE LA ASIGNATURA.',
  `MC_CVE_PLAN` varchar(17) NOT NULL COMMENT 'SERIA LA SEGUNDA PARTE DE LA PRIMARY KEY QUE CONTIENE LA CLAVE DEL PLAN.',
  `MC_SEMESTRE` tinyint NOT NULL DEFAULT '1' COMMENT 'ES EL SEMESTRE EN EL QUE SE ENCUENTRA LA ASIGNATURA EN LA MALLACURRICULAR.',
  `MC_PREREQUISITOS` varchar(15) DEFAULT NULL COMMENT 'SON LOS PREREQUISITOS EN LA ESIGNATURA, MATERIAS QUE ESTAN SERIADAS.',
  PRIMARY KEY (`MC_CVE_ASIGNATURA`,`MC_CVE_PLAN`),
  CONSTRAINT `FK_MC_ASIGNATURA_CVE` FOREIGN KEY (`MC_CVE_ASIGNATURA`) REFERENCES `asignatura` (`AS_CVE_ASIGNATURA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Esta tabla contendra las relaciones entre asignaturas y planes para formar la malla curricular por escecialidad.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `malla_curricular`
--

LOCK TABLES `malla_curricular` WRITE;
/*!40000 ALTER TABLE `malla_curricular` DISABLE KEYS */;
INSERT INTO `malla_curricular` VALUES ('ACA0907','ISIC-2010-224',1,NULL),('ACA0909','ISIC-2010-224',6,NULL),('ACA0910','ISIC-2010-224',8,NULL),('ACC0906','ISIC-2010-224',1,NULL),('ACD0908','ISIC-2010-224',5,NULL),('ACF0901','ISIC-2010-224',1,NULL),('ACF0902','ISIC-2010-224',2,NULL),('ACF0903','ISIC-2010-224',2,NULL),('ACF0904','ISIC-2010-224',3,NULL),('ACF0905','ISIC-2010-224',4,NULL),('AEB1055','ISIC-2010-224',5,NULL),('AEC1008','ISIC-2010-224',2,NULL),('AEC1034','ISIC-2010-224',5,NULL),('AEC1058','ISIC-2010-224',2,NULL),('AEC1061','ISIC-2010-224',5,NULL),('AED1026','ISIC-2010-224',3,NULL),('AED1285','ISIC-2010-224',1,NULL),('AED1286','ISIC-2010-224',2,NULL),('AEF1031','ISIC-2010-224',4,NULL),('AEF1041','ISIC-2010-224',1,NULL),('AEF1052','ISIC-2010-224',2,NULL),('CDDT2001','ISIC-2010-224',7,NULL),('CDDT2002','ISIC-2010-224',7,NULL),('CDDT2003','ISIC-2010-224',8,NULL),('CDDT2004','ISIC-2010-224',8,NULL),('CDDT2005','ISIC-2010-224',8,NULL),('DAD1801','ISIC-2010-224',7,NULL),('DAD1803','ISIC-2010-224',8,NULL),('DAD1804','ISIC-2010-224',8,NULL),('DAD1805','ISIC-2010-224',8,NULL),('IAD1802','ISIC-2010-224',7,NULL),('SCA1002','ISIC-2010-224',8,NULL),('SCA1025','ISIC-2010-224',5,NULL),('SCA1026','ISIC-2010-224',4,NULL),('SCB1001','ISIC-2010-224',6,NULL),('SCC1005','ISIC-2010-224',3,NULL),('SCC1007','ISIC-2010-224',5,NULL),('SCC1010','ISIC-2010-224',8,NULL),('SCC1012','ISIC-2010-224',7,NULL),('SCC1013','ISIC-2010-224',3,NULL),('SCC1014','ISIC-2010-224',6,NULL),('SCC1017','ISIC-2010-224',4,NULL),('SCC1019','ISIC-2010-224',6,NULL),('SCC1023','ISIC-2010-224',7,NULL),('SCD1003','ISIC-2010-224',5,NULL),('SCD1004','ISIC-2010-224',7,NULL),('SCD1011','ISIC-2010-224',6,NULL),('SCD1015','ISIC-2010-224',6,NULL),('SCD1016','ISIC-2010-224',7,NULL),('SCD1018','ISIC-2010-224',4,NULL),('SCD1021','ISIC-2010-224',6,NULL),('SCD1022','ISIC-2010-224',5,NULL),('SCD1027','ISIC-2010-224',4,NULL),('SCF1006','ISIC-2010-224',3,NULL),('SCG1009','ISIC-2010-224',7,NULL),('SCH1024','ISIC-2010-224',1,NULL),('TAD1801','ISIC-2010-224',7,NULL),('TAD1802','ISIC-2010-224',7,NULL),('TAD1803','ISIC-2010-224',8,NULL),('TAD1804','ISIC-2010-224',8,NULL),('TAD1805','ISIC-2010-224',8,NULL),('TDAM2001','ISIC-2010-224',7,NULL),('TDAM2002','ISIC-2010-224',7,NULL),('TDAM2003','ISIC-2010-224',8,NULL),('TDAM2004','ISIC-2010-224',8,NULL),('TDAM2005','ISIC-2010-224',8,NULL),('X01','ISIC-2010-224',1,NULL),('X02','ISIC-2010-224',2,NULL),('X03','ISIC-2010-224',3,NULL),('X04','ISIC-2010-224',4,NULL),('X05','ISIC-2010-224',5,NULL),('X06','ISIC-2010-224',6,NULL),('X07','ISIC-2010-224',7,NULL),('X08','ISIC-2010-224',8,NULL);
/*!40000 ALTER TABLE `malla_curricular` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opciones_menu`
--

DROP TABLE IF EXISTS `opciones_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opciones_menu` (
  `OM_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla',
  `OM_DESCRIPCION` varchar(50) NOT NULL COMMENT 'Es el texto que el usuario visualiza en el menu',
  `OM_RUTA` varchar(45) DEFAULT NULL COMMENT 'Ruta del archivo o página al que redirige la opción',
  `OM_FEC_INSERT` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha de creación',
  `OM_FEC_UPDATE` datetime DEFAULT NULL COMMENT 'Fecha de actualización',
  `OM_BY_USER` int DEFAULT NULL COMMENT 'Usuario que raliza la acción (creación o modificación)',
  `OM_ACTIVO` char(1) DEFAULT 'A' COMMENT 'Almana si el registro esta activo o inactivo A=activo I=inactivo',
  PRIMARY KEY (`OM_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='En esta tabla se almacenan los elementos que se usarán para crear el menú del usuario (Descripcion de la opcion y el  link o ruta)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opciones_menu`
--

LOCK TABLES `opciones_menu` WRITE;
/*!40000 ALTER TABLE `opciones_menu` DISABLE KEYS */;
INSERT INTO `opciones_menu` VALUES (1,'Registrar atributos','atributo/atributo','2021-03-10 11:30:08',NULL,NULL,'A'),(2,'Ver atributos de egreso','atributo/veratributos','2021-03-10 11:30:08',NULL,NULL,'A'),(3,'Atributos de egreso por asignatura','atributo/instdida','2021-03-10 11:30:08',NULL,NULL,'A'),(4,'Generar guía de evaluación','atributo/go','2021-03-10 11:30:08',NULL,NULL,'A'),(5,'GO proyecto integrador','atributo/gointegrador','2021-03-10 11:30:08',NULL,NULL,'A'),(6,'Ver proyecto integrador','atributo/proyectos','2021-03-10 11:30:08',NULL,NULL,'A'),(7,'Agregar usuario','atributo/usuario','2021-03-10 11:30:08',NULL,NULL,'A'),(8,'Periodo','atributo/periodo','2021-03-10 11:30:08',NULL,NULL,'A'),(9,'Asignatura','atributo/Asignatura','2021-03-10 11:30:08',NULL,NULL,'A'),(10,'Carga evaluacion','evaluacion/carga_eval','2021-03-10 11:30:08',NULL,NULL,'A'),(11,'Evaluación de residencia profesional','atributo/evaluacionresi','2021-03-10 11:30:08',NULL,NULL,'A'),(12,'Ver periodos','atributo/periodos','2021-03-10 11:30:08',NULL,NULL,'A'),(13,'Agregar periodo','atributo/AgregarPeriodo','2021-03-10 11:30:08',NULL,NULL,'A'),(14,'Instrucciones de llenado','Cedulas/InstruccionesLlenado','2021-03-10 11:30:08',NULL,NULL,'A'),(15,'Insertar Currículum ','Cedulas/Insertar_curricula','2021-03-10 11:30:08',NULL,NULL,'A'),(16,'Ver Currículum ','Cedulas/VerRegistros','2021-03-10 11:30:08',NULL,NULL,'A');
/*!40000 ALTER TABLE `opciones_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `periodo`
--

DROP TABLE IF EXISTS `periodo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `periodo` (
  `PR_CVE` varchar(10) NOT NULL,
  `PR_FECHA_INICIO` date DEFAULT NULL COMMENT 'Contiene la fecha de inicio del periodo.',
  `PR_FECHA_FIN` date DEFAULT NULL COMMENT 'Contene la fecha de terminación del periodo.',
  `PR_ANIO` varchar(4) DEFAULT NULL COMMENT 'Contiene el  año en curso.',
  `PR_LAST_UPDATE` datetime DEFAULT NULL,
  `PR_FEC_ALTA` datetime DEFAULT CURRENT_TIMESTAMP,
  `PR_LAST_IP` int unsigned DEFAULT NULL,
  `PR_DESCRIPCION` varchar(45) DEFAULT NULL,
  `PR_ESTATUS` varchar(12) DEFAULT NULL COMMENT 'ESTATUS ACTUAL DEL PERIODO',
  `PR_ACTIVO` char(1) DEFAULT 'A',
  `PR_BY_USER` int DEFAULT NULL,
  PRIMARY KEY (`PR_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Contiene  los periodos de trabajo del ITOSEH. YYYYN EJEMPLO: 20193 (Verano) , 20192 AGO-DIC';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periodo`
--

LOCK TABLES `periodo` WRITE;
/*!40000 ALTER TABLE `periodo` DISABLE KEYS */;
INSERT INTO `periodo` VALUES ('20151','2019-10-01','2019-10-31','2015','2019-10-10 11:25:41','2019-06-19 14:25:22',2130706433,'dfasdfasdfasdf','','I',NULL),('20152','2019-10-01','2019-10-31','2015','2019-10-10 16:17:21','2019-06-19 14:25:22',2130706433,'dfasdfasdfasdf','','I',NULL),('20153','2019-09-23','2019-09-24','2015','2019-09-23 15:17:00','2019-06-19 14:25:22',3232235777,'holi','','I',NULL),('20161','2019-10-10','2019-10-10','2016','2019-10-10 18:29:02','2019-06-19 14:25:22',2130706433,'qwerty','','I',NULL),('20162','2019-10-10','2019-09-12','2016','2019-10-10 18:34:05','2019-06-19 14:25:22',2130706433,'dfasdfasdfasdf','','I',NULL),('20163',NULL,NULL,'2016',NULL,'2019-06-19 14:25:22',NULL,NULL,'','I',NULL),('2017',NULL,NULL,'2017',NULL,'2019-06-19 14:25:22',NULL,NULL,'','I',NULL),('20171','2017-01-20',NULL,'2017',NULL,'2019-06-19 14:25:22',NULL,NULL,'','I',NULL),('20172',NULL,NULL,'2017',NULL,'2019-06-19 14:25:22',NULL,NULL,'','I',NULL),('20173',NULL,NULL,'2017',NULL,'2019-06-19 14:25:22',NULL,NULL,'','I',NULL),('20181','2019-10-01','2019-10-31','2018',NULL,'2019-06-19 14:25:22',NULL,NULL,'','I',NULL),('20182','2018-08-01','2018-12-01','2018',NULL,'2019-06-19 14:25:22',NULL,NULL,'','I',NULL),('20183',NULL,NULL,'2018',NULL,'2019-06-19 14:25:22',NULL,NULL,'','I',NULL),('20191','2019-01-07','2019-05-22','2019',NULL,'2019-06-19 14:25:22',NULL,NULL,'','I',NULL),('20192',NULL,NULL,'2019',NULL,'2019-06-19 14:25:22',NULL,NULL,'','I',NULL),('20193','2019-08-05','2019-12-03','2019',NULL,'2019-06-19 14:25:22',NULL,'Semestre Agosto - Diciembre','','I',NULL),('20211','2021-01-08','2021-06-05','2021',NULL,'2021-03-22 10:34:34',3235699713,'Primer periodo enero-mayo','I','I',NULL),('20212','2021-08-01','2021-12-12','2021',NULL,'2021-03-22 10:42:31',3235699713,'Segundo periodo agosto-diciembre','I','I',NULL),('20213','2021-05-07','2021-06-16','2021',NULL,'2021-03-22 10:42:27',3235699713,'Tercer periodo verano','A','A',NULL),('20301','2019-10-01','2019-10-31','2018',NULL,'2019-10-10 18:55:49',2130706433,'dfasdfasdfasdf','0','I',NULL),('Periodo 3','2019-08-05','2019-12-03','2019',NULL,'2019-08-09 15:47:01',NULL,NULL,'','I',NULL);
/*!40000 ALTER TABLE `periodo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan`
--

DROP TABLE IF EXISTS `plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plan` (
  `PL_CVE_PLAN` varchar(18) NOT NULL COMMENT 'Llave primaria de la clave del plan al que pertenece la materia.',
  `PL_NOMBRE` varchar(60) DEFAULT NULL COMMENT 'Nombre que le asina al plan ',
  `PL_TOTAL_MATERIAS` int DEFAULT NULL COMMENT 'Toal de materias que cuenta cada plan',
  `PL_CREDITOS` int DEFAULT NULL COMMENT 'Total de creditos, incluyendo la especialidad por plan',
  `PL_BLOQUES` int DEFAULT NULL COMMENT 'Semestres en el que se puede cursar la materia (minimo)',
  `PL_AREA` varchar(3) DEFAULT NULL COMMENT 'Area al que pertenece el plan ITS=ITSOEH, ISC=Inegnieria en Sistemas Computacionales',
  `PL_FEC_INSERT` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Contiene la fecha de alta del regitro',
  `PL_FEC_UP` datetime DEFAULT NULL COMMENT 'Contiene la fecha de la ultima modificación del registro',
  `PL_LAST_IP` int unsigned DEFAULT NULL COMMENT 'Contiene la ultima IP que modifico el registro.',
  `PL_ACTIVO` char(1) DEFAULT 'A' COMMENT 'Muestra si el plan esta activo A=activo, I=inactivo',
  `PL_BY_USER` int DEFAULT NULL COMMENT 'Usuario que hizo modificaciones ',
  PRIMARY KEY (`PL_CVE_PLAN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan`
--

LOCK TABLES `plan` WRITE;
/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
INSERT INTO `plan` VALUES ('ISC-2020-01','Ingenieria en sistemas Computacionales',40,400,10,'ISC','2021-03-18 14:24:59',NULL,3336363228,'I',1),('ISIC','ING.SIS.COMP',36,260,4,NULL,'2019-06-17 12:31:16',NULL,NULL,'I',NULL),('ISIC-2010-224','ING.SIS.COMP',36,260,9,'ISC','2019-06-17 12:31:16',NULL,NULL,'A',NULL),('ISIC-2010-225','ING.SIS.COMPP',3,26,40,NULL,'2019-06-17 12:31:16',NULL,NULL,'I',NULL),('ISIC-2010-230','DATOS',66,50,9,'ISC','2021-03-19 01:20:25',NULL,3355443210,'I',1);
/*!40000 ALTER TABLE `plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan_trabajo`
--

DROP TABLE IF EXISTS `plan_trabajo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plan_trabajo` (
  `PL_NO` int NOT NULL AUTO_INCREMENT,
  `PL_NOMBRE` varchar(50) DEFAULT NULL,
  `PL_HORAS_TOTALES` int DEFAULT NULL,
  `PL_SUBACTIVIDADES` text,
  `PL_FECHA_PROGRAMADA` date DEFAULT NULL,
  `PL_PRODUCTOS_REGISTRADOS` varchar(500) DEFAULT NULL,
  `PL_FECHA_CUMPLIMIENTO` date DEFAULT NULL,
  `PL_PRODUCTO_ENTREGADO` varchar(500) DEFAULT NULL,
  `PL_CUMPLIO` varchar(5) DEFAULT NULL,
  `PL_OBSERVACIONES` varchar(500) DEFAULT NULL,
  `PL_FIRMA` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`PL_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_trabajo`
--

LOCK TABLES `plan_trabajo` WRITE;
/*!40000 ALTER TABLE `plan_trabajo` DISABLE KEYS */;
INSERT INTO `plan_trabajo` VALUES (13,'DOCENCIA',16,' Clases Teórico-Prácticas conforme a los establecido en el capitulo 5: Linea para el proceso de evaluación  y Acreditación de asignaturas, registros establecidos en el Procediimiento para la Asignaración y Y Vericación de Actividades Sustantivas. Revisión del programa de asignatura de Taller de Base .','2018-09-12',' Instrumentación didáctica para la formación y desarrollo de competencias profesionales y/o guía didáctica P-DA-01-F-06 ','2019-07-12',' Instrumentación didáctica para la formación y desarrollo de competencias profesionales y/o guía didáctica P-DA-01-F-06 .','NO',' Ninguna ','JEFE DE DIVISION'),(14,'DESARROLLO TECNOLOGICO',5,'Seguimiento a las actividades de la Fábrica de Software.a) Reporte de activiades de Fábrica de Software b) Plan de activiades del proyecto de Fábrica de Software c) Desarrollo de Proyecto d) Supervisión de proyectos adscritos ya probados por la Fábrica de Software. ','2018-03-16','Reporte de Actividades','2018-07-12','Ninguno','SI','Ninguna','JEFE DE DIVISION'),(15,'INVESTIGACION',5,'Clases Teórico-Prácticas conforme a los establecido en el capitulo 5: Linea para el proceso de evaluación  y Acreditación de asignaturas, registros establecidos en el Procediimiento para la Asignaración y Y Vericación de Actividades Sustantivas. Revisión del programa de asignatura de Taller de Base de Datos, Taller de ética y sistemas oprativos , Administración de Bade de Datos, calendario escolar y el manual de lineamientos académicos-administrativos del TecNMx ESTABLECIDO EN EL CAPITULO 5 LINEAMIENTO PARA EL PROCESO DE EVALUACIÓN Y ACREDITACIÓN DE ASIGNATURAS','2018-03-16','Ninguno','2018-07-12','Ninguno','NO','Ninguna','JEFE DE DIVISION');
/*!40000 ALTER TABLE `plan_trabajo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programa_estudios`
--

DROP TABLE IF EXISTS `programa_estudios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `programa_estudios` (
  `PE_CVE_PLAN` varchar(15) NOT NULL,
  `PE_NOMBRE` varchar(60) DEFAULT NULL,
  `PE_TOTAL_MATERIAS` int DEFAULT NULL,
  `PE_CREDITOS` int DEFAULT NULL,
  `PE_BLOQUES` int DEFAULT NULL,
  `PE_EQUIVALENCIAS_ID` int DEFAULT NULL,
  PRIMARY KEY (`PE_CVE_PLAN`),
  KEY `PE_EQUIVALENCIAS_ID` (`PE_EQUIVALENCIAS_ID`),
  CONSTRAINT `programa_estudios_ibfk_1` FOREIGN KEY (`PE_EQUIVALENCIAS_ID`) REFERENCES `equivalencias` (`EQ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programa_estudios`
--

LOCK TABLES `programa_estudios` WRITE;
/*!40000 ALTER TABLE `programa_estudios` DISABLE KEYS */;
/*!40000 ALTER TABLE `programa_estudios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyecto_integrador`
--

DROP TABLE IF EXISTS `proyecto_integrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proyecto_integrador` (
  `PI_CVE` int NOT NULL AUTO_INCREMENT,
  `PI_PROYECTO` varchar(45) DEFAULT NULL COMMENT 'CONTIENE EL NOMBRE DEL PROYECTO',
  `PI_EQUIPO` varchar(45) DEFAULT NULL COMMENT 'CONTIENE EL NOMBRE DEL EQUIPO',
  `PI_SEMESTRE` int DEFAULT NULL COMMENT 'CONTIENE EL SEMESTRE AL QUE PERTENECE EL PROYECTO',
  `PI_GRUPO` varchar(2) DEFAULT NULL COMMENT 'CONTIENE ELGRUPO AL QUE PERTENECE EL PROYECTO',
  `PI_STATUS` char(1) DEFAULT 'F',
  `PI_FEC_INSERT` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'MUESTRA LA FECHA EN QUE FUE AGREGADO EL PROYECTO INTEGRADOR',
  `PI_FEC_UP` datetime DEFAULT NULL COMMENT 'MUESTRA LA FECHA EN QUE FUE MODIFICADO EL PROYECTO INTEGRADOR',
  `PI_LAST_IP` int unsigned DEFAULT NULL COMMENT 'Contiene la IP de orginen del cliente (Si es una máscara de red, se agrega como la IP).',
  `PI_BY_USER` int unsigned DEFAULT NULL COMMENT 'CONTIENE QUE USUARIO HIZO LA MODIFICACION DEL PROYECTO INTEGRADOR',
  `PI_ACTIVO` char(1) DEFAULT 'A' COMMENT 'MUESTRA SI EL PROYECTO INTEGRADOR ESTA ACTIVO A=ACTIVO I=INACTIVO',
  PRIMARY KEY (`PI_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='contiene los proyectos integradores';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto_integrador`
--

LOCK TABLES `proyecto_integrador` WRITE;
/*!40000 ALTER TABLE `proyecto_integrador` DISABLE KEYS */;
INSERT INTO `proyecto_integrador` VALUES (9,'CNC Arduino','los GORDOS',8,'B','T','2021-03-24 10:47:26',NULL,NULL,NULL,'A'),(10,'celular','mi equipo',8,'B','F','2021-03-24 10:47:26',NULL,NULL,NULL,'A'),(11,'nuevo equipo','los merengues',7,'B','T','2021-03-24 10:47:26',NULL,NULL,NULL,'A'),(12,'nuevo proyecto','nuevo equipo',7,'B','T','2021-03-24 10:47:26',NULL,NULL,NULL,'A'),(13,'nuevo proyecto 3','nuevo equipo 3',7,'A','F','2021-03-24 10:47:26',NULL,NULL,NULL,'A'),(14,'nuevo proyecto 3','nuevo equipo 3',7,'A','T','2021-03-24 10:47:26',NULL,NULL,NULL,'A'),(15,'kk','kk',8,'B','F','2021-03-24 10:47:26',NULL,NULL,NULL,'A'),(16,'Proyecto 1','Uno',7,'A','F','2021-03-24 10:47:26',NULL,NULL,NULL,'A'),(17,'ABD1','',6,'','F','2021-03-24 10:47:26',NULL,NULL,NULL,'A'),(18,'ABD1','',6,'A','F','2021-03-24 10:47:26',NULL,NULL,NULL,'A'),(19,'ABD_','EQ1',6,'A','T','2021-03-24 10:47:26',NULL,NULL,NULL,'A');
/*!40000 ALTER TABLE `proyecto_integrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prueba`
--

DROP TABLE IF EXISTS `prueba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prueba` (
  `id` int NOT NULL AUTO_INCREMENT,
  `criterio` varchar(45) DEFAULT NULL,
  `pregunta` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prueba`
--

LOCK TABLES `prueba` WRITE;
/*!40000 ALTER TABLE `prueba` DISABLE KEYS */;
INSERT INTO `prueba` VALUES (17,'ISC_AE1_CD1','xczxcxcz'),(18,'ISC_AE1_CD1','zxczxczxczx'),(19,'ISC_AE1_CD1','xzczxczxc');
/*!40000 ALTER TABLE `prueba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semestre`
--

DROP TABLE IF EXISTS `semestre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semestre` (
  `SE_ID` int NOT NULL AUTO_INCREMENT,
  `SE_SEMESTRE` int DEFAULT NULL,
  PRIMARY KEY (`SE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semestre`
--

LOCK TABLES `semestre` WRITE;
/*!40000 ALTER TABLE `semestre` DISABLE KEYS */;
INSERT INTO `semestre` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9);
/*!40000 ALTER TABLE `semestre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidades_asignatura`
--

DROP TABLE IF EXISTS `unidades_asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unidades_asignatura` (
  `UA_GRUPO` varchar(10) NOT NULL COMMENT 'Contiene el grupo que viende dede el excel',
  `UA_CVE_PERIODO` varchar(10) NOT NULL COMMENT 'Perido actual que se obtiene de excel',
  `UA_CVE_UNIDAD` int NOT NULL COMMENT 'Clave numerica asignada a la unidad',
  `UA_CVE_ASIGNATURA` varchar(15) NOT NULL COMMENT 'Materia obtenida del excel',
  `UA_CVE_ALUMNO` varchar(50) NOT NULL COMMENT 'Contiene la matricula del estudiante',
  `UA_PROCEDIMENTAL` double DEFAULT NULL COMMENT 'Valor de evaluación procedimental',
  `UA_ACTITUDINAL` double DEFAULT NULL COMMENT 'Valor de evaluación Actitudinal',
  `UA_CONCEPTUAL` double DEFAULT NULL COMMENT 'Valor de evaluación conceptual',
  `UA_CALF_UNIDAD` double DEFAULT NULL,
  `UA_MOTIVO_CANALIZACION` varchar(500) DEFAULT NULL COMMENT 'Descripcion de canalizacion',
  `UA_CANALIZACIOES_DEPT` varchar(8) DEFAULT NULL COMMENT 'Es asignado ',
  `UA_TIPO_EVALUACION` varchar(5) DEFAULT NULL COMMENT 'Es el modo en que se esta evaluando ED primera,segunda, reg',
  `UA_FEC_LAST_UPDATE` datetime DEFAULT NULL,
  `UA_FEC_INSERT` datetime DEFAULT NULL,
  `UA_LAST_IP` int unsigned DEFAULT NULL,
  `UA_USER_ID` int DEFAULT NULL,
  PRIMARY KEY (`UA_GRUPO`,`UA_CVE_PERIODO`,`UA_CVE_UNIDAD`,`UA_CVE_ASIGNATURA`,`UA_CVE_ALUMNO`),
  KEY `FK_UA_DA_UA_UNIDAD_idx` (`UA_CVE_UNIDAD`),
  KEY `PK_UA_DA_CVE_ASIGNATURA_idx` (`UA_CVE_ASIGNATURA`),
  KEY `FK_UA_DA_CVE_ALUMNO_idx` (`UA_CVE_ALUMNO`),
  KEY `FK_UA_DA_CVE_PERIODO_idx` (`UA_CVE_PERIODO`),
  CONSTRAINT `FK_UA_DA_CVE_ALUMNO` FOREIGN KEY (`UA_CVE_ALUMNO`) REFERENCES `alumno` (`AL_MATRICULA`),
  CONSTRAINT `FK_UA_DA_CVE_ASIGNATURA` FOREIGN KEY (`UA_CVE_ASIGNATURA`) REFERENCES `asignatura` (`AS_CVE_ASIGNATURA`),
  CONSTRAINT `FK_UA_DA_CVE_GRUPO` FOREIGN KEY (`UA_GRUPO`) REFERENCES `grupo` (`GR_CVE_GRUPO`),
  CONSTRAINT `FK_UA_DA_CVE_PERIODO` FOREIGN KEY (`UA_CVE_PERIODO`) REFERENCES `periodo` (`PR_CVE`),
  CONSTRAINT `FK_UA_DA_CVE_UNIDAD` FOREIGN KEY (`UA_CVE_UNIDAD`) REFERENCES `detalle_asignatura` (`DA_CVE_UNIDAD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidades_asignatura`
--

LOCK TABLES `unidades_asignatura` WRITE;
/*!40000 ALTER TABLE `unidades_asignatura` DISABLE KEYS */;
INSERT INTO `unidades_asignatura` VALUES ('ISC306B','20192',1,'SCB1001','16011032',32,21,21,NULL,'Falta de interes','SS-AA','OR-1E','2019-08-26 16:11:23','2019-08-26 16:11:23',3232258576,38),('ISC306B','20192',1,'SCB1001','16011048',32,21,21,74,'Falta de interes','SS-AA','OR-1E','2019-08-26 16:16:56','2019-08-26 16:16:56',3232258576,38);
/*!40000 ALTER TABLE `unidades_asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `US_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Representa el identificador unico del usuario',
  `US_NOMBRE` varchar(50) DEFAULT NULL COMMENT 'Representa el nombre del usuario',
  `US_PASSWORD` text COMMENT 'Representa la contraseña del usuario',
  `US_ROL` int DEFAULT '5' COMMENT 'Representa el rol de el usuario.',
  `US_EMAIL` varchar(60) NOT NULL COMMENT 'Representa el correo electronico del usuario.',
  `US_FEC_INSERT` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Representa la fecha en que el usuario se ha registrado.',
  `US_FEC_UPDATE` datetime DEFAULT NULL COMMENT 'Almacena la última fecha de modificacion del usuario. ',
  `US_LAST_IP` int unsigned DEFAULT NULL COMMENT 'Almacena la ultima IP que ha cargado o modificado el registro',
  `US_BY_USER` int DEFAULT NULL,
  `US_ACTIVO` char(1) DEFAULT 'A' COMMENT 'A=activo I=inactivo',
  PRIMARY KEY (`US_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17011575 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Esta tabal contiene datos del usuario';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'xaby','a029d0df84eb5549c641e04a9ef389e5',2,'',NULL,NULL,NULL,NULL,'A'),(2,'admin','21232f297a57a5a743894a0e4a801fc3',1,'',NULL,NULL,NULL,NULL,'A'),(3,'prueba','c893bad68927b457dbed39460e6afd62',2,'',NULL,NULL,NULL,NULL,'A'),(4,'alumno','c6865cf98b133f1f3de596a4a2894630',5,'',NULL,NULL,NULL,NULL,'A'),(5,'3','eccbc87e4b5ce2fe28308fd9f2a7baf3',2,'',NULL,NULL,NULL,NULL,'A'),(6,'11','6512bd43d9caa6e02c990b0a82652dca',2,'',NULL,NULL,NULL,NULL,'A'),(7,'18','6f4922f45568161a8cdf4ad2299f6d23',2,'',NULL,NULL,NULL,NULL,'A'),(8,'69','14bfa6bb14875e45bba028a21ed38046',2,'',NULL,NULL,NULL,NULL,'A'),(9,'100','f899139df5e1059396431415e770c6dd',2,'',NULL,NULL,NULL,NULL,'A'),(10,'129','d1f491a404d6854880943e5c3cd9ca25',2,'',NULL,NULL,NULL,NULL,'A'),(11,'130','9b8619251a19057cff70779273e95aa6',2,'',NULL,NULL,NULL,NULL,'A'),(12,'194','a597e50502f5ff68e3e25b9114205d4a',2,'',NULL,NULL,NULL,NULL,'A'),(13,'199','84d9ee44e457ddef7f2c4f25dc8fa865',2,'',NULL,NULL,NULL,NULL,'A'),(14,'700','e5841df2166dd424a57127423d276bbe',2,'',NULL,NULL,NULL,NULL,'A'),(15,'702','b1eec33c726a60554bc78518d5f9b32c',2,'',NULL,NULL,NULL,NULL,'A'),(16,'703','d6c651ddcd97183b2e40bc464231c962',2,'',NULL,NULL,NULL,NULL,'A'),(17,'996','0b8aff0438617c055eb55f0ba5d226fa',2,'',NULL,NULL,NULL,NULL,'A'),(18,'1008','1587965fb4d4b5afe8428a4a024feb0d',2,'',NULL,NULL,NULL,NULL,'A'),(19,'4296','beda24c1e1b46055dff2c39c98fd6fc1',2,'',NULL,NULL,NULL,NULL,'A'),(20,'7022','1f33d7cf6693dc6dcc7029b97cc29487',2,'',NULL,NULL,NULL,NULL,'A'),(21,'7023','b47767f992ce8624345aca182b76b202',2,'',NULL,NULL,NULL,NULL,'A'),(99,'15011001','28450b609ec2ca37b56db4e9e600840c',5,'',NULL,NULL,NULL,NULL,'A'),(100,'16011237','82d797191a7bd271f1506ca8de5d9bb7',5,'',NULL,NULL,NULL,NULL,'A'),(101,'17011287','9f28e06a5283a2cf67075558d0069ba5',5,'',NULL,NULL,NULL,NULL,'A'),(102,'17011288 ','87225ab3ce46a5d699c8f19dfc5bf551',5,'',NULL,NULL,NULL,NULL,'A'),(103,'17011987','15e1c68a88a3816ea1d314f8ec0e5778',5,'',NULL,NULL,NULL,NULL,'A'),(104,'18011276','74ba43831c33d558bcf9f61c6eb9c828',5,'',NULL,NULL,NULL,NULL,'A'),(105,'18011679','8b4de0a8c230f2ae605778ccba5241f8',5,'',NULL,NULL,NULL,NULL,'A'),(106,'16011065','3025c006e3c9d82228eda28f2678d269',5,'',NULL,NULL,NULL,NULL,'A'),(107,'16011089','81659223c8feea6d53f01b1f9444f1cf',5,'',NULL,NULL,NULL,NULL,'A'),(108,'16011174','09fe2f6c17ee9f6e7750d7c22617c823',5,'',NULL,NULL,NULL,NULL,'A'),(109,'16011099','63e6482d1badf12a566be374e342812c',5,'',NULL,NULL,NULL,NULL,'A'),(110,'16011757','5fe0227faa99c403f6f1bb1d3237bab1',5,'',NULL,NULL,NULL,NULL,'A'),(111,'16011061','c39622f5f10acb3fc98572d789d1f769',5,'',NULL,NULL,NULL,NULL,'A'),(112,'16011616','347e399a417116f1d0ce732e1a0c7117',3,'',NULL,NULL,NULL,NULL,'A'),(113,'16011827','2a13664000a8179c44265e38909ea3dc',3,'',NULL,NULL,NULL,NULL,'A'),(114,'16011514','3ab786cb56ffd3271effe31ff170ec08',3,'',NULL,NULL,NULL,NULL,'A'),(115,'16011120','dc62fadfc67b87e0fbe3e17cb087e287',3,'',NULL,NULL,NULL,NULL,'A'),(116,'16011258','e88f9cc1f239fdab6abedebcf03a49e5',3,'',NULL,NULL,NULL,NULL,'A'),(117,'16011066','7cdf5f49e2dae5bbb0654da6b82ede91',3,'',NULL,NULL,NULL,NULL,'A'),(118,'16011672','8bb6a5d5afc651d149382de4125a59e2',3,'',NULL,NULL,NULL,NULL,'A'),(119,'16011032','b9db01e5b3887ebc29f310acfae407bf',3,'',NULL,NULL,NULL,NULL,'A'),(120,'16011219','3c77ea2fc33a1cf7f1e4c0fab03dfef4',3,'',NULL,NULL,NULL,NULL,'A'),(121,'16011139','676e1d2f87206696ba095ca8abe0c77f',3,'',NULL,NULL,NULL,NULL,'A'),(122,'16011891','266c813b1597dd69eac503ef21fa6576',3,'',NULL,NULL,NULL,NULL,'A'),(123,'16011225','16ab26f9a4db58f3880358f1034d59bd',3,'',NULL,NULL,NULL,NULL,'A'),(124,'16011592','8989e8eef4d2b1020ad498ed801c1245',3,'',NULL,NULL,NULL,NULL,'A'),(125,'16011135','b0d95b0cf17d262e5209d093a87fdc67',3,'',NULL,NULL,NULL,NULL,'A'),(126,'16011184','637731c945c2e22e5762e4ed81c8e1d5',3,'',NULL,NULL,NULL,NULL,'A'),(127,'16011367','f7ede7ae7463636f7056eaa0f7e59d59',3,'',NULL,NULL,NULL,NULL,'A'),(128,'16011334','80071fba0b9352bafbc432f4acb441ad',3,'',NULL,NULL,NULL,NULL,'A'),(129,'16011048','6aace037cbda0db6ff15359069696efd',3,'',NULL,NULL,NULL,NULL,'A'),(130,'16011871','0b13ba8512659fea96b0aa5075e86c24',3,'',NULL,NULL,NULL,NULL,'A'),(131,'16011379','0b5ffcceea4e353a728beacb5774d0e9',3,'',NULL,NULL,NULL,NULL,'A'),(132,'16011451','2315e454367b23f93409700cfae5c892',3,'',NULL,NULL,NULL,NULL,'A'),(133,'16011244','55abd0976ed100a83b1998b009335eb2',3,'',NULL,NULL,NULL,NULL,'A'),(134,'16011824','15aff3c80dabc7e424d464cb8041459d',3,'',NULL,NULL,NULL,NULL,'A'),(135,'jahaziel','7815696ecbf1c96e6894b779456d330e',1,'jahazo123@gmail.com','2019-06-06 15:34:20','2019-06-06 15:34:20',168430081,NULL,'A'),(136,'jahaziel','7815696ecbf1c96e6894b779456d330e',1,'jahazo123@gmail.com','2019-06-06 15:35:58','2019-06-06 15:35:58',2820866058,NULL,'A'),(137,'ceci','7815696ecbf1c96e6894b779456d330e',1,'ceci@gmail.com','2019-06-07 13:36:13',NULL,3232235778,NULL,'A'),(138,'AdminISC','d8578edf8458ce06fbc5bb76a58c5ca4',4,'jahazo123@gmail.com','2019-07-01 13:18:07',NULL,NULL,NULL,'A'),(139,'Jahaziel FS','7815696ecbf1c96e6894b779456d330e',1,'jahazo123@gmail.com','2019-08-09 11:39:45',NULL,3232235791,NULL,'A'),(140,'JAHAZIEL','7815696ecbf1c96e6894b779456d330e',1,'','2019-09-12 16:50:53',NULL,2130706433,NULL,'A'),(141,'asd','7815696ecbf1c96e6894b779456d330e',1,'','2019-09-12 17:01:10',NULL,2130706433,NULL,'A'),(142,'Ceci','f63acfe4794aefd8111c8b922f48406e',2,'ceci@itsoeh.edu.mx','2019-09-17 13:46:09',NULL,2130706433,NULL,'A'),(143,'','d41d8cd98f00b204e9800998ecf8427e',1,'','2019-10-10 11:28:35',NULL,2130706433,NULL,'A'),(144,'','d41d8cd98f00b204e9800998ecf8427e',1,'','2019-10-10 11:29:00',NULL,2130706433,NULL,'A'),(145,'Nuevo usuario','76d80224611fc919a5d54f0ff9fba446',2,'correo@h.com','2019-10-10 11:30:37',NULL,2130706433,NULL,'A'),(146,'Liz','hola',1,'','2021-03-19 00:13:39',NULL,NULL,NULL,'A'),(17011574,'Jose Jair Valdez Martinez','itsoeh',1,'jvaldez@itsoeh.edu.mx','2021-03-19 00:13:39',NULL,NULL,NULL,'A');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_asignacion`
--

DROP TABLE IF EXISTS `usuario_asignacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_asignacion` (
  `UA_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Representa el identificador del permiso.',
  `UA_FEC_ALTA` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Representa la fecha en la que se genera el alta.\\\\n',
  `UA_US_CVE_USUARIO` int DEFAULT NULL,
  `UA_OM_OPCION_MENU` int DEFAULT NULL,
  `UA_AREA` int DEFAULT NULL COMMENT 'Representa la asignacion a la que pertenece.',
  `UA_FEC_UPDATE` datetime DEFAULT NULL COMMENT 'Fecha de la última modificación',
  `UA_LAST_IP` int unsigned DEFAULT NULL COMMENT 'Ip de donde se  genero la actualización  o inserción.',
  `UA_ACTIVO` char(1) NOT NULL DEFAULT 'A' COMMENT 'Indica si el usuario esta activo A=activo, I=inactivo',
  PRIMARY KEY (`UA_ID`),
  KEY `FK_UA_US_CVE_USUARIO_idx` (`UA_US_CVE_USUARIO`),
  KEY `FK_UA_OM_OPCION_MENU_idx` (`UA_OM_OPCION_MENU`),
  CONSTRAINT `FK_UA_OM_OPCION_MENU` FOREIGN KEY (`UA_OM_OPCION_MENU`) REFERENCES `opciones_menu` (`OM_ID`),
  CONSTRAINT `FK_UA_US_CVE_USUARIO` FOREIGN KEY (`UA_US_CVE_USUARIO`) REFERENCES `usuario` (`US_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Representa los permisos de usuario.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_asignacion`
--

LOCK TABLES `usuario_asignacion` WRITE;
/*!40000 ALTER TABLE `usuario_asignacion` DISABLE KEYS */;
INSERT INTO `usuario_asignacion` VALUES (4,'2019-06-14 14:16:37',2,5,1,NULL,NULL,'A'),(5,'2019-06-14 14:17:00',2,3,1,NULL,NULL,'A'),(6,'2019-07-01 13:21:56',138,1,2,NULL,NULL,'A'),(7,'2019-07-01 13:21:56',138,2,2,NULL,NULL,'A'),(8,'2019-07-01 13:21:56',138,3,2,NULL,NULL,'A'),(9,'2019-07-01 13:21:56',138,4,2,NULL,NULL,'A'),(10,'2019-07-01 13:21:56',138,5,2,NULL,NULL,'A'),(11,'2019-07-01 13:21:56',138,6,2,NULL,NULL,'A'),(12,'2019-08-09 11:41:56',138,7,2,NULL,NULL,'A'),(13,'2019-08-15 13:29:04',138,8,2,NULL,NULL,'A'),(14,'2019-08-20 12:47:19',138,9,2,NULL,NULL,'A');
/*!40000 ALTER TABLE `usuario_asignacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'cima2'
--

--
-- Dumping routines for database 'cima2'
--
/*!50003 DROP PROCEDURE IF EXISTS `modificar_asignacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_asignacion`(IN  id INT)
BEGIN

delete from cima.usuario_asignacion WHERE UA_ID =id;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prueba` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prueba`()
BEGIN
	select * from asignaturas;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_listar_criterio_x_asignatura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ps_listar_criterio_x_asignatura`(
	in_cve_asignatura varchar(15)
)
BEGIN
	SELECT
		dcd.DCD_CVE,
		dcd.DCD_CVE_CD,
		dcd.DCD_ITEM,
		dcd.DCD_AYUDA_CONTEXTUAL,
		right(DCD_CVE_CD, char_length(DCD_CVE_CD)-9)  x_indice_criterio,
		convert (right(DCD_CVE_CD, char_length(DCD_CVE_CD)-10), unsigned integer) indice_criterio,
		convert (right(DCD_CVE, char_length(DCD_CVE)-2), unsigned integer) indice
	FROM 
		detalle_criterio_desempenio dcd
	INNER JOIN
		asignatura_cd acd
	on 
		dcd.DCD_CVE_CD = acd.ACD_CVE_CD
	where 
		acd.ACD_CVE_ASIGNATURA = in_cve_asignatura
		and acd.ACD_ACTIVO='A'
	ORDER BY indice_criterio, indice;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_asignatura_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_asignatura_id`(in_id varchar(15))
BEGIN
	    select
			AS_CVE_ASIGNATURA as id, AS_NOMBRE_ASIGNATURA as name, as_pe_cve_plan as plan
		from
			asignatura 
		where 
			AS_CVE_ASIGNATURA = in_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_busca_atributo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_busca_atributo`(atributo varchar(20))
BEGIN
	select * from atributos_egreso where AE_CLAVE= atributo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_busca_criterio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_busca_criterio`(codigo varchar(20))
BEGIN
	select * from criterios_desempenio where CD_CLAVE=codigo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_cabecera_cd_asignatura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_cabecera_cd_asignatura`(
in_area varchar(3),
in_asignatura varchar(15),
out out_plan_activo varchar(20),
out  out_nombre_plan varchar(50)
)
BEGIN
DECLARE plan_activo varchar(20);
DECLARE nombre_plan varchar(50);

-- Selección del plan por area
select 
	PL_CVE_PLAN,
    PL_NOMBRE 
    into plan_activo,nombre_plan
    from plan 
    where PL_AREA =in_area and PL_ACTIVO='A';
	SET out_plan_activo=plan_activo;
	SET out_nombre_plan=nombre_plan; 

select 
	a.AS_CVE_ASIGNATURA CLAVE, 
    mc.MC_SEMESTRE as SEMESTRE,
    a.AS_NOMBRE_ASIGNATURA AS 'NOM_ASIGNATURA',
    (a.AS_CREDITOS_HORA_TEORIA *16) AS HT,
    (a.AS_CREDITOS_HORA_PRACTICA *16) AS HP,
    (a.AS_CREDITOS_HORA_TEORIA + a.AS_CREDITOS_HORA_PRACTICA )*16 AS TOTAL_HORAS,
    IF(upper(a.AS_AREA_CONOCIMIENTO) = upper('ESPECIALIDAD'), 'OP','OB') AS TIPO_CURSO,
    a.AS_AREA_CONOCIMIENTO as AREA_CONOCIMIENTO
    from asignatura a 
    join malla_curricular mc on (a.AS_CVE_ASIGNATURA=mc.MC_CVE_ASIGNATURA)
	 	and mc.MC_CVE_PLAN='ISIC-2010-224'
	where 1=1
		and a.AS_CVE_ASIGNATURA=in_asignatura
		and a.AS_ACTIVO='A'
		and a.AS_TIPO=1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_consulta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consulta`()
BEGIN
CREATE TEMPORARY TABLE grupo_docente (
	id_docente VARCHAR(50) NOT NULL, 
    nombre_docente varchar(200) NOT NULL, 
    clave_grupo varchar(15) NOT NULL 
);
insert into grupo_docente
(
	select 
		DO_CVE_DOCENTE,
        DO_NOMBRE,
        GR_CVE_GRUPO 
	from 
		docente d, 
        grupo g 
	where 
		d.DO_CVE_DOCENTE=g.GR_CVE_DOCENTE);
	
    select * from grupo_docente;
	drop table grupo_docente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_crear_menu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_crear_menu`()
BEGIN
/*SELECT 
    IFNULL(ELT(FIELD(ua.UA_AREA, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),'ITSOEH','ISC','TIC','IGE', 'ARQ','IEL','ILG','IIA','ING','VIN'), 'Sin area asignada') AS AREA,
    ua.UA_OM_OPCION_MENU as opcionMenu,
    om.om_descripcion as descripcion,
    om.om_ruta as ruta,
    ua.UA_AREA as INT_AREA
FROM cima.usuario_asignacion ua 
	INNER JOIN cima.opciones_menu om ON 1=1
		AND
			ua.UA_OM_OPCION_MENU=OM.om_id

WHERE 
	ua.ua_us_cve_usuario=in_us_id;*/
    SELECT * FROM categorias_menu;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_del_alumno` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_del_alumno`(
 in_matricula varchar(10)
)
BEGIN
	UPDATE alumno
	SET
		`AL_ACTIVO` = 'I'
	WHERE 
		`AL_MATRICULA` = in_matricula;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_del_asignatura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_del_asignatura`(
	cve_asignatura varchar(15)
)
BEGIN
	UPDATE `cima`.`asignatura`
	SET
		`AS_ACTIVO` = 'I'
	WHERE 
		`AS_CVE_ASIGNATURA` = cve_asignatura;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_del_atributo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_del_atributo`(
	in_atributo varchar(15)
)
BEGIN
	UPDATE `cima`.`atributos_egreso`
	SET
		`AE_ACTIVO` = 'I'
	WHERE 
		`AE_CLAVE` = in_atributo;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_del_carga_alumno` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_del_carga_alumno`(
	del_cve_id int
)
BEGIN
	UPDATE carga_alumno
	SET
		`CA_ACTIVO` = 'I'
	WHERE 
		`CA_ID` = del_cve_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_del_criterio_desempenio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_del_criterio_desempenio`(
	in_clave varchar(15),
	in_ip varchar(15),
	in_user int
 )
BEGIN
	UPDATE `cima`.`criterios_desempenio`
		SET
			`CD_CLAVE` = concat('x',in_clave),
			`CD_ACTIVO` = 'I',
			`CD_FEC_UPDATE` = current_date(),
			`CD_LAST_IP` = inet_aton(in_ip),
			`CD_LAST_USER` = in_user
		WHERE `CD_CLAVE` = in_clave;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_del_empresa_residencia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_del_empresa_residencia`(
	in_cve_empresa varchar(20)
)
BEGIN
	UPDATE `cima`.`filtro_empresas_residencia`
		SET
			`FER_ACTIVO` = 'I'
		WHERE 
			`FER_CVE_EMPRESA` = in_cve_empresa;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_del_grupo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_del_grupo`(
	del_cve_grupo varchar(10)
)
BEGIN
	UPDATE `cima`.`grupo`
	SET
		`GR_ACTIVO` = 'I'
	WHERE 
		`GR_CVE_GRUPO` = del_cve_grupo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_del_periodo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_del_periodo`(
	in_cve_periodo varchar(10)
)
BEGIN
	UPDATE `cima`.`periodo`
		SET
			`PR_ACTIVO` = 'I'
		WHERE 
			`PR_CVE` = in_cve_periodo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_del_plan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_del_plan`(
	cve_plan varchar(18)
)
BEGIN
	UPDATE `cima`.`plan`
		SET
			`PL_ACTIVO` = 'I'
		WHERE 
			`PL_CVE_PLAN` = cve_plan;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_del_usuario_asignacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_del_usuario_asignacion`(
	id INT)
BEGIN
	delete from
		cima.usuario_asignacion 
	WHERE 
		UA_ID=id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_deshabilitar_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deshabilitar_usuario`(
	in_ip_text varchar(15), 
	usuario int
)
BEGIN
	DECLARE ip_to_int double;
	SELECT INET_ATON(in_ip_text) INTO ip_to_int;

	UPDATE `cima`.`usuario`
	SET
		`US_ACTIVO` = I,
		`US_FEC_BAJA`= current_timestamp(),
		`US_LAST_IP`= ip_to_int
	WHERE
		`US_ID`= usuario;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_elimina_acd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_elimina_acd`(
	asignatura varchar(15)
)
BEGIN
	DELETE 
    FROM asignatura_cd 
    WHERE (ACD_CVE_ASIGNATURA = asignatura);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_encabezado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_encabezado`(
	in_cve_periodo varchar(10),
    in_cve_asignatura varchar(15),
    in_cve_alumno varchar(10)
)
BEGIN
	select  ca.CA_CVE_GRUPO,
		ca.CA_CVE_PERIODO,
        ca.ca_cve_alumno,
        GR_CVE_ASIGNATURA,
        GR_CVE_DOCENTE,
		a.al_nom_alumno
        
 from  carga_alumno ca 
	join grupo g on(ca.ca_cve_grupo = g.GR_CVE_GRUPO)
	 	join periodo p  on (ca.CA_CVE_PERIODO=p.PR_CVE)
			join alumno a on (ca.CA_CVE_ALUMNO=a.AL_MATRICULA)
        where 1=1
			 and ca.CA_CVE_PERIODO=upper(in_cve_periodo)
             and g.GR_CVE_ASIGNATURA=upper(in_cve_asignatura)
             and ca.CA_CVE_ALUMNO=upper(in_cve_alumno);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_evaluar_equipo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_evaluar_equipo`(
	equipo int
)
BEGIN
	UPDATE `cima`.`proyecto_integrador` 
		SET 
			`PI_STATUS` = 'T' 
		WHERE 
			(`PI_CVE` = equipo);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_evalua_proyecto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_evalua_proyecto`(
	equipo int,
	pregunta int,
	evaluacion tinyint, 
	observaciones varchar(80)
)
BEGIN
	INSERT INTO `cima`.`eval_go` 
    (
		`EVG_EQUIPO`, 
		`EVG_PREGUNTA`, 
        `EVG_EVALUACION`, 
        `EVG_OBSERVACIONES`
	) 
    VALUES 
	(
		equipo, 
        pregunta, 
        evaluacion, 
        observaciones
	);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_evg_x_equipo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_evg_x_equipo`(
	in_cve_equipo int
)
BEGIN
	SELECT 
		evg.EVG_CVE,
		evg.EVG_EQUIPO,
		evg.EVG_PREGUNTA,
		evg.EVG_EVALUACION,
		evg.EVG_OBSERVACIONES
	FROM 
		evaluacion_go evg
	INNER JOIN	
		proyecto_integrador pi
	ON
		evg.EVG_EQUIPO = pi.PI_CVE
	WHERE 
		pi.PI_CVE = in_cve_equipo
		AND pi.PI_ACTIVO='A';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_fi_de_alumno` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fi_de_alumno`(in in_matricula varchar(10))
BEGIN
DELETE FROM `cima2`.`carga_alumno` WHERE CA_CVE_ALUMNO = in_matricula ;
DELETE FROM `cima2`.`alumno` WHERE AL_MATRICULA = in_matricula;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_fi_in_alumno` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fi_in_alumno`(
in in_matricula varchar(10),
in in_nombre varchar(100),
in in_plan varchar(45),
in in_correo varchar(45),
in in_semestre varchar(2),
in in_activo char(1))
BEGIN
INSERT INTO `cima2`.`alumno`
(`AL_MATRICULA`,`AL_NOM_ALUMNO`,`AL_PLAN`,`AL_CORREO`,`AL_SEMESTRE`,`AL_ACTIVO`)
VALUES 
(in_matricula,in_nombre,in_plan,in_correo,in_semestre,in_activo);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_fi_in_ant_d_localizacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fi_in_ant_d_localizacion`(
in in_calle varchar(30),
in in_Municipio varchar(45),
in in_estado varchar(45),
in in_latitude varchar(45),
in in_longitude varchar(45),
in in_nom_tutor varchar(45),
in in_tel_casa varchar(10),
in in_tel_movil varchar(10),
in in_map_img blob,
in in_matricula varchar(10)
)
BEGIN
INSERT INTO `cima2`.`antecedentes_de_localizacion`
(`ANLO_CALLE`,
`ANLO_MUNICIPIO`,
`ANLO_ESTADO`,
`ANLO_LATITUDE`,
`ANLO_LOGITUDE`,
`ANLO_NOM_TUTOR`,
`ANLO_TEL_CASA`,
`ANLO_TEL_MOVIL`,
`ANLO_MAP_IMG`,
`ANLO_AL_MATRICULA`)
VALUES
(in_calle,in_Municipio, in_estado,in_latitude,in_longitude,in_nom_tutor,in_tel_casa,
in_tel_movil,in_map_img,in_matricula);
UPDATE `cima2`.`alumno`
SET`AL_EST_FICHA` = 'COMPLETO'
WHERE `AL_MATRICULA` = in_matricula;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_fi_in_ant_escolares` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fi_in_ant_escolares`(
in in_tip_escolaridad varchar(45),
in in_especialidasd varchar(45),
in in_nom_escuela varchar(45),
in in_promedio varchar(45),
in in_beca char(2),
in in_vive_con varchar(30),
in in_tipo_beca varchar(15),
in in_cual varchar(45),
in in_matricula varchar(10)
)
BEGIN
INSERT INTO `cima2`.`antecedentes_escolares`
(`AE_TIPO_ESC`,
`AE_ESPECIALIDAD`,
`AE_NOM_ESC`,
`AE_PROMEDIO`,
`AE_BECA`,
`AE_VIVE_CON`,
`AE_TIPO_BECA`,
`AE_OTRO_TB`,
`AE_AL_MATRICULA`)
VALUES
(in_tip_escolaridad,in_especialidasd,in_nom_escuela,in_promedio,in_beca,in_vive_con,in_tipo_beca, in_cual,in_matricula);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_fi_in_ant_generales` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fi_in_ant_generales`(
in in_prog_edu varchar(45),
in in_matricula varchar(10),
in in_semestre char(1),
in in_grupo char(1),
in in_nombre varchar(100),
in in_sexo char(1),
in in_correo varchar(45),
in in_telmovil varchar(10),
in in_telcasa varchar(10),
in in_fec_nac date,
in in_lug_nac varchar(45),
in in_est_civil varchar(10),
in in_domicilio varchar(45),
in in_tin_hijos char(2),
in in_cuantos char(1)
)
BEGIN
declare fk_matricula varchar(10);
set fk_matricula = in_matricula;
INSERT INTO 
`cima2`.`antecedentes_generales`(`ANG_PROG_EDUCATIVO`,`ANG_MATRICULA`,`ANG_SEMESTRE`,
`ANG_GRUPO`,`ANG_NOMBRE`,`ANG_SEXO`,`ANG_CORREO`,`ANG_TELMOVIL`,`ANG_TELCASA`,`ANG_FECHA_NAC`,
`ANG_LUGAR_NAC`,`ANG_EST_CIVIL`,`ANG_DOMICILIO`,`ANG_HIJOS`,`ANG_CUANTOS`,`ANG_FECHA_APL`,`ANG_AL_MATRICULA`)
VALUES
(in_prog_edu , in_matricula , in_semestre , in_grupo ,in_nombre,in_sexo,in_correo,in_telmovil,
in_telcasa , in_fec_nac,in_lug_nac,in_est_civil,in_domicilio,in_tin_hijos,in_cuantos,curdate(),fk_matricula);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_fi_in_ant_gen_salud` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fi_in_ant_gen_salud`(
in in_pro_salud char(2),
in in_especifique varchar(45),
in in_tip_sangre char(5),
in in_alergia char(2),
in in_tip_alergia varchar(15),
in in_esp_alergia varchar(45),
in in_dis_sensorial varchar(45),
in in_dis_motora varchar(2),
in in_esp_dis_motora varchar(45),
in in_dis_temporal varchar(12),
in in_tip_dis varchar(45),
in in_matricula varchar(10)
)
BEGIN
SELECT * FROM cima2.antecedentes_gen_salud;INSERT INTO `cima2`.`antecedentes_gen_salud`
(`ANGS_PRO_SALUD`,
`ANGS_ESPECIFIQUE`,
`ANGS_TIP_SANGRE`,
`ANGS_ALERGIAS`,
`ANGS_TIP_ALERGIA`,
`ANGS_ESP_ALERGIA`,
`ANGS_DIS_SENSORIAL`,
`ANGS_DIS_MOTORA`,
`ANGS_ESP_DIS_MOTORA`,
`ANGS_DIS_TEMPORAL`,
`ANGS_TIPO_DIS`,
`ANGS_AL_MATRICULA`)
VALUES
(in_pro_salud,
in_especifique,
in_tip_sangre,
in_alergia,
in_tip_alergia,
in_esp_alergia,
in_dis_sensorial,
in_dis_motora,
in_esp_dis_motora,
in_dis_temporal,
in_tip_dis,in_matricula);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_fi_in_ant_laborales` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fi_in_ant_laborales`(
in in_trabajas varchar(2),
in in_nombre_trabajo varchar(45),
in in_horario varchar(20),
in in_dep_econo varchar(50),
in in_esp_dep varchar(45),
in in_ing_men_fam varchar(10),
in in_ing_men_per varchar(10),
in in_domicilio varchar(45),
in in_esc_padre varchar(35),
in in_est_def_pa varchar(15),
in in_ocu_padre varchar(45),
in in_esc_madre varchar(35),
in in_est_def_ma varchar(15),
in in_ocu_madre varchar(45),
in in_matricula varchar(10)
)
BEGIN
INSERT INTO `cima2`.`antecendentes_laborales`
(`ANL_TRABAJO`,
`ANL_NOM_TRABAJO`,
`ANL_HORARIO`,
`ANL_DEP_ECONO`,
`ANL_ESP_DEP`,
`ANL_ING_MEN_FAMILIAR`,
`ANL_ING_MEN_PERSONAL`,
`ANL_DOMICILIO`,
`ANL_ESC_PADRE`,
`ANL_EST_DEF_PA`,
`ANL_OC_PADRE`,
`ANL_ESC_MADRE`,
`ANL_EST_DEF_MA`,
`ANL_OC_MADRE`,
`ANL_AL_MATRICULA`)
VALUES
(in_trabajas,in_nombre_trabajo,in_horario,in_dep_econo,
in_esp_dep,in_ing_men_fam,in_ing_men_per,in_domicilio,
in_esc_padre,in_est_def_pa,in_ocu_padre,in_esc_madre,
in_est_def_ma,in_ocu_madre,in_matricula);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_fi_listar_alumno` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fi_listar_alumno`( in in_matricula varchar(10))
BEGIN
select * from cima2.alumno where AL_MATRICULA = in_matricula;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_fi_listar_alumnos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fi_listar_alumnos`()
BEGIN
select * from cima2.alumno;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_fi_listar_ant_escolares` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fi_listar_ant_escolares`(in in_matricula varchar(10))
BEGIN
select * from cima2.antecedentes_escolares where AE_AL_MATRICULA = in_matricula;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_fi_listar_ant_generales` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fi_listar_ant_generales`(in in_matricula varchar(10))
BEGIN
select * from cima2.antecedentes_generales where ANG_AL_MATRICULA = in_matricula;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_fi_listar_ant_gen_salud` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fi_listar_ant_gen_salud`(in in_matricula varchar(10))
BEGIN
select * from cima2.antecedentes_gen_salud where ANGS_AL_MATRICULA = in_matricula;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_fi_listar_ant_laborales` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fi_listar_ant_laborales`(in in_matricula varchar(45))
BEGIN
select * from cima2.antecendentes_laborales where ANL_AL_MATRICULA = in_matricula;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_fi_listar_reporte_ficha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fi_listar_reporte_ficha`(
in in_matricula varchar(45)
)
BEGIN
select * from cima2.antecedentes_generales U join cima2.antecedentes_escolares L
on(U.ANG_AL_MATRICULA=L.AE_AL_MATRICULA) where U.AL_MATRICULA = in_matricual ;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_fi_listar_reporte_ficha1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fi_listar_reporte_ficha1`(
in in_matricula varchar(45)
)
BEGIN
select * from cima2.antecedentes_generales U join cima2.antecedentes_escolares L
on(U.ANG_AL_MATRICULA=L.AE_AL_MATRICULA) join cima2.antecedentes_gen_salud A
on(L.AE_AL_MATRICULA = A.ANGS_AL_MATRICULA)where U.ANG_AL_MATRICULA = in_matricula;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_fi_listar_reporte_ficha2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fi_listar_reporte_ficha2`()
BEGIN
select * from cima2.antecedentes_generales U join cima2.antecedentes_escolares L
on(U.ANG_AL_MATRICULA=L.AE_AL_MATRICULA) join cima2.antecedentes_gen_salud A
on(L.AE_AL_MATRICULA = A.ANGS_AL_MATRICULA)join cima2.antecendentes_laborales LA
on (A.ANGS_AL_MATRICULA = LA.ANL_AL_MATRICULA) join cima2.antecedentes_de_localizacion LO
on (LA.ANL_AL_MATRICULA = LO.ANLO_AL_MATRICULA);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_fi_li_ant_d_localizacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fi_li_ant_d_localizacion`(in in_matricula varchar(10))
BEGIN
SELECT * FROM `cima2`.`antecedentes_de_localizacion` where ANLO_AL_MATRICULA = in_matricula;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_fi_li_reporte_ficha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fi_li_reporte_ficha`(
in in_matricula varchar(45)
)
BEGIN
select * from cima2.antecedentes_generales U join cima2.antecedentes_escolares L
on(U.ANG_AL_MATRICULA=L.AE_AL_MATRICULA) where U.ANG_AL_MATRICULA = in_matricula;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_fi_up_alumno` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fi_up_alumno`(
in in_matricula varchar(10),
in in_nombre varchar(100),
in in_plan varchar(45),
in in_correo varchar(45),
in in_semestre varchar(2),
in in_activo char(1))
BEGIN
UPDATE `cima2`.`alumno`
SET
`AL_NOM_ALUMNO` = in_nombre,
`AL_PLAN` = in_plan,
`AL_CORREO` = in_correo,
`AL_SEMESTRE` = in_semestre,
`AL_ACTIVO` = in_activo
WHERE `AL_MATRICULA` = in_matricula;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_grupo_tutoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_grupo_tutoria`(
	in matricula varchar(100)
)
BEGIN
	select ca_cve_grupo 
	from carga_alumno 
	where 
		ca_cve_alumno=matricula && ca_cve_grupo  regexp "^ISCT";
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_historial_acd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_historial_acd`(
	asignatura varchar(15)
)
BEGIN
	INSERT into historial_criterios_asignatura 
    (
		HCA_NIVEL,
        HCA_CVE_ASIGNATURA,
        HCA_CVE_CD
	) 
	SELECT 
		ACD_NIVEL,
        ACD_CVE_ASIGNATURA,
        ACD_CVE_CD 
	FROM asignatura_cd 
    WHERE 
		ACD_CVE_ASIGNATURA = asignatura;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insertar_malla` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar_malla`(
	in clave varchar(20),
    in matricula varchar(10),
	in asig varchar(10),
    in modalidad varchar(1)
)
BEGIN
	INSERT INTO malla 
    (
		MA_CVE,MA_CVE_ALUMNO, 
        MA_ASIGNATURA,
        MA_MODALIDAD_ACREDITACION) 
	VALUES 
	(
		clave,
        matricula,
        asig,modalidad
	)
	ON DUPLICATE KEY UPDATE 
		MA_CVE = clave,
        MA_CVE_ALUMNO = matricula,
        MA_ASIGNATURA = asig,
        MA_MODALIDAD_ACREDITACION = modalidad;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insertar_periodo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar_periodo`(
	in clave varchar(10) ,
    IN fi date, 
    in ff date, 
    in anio int, 
    IN descripcion varchar(45), 
    IN estatus varchar (12),
    IN last_ip varchar(17)
)
BEGIN
	DECLARE ip_to_int int unsigned;
	SET ip_to_int = inet_aton(last_ip);

	INSERT INTO periodo 
    (
		pr_cve, 
        pr_fecha_inicio, 
        pr_fecha_fin,
        pr_anio, 
        PR_DESCRIPCION,
        PR_ESTATUS,PR_LAST_IP
	) 
    VALUES 
    (
		clave,
        fi,
        ff,
        anio, 
        descripcion,
        estatus,
        ip_to_int
	)
	ON DUPLICATE KEY UPDATE 
		pr_cve=clave,
        pr_fecha_inicio=fi,
        pr_fecha_fin=ff,
        pr_anio=anio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ins_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ins_user`(
	in_nombre varchar(15), 
	in_pass varchar(15), 
    in_rol char(1), 
    in_activo int, 
    in_correo varchar(60), 
    in_ip_text varchar(15)
)
BEGIN
	DECLARE ip_to_int int unsigned;
	SET ip_to_int = inet_aton(in_ip_text);
	INSERT INTO `cima`.`usuario`
	(
		`US_NOMBRE`,
		`US_PASSWORD`,
		`US_ROL`,
		`US_ACTIVO`,
		`US_EMAIL`,
		`US_LAST_IP`
	)
	VALUES
		(in_nombre,
		 md5(in_pass),
		 in_rol,
		 in_activo,
		 in_correo,
		 ip_to_int
	);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_int_uasignature` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_int_uasignature`(in_grupo varchar(10), in_periodo varchar(10), in_unidad int(11),
in_asignatura varchar(15), in_alumno varchar(50), in_procedimental double,
in_actitudinal double, in_conceptual double, in_calf_unidad double, in_motivo_canalizacion varchar(500),
in_canalizacion_dept varchar(8), in_tipo_evaluacion varchar(5),    in_last_ip varchar(15), in_user_id int(11))
BEGIN
DECLARE ip_to_int int unsigned;

SET ip_to_int = inet_aton( in_last_ip);

INSERT INTO `cima`.`unidades_asignatura`
	(`UA_GRUPO`,
	`UA_CVE_PERIODO`,
	`UA_CVE_UNIDAD`,
	`UA_CVE_ASIGNATURA`,
	`UA_CVE_ALUMNO`,
	`UA_PROCEDIMENTAL`,
	`UA_ACTITUDINAL`,
	`UA_CONCEPTUAL`,
    `UA_CALF_UNIDAD`,
	`UA_MOTIVO_CANALIZACION`,
	`UA_CANALIZACIOES_DEPT`,
	`UA_TIPO_EVALUACION`,
    `UA_FEC_LAST_UPDATE`,
    `UA_FEC_INSERT`,
    `UA_LAST_IP`,
    `UA_USER_ID`)
VALUES
	(in_GRUPO,
    in_PERIODO,
    in_unidad,
	in_ASIGNATURA,
    in_ALUMNO,
    in_PROCEDIMENTAL,
    in_ACTITUDINAL,
    in_CONCEPTUAL,
    in_CALF_UNIDAD,
    in_MOTIVO_CANALIZACION,
    in_canalizacion_dept,
    in_TIPO_EVALUACION,
    current_timestamp(),
    current_timestamp(),
    ip_to_int,
    in_USER_ID
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_in_alumno` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_in_alumno`(
	in_matricula varchar(10),
	in_nom_alumno varchar(100),
	in_plan varchar(45),
	in_cambios varchar(45),
	in_correo varchar(45),
	in_semestre varchar(2),
	in_cdtos_semestre int,
	in_especialidad varchar(50),
	in_fecha_inicio datetime,
	in_cve_tutor varchar(45),
	in_dom varchar (60),
	in_telcasa varchar(12),
	in_telcel varchar(10),
	in_sexo varchar(2),
	in_fech_nac date,
	in_lugar_nac varchar(60),
	in_e_civil varchar(10),
	in_hijos varchar(10),
	in_last_ip varchar(16)
)
BEGIN
declare ip int unsigned default 0;
set ip = inet_aton(in_last_ip); 
INSERT INTO `cima`.`plan`
(
	`AL_MATRICULA`,
    `AL_NOM_ALUMNO`,
    `AL_PLAN`,
    `AL_CAMBIOS`,
    `AL_CORREO`,
    `AL_SEMESTRE`,
    `AL_CDTOS_SEMESTRE`,
    `AL_ESPECIALIDAD`,
    `AL_FECHA_INICIO`,
    `AL_CVE_TUTOR`,
    `AL_DOM`,
    `AL_TELCASA`,
    `AL_TELCEL`,
    `AL_SEXO`,
    `AL_FECH_NAC`,
    `AL_LUGAR_NAC`,
    `AL_E_CIVIL`,
    `AL_HIJOS`)
VALUES
(
    in_matricula,
	in_nom_alumno,
	in_plan,
	in_cambios,
	in_correo,
	in_semestre,
	in_cdtos_semestre,
	in_especialidad,
	in_fecha_inicio,
	in_cve_tutor,
	in_dom,
	in_telcasa,
	in_telcel,
	in_sexo,
	in_fech_nac,
	in_lugar_nac,
	in_e_civil,
	in_hijos,
    ip
);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_in_asignacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_in_asignacion`(
	IN asignacion VARCHAR(30), 
    IN ruta VARCHAR(50), 
    IN clave_usuario INT
)
BEGIN

INSERT INTO cima.usuario_asignacion
(
	UA_ASIGNACION, 
    UA_RUTA, 
    UA_US_CVE_USUARIO) 
VALUES
(
	asignacion, 
    ruta, 
    clave_usuario
);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_in_asignatura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_in_asignatura`(
	in_cve_asignatura varchar(15),
	in_nombre varchar(100),
	in_creditos_hora_teoricos varchar(2),
	in_creditos_hora_practica varchar(2),
	in_total_horas varchar(2),
	in_creditos int(3),
	in_area_conocimiento varchar(6),
	in_dependecia varchar(15),
	in_especialidad varchar(18),
	in_int_ip varchar(15)
)
BEGIN
INSERT INTO `cima`.`asignatura`
(
	`AS_CVE_ASIGNATURA`,
	`AS_NOMBRE_ASIGNATURA`,
	`AS_CREDITOS_HORA_TEORIA`,
	`AS_CREDITOS_HORA_PRACTICA`,
	`AS_TOTAL_HORAS`,
	`AS_CREDITOS`,
	`AS_AREA_CONOCIMIENTO`,
	`AS_DEPENDENCIAS`,
	`AS_TIPO`,
	`AS_ESPECIALIDAD`,
	`AS_FEC_INSERT`,
	`AS_BY_USER`
)
VALUES
(
	in_cve_asignatura,
	in_nombre,
	in_creditos_hora_teoricos,
	in_creditos_hora_practica,
	in_total_horas,
	in_creditos,
	in_area_conocimiento,
	in_dependecia,
	1,
	in_especialidad,
	CURRENT_TIMESTAMP(),
	inet6_aton(in_int_ip)
);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_in_asignatura_cd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_in_asignatura_cd`(
	in_cd varchar(15), 
	in_asignatura varchar(15), 
	in_nivel varchar(3), 
	in_ip Varchar(15), 
	in_user int)
BEGIN
-- 	IF in_activo = -1 THEN
DECLARE in_activo INT;
IF in_nivel = '0' THEN
	SET in_activo = -1;
ELSE
	SET in_activo =1;
END IF;
		INSERT INTO `cima`.`asignatura_cd`
		(
			`ACD_CVE_CD`,
			`ACD_CVE_ASIGNATURA`,
			`ACD_NIVEL`,
			`ACD_ACTIVO`,
			`ACD_LAST_USER`,
			`ACD_LAST_IP`
		)
		VALUES
		(
			in_cd,
			in_asignatura,
			in_nivel,
			in_activo,
			in_user,
			inet_aton(in_ip)
		) ON DUPLICATE KEY UPDATE 
			`ACD_NIVEL`=in_nivel,
			`ACD_ACTIVO`=in_activo,
            `ACD_FEC_UPDATE`=current_timestamp(),
			`ACD_LAST_USER`=in_user,
			`ACD_LAST_IP`=inet_aton(in_ip);     
-- 	ELSE
-- 		UPDATE `cima`.`asignatura_cd`
-- 		SET
-- 			`ACD_ACTIVO`=-1,
-- 			`ACD_LAST_USER`=in_user,
-- 			`ACD_LAST_IP`=inet_aton(in_ip)
-- 		WHERE `ACD_CVE_CD` = in_cd AND `ACD_CVE_ASIGNATURA` = in_asignatura;
-- 	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_in_atributo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_in_atributo`(
	in_atributo Varchar(10), 
	in_detail TEXT, 
	in_ip varchar(15)
)
BEGIN
	INSERT INTO `cima`.`atributos_egreso`
			(`AE_CLAVE`,
			`AE_DESCRIPCION`,
			`AE_LAST_IP`,
			`AE_ACTIVO`)
VALUES
			(
            in_atributo,
			in_detail,
			INET_ATON(in_ip),
			1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_in_carga_alumno` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_in_carga_alumno`(
	in_cve_id int,
    in_calf_final int,
    in_cve_grupo varchar(10),
    in_cve_alumno varchar(10),
    in_last_ip int,
    in_by_user int
)
BEGIN
	declare ip int unsigned default 0;
	set ip = inet_aton(in_last_ip); 
    INSERT INTO `cima`.`carga_alumno`
	(
		`PL_CVE_PLAN`,
		`PL_NOMBRE`,
		`PL_TOTAL_MATERIAS`,
		`PL_CREDITOS`,
		`PL_BLOQUES`,
		`PL_AREA`,
		`PL_LAST_IP`,
		`PL_BY_USER`
	)
	VALUES
	(
        in_cve_plan,
		in_nombre,
		in_total_materias,
		in_creditos,
		in_bloques,
		in_area,
		ip,
		in_by_user
	);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_in_criterio_desempenio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_in_criterio_desempenio`(
in_clave varchar(15),
in_detalle text,
in_ae varchar(15),
in_ip varchar(15),
in_user varchar(15) )
BEGIN
INSERT INTO `cima`.`criterios_desempenio`
(
	`CD_CLAVE`,
	`CD_DETALLE`,
	`CD_CVE_ATR_EG`,
	`CD_LAST_IP`,
	`CD_LAST_USER`)
VALUES
	(
    in_clave,
	in_detalle,
	in_ae,
	inet_aton(in_ip),
	in_user);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_in_empresa_residencia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_in_empresa_residencia`(
	in_cve_empresa varchar(20),
    in_nombre varchar(60),
    in_sector varchar(20),
    in_domicilio varchar(60),
    in_municipio varchar(45),
    in_estado varchar(50),
    in_giro varchar(45),
    in_last_ip varchar(15),
    in_by_user int
)
BEGIN
	declare ip int unsigned default 0;
	set ip = inet_aton(in_last_ip); 
    
    INSERT INTO `cima`.`filtro_empresas_residencia`
	(
		`FER_CVE_EMPRESA`,
		`FER_DEPENDENCIA_RECEPTORA`,
		`FER_SECTOR`,
		`FER_DOMICILIO`,
		`FER_MUNICIPIO`,
		`FER_ESTADO`,
		`FER_GIRO`,
		`FER_LAST_IP`,
		`FER_BY_USER`
	)
	VALUES
	(
		in_cve_empresa,
		in_nombre,
		in_sector,
		in_domicilio,
		in_municipio,
		in_estado,
		in_giro,
		ip,
		in_by_user
	);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_in_grupo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_in_grupo`(
	in_cve_grupo varchar(11),
	in_periodo varchar(20),
	in_plan varchar(18), 
	in_cve_asignatura varchar(15),
	in_cve_docente int,
	in_by_user int,
	in_last_ip varchar(16)
)
BEGIN
declare ip int unsigned default 0;
declare periodo_activo char(1) default 'I';

set ip = inet_aton(in_last_ip); 
select PR_ACTIVO into periodo_activo from periodo where PR_CVE = upper(in_periodo);

if periodo_activo = 'A' then 
	INSERT INTO `cima`.`grupo`
	(
		`GR_CVE_GRUPO`,
		`GR_PERIODO`,
		`GR_CVE_PLAN`,
		`GR_CVE_ASIGNATURA`,
		`GR_CVE_DOCENTE`,
		`GR_BY_USER`,
		`GR_LAST_IP`
	)
	VALUES
	(
		in_cve_grupo,
		in_periodo,
		in_plan, 
		in_cve_asignatura,
		in_cve_docente,
		in_by_user,
		ip
	);
else 
	select "ADVERTENCIA: PERIODO NO EXISTE";
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_in_kardex` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_in_kardex`(
in_CALF_FINAL int,
in_CVE_GRUPO varchar(10) ,
in_CVE_ASIGNATURA varchar(15),
in_CVE_PERIODO varchar(10),
in__CVE_PLAN varchar(15),
in_CVE_DOCENTE int ,
in_NOM_DOCENTE varchar(60),
in_CVE_ALUMNO varchar(10),
in_SEM_APROB varchar(2),
in_ESTATUS varchar(2),
in_TIPO_APROB varchar(1),
in_LAST_IP varchar(15),
un_BY_USER int
)
BEGIN

/* Documenten el proceso */


INSERT INTO `cima2`.`kardex`(
`KA_CALF_FINAL`,
`KA_CVE_GRUPO`,
`KA_CVE_ASIGNATURA`,
`KA_CVE_PERIODO`,
`KA_CVE_PLAN`,
`KA_CVE_DOCENTE`,
`KA_NOM_DOCENTE`,
`KA_CVE_ALUMNO`,
`KA_SEM_APROB`,
`KA_ESTATUS`,
`KA_TIPO_APROB`,
`KA_LAST_IP`,
`KA_BY_USER`)
VALUES
(
in_CALF_FINAL,
in_CVE_GRUPO  ,
in_CVE_ASIGNATURA,
in_CVE_PERIODO,
in__CVE_PLAN,
in_CVE_DOCENTE,
in_NOM_DOCENTE,
in_CVE_ALUMNO,
in_SEM_APROB,
in_ESTATUS,
in_TIPO_APROB,
inet_aton(in_last_ip) ,
un_BY_USER 
);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_in_periodo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_in_periodo`(
	in_cve_periodo varchar(10),
	in_fecha_inicio date,
	in_fecha_fin date,
	in_anio varchar(4),
	in_last_ip varchar(15),
    in_descripcion varchar(45),
    in_estatus varchar(12)
)
BEGIN
declare ip int unsigned default 0;

set ip = inet_aton(in_last_ip); 
INSERT INTO periodo
	(
		`PR_CVE`,
		`PR_FECHA_INICIO`,
		`PR_FECHA_FIN`,
		`PR_ANIO`,
		`PR_LAST_IP`,
		`PR_DESCRIPCION`,
		`PR_ESTATUS`
	)
VALUES
(
		in_cve_periodo,
		in_fecha_inicio,
		in_fecha_fin,
		in_anio,
		ip,
		in_descripcion,
		in_estatus
);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_in_plan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_in_plan`(
	in_cve_plan varchar(18),
	in_nombre varchar(60),
	in_total_materias int,
	in_creditos int,
	in_bloques int,
	in_area varchar(3),
	in_last_ip varchar(16),
	in_by_user int
)
BEGIN
	declare ip int unsigned default 0;
	set ip = inet_aton(in_last_ip); 
	INSERT INTO `cima`.`plan`
	(
		`PL_CVE_PLAN`,
		`PL_NOMBRE`,
		`PL_TOTAL_MATERIAS`,
		`PL_CREDITOS`,
		`PL_BLOQUES`,
		`PL_AREA`,
		`PL_LAST_IP`,
		`PL_BY_USER`
	)
	VALUES
	(
        in_cve_plan,
		in_nombre,
		in_total_materias,
		in_creditos,
		in_bloques,
		in_area,
		ip,
		in_by_user
	);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_listar_ae_area` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_listar_ae_area`(
	in_area varchar(5)
)
BEGIN
SELECT 
	AE_CLAVE CLAVE,
    AE_DESCRIPCION DESCRIPCION,
    AE_TIPO 
FROM 
	ATRIBUTOS_EGRESO
WHERE 1=1
 	AND AE_CLAVE LIKE concat(in_area, '%')
    AND AE_ACTIVO = 'A';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_listar_alumno` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_listar_alumno`(
in_matricula varchar(10)
)
BEGIN
set in_matricula = concat(in_matricula,'%');
	select 
		AL_MATRICULA, 
        AL_NOM_ALUMNO,
        convert (right(AL_MATRICULA, char_length(AL_MATRICULA)-8), unsigned integer) indice
from 
		alumno
where 1=1 
		and AL_MATRICULA like in_matricula
		and AL_ACTIVO='A'
order by indice; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_listar_aporte_cd_asigantura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_listar_aporte_cd_asigantura`(
in_asignatura varchar(10)
)
BEGIN

select  
		right(ae.AE_CLAVE, char_length(ae.AE_CLAVE)-6)  NUM_ATRIBUTO,
		concat('AE',right(ae.AE_CLAVE, char_length(ae.AE_CLAVE)-6),'.- ', ae.AE_CLAVE) ATRIBUTO, 
		ae.AE_DESCRIPCION DESCRIPCION,
        right(cd.CD_CLAVE, char_length(cd.CD_CLAVE)-10)  NUM_CRITERIO,
        concat('CD',right(cd.CD_CLAVE, char_length(cd.CD_CLAVE)-10), '.- ', cd.cd_clave) CRITERIO_DESEMPENIO,
        cd.cd_detalle DESCRIPCION_CRITERIO,
        acd.ACD_NIVEL NIVEL_APORTE
        
	from atributos_egreso ae
    join criterios_desempenio cd on (cd.CD_CVE_ATR_EG=ae.AE_CLAVE)
		and cd.CD_ACTIVO='A'
         left join asignatura_cd acd on (acd.ACD_CVE_CD=cd.CD_CLAVE)
			 and acd.ACD_CVE_ASIGNATURA=in_asignatura
             and ACD_ACTIVO='A'
    where ae.AE_ACTIVO='A'
    order by num_atributo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_listar_asignaturas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_listar_asignaturas`(in_area varchar(3))
BEGIN
DECLARE plan  VARCHAR(18) ;
	SELECT 
    PL_CVE_PLAN
INTO plan FROM
    plan
WHERE
    pl_area = in_area AND PL_ACTIVO = 'A';
SELECT 
	a.AS_CVE_ASIGNATURA CVE_ASIGNATURA,
    a.AS_NOMBRE_ASIGNATURA NOMBRE_ASIGNATURA,
	mc.MC_CVE_PLAN PLAN,
    mc.MC_SEMESTRE SEM,
    a.AS_CREDITOS_HORA_TEORIA HORAS_TEORIA,
    a.AS_CREDITOS_HORA_PRACTICA HORAS_PRACTICA,
    a.AS_TOTAL_HORAS TOTAL_HORAS,
    a.AS_AREA_CONOCIMIENTO AREA_CONOCIMIENTO,
    a.AS_ESPECIALIDAD ESPECIALIDAD
FROM
		malla_curricular mc

INNER JOIN  asignatura a on 1=1
			AND a.AS_CVE_ASIGNATURA = mc.MC_CVE_ASIGNATURA
			AND	a.AS_TIPO=1
            AND a.AS_ACTIVO='A'
				
-- SELECT 
--   AS_CVE_ASIGNATURA CVE_ASIGNATURA,
--    AS_NOMBRE_ASIGNATURA NOMBRE_ASIGNATURA,
--    mc.MC_CVE_PLAN PLAN,
--    mc.MC_SEMESTRE SEM
-- FROM
--    asignatura
--        INNER JOIN
-- 				cima.malla_curricular mc ON 1 = 1 
-- 					AND mc.MC_CVE_PLAN =PLAN

WHERE
    mc.MC_CVE_PLAN = plan
ORDER BY mc.MC_SEMESTRE ASC , AS_NOMBRE_ASIGNATURA ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_listar_atributo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_listar_atributo`(
in_area varchar(6)
)
BEGIN
	set in_area = concat(in_area,'%');
	select 
		AE_CLAVE, 
        AE_DESCRIPCION,
        convert (right(AE_CLAVE, char_length(AE_CLAVE)-6), unsigned integer) indice
from 
		atributos_egreso 
where 1=1 
		and AE_CLAVE like in_area
		and AE_ACTIVO='A'
order by indice; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_listar_carga_alumno` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_listar_carga_alumno`(
	in_cve_periodo varchar(10)
)
BEGIN
	SELECT
		CA_ID id,
		CA_CALF_FINAL final,
		CA_CVE_GRUPO grupo,
		CA_CVE_PERIODO periodo,
		CA_CVE_ALUMNO alumno
	FROM carga_alumno
	WHERE 1=1
		AND carga_alumno.CA_CVE_PERIODO = upper(in_cve_periodo)
		AND carga_alumno.CA_ACTIVO = 'A';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_listar_carga_grupo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_listar_carga_grupo`(
	in_cve_grupo varchar(10),
	in_cve_periodo varchar(10) 
)
BEGIN
SELECT
	CA_ID id,
    CA_CALF_FINAL final,
    CA_CVE_GRUPO grupo,
    CA_CVE_PERIODO periodo,
    CA_CVE_ALUMNO alumno
FROM carga_alumno
WHERE 1=1
    AND carga_alumno.CA_CVE_PERIODO = upper(in_cve_periodo)
    AND carga_alumno.CA_CVE_GRUPO = upper(in_cve_grupo)
    AND carga_alumno.CA_ACTIVO = 'A';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_listar_carga_x_alumno` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_listar_carga_x_alumno`(
	in_cve_periodo varchar(10),
    in_matricula int
)
BEGIN
	SELECT
	CA_ID id,
    CA_CALF_FINAL final,
    CA_CVE_GRUPO grupo,
    CA_CVE_PERIODO periodo,
    CA_CVE_ALUMNO alumno
FROM carga_alumno
WHERE 1=1
    AND carga_alumno.CA_CVE_PERIODO = upper(in_cve_periodo)
    AND carga_alumno.CA_CVE_ALUMNO = in_matricula
    AND carga_alumno.CA_ACTIVO = 'A';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_listar_criterio_desempenio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_listar_criterio_desempenio`(
in_area varchar(6)
)
BEGIN
	set in_area = concat(in_area,'%');
	select 
		CD_CLAVE, 
        CD_DETALLE,
        CD_CVE_ATR_EG,
        convert (right(CD_CLAVE, char_length(CD_CLAVE)-10), unsigned integer) criterio_indice,
        convert (right(CD_CVE_ATR_EG, char_length(CD_CVE_ATR_EG)-6), unsigned integer) atributo_indice
	from 
		criterios_desempenio
	where 1=1 
		and CD_CLAVE like upper(in_area)
		and CD_ACTIVO='A'
        
	order by atributo_indice, 
			 criterio_indice;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_listar_empresas_residencia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_listar_empresas_residencia`()
BEGIN
	SELECT
		FER_CVE_EMPRESA clave,
        FER_DEPENDENCIA_RECEPTORA Dependencia,
        FER_SECTOR Sector,
		FER_DOMICILIO Domicilio,
		FER_MUNICIPIO Municipio,
		FER_ESTADO Estado,
		FER_GIRO Giro
	FROM filtro_empresas_residencia
	WHERE 1=1
		AND filtro_empresas_residencia.FER_ACTIVO = 'A'
	ORDER BY 
		clave asc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_listar_grupo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_listar_grupo`(
in_cve_grupo varchar(10)
)
BEGIN
SELECT
	GR_CVE_GRUPO clave_grupo,
    GR_PERIODO periodo,
    GR_CVE_PLAN plan,
    GR_CVE_ASIGNATURA asignatura,
    GR_CVE_DOCENTE docente
FROM grupo
WHERE 1=1
	AND grupo.GR_CVE_GRUPO = upper(in_cve_grupo)
    AND grupo.GR_ACTIVO = 'A';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_listar_materia_periodo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_listar_materia_periodo`(
	in_periodo varchar(10)
)
BEGIN
	declare pares int default 0;
    set pares = cast(substring(in_periodo, -1) AS signed);
    if pares = 2 then     
		select * from malla_curricular where MOD(MC_SEMESTRE, 2) = 1 order by MC_SEMESTRE asc;
    elseif pares = 1 then
		select * from malla_curricular where MOD(MC_SEMESTRE, 2) = 0 order by MC_SEMESTRE asc;
	else
		select 'No hay materias en verano';
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_lista_alumnos_tutoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_lista_alumnos_tutoria`(IN docente int,IN periodo varchar(15))
BEGIN
set @val='';
select cima.asignaturas.AS_CVE_ASIGNATURA into @val from grupo,asignaturas 
where cima.grupo.GR_CVE_DOCENTE=docente && cima.asignaturas.AS_CVE_ASIGNATURA=cima.grupo.GR_CVE_ASIGNATURA 
&& cima.asignaturas.AS_CVE_ASIGNATURA regexp "^T" && cima.grupo.gr_periodo=periodo;
select 
cima.carga_alumno.CA_CVE_ALUMNO,
cima.alumno.AL_NOM_ALUMNO,
cima.grupo.GR_CVE_GRUPO,
cima.asignaturas.AS_NOMBRE_ASIGNATURA
from alumno,carga_alumno,grupo,asignaturas
where cima.carga_alumno.CA_CVE_ALUMNO=cima.alumno.AL_MATRICULA 
&& cima.grupo.GR_CVE_GRUPO=cima.carga_alumno.CA_CVE_GRUPO 
&& cima.grupo.GR_CVE_ASIGNATURA=cima.asignaturas.AS_CVE_ASIGNATURA 
&& cima.grupo.GR_CVE_ASIGNATURA=@val;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_lista_materia_docente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_lista_materia_docente`(IN claveDocente int, IN periodo varchar(15))
BEGIN
select grupo.gr_cve_grupo,cima.asignaturas.AS_NOMBRE_ASIGNATURA,cima.asignaturas.AS_CVE_ASIGNATURA from grupo,asignaturas 
where cima.grupo.GR_CVE_DOCENTE=claveDocente && cima.asignaturas.AS_CVE_ASIGNATURA=cima.grupo.GR_CVE_ASIGNATURA
&& cima.grupo.gr_periodo=periodo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_list_cd_asignatura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_list_cd_asignatura`(
	in_atributo varchar(20), 
    in_materia Varchar(10)
)
BEGIN
 SELECT 
	CD.CD_CLAVE CD_CLAVE,
    CD.CD_DETALLE DETALLE,
    ACD.ACD_NIVEL NIVEL,
    convert (right(CD_CLAVE, char_length(CD_CLAVE)-10), unsigned integer) criterio_indice
FROM 
	CRITERIOS_DESEMPENIO CD
	LEFT JOIN ASIGNATURA_CD ACD ON 1=1
		AND CD.CD_CLAVE = ACD.ACD_CVE_CD
		AND ACD.ACD_CVE_ASIGNATURA = in_materia
        AND ACD.ACD_ACTIVO = 'A'
 WHERE  1=1
	-- AND CD.CD_CLAVE  Like concat(in_atributo,'%')
    -- La condición previa solo funciona para cuando los atributos de egreso son <10
    AND CD.CD_CVE_ATR_EG  = in_atributo
    and CD_ACTIVO = 'A'
    order by criterio_indice;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_list_cd_atributo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_list_cd_atributo`(
in_atr varchar(15))
BEGIN
	SELECT 
		`CD_CLAVE`  id,
		`CD_DETALLE` detalle
	FROM 
		`criterios_desempenio`
	WHERE 1=1
		AND `CD_ACTIVO`= 'A'
        AND `CD_CVE_ATR_EG`=in_atr;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_list_detalle_cd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_list_detalle_cd`(
in_cve_cd varchar(16)
)
BEGIN
select 
	dcd.DCD_CVE clave,
    dcd.DCD_ITEM pregunta,
    dcd.DCD_AYUDA_CONTEXTUAL ayuda,
    dcd.DCD_TIPO_INDICADOR tipo_indicador,
    dcd.DCD_CVE_CD clave_cd
FROM detalle_criterio_desempenio dcd
where 1=1
	AND dcd.DCD_CVE_CD = upper(in_cve_cd)
    AND dcd.DCD_ACTIVO = 'A';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_list_periodos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_list_periodos`()
BEGIN
	SELECT
		PR_CVE, 
        PR_DESCRIPCION,
		PR_FECHA_INICIO, 
		PR_FECHA_FIN 
	FROM 
		periodo 
    ORDER BY 
		PR_CVE desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_login_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_login_usuario`(
IN usuario varchar(50),
IN contrasena VARCHAR(20),
      OUT valido int,
      OUT tipo char(1)
 )
BEGIN 
      SELECT u.us_id,us_rol INTO valido,tipo
      FROM  usuario u
      WHERE u.us_nombre = usuario && u.us_password = md5(contrasena);  
      SELECT valido, tipo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_modificar_periodo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_modificar_periodo`(IN FECHA_INICIO DATE ,IN FECHA_FIN DATE ,IN DESCRIPCION VARCHAR  (45), IN LAST_IP VARCHAR (16), IN CVE VARCHAR(10) )
BEGIN
DECLARE ip_to_int int unsigned;

SET ip_to_int = inet_aton(LAST_IP);
	UPDATE periodo	SET	
		PR_FECHA_INICIO = FECHA_INICIO,
        PR_FECHA_FIN = FECHA_FIN,
        PR_DESCRIPCION = DESCRIPCION,
        PR_LAST_IP = ip_to_int,
        PR_LAST_UPDATE = current_timestamp()
        
	WHERE 
		PR_CVE = CVE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_nombre_docente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_nombre_docente`(in claveDocente int)
BEGIN
select do_nombre from docente where do_cve_docente=claveDocente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_nombre_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_nombre_usuario`(
	clave int
)
BEGIN
	select DO_NOMBRE 
    AS NOMBRE 
    from docente 
    where 
		DO_CVE_DOCENTE = clave;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_opciones_menu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_opciones_menu`(in categoria int)
BEGIN

select *
from detalle_categoria  DCAT
inner join categorias_menu CM on (DCAT.DCAT_CATEGORIA_MENU = CM.CM_ID)
and CM.CM_ACTIVO = 'A'
inner join opciones_menu OM on (DCAT.DCAT_OPCION_MENU = OM.OM_ID)
and OM.OM_ACTIVO = 'A'
where DCAT.DCAT_CATEGORIA_MENU = categoria
and DCAT.DCAT_ACTIVO = 'A';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_periodo_activo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_periodo_activo`(
	in fecha datetime
)
BEGIN
	SELECT pr_cve 
	FROM periodos 
	WHERE 
		pr_fecha_inicio<=fecha 
		and pr_fecha_fin>=fecha 
		and PR_STATUS=-1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_proyeccion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_proyeccion`(criterio varchar(15), equipo int)
BEGIN
	select A.EVG_EVALUACION, B.DGO_CVE_CRITERIO from eval_go A
 join  detalle_guia_observacion B
 on B.DGO_CVE_PREGUNTA = A.EVG_PREGUNTA
 where
	B.DGO_CVE_CRITERIO like concat('%',criterio,'%')
    and A.EVG_EQUIPO=equipo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_proyecto_integrador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_proyecto_integrador`()
BEGIN
	select 
		go_pi.GP_PI, B.PI_PROYECTO as proyecto, 
		B.PI_EQUIPO as equipo, 
		B.PI_CVE as cveequipo, 
		B.PI_SEMESTRE as semestre, 
		B.PI_GRUPO as grupo, 
		B.PI_STATUS as status 
	from 
		go_pi
	join 
		proyecto_integrador B
	on
		go_pi.GP_PI = B.PI_CVE
	group by 
		go_pi.GP_PI
	order by 
		PI_SEMESTRE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_select_periodo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_select_periodo`(in in_clave varchar(7))
BEGIN

SELECT
	PR_CVE AS CLAVE_PERIODO,
    PR_DESCRIPCION AS DESCRIPCION_PERIODO,
    PR_FECHA_INICIO AS FECHA_INICIO_PERIODO,
    PR_FECHA_FIN AS FECHA_FIN_PERIODO,
    PR_ESTATUS AS ESTATUS
FROM `cima`.`periodo` WHERE PR_CVE=in_clave;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_select_periodos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_select_periodos`()
BEGIN

SELECT
	PR_CVE AS CLAVE_PERIODO,
    PR_DESCRIPCION AS DESCRIPCION_PERIODO,
    PR_FECHA_INICIO AS FECHA_INICIO_PERIODO,
    PR_FECHA_FIN AS FECHA_FIN_PERIODO,
    PR_ESTATUS AS ESTATUS
FROM `cima`.`periodo` WHERE PR_ACTIVO=1 LIMIT 10;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tipo_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tipo_usuario`(IN nombre varchar(50),
OUT tipo int)
BEGIN
	 select us_rol into tipo from usuario u where u.us_nombre=nombre
     and u.US_ACTIVO= 'A';
     select tipo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ultimos_periodos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ultimos_periodos`(in anio int)
BEGIN
select * from periodos where pr_anio = anio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_up_alumno` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_up_alumno`(
	in_matricula varchar(10),
	in_nom_alumno varchar(100),
	in_plan varchar(45),
	in_cambios varchar(45),
	in_correo varchar(45),
	in_semestre varchar(2),
	in_cdtos_semestre int,
	in_especialidad varchar(50),
	in_fecha_inicio datetime,
	in_cve_tutor varchar(45),
	in_dom varchar (60),
	in_telcasa varchar(12),
	in_telcel varchar(10),
	in_sexo varchar(2),
	in_fech_nac date,
	in_lugar_nac varchar(60),
	in_e_civil varchar(10),
	in_hijos varchar(10),
	in_last_ip varchar(16)
)
BEGIN

UPDATE `cima`.`alumno`
SET
	`AL_NOM_ALUMNO` = nom_alumno,
    `AL_PLAN`= in_plan,
    `AL_CAMBIOS` = in_cambios,
    `AL_CORREO` = in_correo,
    `AL_SEMESTRE` = in_semestre,
    `AL_CDTOS_SEMESTRE` = in_cdtos_semestre,
    `AL_ESPECIALIDAD`= in_especialidad,
    `AL_FECHA_INICIO`= in_fecha_inicio,
    `AL_CVE_TUTOR`= in_cve_tutor,
    `AL_DOM` = in_dom,
    `AL_TELCASA` = in_telcasa,
    `AL_TELCEL` = in_telcel,
    `AL_SEXO` = in_sexo,
    `AL_FECH_NAC`=in_fech_nac,
    `AL_LUGAR_NAC`= in_lugar_nac,
    `AL_E_CIVIL` = in_e_civil,
    `AL_HIJOS` = in_hijos,
    `AL_LAST_IP` = inet_aton(last_ip)
WHERE 
	AL_MATRICULA = in_matricula;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_up_asignatura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_up_asignatura`(
cve_asignatuta varchar(15),
nombre_asignatura varchar(100),
creditos_hora_teorica varchar(2),
creditos_hora_practica varchar(2),
total_horas varchar(4),
creditos int,
area_conocimiento varchar(50),
dependencias varchar(15),
tipo tinyint,
especialidad varchar(18),
last_ip varchar(16),
by_user int
)
BEGIN
	-- DECLARE ip int unsigned default 0;
	-- SET ip = inet_aton(last_ip);
UPDATE `cima`.`asignatura`
SET
	`AS_NOMBRE_ASIGNATURA` = nombre_asignatura,
    `AS_CREDITOS_HORA_TEORIA` = creditos_hora_teorica,
    `AS_CREDITOS_HORA_PRACTICA` = creditos_hora_practica,
    `AS_TOTAL_HORAS` = total_horas,
    `AS_CREDITOS` = creditos,
    `AS_AREA_CONOCIMIENTO` = area_conocimiento,
    `AS_DEPENDENCIAS` = dependencias,
    `AS_TIPO` = tipo,
    `AS_ESPECIALIDAD` = especialidad,
    `AS_LAS_IP` = inet_aton(last_ip),
    `AS_BY_USER` = by_user
WHERE
	`AS_CVE_ASIGNATURA` = cve_asignatuta;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_up_atributo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_up_atributo`(
descripcion text, 
id varchar(20))
BEGIN
	UPDATE `cima`.`atributos_egreso` 
    SET 
		`AE_DESCRIPCION` = descripcion 
	WHERE 
		(`AE_CLAVE` = id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_up_criterio_desempenio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_up_criterio_desempenio`(
in_clave varchar(15), 
in_detalle text,
in_ip varchar(15),
in_user int
)
BEGIN

	UPDATE `cima`.`criterios_desempenio`

	SET
		`CD_DETALLE` = in_detalle,
		`CD_FEC_UPDATE` = current_timestamp(),
		`CD_LAST_IP` = inet_aton(in_ip),
		`CD_LAST_USER` = in_user

	WHERE `CD_CLAVE` = in_clave;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_up_empresas_residencia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_up_empresas_residencia`(
	in_cve_empresa varchar(20),
    in_nombre varchar(60),
    in_sector varchar(20),
    in_domicilio varchar(60),
    in_municipio varchar(45),
    in_estado varchar(50),
    in_giro varchar(45),
    in_last_ip varchar(15),
    in_by_user int
)
BEGIN
		UPDATE `cima`.`filtro_empresas_residencia`
		SET
			`FER_DEPENDENCIA_RECEPTORA` = in_nombre,
			`FER_SECTOR` = in_sector,
			`FER_DOMICILIO` = in_domicilio,
			`FER_MUNICIPIO` = in_municipio,
			`FER_ESTADO` = in_estado,
			`FER_GIRO` = in_giro,
			`FER_LAST_IP` = in_last_ip,
			`FER_BY_USER` = in_by_user
		WHERE
			`FER_CVE_EMPRESA` = in_cve_empresa;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_up_grupo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_up_grupo`(
in_cve_grupo varchar(10),
in_periodo varchar(20),
in_plan varchar(18), 
in_cve_asignatura varchar(15),
in_cve_docente int,
in_by_user int,
in_last_ip int
)
BEGIN
UPDATE grupo
SET
	`GR_CVE_PLAN` = in_plan,
    `GR_CVE_ASIGNATURA` = in_cve_asignatura,
    `GR_CVE_DOCENTE` = in_cve_docente,
    `GR_BY_USER` = in_by_user,
    `GR_LAST_IP` = inet_aton(in_last_ip)
WHERE
	`GR_CVE_GRUPO` = in_cve_grupo
    and `GR_PERIODO` = in_periodo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_up_periodo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_up_periodo`(
	in_cve_periodo varchar(10),
    in_fecha_inicio date,
    in_fecha_fin date,
    in_anio varchar(4),
    in_last_ip varchar(15),
    in_descripcion varchar(45),
    in_estatus varchar(12),
    in_by_user int
)
BEGIN
	UPDATE `cima`.`plan`
	SET
		`PR_FECHA_INICIO` = in_fecha_inicio,
		`PR_FECHA_FIN` = in_fecha_fin,
		`PR_ANIO` = in_anio,
		`PR_LAST_IP` = inet_aton(in_last_ip),
		`PR_DESCRIPCION` = in_descripcion,
		`PR_ESTATUS` = in_estatus,
        `PR_BY_USER` = in_by_user
	WHERE
		`PR_CVE` = in_cve_periodo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_up_plan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_up_plan`(
cve_plan varchar(18),
nombre varchar(60),
total_materias int,
creditos int,
bloques int,
area varchar(3),
last_ip varchar(16),
by_user int
)
BEGIN
UPDATE `cima`.`plan`
SET
	`PL_NOMBRE` = nombre,
    `PL_TOTAL_MATERIAS` = total_materias,
    `PL_CREDITOS` = creditos,
    `PL_BLOQUES` = bloques,
    `PL_AREA` = area,
    `PL_LAST_IP` = inet_aton(last_ip),
    `PL_BY_USER` = by_user
WHERE
	`PL_CVE_PLAN` = cve_plan;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_up_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_up_usuario`(
	user_pass varchar(80), 
	user_rol char(1), 
	user_area int, 
	user_mail varchar(60), 
	usuario int
)
BEGIN
	DECLARE ip_to_int int unsigned;
	SELECT INET_ATON(in_ip_text) INTO ip_to_int;

	UPDATE `cima`.`usuario`
	SET
		`US_PASSWORD`=user_pass,
		`US_ROL`= user_rol,
		`US_AREA`= user_area,
		`US_EMAIL`= user_mail,
		`US_LAST_IP`= ip_to_int
	WHERE
		`US_ID`= usuario;	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-13 17:39:50
