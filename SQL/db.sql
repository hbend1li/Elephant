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
CREATE DATABASE IF NOT EXISTS `elephant` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `elephant`;


-- Export de la structure de table elephant. logging
CREATE TABLE IF NOT EXISTS `logging` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(15) DEFAULT NULL,
  `username` varchar(200) NOT NULL,
  `msg` text NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=latin1;

-- Export de données de la table elephant.logging : ~127 rows (environ)
/*!40000 ALTER TABLE `logging` DISABLE KEYS */;
REPLACE INTO `logging` (`id`, `date`, `ip`, `username`, `msg`) VALUES
	(1, '2016-09-02 18:18:01', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM'),
	(2, '2016-09-02 18:18:06', '127.0.0.1', 'hbendali@yandex.com', 'SIGNOUT Hamza BENDALI BRAHAM'),
	(3, '2016-09-02 18:22:54', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM'),
	(4, '2016-09-02 18:23:24', '127.0.0.1', 'hbendali@yandex.com', 'SIGNOUT Hamza BENDALI BRAHAM'),
	(5, '2016-09-02 18:23:28', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM'),
	(6, '2016-09-02 18:28:45', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM'),
	(7, '2016-09-02 18:49:37', '127.0.0.1', 'hbendali@yandex.com', 'SIGNOUT Hamza BENDALI BRAHAM'),
	(8, '2016-09-02 18:49:56', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / {\n  &quot;ip&quot;: &quot;41.104.31.39&quot;,\n  &quot;hostname&quot;: &quot;No Hostname&quot;,\n  &quot;city&quot;: &quot;Blida&quot;,\n  &quot;region&quot;: &quot;Blida&quot;,\n  &quot;country&quot;: &quot;DZ&quot;,\n  &quot;loc&quot;: &quot;36.4686,2.8289&quot;,\n  &quot;org&quot;: &quot;AS36947 Telecom Algeria&quot;\n}'),
	(9, '2016-09-02 18:50:51', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / {\n  &quot;ip&quot;: &quot;127.0.0.1&quot;,\n  &quot;bogon&quot;: 1\n}'),
	(10, '2016-09-02 18:50:56', '127.0.0.1', 'hbendali@yandex.com', 'SIGNOUT Hamza BENDALI BRAHAM'),
	(11, '2016-09-02 18:51:00', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / {\n  &quot;ip&quot;: &quot;127.0.0.1&quot;,\n  &quot;bogon&quot;: 1\n}'),
	(12, '2016-09-02 18:53:19', '127.0.0.1', 'hbendali@yandex.com', 'SIGNOUT Hamza BENDALI BRAHAM'),
	(13, '2016-09-02 18:53:22', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(14, '2016-09-02 18:53:45', '127.0.0.1', 'hbendali@yandex.com', 'SIGNOUT Hamza BENDALI BRAHAM'),
	(15, '2016-09-02 18:53:48', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(16, '2016-09-02 18:54:20', '127.0.0.1', 'hbendali@yandex.com', 'SIGNOUT Hamza BENDALI BRAHAM'),
	(17, '2016-09-02 18:54:28', '127.0.0.1', 'Guest', 'ACCESS DENIED - hbendali@yandex.com / geesis / '),
	(18, '2016-09-02 18:55:35', '127.0.0.1', 'Guest', 'ACCESS DENIED - hbendali@yandex.com / geesis / '),
	(19, '2016-09-02 18:56:00', '127.0.0.1', 'Guest', 'ACCESS DENIED - hbendali@yandex.com / geesis / '),
	(20, '2016-09-02 18:56:05', '127.0.0.1', 'Guest', 'ACCESS DENIED - hbendali@yandex.com / genesi / '),
	(21, '2016-09-02 18:56:09', '127.0.0.1', 'Guest', 'SIGNIN  / '),
	(22, '2016-09-02 18:58:19', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(23, '2016-09-02 18:58:24', '127.0.0.1', 'hbendali@yandex.com', 'SIGNOUT Hamza BENDALI BRAHAM'),
	(24, '2016-09-02 18:58:27', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(25, '2016-09-02 18:58:32', '127.0.0.1', 'hbendali@yandex.com', 'SIGNOUT Hamza BENDALI BRAHAM'),
	(26, '2016-09-02 18:58:36', '127.0.0.1', 'Guest', 'ACCESS DENIED - hbendali@yandex.com / genis / '),
	(27, '2016-09-02 18:59:36', '127.0.0.1', 'Guest', 'ACCESS DENIED - hbendali@yandex.com / genis / '),
	(28, '2016-09-02 19:00:36', '127.0.0.1', 'Guest', 'ACCESS DENIED - hbendali@yandex.com / genis / '),
	(29, '2016-09-02 19:00:48', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(30, '2016-09-02 19:01:54', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(31, '2016-09-02 19:02:46', '127.0.0.1', 'hbendali@yandex.com', 'SIGNOUT Hamza BENDALI BRAHAM'),
	(32, '2016-09-02 19:12:02', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(33, '2016-09-02 19:29:25', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(34, '2016-09-02 19:30:08', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(35, '2016-09-02 19:30:43', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(36, '2016-09-02 19:32:37', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(37, '2016-09-02 19:32:49', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(38, '2016-09-02 19:34:44', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(39, '2016-09-02 19:35:23', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(40, '2016-09-02 19:35:51', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(41, '2016-09-02 19:38:59', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(42, '2016-09-02 19:39:08', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(43, '2016-09-02 19:40:54', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(44, '2016-09-02 19:42:49', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(45, '2016-09-02 19:42:59', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(46, '2016-09-02 19:44:06', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(47, '2016-09-02 19:46:11', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(48, '2016-09-02 19:47:21', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(49, '2016-09-02 20:02:57', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(50, '2016-09-02 20:03:31', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(51, '2016-09-02 20:04:18', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(52, '2016-09-02 20:05:01', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(53, '2016-09-02 20:06:01', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(54, '2016-09-02 20:06:54', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(55, '2016-09-02 20:11:42', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(56, '2016-09-02 20:42:12', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(57, '2016-09-02 20:43:25', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(58, '2016-09-02 21:06:53', '127.0.0.1', 'Guest', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(59, '2016-09-02 21:07:56', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(60, '2016-09-02 21:11:15', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(61, '2016-09-02 21:15:18', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(62, '2016-09-02 21:17:02', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(63, '2016-09-02 21:18:34', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(64, '2016-09-02 21:19:05', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(65, '2016-09-02 21:19:23', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(66, '2016-09-02 21:19:49', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(67, '2016-09-02 21:21:40', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(68, '2016-09-02 21:22:02', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(69, '2016-09-02 21:22:43', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(70, '2016-09-02 21:25:18', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(71, '2016-09-02 21:26:12', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(72, '2016-09-02 21:26:43', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(73, '2016-09-02 21:27:49', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(74, '2016-09-02 21:29:59', '127.0.0.1', 'hbendali@yandex.com', 'SIGNOUT Hamza BENDALI BRAHAM'),
	(75, '2016-09-02 21:30:01', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(76, '2016-09-02 21:30:07', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(77, '2016-09-02 21:32:00', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(78, '2016-09-02 21:32:10', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(79, '2016-09-02 21:32:30', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(80, '2016-09-02 21:35:29', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(81, '2016-09-02 21:35:51', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(82, '2016-09-02 21:37:18', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(83, '2016-09-02 21:37:34', '127.0.0.1', 'hbendali@yandex.com', 'SIGNOUT Hamza BENDALI BRAHAM'),
	(84, '2016-09-02 21:37:57', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(85, '2016-09-02 21:39:16', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(86, '2016-09-02 21:40:12', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(87, '2016-09-02 21:43:52', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(88, '2016-09-02 21:45:03', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(89, '2016-09-02 21:45:15', '127.0.0.1', 'hbendali@yandex.com', 'SIGNOUT Hamza BENDALI BRAHAM'),
	(90, '2016-09-02 21:48:44', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(91, '2016-09-02 21:50:33', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(92, '2016-09-02 21:50:43', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(93, '2016-09-02 21:51:10', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(94, '2016-09-02 21:53:45', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(95, '2016-09-02 21:56:39', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(96, '2016-09-02 21:58:25', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(97, '2016-09-02 21:59:23', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(98, '2016-09-02 22:00:23', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(99, '2016-09-02 22:02:24', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(100, '2016-09-02 22:02:57', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(101, '2016-09-02 22:03:21', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(102, '2016-09-02 22:04:23', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(103, '2016-09-02 22:07:07', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(104, '2016-09-02 22:07:17', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(105, '2016-09-03 07:58:49', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(106, '2016-09-03 08:00:26', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(107, '2016-09-03 08:03:02', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(108, '2016-09-03 08:08:00', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(109, '2016-09-03 11:31:10', '127.0.0.1', 'hbendali@yandex.com', 'SIGNOUT Hamza BENDALI BRAHAM'),
	(110, '2016-09-03 11:31:17', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(111, '2016-09-03 11:31:36', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(112, '2016-09-03 11:34:20', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(113, '2016-09-03 11:35:00', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(114, '2016-09-03 11:40:21', '127.0.0.1', 'hbendali@yandex.com', 'SIGNOUT Hamza BENDALI BRAHAM'),
	(115, '2016-09-03 11:41:38', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(116, '2016-09-03 12:32:05', '127.0.0.1', 'hbendali@yandex.com', 'SIGNOUT Hamza BENDALI BRAHAM'),
	(117, '2016-09-03 12:32:36', '127.0.0.1', 'Guest', 'ACCESS DENIED - hbendali@yandex.com / genesis      , / '),
	(118, '2016-09-03 12:32:42', '127.0.0.1', 'Guest', 'ACCESS DENIED - hbendali@yandex.com / genesis      , / '),
	(119, '2016-09-03 12:32:54', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(120, '2016-09-03 12:34:01', '127.0.0.1', 'hbendali@yandex.com', 'SIGNOUT Hamza BENDALI BRAHAM'),
	(121, '2016-09-03 12:40:06', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(122, '2016-09-03 12:40:27', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(123, '2016-09-03 12:41:18', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(124, '2016-09-03 12:41:20', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(125, '2016-09-03 12:41:26', '127.0.0.1', 'hbendali@yandex.com', 'SIGNOUT Hamza BENDALI BRAHAM'),
	(126, '2016-09-03 12:41:51', '127.0.0.1', 'hbendali@yandex.com', 'SIGNIN Hamza BENDALI BRAHAM / '),
	(127, '2016-09-03 12:41:56', '127.0.0.1', 'hbendali@yandex.com', 'SIGNOUT Hamza BENDALI BRAHAM');
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

-- Export de données de la table elephant.mostawdae : ~21 rows (environ)
/*!40000 ALTER TABLE `mostawdae` DISABLE KEYS */;
REPLACE INTO `mostawdae` (`exo_id`, `user`, `niveau`, `dev`, `mat`, `langue`, `sujet`, `exercice`, `solution`, `date_d`, `note`, `ranking`, `chk`, `ref`, `tag`) VALUES
	(1, 'a', 1, NULL, 'اللغة العربية', '', 'a', 'a', NULL, '2016-04-30 14:44:15', NULL, NULL, 0, NULL, NULL),
	(2, 'hbendali@yandex.com', 1, NULL, 'إعلام الآلي', '', 'qs', 'qs', '', '2016-04-30 14:45:42', NULL, NULL, 0, NULL, NULL),
	(3, 'hbendali@yandex.com', 1, NULL, 'الجغرافيا', '', 'qs', 'qs', '', '2016-04-30 14:52:07', NULL, NULL, 0, NULL, NULL),
	(4, 'aldin@gmail.com', 1, NULL, 'التاريخ', '', 'jkl', 'يبيب', 'Primare \n  primare\n  -1anneé primare\n  -2anneé primare\n  -3anneé primare\n  -4anneé primare\n  -5anneé primare\nMoyenne \n  1 anneé moyenne\n  2 anneé moyenne\n  3 anneé moyenne\n  4 anneé moyenne\nsecondaire \n  1 anneé secondaire\n  1 anneé secoundaire\n  1 anneé secondaire\n', '2016-04-30 15:03:21', NULL, NULL, 0, NULL, NULL),
	(5, 'hbendali@yandex.com', 10, NULL, 'إعلام الآلي', 'fr', 'qs', 'q', '', '2016-04-30 16:46:09', NULL, NULL, 0, NULL, NULL),
	(6, 'aldin@gmail.com', 0, NULL, 'اللغة العربية', 'ar', 'exercie', 'http://exercices.freehostia.com/exercices_co.htm\r\nhttp://arabe6.educa.ma/', 'frgdf', '2016-04-30 16:57:44', NULL, NULL, 0, NULL, NULL),
	(7, 'hbendali@yandex.com', 14, NULL, 'التاريخ', 'ar', 'qs', 'xw&lt;', '', '2016-04-30 18:06:10', NULL, NULL, 0, NULL, NULL),
	(8, 'hbendali@yandex.com', 11, NULL, 'الجغرافيا', 'ar', 'qSQS', 'شسيسيس ص يثسشيشسي س&quot;', '', '2016-04-30 18:06:34', NULL, NULL, 0, NULL, NULL),
	(9, 'hbendali@yandex.com', 0, NULL, 'التاريخ', 'fr', 'qs', '(', '', '2016-04-30 18:09:40', NULL, NULL, 0, NULL, NULL),
	(10, 'hbendali@yandex.com', 0, NULL, 'ثقافة عامة', 'ar', 'البطالة و سياسة التشغيل في الجزائر', '&lt;h3&gt;مقدمة&lt;/h3&gt;\r\nلقد تميز سوق الشغل بالجزائر منذ النصف الثاني للثمانينيات إلى غاية عام 1999 بإرتفاع كبير في نسبة البطالة وصلت في بعض الأحيان إلى أكثر من 30 %&amp;#1548; فالأزمة الإقتصادية الحادة التي عاشتها خلال هذه الفترة و التي إتسمت بتراجع كبير في حجم الإستثمارات و إنخفاض أسعار النفط قد أدت إلى بروز إختلالات كبيرة في سوق الشغل بحيث تقلصت فرص العمل المتاحة بدرجة كبيرة في نفس الوقت الذي سجل فيه تزايد أكبر لطالبي العمل&amp;#1548; إضافة لما ترتب عن الإصلاحات الإقتصادية التي باشرتها الجزائر وشروعها في تطبيق مخطط إعادة الهيكلة الذي كانت أولى نتائجه غلق مئات المؤسسات وتسريح آلاف العمال.\r\n', '', '2016-04-30 20:08:49', NULL, NULL, 1, NULL, NULL),
	(11, 'hbendali@yandex.com', 10, NULL, 'اللغة العربية', 'ar', '2016 ةذتاسلاا فيظوت ةقباسم', 'صنلا\r\nلوقي , ماركلاا و عيجشتلا قحتسي و ) ءرملا هيلع باثي ( اداهج يعارزلا لمعلا ملاسلاا ربتعا\r\nىتح اهيلع مايقلا و اهظفح ىلع ربصيف ةرجش بصن نم : &lt;&lt; ملاسلا و ةلاصلا هيلع لوسرلا\r\nثيدحلا اذه نمف&gt;&gt;. لج و زع الله دنع ةقدص اهرمث نم باصي ءيش لك يف هل ناك رمثت\r\nو , لمهملا نم اهدخأ زاجأ و , اهب عافتنلاا مدعب ) ضرلأا ليطعت مرح ملاسلاا نأ ( كردن\r\nدع و , يعارزلا جاتنلاا يف عسوتلا ىلع عجش و , اهب عفنلا و , اهلغتسي نأ عيطتسي نمل اهئاطعا\r\nضرلأا ءايحا ىلا ملس و هيلع الله ىلص لوسرلا اعد و . اباوث و ارجأ هيلع قحتسي اداهج كلذ\r\nيف ةباحصلا لمع لج ناك و&gt;&gt; . ارجأ اهيف هلف ةتيم اضرأ ايحأ نم : &lt;&lt; لاق ثيح ةتيملا\r\nريخلا قيرط يف ناسنلاا ملاسلاا هجوي اذكه و . لوقحلا و نيتاسبلا يف لغشلا و ةعارزلا ةنيدملا\r\nهركي ام دشأ و هرمع نم ةظحل رخآ ىتح رمعي و ينبي ديفتسي و ديفي ايباجيا نوكي نأ هديري و ,\r\nلاف . هلمع لمعلا سئبف ... ةايحلا كرتعم نع ءاوزنلاا و شامكنلاا و : ةلذاختملا ةيبلسلا هنم\r\nو ملعلا و لمعلا نيد هنلأ لهجلا و ضرملا و فعضلا و رقفلل ملاسلاا يف لاجم\r\nجاتنلاا\r\n\r\n\r\nةلئسلأا\r\nيركفلا ءانبلا:\r\n؟ ملاسلاا زاتمي ادامب\r\n؟ يعارزلا لمعلا نم ةباحصلا فقوم ام\r\n؟ ايباجيا ملسملا ناسنلاا نوكي فيك\r\nيوغللا ءانبلا:\r\nصنلا يف طخ هتحت ام برعأ\r\nاهرصانع نيب و ةيطرش ةلمج صنلا نم جرختسا\r\nاهرداصم ةيلاتلا لاعفلأا نم قتشا:\r\nمرح - كردأ - لاق - ربتعا\r\nبارعلاا نم نيسوق نيب لمجلا لحم نيب\r\nينفلا ءانبلا\r\nهجرختسا عجس صنلا يف\r\nهناكرأ نيب و اهيبشت صنلا نم جرختسا\r\nهعون نيب و اقابط صنلا نم جرختسا\r\nةيجامدلاا ةيعضولا\r\nناسنا وأ ريط هنم لكأيف , اعرز عرزي وأ اسرغ سرغي ملسم نم ام : &lt;&lt; ملس و هيلع الله ىلص لوسرلا لاق\r\nلامعتسم ةيداصتقلاا ةايحلا يف يعارزلا لمعلا ةيمهأ اهيف زربت ةرقف بتكا &gt;&gt; ةقدص هب هل ناك لاا ةميهب وأ\r\n\r\nديكوتلا بولسأ نكمأ ام\r\nةبوجلأا\r\nيركفلا ءانبلا\r\nةطقن = . جاتنا و ملع و لمع نيد هنأب زاتني ملاسلاا\r\nةطقن = لوقحلا و نيتاسبلا يف ةعارزلا وه ةنيدملا يف مهلمع مظعأ ناك\r\nةطقن 1.25 = رمع و ىنبو دافتسا و دافأ اذا ايباجيا ملسملا نوكي\r\nيوغللا ءانبلا\r\nبارعلاا\r\nةطقن 0.25 = ردصم و بصن ةادأ : نأ\r\nريمض لعافلا و ةطقن 0.5 = هرخآ ىلع ةرهاظلا ةحتفلا هبصن ةملاع و نأب بوصنم عراضم لعف : اهلغتسي\r\nةطقن 0.5 = وه هريدقت رتتسم\r\nبصن لحم يف ةينبم ةيلعفلا ةلمجلا و ةطقن 0.5 = هب لوعفم بصن لحم يف ينبم لصتم ريمض ءاهلا و\r\nةطقن 0.5 = هب لوعفم\r\nةطقن 0.5 = مذلا ءاشنلا دماج ضام لعف : سئب\r\nةطقن 0.5 = هرخآ ىلع ةرهاظلا ةمضلا هعفر ةملاع و عوفرم لعاف : لمعلا\r\n= هيلا فاضم رج لحم يف ينبم لصتم ريمض ءاهلا و فاضم وه و وه هريدقت فوذحم أدتبمل ربخ : هلمع\r\nةطقن 0.5\r\nاهرصانع و ةيطرشلا ةلمجلا\r\nةطقن 0.25 = رمثت ىلا... ةرجش بصن نم : طرشلا لعف\r\nةطقن 0.25 = لج و زع ىلا .... هل ناك : طرشلا باوج\r\nرداصملا\r\n: مرح\r\n 0.25=كاردا : كردأ\r\n 0.25 =لوق : لاق\r\n 0.25 = رابتعا : ربتعا\r\n=0.25ميرحت\r\nبارعلاا نم لمجلا لحم\r\n0.5 = تعن بصن لحم يف : ءرملا عيلع باثي\r\n0.5 = هب لوعفم بصن لحم يف : ضرلأا ليطعت مرح ملاسلاا نأ\r\nينفلا ءانبلا\r\n0.5 = ديفتسي و ديفي : عجسلا\r\n0.5 = اداهج يعارزلا لمعلا ملاسلاا ربتعا :هناكرأ و هيبشتلا\r\n0.25 = يعارزلا لمعلا : هبشملا\r\n0.25 = اداهج : هب هبشملا\r\n1 = يباجيا هعون و لهجلا و ملعلا : قابطلا\r\nةيجامدلاا ةيعضولا\r\n5 = ديكوتلا بولسأ , يعارزلا لمعلا ةيمهأ زاربا : ةمءلاملا\r\n1 = راكفلأا طبارت : ماجسنلاا\r\nحضاو طخ و قئلا لكشب عوضوملا لوانت, ءلاملاا دعاوق , ةغللا دعاوق , فقولا تاملاع مارتحا : ةغللا ةملاس\r\n2 =\r\nميلعتلا و ةيبرتلا ةنودم ىلع عيضاوملا نم ديزملا\r\n', '', '2016-04-30 20:39:58', NULL, NULL, 1, NULL, NULL),
	(12, 'hbendali@yandex.com', 10, NULL, 'اللغة العربية', 'ar', 'مقترح لمسابقة االساتذة - 2016', '&lt;h3&gt;النص&lt;/h3&gt;\n‫اعتبر االسالم العمل الزراعي جهادا ( يثاب عليه المرء ) و يستحق التشجيع و االكرام ‪ ,‬يقول ‫الرسول عليه الصالة و السالم&lt;&lt; ‪ :‬من نصب شجرة فيصبر على حفظها و القيام عليها حتى‬ ‫تثمر كان له في كل شيء يصاب من ثمرها صدقة عند هللا عز و جل ‪&gt;&gt;.‬فمن هذا الحديث‬ ‫ندرك ( أن االسالم حرم تعطيل األرض ) بعدم االنتفاع بها ‪ ,‬و أجاز أخدها من المهمل ‪ ,‬و‬‫ اعطائها لمن يستطيع أن يستغلها ‪ ,‬و النفع بها ‪ ,‬و شجع على التوسع في االنتاج الزراعي ‪ ,‬و عد‬ ‫ذلك جهادا يستحق عليه أجرا و ثوابا ‪ .‬و دعا الرسول صلى هللا عليه و سلم الى احياء األرض‬ ‫الميتة حيث قال &lt;&lt; ‪ :‬من أحيا أرضا ميتة فله فيها أجرا ‪&gt;&gt; .‬و كان جل عمل الصحابة في‬ ‫المدينة الزراعة و الشغل في البساتين و الحقول ‪ .‬و هكذا يوجه االسالم االنسان في طريق الخير‬  ‫‪ ,‬و يريده أن يكون ايجابيا يفيد و يستفيد يبني و يعمر حتى آخر لحظة من عمره و أشد ما يكره ‫منه السلبية المتخاذلة ‪ :‬و االنكماش و االنزواء عن معترك الحياة ‪ ...‬فبئس العمل عمله‪.\nفلا ‫مجال في االسالم للفقر و الضعف و المرض و الجهل ألنه دين العمل و العلم و‬ ‫الانتاج‬\n&lt;br&gt;\n&lt;br&gt;\n&lt;h3&gt;الأسئلة‬&lt;/h3&gt;\nالبناء الفكري‬:\nبمادا يمتاز االسالم ؟‬\nما موقف الصحابة من العمل الزراعي ؟‬\nكيف يكون االنسان المسلم ايجابيا ؟‬\n&lt;br&gt;\n&lt;h3&gt;البناء اللغوي‬&lt;/h3&gt;\nأعرب ما تحته خط في النص‬\nاستخرج من النص جملة شرطية و بين عناصرها‬\nاشتق من األفعال التالية مصادرها‬:\n‫اعتبر ‪ -‬قال ‪ -‬أدرك ‪ -‬حرم‬\nبين محل الجمل بين قوسين من االعراب‬\n&lt;br&gt;\n&lt;h3&gt;البناء الفني‬&lt;/h3&gt;\nفي النص سجع استخرجه‬\nاستخرج من النص تشبيها و بين أركانه‬\nاستخرج من النص طباقا و بين نوعه‬\n&lt;br&gt;\n&lt;h3&gt;الوضعية االدماجية‬&lt;/h3&gt;\n ‫قال الرسول صلى هللا عليه و سلم &quot;‬ما من مسلم يغرس غرسا أو يزرع زرعا ‪ ,‬فيأكل منه طير أو انسان ‫أو بهيمة اال كان له به صدقة&quot;\nاكتب فقرة تبرز فيها أهمية العمل الزراعي في الحياة االقتصادية مستعمال‬\n\n\n', '<h3>‫البناء الفكري‬</h3>\r\n                                                       ‫االسالم ينتاز بأنه دين عمل و علم و انتاج ‪ = .‬نقطة‬\r\n                                  ‫كان أعظم عملهم في المدينة هو الزراعة في البساتين و الحقول = نقطة‬\r\n                                         ‫يكون المسلم ايجابيا اذا أفاد و استفاد وبنى و عمر = ‪ 1.25‬نقطة‬\r\n                                                                                              ‫البناء اللغوي‬\r\n                                                                                                   ‫االعراب‬\r\n                                                                    ‫أن ‪ :‬أداة نصب و مصدر = ‪ 0.25‬نقطة‬\r\n ‫يستغلها ‪ :‬فعل مضارع منصوب بأن و عالمة نصبه الفتحة الظاهرة على آخره = ‪ 0.5‬نقطة و الفاعل ضمير‬\r\n                                                                             ‫مستتر تقديره هو = ‪ 0.5‬نقطة‬\r\n   ‫و الهاء ضمير متصل مبني في محل نصب مفعول به = ‪ 0.5‬نقطة و الجملة الفعلية مبنية في محل نصب‬\r\n                                                                                   ‫مفعول به = ‪ 0.5‬نقطة‬\r\n                                                          ‫بئس ‪ :‬فعل ماض جامد النشاء الذم = ‪ 0.5‬نقطة‬\r\n                             ‫العمل ‪ :‬فاعل مرفوع و عالمة رفعه الضمة الظاهرة على آخره = ‪ 0.5‬نقطة‬\r\n ‫عمله ‪ :‬خبر لمبتدأ محذوف تقديره هو و هو مضاف و الهاء ضمير متصل مبني في محل جر مضاف اليه =‬\r\n                                                                                                 ‫‪ 0.5‬نقطة‬\r\n                                                                               ‫الجملة الشرطية و عناصرها‬\r\n                                                   ‫فعل الشرط ‪ :‬من نصب شجرة ‪...‬الى تثمر = ‪ 0.25‬نقطة‬\r\n                                                    ‫جواب الشرط ‪ :‬كان له ‪ ....‬الى عز و جل = ‪ 0.25‬نقطة‬\r\n                                                                                                   ‫المصادر‬\r\n     ‫حرم ‪:‬‬             ‫أدرك ‪ :‬ادراك=‪0.25‬‬               ‫قال ‪ :‬قول=‪0.25‬‬              ‫اعتبر ‪ :‬اعتبار =‪0.25‬‬\r\n                                                                                             ‫تحريم‪=0.25‬‬\r\n                                                                                   ‫محل الجمل من االعراب‬\r\n                                                            ‫يثاب عليع المرء ‪ :‬في محل نصب نعت = ‪0.5‬‬\r\n                                          ‫أن االسالم حرم تعطيل األرض ‪ :‬في محل نصب مفعول به = ‪0.5‬‬\r\n                                                                                               ‫البناء الفني‬\r\n                                                                             ‫السجع ‪ :‬يفيد و يستفيد = ‪0.5‬‬\r\n                                              ‫التشبيه و أركانه‪ :‬اعتبر االسالم العمل الزراعي جهادا = ‪0.5‬‬\r\n                                                                          ‫المشبه ‪ :‬العمل الزراعي = ‪0.25‬‬\r\n                                                                                ‫المشبه به ‪ :‬جهادا = ‪0.25‬‬\r\n                                                               ‫الطباق ‪ :‬العلم و الجهل و نوعه ايجابي = ‪1‬‬\r\n                                                                                         ‫الوضعية االدماجية‬\r\n                                               ‫المالءمة ‪ :‬ابراز أهمية العمل الزراعي ‪ ,‬أسلوب التوكيد = ‪5‬‬\r\n                                                                              ‫االنسجام ‪ :‬ترابط األفكار = ‪1‬‬\r\n‫سالمة اللغة ‪ :‬احترام عالمات الوقف ‪ ,‬قواعد اللغة ‪ ,‬قواعد االمالء ‪,‬تناول الموضوع بشكل الئق و خط واضح‬\r\n                                                                                                      ‫=‪2‬‬', '2016-04-30 21:42:51', NULL, NULL, 1, NULL, NULL),
	(13, 'hbendali@yandex.com', 43, 'تسيير و اقتصاد', 'الرياضيات', 'ar', 'الإحتمال, المتتليات, الدوال', 'تحميل ملف &lt;a href=&quot;depo/654654364.pdf&quot;&gt; PDF &lt;/a&gt;', 'تحميل ملف <a href="depo/s654654364.pdf"> PDF </a>', '2016-04-30 22:18:02', NULL, NULL, 1, NULL, NULL),
	(14, 'hbendali@yandex.com', 0, 'تسيير و اقتصاد', 'الجغرافيا', 'ar', 'qSQS', 're', '', '2016-05-01 18:41:15', NULL, NULL, 1, NULL, NULL),
	(15, 'hbendali@yandex.com', 10, 'تسيير و اقتصاد', 'التاريخ', 'ar', 'الإحتمال, المتتليات, الدوال', 'سبابي', '', '2016-05-01 18:44:03', NULL, NULL, 1, NULL, NULL),
	(16, 'hbendali@yandex.com', 11, 'تسيير و اقتصاد', 'اللغة العربية', 'ar', 'الإحتمال, المتتليات, الدوال', 'dfhdfj,', '', '2016-05-01 20:01:55', NULL, NULL, 1, NULL, NULL),
	(17, 'hbendali@yandex.com', 0, '', 'ثقافة عامة', '', '', 'h', '', '2016-05-03 06:37:19', NULL, NULL, 1, '', NULL),
	(18, 'hbendali@yandex.com', 0, '', 'ثقافة عامة', '', 'v', 'h', '', '2016-05-03 06:37:55', NULL, NULL, 1, '', NULL),
	(19, 'hbendali@yandex.com', 11, '', 'الرياضيات', '', 'hالجموع', '1 + 1 = ؟', '', '2016-05-07 07:32:10', NULL, NULL, 1, '', NULL),
	(20, 'hbendali@yandex.com', 0, '', 'التاريخ', '', 'd', 'dd', '', '2016-05-07 08:27:50', NULL, NULL, 1, '', NULL),
	(21, 'hbendali@yandex.com', 60, '', 'إعلام الآلي', '', 'd', 'nghgnfgh sd  s hh  hh fgh fg df  ', '', '2016-05-07 12:43:44', NULL, NULL, 1, '', NULL);
/*!40000 ALTER TABLE `mostawdae` ENABLE KEYS */;


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
/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
REPLACE INTO `user_account` (`user_id`, `level`, `name`, `sex`, `email`, `passwd`, `level_formation`, `mobile`, `addr0`, `addr1`, `addr2`, `zipcode`, `date_n`, `last_login`, `date_inscription`, `slevel`) VALUES
	(1, 3, 'Hamza BENDALI BRAHAM', NULL, 'hbendali@yandex.com', 'genesis', '&nbsp;', '0552830677', '', '', '', '26801', '', '2016-09-02 16:51:06', '2016-05-01 13:27:51', '1'),
	(9, 1, 'aadsade', NULL, 'uimo@yopmail.com', 'hitman47', '12', '', '', '', '', '', '', '2016-05-01 16:13:24', '2016-05-01 16:13:24', '0'),
	(10, 1, 'aladin bendali', NULL, 'aladinbendalibraham@gmail.com', 'hitman47', '&nbsp;', '', '', '', '', '', '', '2016-05-06 19:43:52', '2016-05-01 19:54:17', '7'),
	(11, 1, 'fdgfdgdfgdfg', '', 'hbenddfgdfgali@yandex.com', 'podfgdgdfgdfg', '11', '', '', '', '', '', '', '2016-05-07 08:16:30', '2016-05-07 08:16:30', '0');
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;


-- Export de la structure de vue elephant. view_all_exo
-- Création d'une table temporaire pour palier aux erreurs de dépendances de VIEW
CREATE TABLE `view_all_exo` (
	`exo_id` INT(11) NOT NULL,
	`niveau` INT(11) NOT NULL,
	`matiere` VARCHAR(200) NULL COLLATE 'utf8_general_ci',
	`langue` VARCHAR(2) NULL COLLATE 'utf8_general_ci',
	`sujet` VARCHAR(200) NOT NULL COLLATE 'utf8_general_ci',
	`exercice` TEXT NOT NULL COLLATE 'utf8_general_ci',
	`date_d` TIMESTAMP NULL,
	`ranking` INT(11) NULL,
	`tag` TEXT NULL COLLATE 'utf8_general_ci',
	`img` VARCHAR(20) NULL COLLATE 'utf8_general_ci'
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
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `view_all_exo` AS SELECT exo_id, niveau, matiere, langue, sujet, exercice, date_d, ranking, tag, img
FROM mostawdae 
LEFT JOIN matiere 
	ON mostawdae.mat = matiere.matiere 
LEFT JOIN user_account 
	ON mostawdae.user = user_account.email ;


-- Export de la structure de vue elephant. view_profile
-- Suppression de la table temporaire et création finale de la structure d'une vue
DROP TABLE IF EXISTS `view_profile`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `view_profile` AS select user_id, name, sex, email, mobile, addr0, addr1, addr2, zipcode, date_n, level_formation, slevel from user_account ;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
