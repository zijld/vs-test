# ************************************************************
# Sequel Ace SQL dump
# Version 20016
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.6.4-MariaDB)
# Database: vz_db
# Generation Time: 2021-12-15 20:51:20 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table people
# ------------------------------------------------------------

DROP TABLE IF EXISTS `people`;

CREATE TABLE `people` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `height` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hair_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skin_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eye_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `planet_external_id` bigint(20) NOT NULL,
  `external_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;

INSERT INTO `people` (`id`, `height`, `mass`, `hair_color`, `skin_color`, `eye_color`, `birth_year`, `gender`, `name`, `planet_external_id`, `external_id`, `created_at`, `updated_at`)
VALUES
	(1,'172','77','blond','fair','blue','19BBY','male','Luke Skywalker',1,1,'2021-12-15 20:21:23','2021-12-15 20:21:23'),
	(2,'167','75','n/a','gold','yellow','112BBY','n/a','C-3PO',1,2,'2021-12-15 20:21:32','2021-12-15 20:21:32'),
	(3,'96','32','n/a','white, blue','red','33BBY','n/a','R2-D2',8,3,'2021-12-15 20:21:41','2021-12-15 20:21:41'),
	(4,'202','136','none','white','yellow','41.9BBY','male','Darth Vader',1,4,'2021-12-15 20:21:51','2021-12-15 20:21:51'),
	(5,'150','49','brown','light','brown','19BBY','female','Leia Organa',2,5,'2021-12-15 20:22:00','2021-12-15 20:22:00'),
	(6,'178','120','brown, grey','light','blue','52BBY','male','Owen Lars',1,6,'2021-12-15 20:22:09','2021-12-15 20:22:09'),
	(7,'165','75','brown','light','blue','47BBY','female','Beru Whitesun lars',1,7,'2021-12-15 20:22:19','2021-12-15 20:22:19'),
	(8,'97','32','n/a','white, red','red','unknown','n/a','R5-D4',1,8,'2021-12-15 20:22:28','2021-12-15 20:22:28'),
	(9,'183','84','black','light','brown','24BBY','male','Biggs Darklighter',1,9,'2021-12-15 20:22:38','2021-12-15 20:22:38'),
	(10,'182','77','auburn, white','fair','blue-gray','57BBY','male','Obi-Wan Kenobi',20,10,'2021-12-15 20:22:48','2021-12-15 20:22:48'),
	(11,'188','84','blond','fair','blue','41.9BBY','male','Anakin Skywalker',1,11,'2021-12-15 20:23:08','2021-12-15 20:23:08'),
	(12,'180','unknown','auburn, grey','fair','blue','64BBY','male','Wilhuff Tarkin',21,12,'2021-12-15 20:43:52','2021-12-15 20:43:52'),
	(13,'228','112','brown','unknown','blue','200BBY','male','Chewbacca',14,13,'2021-12-15 20:43:53','2021-12-15 20:43:53'),
	(14,'180','80','brown','fair','brown','29BBY','male','Han Solo',22,14,'2021-12-15 20:43:54','2021-12-15 20:43:54'),
	(15,'173','74','n/a','green','black','44BBY','male','Greedo',23,15,'2021-12-15 20:43:56','2021-12-15 20:43:56'),
	(16,'175','1,358','n/a','green-tan, brown','orange','600BBY','hermaphrodite','Jabba Desilijic Tiure',24,16,'2021-12-15 20:43:57','2021-12-15 20:43:57'),
	(17,'170','77','brown','fair','hazel','21BBY','male','Wedge Antilles',22,18,'2021-12-15 20:43:58','2021-12-15 20:43:58'),
	(18,'180','110','brown','fair','blue','unknown','male','Jek Tono Porkins',26,19,'2021-12-15 20:43:59','2021-12-15 20:43:59'),
	(19,'66','17','white','green','brown','896BBY','male','Yoda',28,20,'2021-12-15 20:44:01','2021-12-15 20:44:01'),
	(20,'170','75','grey','pale','yellow','82BBY','male','Palpatine',8,21,'2021-12-15 20:44:03','2021-12-15 20:44:03'),
	(21,'183','78.2','black','fair','brown','31.5BBY','male','Boba Fett',10,22,'2021-12-15 20:44:06','2021-12-15 20:44:06'),
	(22,'200','140','none','metal','red','15BBY','none','IG-88',28,23,'2021-12-15 20:44:08','2021-12-15 20:44:08'),
	(23,'190','113','none','green','red','53BBY','male','Bossk',29,24,'2021-12-15 20:44:10','2021-12-15 20:44:10'),
	(24,'177','79','black','dark','brown','31BBY','male','Lando Calrissian',30,25,'2021-12-15 20:44:12','2021-12-15 20:44:12'),
	(25,'175','79','none','light','blue','37BBY','male','Lobot',6,26,'2021-12-15 20:44:14','2021-12-15 20:44:14'),
	(26,'180','83','none','brown mottle','orange','41BBY','male','Ackbar',31,27,'2021-12-15 20:44:17','2021-12-15 20:44:17'),
	(27,'150','unknown','auburn','fair','blue','48BBY','female','Mon Mothma',32,28,'2021-12-15 20:44:19','2021-12-15 20:44:19'),
	(28,'unknown','unknown','brown','fair','brown','unknown','male','Arvel Crynyd',28,29,'2021-12-15 20:44:22','2021-12-15 20:44:22'),
	(29,'88','20','brown','brown','brown','8BBY','male','Wicket Systri Warrick',7,30,'2021-12-15 20:44:24','2021-12-15 20:44:24'),
	(30,'160','68','none','grey','black','unknown','male','Nien Nunb',33,31,'2021-12-15 20:44:27','2021-12-15 20:44:27'),
	(31,'193','89','brown','fair','blue','92BBY','male','Qui-Gon Jinn',28,32,'2021-12-15 20:44:33','2021-12-15 20:44:33'),
	(32,'191','90','none','mottled green','red','unknown','male','Nute Gunray',18,33,'2021-12-15 20:44:36','2021-12-15 20:44:36'),
	(33,'170','unknown','blond','fair','blue','91BBY','male','Finis Valorum',9,34,'2021-12-15 20:44:39','2021-12-15 20:44:39'),
	(34,'185','45','brown','light','brown','46BBY','female','Padmé Amidala',8,35,'2021-12-15 20:44:42','2021-12-15 20:44:42'),
	(35,'196','66','none','orange','orange','52BBY','male','Jar Jar Binks',8,36,'2021-12-15 20:44:45','2021-12-15 20:44:45'),
	(36,'224','82','none','grey','orange','unknown','male','Roos Tarpals',8,37,'2021-12-15 20:44:49','2021-12-15 20:44:49'),
	(37,'206','unknown','none','green','orange','unknown','male','Rugor Nass',8,38,'2021-12-15 20:44:52','2021-12-15 20:44:52'),
	(38,'183','unknown','brown','fair','blue','unknown','male','Ric Olié',8,39,'2021-12-15 20:44:56','2021-12-15 20:44:56'),
	(39,'137','unknown','black','blue, grey','yellow','unknown','male','Watto',34,40,'2021-12-15 20:45:00','2021-12-15 20:45:00'),
	(40,'112','40','none','grey, red','orange','unknown','male','Sebulba',35,41,'2021-12-15 20:45:03','2021-12-15 20:45:03'),
	(41,'183','unknown','black','dark','brown','62BBY','male','Quarsh Panaka',8,42,'2021-12-15 20:45:11','2021-12-15 20:45:11'),
	(42,'163','unknown','black','fair','brown','72BBY','female','Shmi Skywalker',1,43,'2021-12-15 20:45:16','2021-12-15 20:45:16'),
	(43,'175','80','none','red','yellow','54BBY','male','Darth Maul',36,44,'2021-12-15 20:45:20','2021-12-15 20:45:20'),
	(44,'180','unknown','none','pale','pink','unknown','male','Bib Fortuna',37,45,'2021-12-15 20:45:24','2021-12-15 20:45:24'),
	(45,'178','55','none','blue','hazel','48BBY','female','Ayla Secura',37,46,'2021-12-15 20:45:29','2021-12-15 20:45:29'),
	(46,'79','15','none','grey, blue','unknown','unknown','male','Ratts Tyerel',38,47,'2021-12-15 20:45:33','2021-12-15 20:45:33'),
	(47,'94','45','none','blue, grey','yellow','unknown','male','Dud Bolt',39,48,'2021-12-15 20:45:38','2021-12-15 20:45:38'),
	(48,'122','unknown','none','white, blue','black','unknown','male','Gasgano',40,49,'2021-12-15 20:45:42','2021-12-15 20:45:42'),
	(49,'163','65','none','grey, green, yellow','orange','unknown','male','Ben Quadinaros',41,50,'2021-12-15 20:45:47','2021-12-15 20:45:47'),
	(50,'188','84','none','dark','brown','72BBY','male','Mace Windu',42,51,'2021-12-15 20:45:52','2021-12-15 20:45:52'),
	(51,'198','82','white','pale','yellow','92BBY','male','Ki-Adi-Mundi',43,52,'2021-12-15 20:46:02','2021-12-15 20:46:02'),
	(52,'196','87','none','green','black','unknown','male','Kit Fisto',44,53,'2021-12-15 20:46:07','2021-12-15 20:46:07'),
	(53,'171','unknown','black','brown','brown','unknown','male','Eeth Koth',45,54,'2021-12-15 20:46:13','2021-12-15 20:46:13'),
	(54,'184','50','none','dark','blue','unknown','female','Adi Gallia',9,55,'2021-12-15 20:46:18','2021-12-15 20:46:18'),
	(55,'188','unknown','none','pale','orange','unknown','male','Saesee Tiin',47,56,'2021-12-15 20:46:24','2021-12-15 20:46:24'),
	(56,'264','unknown','none','white','yellow','unknown','male','Yarael Poof',48,57,'2021-12-15 20:46:29','2021-12-15 20:46:29'),
	(57,'188','80','none','orange','black','22BBY','male','Plo Koon',49,58,'2021-12-15 20:46:35','2021-12-15 20:46:35'),
	(58,'196','unknown','none','blue','blue','unknown','male','Mas Amedda',50,59,'2021-12-15 20:46:41','2021-12-15 20:46:41'),
	(59,'185','85','black','dark','brown','unknown','male','Gregar Typho',8,60,'2021-12-15 20:46:47','2021-12-15 20:46:47'),
	(60,'157','unknown','brown','light','brown','unknown','female','Cordé',8,61,'2021-12-15 20:46:53','2021-12-15 20:46:53'),
	(61,'183','unknown','brown','fair','blue','82BBY','male','Cliegg Lars',1,62,'2021-12-15 20:47:05','2021-12-15 20:47:05'),
	(62,'183','80','none','green','yellow','unknown','male','Poggle the Lesser',11,63,'2021-12-15 20:47:12','2021-12-15 20:47:12'),
	(63,'170','56.2','black','yellow','blue','58BBY','female','Luminara Unduli',51,64,'2021-12-15 20:47:18','2021-12-15 20:47:18'),
	(64,'166','50','black','yellow','blue','40BBY','female','Barriss Offee',51,65,'2021-12-15 20:47:24','2021-12-15 20:47:24'),
	(65,'165','unknown','brown','light','brown','unknown','female','Dormé',8,66,'2021-12-15 20:47:31','2021-12-15 20:47:31'),
	(66,'193','80','white','fair','brown','102BBY','male','Dooku',52,67,'2021-12-15 20:47:38','2021-12-15 20:47:38'),
	(67,'191','unknown','black','tan','brown','67BBY','male','Bail Prestor Organa',2,68,'2021-12-15 20:47:45','2021-12-15 20:47:45'),
	(68,'183','79','black','tan','brown','66BBY','male','Jango Fett',53,69,'2021-12-15 20:47:52','2021-12-15 20:47:52'),
	(69,'168','55','blonde','fair, green, yellow','yellow','unknown','female','Zam Wesell',54,70,'2021-12-15 20:47:59','2021-12-15 20:47:59'),
	(70,'198','102','none','brown','yellow','unknown','male','Dexter Jettster',55,71,'2021-12-15 20:48:06','2021-12-15 20:48:06'),
	(71,'229','88','none','grey','black','unknown','male','Lama Su',10,72,'2021-12-15 20:48:20','2021-12-15 20:48:20');

/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table planets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `planets`;

CREATE TABLE `planets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rotation_period` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orbital_period` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gravity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `population` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `climate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terrain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surface_water` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `planets` WRITE;
/*!40000 ALTER TABLE `planets` DISABLE KEYS */;

