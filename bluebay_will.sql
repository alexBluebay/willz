-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.23 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for bluebay_will
DROP DATABASE IF EXISTS `bluebay_will`;
CREATE DATABASE IF NOT EXISTS `bluebay_will` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bluebay_will`;


-- Dumping structure for table bluebay_will.admin_promo_links
DROP TABLE IF EXISTS `admin_promo_links`;
CREATE TABLE IF NOT EXISTS `admin_promo_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `url` varchar(150) NOT NULL,
  `link_layout` enum('sidebar','footer') NOT NULL DEFAULT 'sidebar',
  `desc` varchar(1500) DEFAULT NULL,
  `link_order` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bluebay_will.admin_promo_links: ~0 rows (approximately)
/*!40000 ALTER TABLE `admin_promo_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_promo_links` ENABLE KEYS */;


-- Dumping structure for table bluebay_will.admin_users
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table bluebay_will.admin_users: ~2 rows (approximately)
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
REPLACE INTO `admin_users` (`id`, `user`, `password`) VALUES
	(5, 'CoSAN.san.SAN.sanzeana', '$2a$09$3vxsIOdbzZKan4aP5DsN7OdcgDjWqWVOS.S5RSUpOkN8mI7nduLPK'),
	(9, 'Ionel', '$2a$09$iHh1UxYgQgUunyDZQb7W9OvlFlj2Q/.89DrAhYhIl6ufqdEWH7UUS');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;


