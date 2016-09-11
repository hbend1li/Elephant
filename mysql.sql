-- --------------------------------------------------------
-- Hôte :                        127.0.0.1
-- Version du serveur:           10.1.14-MariaDB - mariadb.org binary distribution
-- SE du serveur:                Win32
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Export de la structure de la base pour elephant
CREATE DATABASE IF NOT EXISTS `elephant` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `elephant`;


-- Export de la structure de table elephant. logging
CREATE TABLE IF NOT EXISTS `logging` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(15) DEFAULT NULL,
  `username` varchar(200) NOT NULL,
  `msg` text NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=latin1;

-- Export de données de la table elephant.logging : ~151 rows (environ)
/*!40000 ALTER TABLE `logging` DISABLE KEYS */;
/*!40000 ALTER TABLE `logging` ENABLE KEYS */;


-- Export de la structure de table elephant. matiere
CREATE TABLE IF NOT EXISTS `matiere` (
  `matiere` varchar(200) NOT NULL,
  `couleur` varchar(7) DEFAULT '#000000',
  `img` varchar(20) DEFAULT 'def'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Export de données de la table elephant.matiere : ~16 rows (environ)
/*!40000 ALTER TABLE `matiere` DISABLE KEYS */;
REPLACE INTO `matiere` (`matiere`, `couleur`, `img`) VALUES
	('اللغة العربية', '#000000', 'ara'),
	('إعلام الآلي', '#00000F', 'inf'),
	('الجغرافيا', '#0000F0', 'geo'),
	('التاريخ', '#000F00', 'his'),
	('الرياضيات', '#00F000', 'mat'),
	('الفيزياء', '#0F0000', 'phy'),
	('اللغة الفرنسية', '#F00000', 'frn'),
	('اللغة الحية', '#0000FF', 'eng'),
	('الكيمياء', '#00FF00', 'def'),
	('الفلسفة', '#FF0000', 'phi'),
	('العلوم الطبيعية', '#000f0f', 'def'),
	('تسير وإقتصاد', '#00f0f0', 'def'),
	('محاسبة عامة', '#0f0f00', 'def'),
	('محاسبة تحليلية', '#f0f000', 'def'),
	('اللغة الإنجليزية', '#00f00f', 'eng'),
	('ثقافة عامة', '#000000', 'def');
/*!40000 ALTER TABLE `matiere` ENABLE KEYS */;


-- Export de la structure de table elephant. mostawdae
CREATE TABLE IF NOT EXISTS `mostawdae` (
  `exo_id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) NOT NULL,
  `niveau` int(11) NOT NULL,
  `dev` varchar(200) DEFAULT NULL,
  `mat` varchar(100) NOT NULL,
  `langue` varchar(2) DEFAULT 'ar',
  `sujet` varchar(200) NOT NULL,
  `exercice` text NOT NULL,
  `solution` text,
  `date_d` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `note` text,
  `ranking` int(11) DEFAULT NULL,
  `chk` int(11) DEFAULT '1',
  `ref` varchar(200) DEFAULT NULL,
  `tag` text,
  PRIMARY KEY (`exo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- Export de données de la table elephant.mostawdae : ~11 rows (environ)
/*!40000 ALTER TABLE `mostawdae` DISABLE KEYS */;
/*!40000 ALTER TABLE `mostawdae` ENABLE KEYS */;


-- Export de la structure de table elephant. niveau_formation
CREATE TABLE IF NOT EXISTS `niveau_formation` (
  `id_level` int(11) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Export de données de la table elephant.niveau_formation : ~18 rows (environ)
/*!40000 ALTER TABLE `niveau_formation` DISABLE KEYS */;
REPLACE INTO `niveau_formation` (`id_level`, `title`) VALUES
	(0, 'التكوين ما قبل التدريس'),
	(10, 'الإبتدائي'),
	(11, 'الإبتدائي السنة 1'),
	(12, 'الإبتدائي السنة 2'),
	(13, 'الإبتدائي السنة 3'),
	(14, 'الإبتدائي السنة 4'),
	(15, 'الإبتدائي السنة 5'),
	(20, 'التعليم المتوسط'),
	(21, 'التعليم المتوسط 1'),
	(22, 'التعليم المتوسط 2'),
	(23, 'التعليم المتوسط 3'),
	(24, 'التعليم المتوسط 4'),
	(40, 'التعليم الثنوي'),
	(41, 'التعليم الثنوي 1'),
	(42, 'التعليم الثنوي 2'),
	(43, 'التعليم الثنوي 3'),
	(50, 'التعليم الجامعي'),
	(60, 'التكوين المهني');
/*!40000 ALTER TABLE `niveau_formation` ENABLE KEYS */;


-- Export de la structure de table elephant. user_account
CREATE TABLE IF NOT EXISTS `user_account` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL DEFAULT '1',
  `name` varchar(200) NOT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `level_formation` varchar(200) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `addr0` varchar(200) DEFAULT NULL,
  `addr1` varchar(200) DEFAULT NULL,
  `addr2` varchar(200) DEFAULT NULL,
  `zipcode` varchar(5) DEFAULT NULL,
  `date_n` varchar(10) DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `date_inscription` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `slevel` varchar(2) DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Export de données de la table elephant.user_account : ~4 rows (environ)
/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;	(1, 3, 'Hamza BENDALI BRAHAM', NULL, 'hbendali@yandex.com', 'genesis', '&nbsp;', '0552830677', '', '', '', '26801', '', '2016-09-02 16:51:06', '2016-05-01 13:27:51', '1'),
	(9, 1, 'aadsade', NULL, 'uimo@yopmail.com', 'hitman47', '12', '', '', '', '', '', '', '2016-05-01 16:13:24', '2016-05-01 16:13:24', '0'),
	(10, 1, 'aladin bendali', NULL, 'aladinbendalibraham@gmail.com', 'hitman47', '&nbsp;', '', '', '', '', '', '', '2016-05-06 19:43:52', '2016-05-01 19:54:17', '7'),
	(11, 1, 'fdgfdgdfgdfg', '', 'hbenddfgdfgali@yandex.com', 'podfgdgdfgdfg', '11', '', '', '', '', '', '', '2016-05-07 08:16:30', '2016-05-07 08:16:30', '0');
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;


-- Export de la structure de vue elephant. view_all_exo
-- Création d'une table temporaire pour palier aux erreurs de dépendances de VIEW
CREATE TABLE `view_all_exo` (
	`exo_id` INT(11) NOT NULL,
	`niveau` VARCHAR(100) NULL COLLATE 'utf8_general_ci',
	`dev` VARCHAR(200) NULL COLLATE 'utf8_general_ci',
	`matiere` VARCHAR(200) NULL COLLATE 'utf8_general_ci',
	`langue` VARCHAR(2) NULL COLLATE 'utf8_general_ci',
	`sujet` VARCHAR(200) NOT NULL COLLATE 'utf8_general_ci',
	`exercice` TEXT NOT NULL COLLATE 'utf8_general_ci',
	`solution` TEXT NULL COLLATE 'utf8_general_ci',
	`ref` VARCHAR(200) NULL COLLATE 'utf8_general_ci',
	`tag` TEXT NULL COLLATE 'utf8_general_ci',
	`ranking` INT(11) NULL,
	`img` VARCHAR(20) NULL COLLATE 'utf8_general_ci',
	`date_d` TIMESTAMP NULL
) ENGINE=MyISAM;


-- Export de la structure de vue elephant. view_profile
-- Création d'une table temporaire pour palier aux erreurs de dépendances de VIEW
CREATE TABLE `view_profile` (
	`user_id` INT(11) NOT NULL,
	`name` VARCHAR(200) NOT NULL COLLATE 'utf8_general_ci',
	`sex` VARCHAR(1) NULL COLLATE 'utf8_general_ci',
	`email` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	`mobile` VARCHAR(20) NULL COLLATE 'utf8_general_ci',
	`addr0` VARCHAR(200) NULL COLLATE 'utf8_general_ci',
	`addr1` VARCHAR(200) NULL COLLATE 'utf8_general_ci',
	`addr2` VARCHAR(200) NULL COLLATE 'utf8_general_ci',
	`zipcode` VARCHAR(5) NULL COLLATE 'utf8_general_ci',
	`date_n` VARCHAR(10) NULL COLLATE 'utf8_general_ci',
	`level_formation` VARCHAR(200) NULL COLLATE 'utf8_general_ci',
	`slevel` VARCHAR(2) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;


-- Export de la structure de vue elephant. view_all_exo
-- Suppression de la table temporaire et création finale de la structure d'une vue
DROP TABLE IF EXISTS `view_all_exo`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `view_all_exo` AS SELECT exo_id, title as niveau, dev, matiere, langue, sujet, exercice, solution, ref, tag, ranking, img, date_d
FROM mostawdae 
LEFT JOIN matiere 
	ON mostawdae.mat = matiere.matiere 
LEFT JOIN niveau_formation 
	ON mostawdae.niveau = niveau_formation.id_level 
LEFT JOIN user_account 
	ON mostawdae.user = user_account.email ;


-- Export de la structure de vue elephant. view_profile
-- Suppression de la table temporaire et création finale de la structure d'une vue
DROP TABLE IF EXISTS `view_profile`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `view_profile` AS select user_id, name, sex, email, mobile, addr0, addr1, addr2, zipcode, date_n, level_formation, slevel from user_account ;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