INSERT INTO `planets` (`id`, `name`, `diameter`, `rotation_period`, `orbital_period`, `gravity`, `population`, `climate`, `terrain`, `surface_water`, `external_id`, `created_at`, `updated_at`)
VALUES
	(1,'Tatooine','10465','23','304','1 standard','200000','arid','desert','1',1,'2021-12-15 20:15:09','2021-12-15 20:15:09'),
	(2,'Alderaan','12500','24','364','1 standard','2000000000','temperate','grasslands, mountains','40',2,'2021-12-15 20:15:11','2021-12-15 20:15:11'),
	(3,'Yavin IV','10200','24','4818','1 standard','1000','temperate, tropical','jungle, rainforests','8',3,'2021-12-15 20:15:14','2021-12-15 20:15:14'),
	(4,'Hoth','7200','23','549','1.1 standard','unknown','frozen','tundra, ice caves, mountain ranges','100',4,'2021-12-15 20:15:16','2021-12-15 20:15:16'),
	(5,'Dagobah','8900','23','341','N/A','unknown','murky','swamp, jungles','8',5,'2021-12-15 20:15:19','2021-12-15 20:15:19'),
	(6,'Bespin','118000','12','5110','1.5 (surface), 1 standard (Cloud City)','6000000','temperate','gas giant','0',6,'2021-12-15 20:15:22','2021-12-15 20:15:22'),
	(7,'Endor','4900','18','402','0.85 standard','30000000','temperate','forests, mountains, lakes','8',7,'2021-12-15 20:15:25','2021-12-15 20:15:25'),
	(8,'Naboo','12120','26','312','1 standard','4500000000','temperate','grassy hills, swamps, forests, mountains','12',8,'2021-12-15 20:15:28','2021-12-15 20:15:28'),
	(9,'Coruscant','12240','24','368','1 standard','1000000000000','temperate','cityscape, mountains','unknown',9,'2021-12-15 20:15:31','2021-12-15 20:15:31'),
	(10,'Kamino','19720','27','463','1 standard','1000000000','temperate','ocean','100',10,'2021-12-15 20:15:34','2021-12-15 20:15:34'),
	(11,'Geonosis','11370','30','256','0.9 standard','100000000000','temperate, arid','rock, desert, mountain, barren','5',11,'2021-12-15 20:15:41','2021-12-15 20:15:41'),
	(12,'Utapau','12900','27','351','1 standard','95000000','temperate, arid, windy','scrublands, savanna, canyons, sinkholes','0.9',12,'2021-12-15 20:15:44','2021-12-15 20:15:44'),
	(13,'Mustafar','4200','36','412','1 standard','20000','hot','volcanoes, lava rivers, mountains, caves','0',13,'2021-12-15 20:15:48','2021-12-15 20:15:48'),
	(14,'Kashyyyk','12765','26','381','1 standard','45000000','tropical','jungle, forests, lakes, rivers','60',14,'2021-12-15 20:15:52','2021-12-15 20:15:52'),
	(15,'Polis Massa','0','24','590','0.56 standard','1000000','artificial temperate','airless asteroid','0',15,'2021-12-15 20:15:55','2021-12-15 20:15:55'),
	(16,'Mygeeto','10088','12','167','1 standard','19000000','frigid','glaciers, mountains, ice canyons','unknown',16,'2021-12-15 20:15:59','2021-12-15 20:15:59'),
	(17,'Felucia','9100','34','231','0.75 standard','8500000','hot, humid','fungus forests','unknown',17,'2021-12-15 20:16:03','2021-12-15 20:16:03'),
	(18,'Cato Neimoidia','0','25','278','1 standard','10000000','temperate, moist','mountains, fields, forests, rock arches','unknown',18,'2021-12-15 20:16:07','2021-12-15 20:16:07'),
	(19,'Saleucami','14920','26','392','unknown','1400000000','hot','caves, desert, mountains, volcanoes','unknown',19,'2021-12-15 20:16:12','2021-12-15 20:16:12'),
	(20,'Stewjon','0','unknown','unknown','1 standard','unknown','temperate','grass','unknown',20,'2021-12-15 20:16:16','2021-12-15 20:16:16'),
	(21,'Eriadu','13490','24','360','1 standard','22000000000','polluted','cityscape','unknown',21,'2021-12-15 20:16:25','2021-12-15 20:16:25'),
	(22,'Corellia','11000','25','329','1 standard','3000000000','temperate','plains, urban, hills, forests','70',22,'2021-12-15 20:16:30','2021-12-15 20:16:30'),
	(23,'Rodia','7549','29','305','1 standard','1300000000','hot','jungles, oceans, urban, swamps','60',23,'2021-12-15 20:16:34','2021-12-15 20:16:34'),
	(24,'Nal Hutta','12150','87','413','1 standard','7000000000','temperate','urban, oceans, swamps, bogs','unknown',24,'2021-12-15 20:16:39','2021-12-15 20:16:39'),
	(25,'Dantooine','9830','25','378','1 standard','1000','temperate','oceans, savannas, mountains, grasslands','unknown',25,'2021-12-15 20:16:44','2021-12-15 20:16:44'),
	(26,'Bestine IV','6400','26','680','unknown','62000000','temperate','rocky islands, oceans','98',26,'2021-12-15 20:16:49','2021-12-15 20:16:49'),
	(27,'Ord Mantell','14050','26','334','1 standard','4000000000','temperate','plains, seas, mesas','10',27,'2021-12-15 20:16:54','2021-12-15 20:16:54'),
	(28,'unknown','0','0','0','unknown','unknown','unknown','unknown','unknown',28,'2021-12-15 20:17:00','2021-12-15 20:17:00'),
	(29,'Trandosha','0','25','371','0.62 standard','42000000','arid','mountains, seas, grasslands, deserts','unknown',29,'2021-12-15 20:17:05','2021-12-15 20:17:05'),
	(30,'Socorro','0','20','326','1 standard','300000000','arid','deserts, mountains','unknown',30,'2021-12-15 20:17:10','2021-12-15 20:17:10'),
	(31,'Mon Cala','11030','21','398','1','27000000000','temperate','oceans, reefs, islands','100',31,'2021-12-15 20:17:21','2021-12-15 20:17:21'),
	(32,'Chandrila','13500','20','368','1','1200000000','temperate','plains, forests','40',32,'2021-12-15 20:17:27','2021-12-15 20:17:27'),
	(33,'Sullust','12780','20','263','1','18500000000','superheated','mountains, volcanoes, rocky deserts','5',33,'2021-12-15 20:17:33','2021-12-15 20:17:33'),
	(34,'Toydaria','7900','21','184','1','11000000','temperate','swamps, lakes','unknown',34,'2021-12-15 20:17:39','2021-12-15 20:17:39'),
	(35,'Malastare','18880','26','201','1.56','2000000000','arid, temperate, tropical','swamps, deserts, jungles, mountains','unknown',35,'2021-12-15 20:17:45','2021-12-15 20:17:45'),
	(36,'Dathomir','10480','24','491','0.9','5200','temperate','forests, deserts, savannas','unknown',36,'2021-12-15 20:17:51','2021-12-15 20:17:51'),
	(37,'Ryloth','10600','30','305','1','1500000000','temperate, arid, subartic','mountains, valleys, deserts, tundra','5',37,'2021-12-15 20:17:57','2021-12-15 20:17:57'),
	(38,'Aleen Minor','unknown','unknown','unknown','unknown','unknown','unknown','unknown','unknown',38,'2021-12-15 20:18:04','2021-12-15 20:18:04'),
	(39,'Vulpter','14900','22','391','1','421000000','temperate, artic','urban, barren','unknown',39,'2021-12-15 20:18:10','2021-12-15 20:18:10'),
	(40,'Troiken','unknown','unknown','unknown','unknown','unknown','unknown','desert, tundra, rainforests, mountains','unknown',40,'2021-12-15 20:18:16','2021-12-15 20:18:16'),
	(41,'Tund','12190','48','1770','unknown','0','unknown','barren, ash','unknown',41,'2021-12-15 20:18:30','2021-12-15 20:18:30'),
	(42,'Haruun Kal','10120','25','383','0.98','705300','temperate','toxic cloudsea, plateaus, volcanoes','unknown',42,'2021-12-15 20:18:37','2021-12-15 20:18:37'),
	(43,'Cerea','unknown','27','386','1','450000000','temperate','verdant','20',43,'2021-12-15 20:18:44','2021-12-15 20:18:44'),
	(44,'Glee Anselm','15600','33','206','1','500000000','tropical, temperate','lakes, islands, swamps, seas','80',44,'2021-12-15 20:18:51','2021-12-15 20:18:51'),
	(45,'Iridonia','unknown','29','413','unknown','unknown','unknown','rocky canyons, acid pools','unknown',45,'2021-12-15 20:18:58','2021-12-15 20:18:58'),
	(46,'Tholoth','unknown','unknown','unknown','unknown','unknown','unknown','unknown','unknown',46,'2021-12-15 20:19:05','2021-12-15 20:19:05'),
	(47,'Iktotch','unknown','22','481','1','unknown','arid, rocky, windy','rocky','unknown',47,'2021-12-15 20:19:12','2021-12-15 20:19:12'),
	(48,'Quermia','unknown','unknown','unknown','unknown','unknown','unknown','unknown','unknown',48,'2021-12-15 20:19:20','2021-12-15 20:19:20'),
	(49,'Dorin','13400','22','409','1','unknown','temperate','unknown','unknown',49,'2021-12-15 20:19:27','2021-12-15 20:19:27'),
	(50,'Champala','unknown','27','318','1','3500000000','temperate','oceans, rainforests, plateaus','unknown',50,'2021-12-15 20:19:35','2021-12-15 20:19:35'),
	(51,'Mirial','unknown','unknown','unknown','unknown','unknown','unknown','deserts','unknown',51,'2021-12-15 20:19:50','2021-12-15 20:19:50'),
	(52,'Serenno','unknown','unknown','unknown','unknown','unknown','unknown','rainforests, rivers, mountains','unknown',52,'2021-12-15 20:19:58','2021-12-15 20:19:58'),
	(53,'Concord Dawn','unknown','unknown','unknown','unknown','unknown','unknown','jungles, forests, deserts','unknown',53,'2021-12-15 20:20:06','2021-12-15 20:20:06'),
	(54,'Zolan','unknown','unknown','unknown','unknown','unknown','unknown','unknown','unknown',54,'2021-12-15 20:20:14','2021-12-15 20:20:14'),
	(55,'Ojom','unknown','unknown','unknown','unknown','500000000','frigid','oceans, glaciers','100',55,'2021-12-15 20:20:23','2021-12-15 20:20:23'),
	(56,'Skako','unknown','27','384','1','500000000000','temperate','urban, vines','unknown',56,'2021-12-15 20:20:31','2021-12-15 20:20:31'),
	(57,'Muunilinst','13800','28','412','1','5000000000','temperate','plains, forests, hills, mountains','25',57,'2021-12-15 20:20:39','2021-12-15 20:20:39'),
	(58,'Shili','unknown','unknown','unknown','1','unknown','temperate','cities, savannahs, seas, plains','unknown',58,'2021-12-15 20:20:48','2021-12-15 20:20:48'),
	(59,'Kalee','13850','23','378','1','4000000000','arid, temperate, tropical','rainforests, cliffs, canyons, seas','unknown',59,'2021-12-15 20:20:57','2021-12-15 20:20:57'),
	(60,'Umbara','unknown','unknown','unknown','unknown','unknown','unknown','unknown','unknown',60,'2021-12-15 20:21:05','2021-12-15 20:21:05');

/*!40000 ALTER TABLE `planets` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
