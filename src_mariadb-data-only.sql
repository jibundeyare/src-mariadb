-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  jeu. 10 jan. 2019 à 00:13
-- Version du serveur :  10.1.35-MariaDB
-- Version de PHP :  7.2.9

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `src_mariadb`
--

--
-- Tronquer la table avant d'insérer `project`
--

TRUNCATE TABLE `project`;
--
-- Déchargement des données de la table `project`
--

INSERT INTO `project` (`id`, `name`, `description`, `client_name`, `start_date`, `checkpoint_date`, `delivery_date`) VALUES
(1, 'Foo', NULL, 'The Company', '2018-02-05', NULL, NULL),
(2, 'Bar', NULL, 'The Other Company', '2018-03-12', NULL, NULL),
(3, 'Baz', NULL, 'Another Company', '2018-04-02', NULL, NULL),
(4, 'Lorem', NULL, 'Same But Different Company', '2018-05-07', NULL, NULL);

--
-- Tronquer la table avant d'insérer `project_tag`
--

TRUNCATE TABLE `project_tag`;
--
-- Déchargement des données de la table `project_tag`
--

INSERT INTO `project_tag` (`project_id`, `tag_id`) VALUES
(1, 1),
(1, 2),
(2, 4),
(2, 5),
(3, 1),
(3, 2),
(3, 3);

--
-- Tronquer la table avant d'insérer `student`
--

TRUNCATE TABLE `student`;
--
-- Déchargement des données de la table `student`
--