-- Dumping structure for table bluebay_will.advertising
DROP TABLE IF EXISTS `advertising`;
CREATE TABLE IF NOT EXISTS `advertising` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `layout` enum('top','links','nav_left','col_left','col_right','footer') NOT NULL DEFAULT 'links',
  `adv_code` varchar(5000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table bluebay_will.advertising: ~2 rows (approximately)
/*!40000 ALTER TABLE `advertising` DISABLE KEYS */;
REPLACE INTO `advertising` (`id`, `title`, `layout`, `adv_code`) VALUES
	(2, 'googleLinks', 'top', '<alt script pad ieasdasd asd asd alsk a\r\n a\r\ndddd nu se poate'),
	(3, 'msn links', 'links', 'asdasd');
/*!40000 ALTER TABLE `advertising` ENABLE KEYS */;


-- Dumping structure for table bluebay_will.categories
DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(120) CHARACTER SET latin1 NOT NULL,
  `description` varchar(1500) CHARACTER SET latin1 DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_categories_categories` (`parentId`),
  KEY `category` (`category`),
  CONSTRAINT `FK_categories_categories` FOREIGN KEY (`parentId`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- Dumping data for table bluebay_will.categories: ~17 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
REPLACE INTO `categories` (`id`, `category`, `description`, `parentId`) VALUES
	(1, 'Afaceri', NULL, NULL),
	(2, 'Agricultura', '', NULL),
	(4, 'Bauturi', '', NULL),
	(5, 'Snacksuri', NULL, NULL),
	(6, 'Calculatoare', NULL, NULL),
	(7, 'Vodka', NULL, 4),
	(8, 'Distributie', NULL, 6),
	(9, 'Componente', NULL, 6),
	(10, 'Servicii Online', NULL, 6),
	(11, 'Whisky', NULL, 4),
	(12, 'Gin', '', 4),
	(13, 'Kraks', NULL, 5),
	(14, 'Cipsuri', NULL, 5),
	(15, 'Morcovi', NULL, 2),
	(16, 'Dat cu sapa', NULL, 2),
	(17, 'Trafic', NULL, 1),
	(18, 'tigari', 'Marble', 4);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;


-- Dumping structure for table bluebay_will.currency_exchange
DROP TABLE IF EXISTS `currency_exchange`;
CREATE TABLE IF NOT EXISTS `currency_exchange` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currencyName` varchar(150) NOT NULL,
  `currencyIndex` varchar(150) NOT NULL,
  `active` enum('Y','N') NOT NULL DEFAULT 'N',
  `position` int(11) NOT NULL DEFAULT '99999',
  `value` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- Dumping data for table bluebay_will.currency_exchange: ~30 rows (approximately)
/*!40000 ALTER TABLE `currency_exchange` DISABLE KEYS */;
REPLACE INTO `currency_exchange` (`id`, `currencyName`, `currencyIndex`, `active`, `position`, `value`) VALUES
	(1, 'AED', 'AED', 'N', 7, NULL),
	(2, 'AUD', 'AUD', 'N', 6, NULL),
	(3, 'BGN', 'BGN', 'N', 24, NULL),
	(4, 'BRL', 'BRL', 'N', 11, NULL),
	(5, 'CAD', 'CAD', 'Y', 4, 3.1269),
	(6, 'CHF', 'CHF', 'N', 25, NULL),
	(7, 'CNY', 'CNY', 'N', 18, NULL),
	(8, 'CZK', 'CZK', 'N', 23, NULL),
	(9, 'DKK', 'DKK', 'N', 5, NULL),
	(10, 'EGP', 'EGP', 'N', 28, NULL),
	(11, 'EUR', 'EUR', 'Y', 3, 4.4067),
	(12, 'GBP', 'GBP', 'Y', 1, 5.6104),
	(13, 'HUF', 'HUF', 'N', 14, NULL),
	(14, 'INR', 'INR', 'N', 30, NULL),
	(15, 'JPY', 'JPY', 'N', 8, NULL),
	(16, 'KRW', 'KRW', 'N', 17, NULL),
	(17, 'MDL', 'MDL', 'N', 12, NULL),
	(18, 'MXN', 'MXN', 'N', 10, NULL),
	(19, 'NOK', 'NOK', 'N', 22, NULL),
	(20, 'NZD', 'NZD', 'N', 19, NULL),
	(21, 'PLN', 'PLN', 'N', 16, NULL),
	(22, 'RSD', 'RSD', 'N', 21, NULL),
	(23, 'RUB', 'RUB', 'N', 29, NULL),
	(24, 'SEK', 'SEK', 'N', 27, NULL),
	(25, 'TRY', 'TRY', 'N', 26, NULL),
	(26, 'UAH', 'UAH', 'N', 13, NULL),
	(27, 'USD', 'USD', 'Y', 2, 3.4939),
	(28, 'XAU', 'XAU', 'N', 9, NULL),
	(29, 'XDR', 'XDR', 'N', 15, NULL),
	(30, 'ZAR', 'ZAR', 'N', 20, NULL);
/*!40000 ALTER TABLE `currency_exchange` ENABLE KEYS */;


-- Dumping structure for table bluebay_will.keywords
DROP TABLE IF EXISTS `keywords`;
CREATE TABLE IF NOT EXISTS `keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `keyword` (`keyword`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table bluebay_will.keywords: ~2 rows (approximately)
/*!40000 ALTER TABLE `keywords` DISABLE KEYS */;
REPLACE INTO `keywords` (`id`, `keyword`) VALUES
	(1, 'Afaceri'),
	(2, 'Calculatoare');
/*!40000 ALTER TABLE `keywords` ENABLE KEYS */;


-- Dumping structure for table bluebay_will.links
DROP TABLE IF EXISTS `links`;
CREATE TABLE IF NOT EXISTS `links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryId` int(11) NOT NULL,
  `url` varchar(150) NOT NULL,
  `title` varchar(300) NOT NULL,
  `email` varchar(150) NOT NULL,
  `shortDescription` varchar(300) DEFAULT NULL,
  `longDescription` text,
  `createdAt` datetime DEFAULT NULL,
  `status` enum('Y','N') NOT NULL DEFAULT 'N',
  `type` enum('basic','exchange') NOT NULL DEFAULT 'basic',
  `ip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_links_categories` (`categoryId`),
  KEY `title` (`title`),
  KEY `url` (`url`),
  KEY `url_title` (`url`,`title`),
  CONSTRAINT `FK_links_categories` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Dumping data for table bluebay_will.links: ~4 rows (approximately)
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
REPLACE INTO `links` (`id`, `categoryId`, `url`, `title`, `email`, `shortDescription`, `longDescription`, `createdAt`, `status`, `type`, `ip`) VALUES
	(3, 11, 'http://www.bomboane.ro', 'Bomboane', 'msn@mail.com', 'msn short Lorem Ipsum is simply dummy text of the printing and typesetting indusdtry. Lasdm has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of typdrambled it tod sa type specimen book. It has survived not only fiveasdsdasdasdsa\r\n', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.', '2014-09-30 17:53:18', 'Y', 'exchange', '8.8.4.4'),
	(5, 11, 'http://www.bluebay.ro', 'Bluebay', 'asd@mai.com', 'bluebay short', 'bluebay long', '2014-10-02 14:43:57', 'Y', 'basic', '1.1.1.1'),
	(8, 11, 'http://www.google.ro', 'google', 'asdasd@asdasd.asd', 'google short', 'google long', '2014-10-06 12:43:57', 'N', 'basic', '8.8.8.8'),
	(11, 11, 'http://www.google.ro', 'google', 'asdasd@asdasd.asd', 'google short', 'google long', '2014-10-06 12:43:57', 'N', 'basic', '8.8.8.8');
/*!40000 ALTER TABLE `links` ENABLE KEYS */;


-- Dumping structure for table bluebay_will.links_keywords
DROP TABLE IF EXISTS `links_keywords`;
CREATE TABLE IF NOT EXISTS `links_keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keywordId` int(11) NOT NULL,
  `urlId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_links_keywords_links` (`urlId`),
  KEY `FK_links_keywords_keywords` (`keywordId`),
  CONSTRAINT `FK_links_keywords_keywords` FOREIGN KEY (`keywordId`) REFERENCES `keywords` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_links_keywords_links` FOREIGN KEY (`urlId`) REFERENCES `links` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bluebay_will.links_keywords: ~0 rows (approximately)
/*!40000 ALTER TABLE `links_keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `links_keywords` ENABLE KEYS */;


-- Dumping structure for table bluebay_will.meteo
DROP TABLE IF EXISTS `meteo`;
CREATE TABLE IF NOT EXISTS `meteo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(150) NOT NULL,
  `service_id` varchar(150) NOT NULL,
  `temp` varchar(20) DEFAULT NULL,
  `order` tinyint(4) DEFAULT '99',
  `modifiedAt` datetime DEFAULT NULL,
  `status` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Dumping data for table bluebay_will.meteo: ~17 rows (approximately)
/*!40000 ALTER TABLE `meteo` DISABLE KEYS */;
REPLACE INTO `meteo` (`id`, `city`, `service_id`, `temp`, `order`, `modifiedAt`, `status`) VALUES
	(1, 'Arad', 'LRAR', NULL, 1, NULL, 'N'),
	(2, 'Bacau', 'LRBC', NULL, 2, NULL, 'N'),
	(3, 'Baia Mare', 'LRBM', NULL, 3, NULL, 'N'),
	(4, 'Bucuresti - Baneasa', 'LRBS', '13', 4, '2014-10-07 18:09:23', 'Y'),
	(5, 'Bucuresti - Otopeni', 'LROP', NULL, 5, NULL, 'N'),
	(6, 'Caransebes - Resita', 'LRCS', NULL, 6, NULL, 'N'),
	(7, 'Cluj-Napoca', 'LRCL', NULL, 7, NULL, 'N'),
	(8, 'Constanta', 'LRCK', '14', 8, '2014-10-07 16:30:56', 'N'),
	(9, 'Craiova', 'LRCV', '13', 9, '2014-10-07 16:30:56', 'N'),
	(10, 'Iasi', 'LRIA', '13', 10, '2014-10-07 16:30:57', 'N'),
	(11, 'Oradea', 'LROD', NULL, 11, '2014-10-06 15:38:52', 'N'),
	(12, 'Satu Mare', 'LRSM', NULL, 12, NULL, 'N'),
	(13, 'Sibiu', 'LRSB', NULL, 13, NULL, 'N'),
	(14, 'Suceava', 'LRSV', NULL, 14, NULL, 'N'),
	(15, 'Targu Mures', 'LRTM', NULL, 15, NULL, 'N'),
	(16, 'Timisoara', 'LRTR', NULL, 16, NULL, 'N'),
	(17, 'Tulcea', 'LRTC', NULL, 17, NULL, 'N');
/*!40000 ALTER TABLE `meteo` ENABLE KEYS */;


-- Dumping structure for table bluebay_will.pages
DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageType` enum('termeni','servicii','avantaje','contact') NOT NULL,
  `content` text,
  `metaTitle` varchar(150) DEFAULT NULL,
  `metaDescription` varchar(200) DEFAULT NULL,
  `metaKeywords` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table bluebay_will.pages: ~4 rows (approximately)
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
REPLACE INTO `pages` (`id`, `pageType`, `content`, `metaTitle`, `metaDescription`, `metaKeywords`) VALUES
	(1, 'termeni', 'Pagina termeni si conditii Director Web\r\n\r\nVa rugam sa cititi aceste instructiuni si sa respectati toate criteriile si indrumarile inainte de a adauga siteul dvs. Editorii will.ro au dreptul sa respinga, suspende sau sa stearga fara preaviz orice site care nu respecta instructiunile de mai jos sau instructiunile suplimentare aferente planurilor.\r\n\r\nInainte de a continua propunerea, verificati daca site-ul nu este deja listat in director.\r\n\r\n\r\n\r\n  NU acceptam in director urmatoarele categorii de site-uri:\r\n>site-uri gazduite gratuit si/sau subdomenii gratuite;\r\n>site-uri duplicat (mirror);\r\n>site-uri in constructie sau cu pagini fara continut;\r\n>site-uri in alta limba decat romana/engleza \r\n>site-uri cu publicitate excesiva;\r\n>site-uri care contin cuvinte ascunse sau orice forma de spam etc;\r\n>site-uri care incalca orice lege romaneasca sau internationala; \r\n>site-uri care deschid pop-up, pop-under sau impun votul in diverse topuri sau clasamente;\r\n>site-uri care redirectioneaza catre alt domeniu;\r\n>site-uri cu continut sau orientare sexuala si/sau fara avertismentele legale\r\n\r\nPrin acceptarea acestor Termeni si Conditii, utilizatorul este de acord sa primeasca notificari din partea will.ro precum si informatii suplimentare din partea site-urilor partenere detinute de BlueBay Design S.R.L.', 'termeni si conditii', 'termeni si conditii director', 'director web, inscrie site, reclama site, termeni'),
	(2, 'servicii', 'Pagina servcii \r\n\r\n Serviciile pe care le prestam se concentreaza atat pe partea de crestere a traficului sitului dumneavoastra cat si pe ...', 'Servicii web', 'Servicii de promovare pentru site-ul tau, promoveaza-ti site-ul ', 'director web, servicii web, etc..'),
	(3, 'avantaje', 'Pagina avantaje\r\n\r\nInscrierea in directorul web Will.ro va avea urmatoarele avantaje:\r\n\r\n- Cresterea numarului de vizitatori \r\n- Vom avea link direct catre dumneavoastra \r\n- Posibilitatea de a lucra o echipa profesionista\r\n- Site-urile sponsorizate sunt afisate primele in categoria din care fac parte indiferent de numarul de accesari.  Pentru a deveni link sponsorizat va rugam introduceti codul in pagina principala a sitului dumneavoastra.', 'Avantaje inscriere in directoare', 'Inscrierea in directorul web Will.ro va avea urmatoarele avantaje:', 'inscrie in director, director web, blaa'),
	(4, 'contact', 'adeofowijf <script', 'meta title', 'descriere meta <script', 'meta keys');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;


-- Dumping structure for table bluebay_will.settings
DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `param` varchar(100) NOT NULL,
  `val` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table bluebay_will.settings: ~1 rows (approximately)
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
REPLACE INTO `settings` (`id`, `param`, `val`) VALUES
	(1, 'emailAdmin', 'george@1store.ro');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