INSERT INTO `student` (`id`, `firstname`, `lastname`, `email`, `creation_date`, `modification_date`, `project_id`) VALUES
(1, 'Brunhilde', 'Conroy', 'bconroy0@1und1.de', '2018-04-01 22:00:00', '2018-06-20 22:00:00', 1),
(2, 'Hirsch', 'Emmanueli', 'hemmanueli1@nbcnews.com', '2018-05-02 22:00:00', '2018-01-19 23:00:00', 1),
(3, 'Niel', 'Dron', 'ndron2@uol.com.br', '2018-02-08 23:00:00', '2018-10-09 22:00:00', 1),
(4, 'Jacquenette', 'Lukash', 'jlukash3@flickr.com', '2018-03-11 23:00:00', '2018-06-22 22:00:00', 1),
(5, 'Sergent', 'Windaybank', 'swindaybank4@scribd.com', '2018-07-10 22:00:00', '2018-09-29 22:00:00', 1),
(6, 'Edeline', 'Lepere', 'elepere5@acquirethisname.com', '2018-08-16 22:00:00', '2018-04-21 22:00:00', 1),
(7, 'Wilden', 'Adamou', 'wadamou6@zimbio.com', '2018-04-26 22:00:00', '2018-06-04 22:00:00', 1),
(8, 'Roxanna', 'Whitesel', 'rwhitesel7@seattletimes.com', '2017-12-29 23:00:00', '2017-12-23 23:00:00', 1),
(9, 'Donal', 'Britcher', 'dbritcher8@freewebs.com', '2018-10-13 22:00:00', '2018-03-07 23:00:00', 1),
(10, 'Chaddy', 'Zealey', 'czealey9@facebook.com', '2018-10-24 22:00:00', '2018-10-31 23:00:00', 1),
(11, 'Randee', 'Disbrow', 'rdisbrowa@webeden.co.uk', '2018-07-29 22:00:00', '2018-06-01 22:00:00', 2),
(12, 'Arielle', 'Corragan', 'acorraganb@europa.eu', '2017-12-29 23:00:00', '2018-02-02 23:00:00', 2),
(13, 'Tybalt', 'Degoe', 'tdegoec@yolasite.com', '2018-01-27 23:00:00', '2018-04-14 22:00:00', 2),
(14, 'Giffer', 'Celez', 'gcelezd@dagondesign.com', '2018-11-03 23:00:00', '2018-11-11 23:00:00', 2),
(15, 'Wallis', 'Fulcher', 'wfulchere@arizona.edu', '2018-08-27 22:00:00', '2018-09-30 22:00:00', 2),
(16, 'Barn', 'Praton', 'bpratonf@taobao.com', '2018-05-03 22:00:00', '2018-06-24 22:00:00', 2),
(17, 'Madalyn', 'Langran', 'mlangrang@china.com.cn', '2018-03-18 23:00:00', '2018-05-13 22:00:00', 2),
(18, 'Winny', 'Parrot', 'wparroth@vkontakte.ru', '2018-09-11 22:00:00', '2018-05-13 22:00:00', 2),
(19, 'Jenifer', 'Tedahl', 'jtedahli@cloudflare.com', '2018-05-14 22:00:00', '2018-06-19 22:00:00', 2),
(20, 'Derrik', 'Tweedell', 'dtweedellj@aboutads.info', '2018-03-18 23:00:00', '2018-04-07 22:00:00', 2),
(21, 'Brett', 'Clericoates', 'bclericoatesk@sphinn.com', '2018-01-06 23:00:00', '2018-08-17 22:00:00', 3),
(22, 'Violette', 'Agerskow', 'vagerskowl@networksolutions.com', '2018-11-27 23:00:00', '2018-11-29 23:00:00', 3),
(23, 'Dorita', 'Lewzey', 'dlewzeym@dailymail.co.uk', '2018-08-13 22:00:00', '2018-08-26 22:00:00', 3),
(24, 'Jacquetta', 'Kynder', 'jkyndern@ed.gov', '2018-09-12 22:00:00', '2018-09-24 22:00:00', 3),
(25, 'Caitlin', 'Clulow', 'cclulowo@deliciousdays.com', '2018-11-03 23:00:00', '2018-11-06 23:00:00', 3),
(26, 'Gert', 'Vallis', 'gvallisp@yelp.com', '2018-02-02 23:00:00', '2018-08-21 22:00:00', 3),
(27, 'Alys', 'Thorneloe', 'athorneloeq@google.pl', '2018-10-10 22:00:00', '2018-07-29 22:00:00', 3),
(28, 'Antonia', 'Pietesch', 'apieteschr@ycombinator.com', '2018-10-22 22:00:00', '2018-01-24 23:00:00', 3),
(29, 'Byram', 'Petrusch', 'bpetruschs@hao123.com', '2018-07-08 22:00:00', '2018-12-02 23:00:00', 3),
(30, 'Odella', 'Pirt', 'opirtt@naver.com', '2018-05-24 22:00:00', '2018-03-14 23:00:00', 3),
(31, 'Claybourne', 'Le Gall', 'clegallu@cam.ac.uk', '2018-06-20 22:00:00', '2018-11-15 23:00:00', NULL),
(32, 'Marney', 'Natwick', 'mnatwickv@go.com', '2018-02-01 23:00:00', '2018-07-13 22:00:00', NULL),
(33, 'Ilene', 'Warret', 'iwarretw@usgs.gov', '2018-04-02 22:00:00', '2018-11-15 23:00:00', NULL),
(34, 'Gabi', 'Le Prevost', 'gleprevostx@geocities.com', '2018-04-23 22:00:00', '2018-08-22 22:00:00', NULL),
(35, 'Lorain', 'Docwra', 'ldocwray@linkedin.com', '2018-04-30 22:00:00', '2018-01-30 23:00:00', NULL),
(36, 'Maddie', 'Simeons', 'msimeonsz@1688.com', '2018-03-19 23:00:00', '2018-09-25 22:00:00', NULL),
(37, 'Bobine', 'Mc Caughen', 'bmccaughen10@histats.com', '2018-11-08 23:00:00', '2018-08-05 22:00:00', NULL),
(38, 'Drew', 'Josifovic', 'djosifovic11@sun.com', '2018-10-09 22:00:00', '2018-06-07 22:00:00', NULL),
(39, 'Bronny', 'Boys', 'bboys12@marriott.com', '2018-03-23 23:00:00', '2018-09-21 22:00:00', NULL),
(40, 'Jobie', 'Ortelt', 'jortelt13@mashable.com', '2018-12-01 23:00:00', '2018-10-02 22:00:00', NULL),
(41, 'Shell', 'Thurske', 'sthurske14@spiegel.de', '2018-07-21 22:00:00', '2018-09-07 22:00:00', NULL),
(42, 'Florence', 'Grinley', 'fgrinley15@booking.com', '2018-09-04 22:00:00', '2018-01-12 23:00:00', NULL),
(43, 'Teddie', 'Meron', 'tmeron16@typepad.com', '2018-10-21 22:00:00', '2018-09-21 22:00:00', NULL),
(44, 'Reynard', 'Simper', 'rsimper17@netvibes.com', '2018-01-15 23:00:00', '2018-07-18 22:00:00', NULL),
(45, 'Rich', 'Marler', 'rmarler18@sciencedirect.com', '2018-07-15 22:00:00', '2018-04-19 22:00:00', NULL),
(46, 'Marcellina', 'Fermoy', 'mfermoy19@aol.com', '2018-02-24 23:00:00', '2018-09-30 22:00:00', NULL),
(47, 'Anny', 'Lloyds', 'alloyds1a@tuttocitta.it', '2018-11-14 23:00:00', '2018-01-04 23:00:00', NULL),
(48, 'Zsazsa', 'Livesay', 'zlivesay1b@wix.com', '2018-11-14 23:00:00', '2018-07-20 22:00:00', NULL),
(49, 'Brok', 'Crowthe', 'bcrowthe1c@intel.com', '2018-06-12 22:00:00', '2018-05-13 22:00:00', NULL),
(50, 'Garold', 'Janz', 'gjanz1d@toplist.cz', '2018-08-13 22:00:00', '2018-08-26 22:00:00', NULL),
(51, 'Rivi', 'Chatteris', 'rchatteris1e@nps.gov', '2018-02-22 23:00:00', '2018-03-23 23:00:00', NULL),
(52, 'Cly', 'Lilbourne', 'clilbourne1f@tmall.com', '2018-03-07 23:00:00', '2018-05-01 22:00:00', NULL),
(53, 'Gregg', 'Prangle', 'gprangle1g@facebook.com', '2018-07-20 22:00:00', '2018-09-15 22:00:00', NULL),
(54, 'Bertha', 'Torbard', 'btorbard1h@army.mil', '2018-03-07 23:00:00', '2018-05-02 22:00:00', NULL),
(55, 'Tamar', 'Glasscoe', 'tglasscoe1i@nifty.com', '2018-02-20 23:00:00', '2018-03-06 23:00:00', NULL),
(56, 'Sylvia', 'Ninotti', 'sninotti1j@washingtonpost.com', '2018-11-13 23:00:00', '2018-02-22 23:00:00', NULL),
(57, 'Pier', 'Hampshaw', 'phampshaw1k@themeforest.net', '2018-07-28 22:00:00', '2017-12-24 23:00:00', NULL),
(58, 'Lesly', 'Feilden', 'lfeilden1l@github.com', '2018-09-14 22:00:00', '2018-01-17 23:00:00', NULL),
(59, 'Tessi', 'MacKegg', 'tmackegg1m@mozilla.org', '2018-09-20 22:00:00', '2018-04-29 22:00:00', NULL),
(60, 'Ara', 'Wyrill', 'awyrill1n@addthis.com', '2018-08-20 22:00:00', '2018-12-05 23:00:00', NULL),
(61, 'Harlen', 'Tabourier', 'htabourier1o@dion.ne.jp', '2018-03-28 22:00:00', '2018-07-17 22:00:00', NULL),
(62, 'Hedvige', 'Thornton-Dewhirst', 'hthorntondewhirst1p@ask.com', '2018-07-15 22:00:00', '2017-12-21 23:00:00', NULL),
(63, 'Livy', 'MacEntee', 'lmacentee1q@4shared.com', '2018-05-05 22:00:00', '2018-01-10 23:00:00', NULL),
(64, 'Tobit', 'Pietri', 'tpietri1r@sbwire.com', '2018-04-13 22:00:00', '2018-01-02 23:00:00', NULL),
(65, 'Broderick', 'Cordle', 'bcordle1s@foxnews.com', '2018-04-22 22:00:00', '2018-03-18 23:00:00', NULL),
(66, 'Karim', 'Mitchenson', 'kmitchenson1t@hexun.com', '2018-09-30 22:00:00', '2018-01-31 23:00:00', NULL),
(67, 'Ebony', 'Furphy', 'efurphy1u@cocolog-nifty.com', '2018-01-03 23:00:00', '2018-10-11 22:00:00', NULL),
(68, 'Reba', 'Dwight', 'rdwight1v@ovh.net', '2018-07-17 22:00:00', '2018-05-11 22:00:00', NULL),
(69, 'Fey', 'Jossum', 'fjossum1w@army.mil', '2018-10-05 22:00:00', '2018-09-10 22:00:00', NULL),
(70, 'Jillian', 'Kirwan', 'jkirwan1x@flavors.me', '2018-05-23 22:00:00', '2017-12-30 23:00:00', NULL),
(71, 'Tobit', 'MacMickan', 'tmacmickan1y@alexa.com', '2017-12-29 23:00:00', '2018-07-02 22:00:00', NULL),
(72, 'Virge', 'Lazar', 'vlazar1z@slideshare.net', '2018-09-29 22:00:00', '2018-08-30 22:00:00', NULL),
(73, 'Afton', 'Rice', 'arice20@nationalgeographic.com', '2018-08-10 22:00:00', '2018-02-19 23:00:00', NULL),
(74, 'Fania', 'Vasichev', 'fvasichev21@microsoft.com', '2018-08-08 22:00:00', '2018-06-12 22:00:00', NULL),
(75, 'Arley', 'Mumbey', 'amumbey22@blogger.com', '2018-09-19 22:00:00', '2018-11-28 23:00:00', NULL),
(76, 'Twila', 'Grogan', 'tgrogan23@huffingtonpost.com', '2018-07-24 22:00:00', '2018-04-18 22:00:00', NULL),
(77, 'Les', 'Redolfi', 'lredolfi24@biblegateway.com', '2018-07-16 22:00:00', '2018-08-25 22:00:00', NULL),
(78, 'Brittaney', 'Kemmish', 'bkemmish25@zdnet.com', '2018-01-13 23:00:00', '2018-03-17 23:00:00', NULL),
(79, 'Nita', 'Halegarth', 'nhalegarth26@ning.com', '2018-09-14 22:00:00', '2018-12-10 23:00:00', NULL),
(80, 'Herta', 'Haney`', 'hhaney27@pen.io', '2018-12-02 23:00:00', '2018-01-20 23:00:00', NULL),
(81, 'Cass', 'Clackson', 'cclackson28@paypal.com', '2018-11-30 23:00:00', '2018-09-24 22:00:00', NULL),
(82, 'Chalmers', 'Muzzillo', 'cmuzzillo29@newyorker.com', '2018-07-11 22:00:00', '2018-07-10 22:00:00', NULL),
(83, 'Ingaborg', 'Mearns', 'imearns2a@bbb.org', '2018-10-18 22:00:00', '2018-09-06 22:00:00', NULL),
(84, 'Marylee', 'Morton', 'mmorton2b@apache.org', '2018-08-10 22:00:00', '2018-11-21 23:00:00', NULL),
(85, 'Tallulah', 'Sheringham', 'tsheringham2c@buzzfeed.com', '2018-08-06 22:00:00', '2018-03-25 22:00:00', NULL),
(86, 'Phillie', 'Locarno', 'plocarno2d@loc.gov', '2018-02-04 23:00:00', '2018-03-11 23:00:00', NULL),
(87, 'Glenine', 'Hellsdon', 'ghellsdon2e@live.com', '2018-09-04 22:00:00', '2018-01-17 23:00:00', NULL),
(88, 'Marve', 'Overpool', 'moverpool2f@comcast.net', '2018-01-11 23:00:00', '2018-04-13 22:00:00', NULL),
(89, 'De', 'Carbry', 'dcarbry2g@independent.co.uk', '2018-07-28 22:00:00', '2018-09-05 22:00:00', NULL),
(90, 'Ciel', 'Cullimore', 'ccullimore2h@is.gd', '2018-08-20 22:00:00', '2018-09-22 22:00:00', NULL),
(91, 'Herman', 'Adamek', 'hadamek2i@quantcast.com', '2018-07-05 22:00:00', '2018-10-10 22:00:00', NULL),
(92, 'Angelique', 'Hanse', 'ahanse2j@reverbnation.com', '2018-08-17 22:00:00', '2018-02-10 23:00:00', NULL),
(93, 'Dacey', 'Maior', 'dmaior2k@smh.com.au', '2018-07-18 22:00:00', '2018-10-12 22:00:00', NULL),
(94, 'Daryle', 'Aberhart', 'daberhart2l@buzzfeed.com', '2018-12-10 23:00:00', '2018-03-30 22:00:00', NULL),
(95, 'Arielle', 'Friary', 'afriary2m@noaa.gov', '2018-05-14 22:00:00', '2018-01-02 23:00:00', NULL),
(96, 'Laurens', 'Sutter', 'lsutter2n@cyberchimps.com', '2018-06-02 22:00:00', '2018-09-12 22:00:00', NULL),
(97, 'Murry', 'Gisburne', 'mgisburne2o@bloglines.com', '2018-10-30 23:00:00', '2018-03-07 23:00:00', NULL),
(98, 'Ly', 'Kopfer', 'lkopfer2p@google.com.br', '2018-01-28 23:00:00', '2018-09-02 22:00:00', NULL),
(99, 'Dita', 'Buret', 'dburet2q@auda.org.au', '2018-04-11 22:00:00', '2018-08-01 22:00:00', NULL),
(100, 'Madonna', 'Mark', 'mmark2r@joomla.org', '2018-01-08 23:00:00', '2018-09-20 22:00:00', NULL);

--
-- Tronquer la table avant d'insérer `student_tag`
--

TRUNCATE TABLE `student_tag`;
--
-- Déchargement des données de la table `student_tag`
--

INSERT INTO `student_tag` (`student_id`, `tag_id`) VALUES
(1, 1),
(1, 2),
(2, 4),
(2, 5),
(3, 4),
(3, 5),
(4, 1),
(4, 2),
(4, 3),
(4, 5);

--
-- Tronquer la table avant d'insérer `tag`
--

TRUNCATE TABLE `tag`;
--
-- Déchargement des données de la table `tag`
--

INSERT INTO `tag` (`id`, `name`, `description`) VALUES
(1, 'html', ''),
(2, 'css', ''),
(3, 'js', ''),
(4, 'php', ''),
(5, 'sql', '');
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
