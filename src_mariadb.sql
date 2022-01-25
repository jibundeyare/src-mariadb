-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 25 jan. 2022 à 01:12
-- Version du serveur :  10.5.9-MariaDB
-- Version de PHP : 8.0.6

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `src_mariadb`
--

-- --------------------------------------------------------

--
-- Structure de la table `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `checkpoint_date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `project`
--

INSERT INTO `project` (`id`, `name`, `description`, `client_name`, `start_date`, `checkpoint_date`, `delivery_date`) VALUES
(1, 'Projet test 1', 'Projet pour les tests 1', 'Client test 1', '2021-03-01', '2021-04-01', '2021-05-01'),
(2, 'Est molestiae placeat hic.', 'Iure aspernatur qui vel ad vel aspernatur.', 'Laetitia Leveque', '2021-05-01', '2021-05-26', '2021-06-28'),
(3, 'Quia voluptates quia nesciunt.', 'Aspernatur fugiat sunt totam in.', 'Christophe du Alves', '2021-05-01', '2021-05-30', '2021-07-01'),
(4, 'Eligendi aut ut facere.', 'Optio est ut voluptatum.', 'Jacqueline Pierre', '2021-04-27', '2021-05-29', '2021-06-30'),
(5, 'Ea nostrum vitae.', 'Officia tempora neque voluptas minima sit praesentium tempora.', 'Guy Le Roux', '2021-04-27', '2021-05-25', '2021-06-26'),
(6, 'Asperiores aut molestias hic.', 'Qui asperiores est eligendi placeat eius provident.', 'Gérard-Adrien Pons', '2021-05-01', '2021-05-29', '2021-06-29'),
(7, 'Voluptatem eaque a.', 'Et sit repellendus culpa.', 'Brigitte Clerc', '2021-04-26', '2021-05-27', '2021-07-01'),
(8, 'Soluta necessitatibus totam.', 'Expedita sunt repudiandae maiores id.', 'Dominique Gonzalez-Antoine', '2021-04-30', '2021-05-28', '2021-06-29'),
(9, 'Nihil ipsa quas ab sed.', 'Et perspiciatis debitis sint sed quibusdam consequuntur id culpa.', 'Caroline Benoit', '2021-04-28', '2021-05-31', '2021-06-25'),
(10, 'Optio aliquam accusamus possimus.', 'Necessitatibus omnis similique illo sint a ea.', 'Margaux-Colette Mercier', '2021-04-25', '2021-05-26', '2021-06-29'),
(11, 'Perspiciatis vel id similique est.', 'Quidem dolore sint eum recusandae esse sint.', 'Martin Laroche', '2021-04-26', '2021-05-28', '2021-06-28'),
(12, 'Esse omnis occaecati.', 'Consequatur ut adipisci repellat facere facilis quo.', 'Adrien Guillou', '2021-04-28', '2021-05-31', '2021-06-25'),
(13, 'Et est impedit quia.', 'Harum provident corrupti et voluptatem dolores.', 'Emmanuel Moreno', '2021-05-01', '2021-05-28', '2021-06-26'),
(14, 'Dolore adipisci.', 'Dolore assumenda molestias magnam aliquid alias qui.', 'Laure Clement-Diaz', '2021-04-29', '2021-05-30', '2021-07-01'),
(15, 'Dolor quod rerum eaque.', 'Deserunt vel et ut excepturi fugit ut.', 'Raymond Traore', '2021-04-29', '2021-05-28', '2021-06-25'),
(16, 'Laudantium in numquam odio provident.', 'Nulla sed voluptatibus architecto fugit deleniti.', 'Matthieu Lebon', '2021-04-25', '2021-05-28', '2021-06-27'),
(17, 'Sit et laboriosam accusamus.', 'Blanditiis dolor sunt et.', 'Henriette Dumont', '2021-04-27', '2021-05-29', '2021-06-28'),
(18, 'Rerum sit.', 'Sit perspiciatis repellat ex et assumenda dolorum.', 'Eugène Richard', '2021-04-29', '2021-05-29', '2021-06-27'),
(19, 'Quae ipsum labore.', 'Laudantium facere placeat mollitia et cumque vel.', 'Adrienne Bertrand-Munoz', '2021-04-26', '2021-05-26', '2021-06-28'),
(20, 'Nobis sit sed rerum.', 'Earum voluptatibus consequatur veniam magnam.', 'Grégoire Foucher', '2021-05-01', '2021-05-28', '2021-06-26');

-- --------------------------------------------------------

--
-- Structure de la table `project_tag`
--

DROP TABLE IF EXISTS `project_tag`;
CREATE TABLE `project_tag` (
  `project_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `project_tag`
--

INSERT INTO `project_tag` (`project_id`, `tag_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 9),
(2, 10),
(3, 1),
(3, 4),
(3, 5),
(3, 6),
(4, 3),
(4, 10),
(5, 6),
(5, 7),
(6, 5),
(6, 7),
(7, 1),
(7, 2),
(7, 3),
(8, 1),
(8, 2),
(8, 6),
(8, 7),
(9, 3),
(9, 6),
(9, 9),
(10, 2),
(10, 5),
(10, 7),
(11, 1),
(11, 5),
(11, 8),
(11, 9),
(12, 2),
(12, 3),
(12, 4),
(12, 8),
(13, 1),
(13, 3),
(13, 6),
(14, 1),
(14, 4),
(14, 5),
(14, 8),
(15, 4),
(15, 7),
(15, 8),
(16, 4),
(16, 6),
(16, 10),
(17, 5),
(17, 6),
(17, 7),
(17, 8),
(18, 9),
(18, 10),
(19, 3),
(19, 7),
(20, 5),
(20, 6),
(20, 9);

-- --------------------------------------------------------

--
-- Structure de la table `school_year`
--

DROP TABLE IF EXISTS `school_year`;
CREATE TABLE `school_year` (
  `id` int(11) NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `school_year`
--

INSERT INTO `school_year` (`id`, `name`, `description`, `start_date`, `end_date`) VALUES
(1, 'Promo test', 'Promo pour les tests', '2021-01-01', '2021-08-01'),
(2, 'Nam ratione aut.', 'Dolorem nulla corporis voluptatem illo distinctio molestiae.', '2021-01-27', '2021-07-26'),
(3, 'Ut autem blanditiis.', 'Est et minima quibusdam corrupti qui eum est voluptas.', '2021-01-26', '2021-07-25'),
(4, 'Illum et.', 'Quisquam dolores soluta ut aut vel.', '2021-01-29', '2021-07-29'),
(5, 'Ut laborum ea.', 'Odio hic neque et sit.', '2021-01-27', '2021-07-26'),
(6, 'Nobis laborum.', 'Qui sit debitis fugiat libero enim nihil.', '2021-01-30', '2021-07-30'),
(7, 'Laboriosam cum.', 'Et magnam magni voluptatibus atque nam.', '2021-01-27', '2021-07-29'),
(8, 'Fugit a.', 'Porro aut qui labore maiores est vero eum occaecati.', '2021-01-29', '2021-07-29'),
(9, 'Et illo et.', 'A exercitationem reprehenderit amet explicabo officiis deserunt.', '2021-01-29', '2021-07-25'),
(10, 'Deserunt in.', 'Deleniti repellendus labore aut et.', '2021-01-30', '2021-07-27');

-- --------------------------------------------------------

--
-- Structure de la table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `school_year_id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `firstname` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `student`
--

INSERT INTO `student` (`id`, `school_year_id`, `project_id`, `firstname`, `lastname`, `email`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Toto', 'Test', 'toto.test@example.com', '2021-01-01 00:00:00', '2021-01-01 00:00:00'),
(2, 1, 1, 'Titi', 'Test', 'titi.test@example.com', '2021-01-02 00:00:00', '2021-01-02 00:00:00'),
(3, 1, 1, 'Tata', 'Test', 'tata.test@example.com', '2021-01-03 00:00:00', '2021-01-03 00:00:00'),
(4, 1, 1, 'Tutu', 'Test', 'tutu.test@example.com', '2021-01-04 00:00:00', '2021-01-04 00:00:00'),
(5, 1, 1, 'Tete', 'Test', 'tete.test@example.com', '2021-01-05 00:00:00', '2021-01-05 00:00:00'),
(6, 6, 16, 'Rémy', 'Hamon', 'remy.hamon@example.com', '2021-01-26 05:12:36', '2021-01-26 05:12:36'),
(7, 5, 15, 'Patrick', 'Leveque', 'patrick.leveque@example.com', '2021-01-27 16:54:23', '2021-01-27 16:54:23'),
(8, 4, 14, 'Nathalie', 'Bouvet', 'nathalie.bouvet@example.com', '2021-01-30 23:16:51', '2021-01-30 23:16:51'),
(9, 3, 13, 'Philippine', 'Michel', 'philippine.michel@example.com', '2021-01-30 04:55:40', '2021-01-30 04:55:40'),
(10, 2, 12, 'David', 'Brunet', 'david.brunet@example.com', '2021-01-27 12:13:22', '2021-01-27 12:13:22'),
(11, 1, 11, 'Gilles', 'Marty', 'gilles.marty@example.com', '2021-01-29 11:29:05', '2021-01-29 11:29:05'),
(12, 10, 10, 'Patrick', 'Gilbert', 'patrick.gilbert@example.com', '2021-01-26 01:05:18', '2021-01-26 01:05:18'),
(13, 9, 9, 'Jacques', 'Guillou', 'jacques.guillou@example.com', '2021-01-28 15:18:21', '2021-01-28 15:18:21'),
(14, 8, 8, 'Théodore', 'Mendes', 'theodore.mendes@example.com', '2021-01-30 03:42:09', '2021-01-30 03:42:09'),
(15, 7, 7, 'Olivier', 'Pasquier', 'olivier.pasquier@example.com', '2021-01-26 02:08:40', '2021-01-26 02:08:40'),
(16, 6, 6, 'Honoré', 'Valette', 'honore.valette@example.com', '2021-01-29 00:56:50', '2021-01-29 00:56:50'),
(17, 5, 5, 'Gabrielle', 'Perret', 'gabrielle.perret@example.com', '2021-01-25 14:56:18', '2021-01-25 14:56:18'),
(18, 4, 4, 'Patrick', 'Laroche', 'patrick.laroche@example.com', '2021-01-29 13:50:51', '2021-01-29 13:50:51'),
(19, 3, 3, 'Augustin', 'Dubois', 'augustin.dubois@example.com', '2021-01-28 01:00:36', '2021-01-28 01:00:36'),
(20, 2, 2, 'Gilles', 'Hamon', 'gilles.hamon@example.com', '2021-01-26 04:03:20', '2021-01-26 04:03:20'),
(21, 1, 1, 'Émile', 'Allain', 'emile.allain@example.com', '2021-01-30 03:04:35', '2021-01-30 03:04:35'),
(22, 10, 20, 'Dorothée', 'Cohen', 'dorothee.cohen@example.com', '2021-01-26 16:46:31', '2021-01-26 16:46:31'),
(23, 9, 19, 'Robert', 'Garnier', 'robert.garnier@example.com', '2021-01-29 09:24:15', '2021-01-29 09:24:15'),
(24, 8, 18, 'Joseph', 'Pichon', 'joseph.pichon@example.com', '2021-01-29 08:08:56', '2021-01-29 08:08:56'),
(25, 7, 17, 'Luce', 'Marchal', 'luce.marchal@example.com', '2021-01-26 22:39:39', '2021-01-26 22:39:39'),
(26, 6, 16, 'Augustin', 'Verdier', 'augustin.verdier@example.com', '2021-01-28 07:55:34', '2021-01-28 07:55:34'),
(27, 5, 15, 'William', 'Gillet', 'william.gillet@example.com', '2021-01-29 05:34:13', '2021-01-29 05:34:13'),
(28, 4, 14, 'Anastasie', 'Guillou', 'anastasie.guillou@example.com', '2021-01-25 20:41:22', '2021-01-25 20:41:22'),
(29, 3, 13, 'Adrien', 'Berger', 'adrien.berger@example.com', '2021-01-29 00:05:26', '2021-01-29 00:05:26'),
(30, 2, 12, 'Patrick', 'Ollivier', 'patrick.ollivier@example.com', '2021-01-25 03:01:57', '2021-01-25 03:01:57'),
(31, 1, 11, 'Victor', 'Barre', 'victor.barre@example.com', '2021-01-27 09:18:26', '2021-01-27 09:18:26'),
(32, 10, 10, 'Corinne', 'Poulain', 'corinne.poulain@example.com', '2021-01-30 10:05:42', '2021-01-30 10:05:42'),
(33, 9, 9, 'Zoé', 'Lombard', 'zoe.lombard@example.com', '2021-01-27 11:59:59', '2021-01-27 11:59:59'),
(34, 8, 8, 'Alain', 'Blanchard', 'alain.blanchard@example.com', '2021-01-29 15:09:09', '2021-01-29 15:09:09'),
(35, 7, 7, 'Mathilde', 'Guilbert', 'mathilde.guilbert@example.com', '2021-01-28 23:54:00', '2021-01-28 23:54:00'),
(36, 6, 6, 'Philippe', 'Fleury', 'philippe.fleury@example.com', '2021-01-26 00:11:31', '2021-01-26 00:11:31'),
(37, 5, 5, 'Xavier', 'Boulanger', 'xavier.boulanger@example.com', '2021-01-25 19:19:19', '2021-01-25 19:19:19'),
(38, 4, 4, 'David', 'Blanchet', 'david.blanchet@example.com', '2021-01-30 07:23:23', '2021-01-30 07:23:23'),
(39, 3, 3, 'Aimée', 'Albert', 'aimee.albert@example.com', '2021-01-28 19:55:08', '2021-01-28 19:55:08'),
(40, 2, 2, 'Hélène', 'Tessier', 'helene.tessier@example.com', '2021-01-26 11:31:49', '2021-01-26 11:31:49'),
(41, 1, 1, 'Daniel', 'Hernandez', 'daniel.hernandez@example.com', '2021-01-27 07:40:11', '2021-01-27 07:40:11'),
(42, 10, 20, 'Chantal', 'Masson', 'chantal.masson@example.com', '2021-01-29 02:29:24', '2021-01-29 02:29:24'),
(43, 9, 19, 'Dominique', 'Roy', 'dominique.roy@example.com', '2021-01-26 20:45:16', '2021-01-26 20:45:16'),
(44, 8, 18, 'Antoine', 'Bonnet', 'antoine.bonnet@example.com', '2021-01-31 06:54:39', '2021-01-31 06:54:39'),
(45, 7, 17, 'Roland', 'Legrand', 'roland.legrand@example.com', '2021-01-31 03:53:26', '2021-01-31 03:53:26'),
(46, 6, 16, 'Véronique', 'Pasquier', 'veronique.pasquier@example.com', '2021-01-26 16:08:31', '2021-01-26 16:08:31'),
(47, 5, 15, 'Michelle', 'Schneider', 'michelle.schneider@example.com', '2021-01-30 01:36:05', '2021-01-30 01:36:05'),
(48, 4, 14, 'Susan', 'Pichon', 'susan.pichon@example.com', '2021-01-27 10:57:50', '2021-01-27 10:57:50'),
(49, 3, 13, 'Nath', 'Vallee', 'nath.vallee@example.com', '2021-01-28 23:32:18', '2021-01-28 23:32:18'),
(50, 2, 12, 'Marguerite', 'Morvan', 'marguerite.morvan@example.com', '2021-01-30 20:42:48', '2021-01-30 20:42:48'),
(51, 1, 11, 'Isaac', 'Gaudin', 'isaac.gaudin@example.com', '2021-01-28 22:22:32', '2021-01-28 22:22:32'),
(52, 10, 10, 'Jacqueline', 'Descamps', 'jacqueline.descamps@example.com', '2021-01-31 08:31:17', '2021-01-31 08:31:17'),
(53, 9, 9, 'Célina', 'Robin', 'celina.robin@example.com', '2021-01-27 14:35:56', '2021-01-27 14:35:56'),
(54, 8, 8, 'Henri', 'Goncalves', 'henri.goncalves@example.com', '2021-01-27 19:25:05', '2021-01-27 19:25:05'),
(55, 7, 7, 'Chantal', 'Da Costa', 'chantal.da-costa@example.com', '2021-01-29 18:51:53', '2021-01-29 18:51:53'),
(56, 6, 6, 'Victor', 'Rolland', 'victor.rolland@example.com', '2021-01-29 07:48:11', '2021-01-29 07:48:11'),
(57, 5, 5, 'Frédéric', 'Evrard', 'frederic.evrard@example.com', '2021-01-26 03:36:04', '2021-01-26 03:36:04'),
(58, 4, 4, 'Xavier', 'Voisin', 'xavier.voisin@example.com', '2021-01-28 00:54:15', '2021-01-28 00:54:15'),
(59, 3, 3, 'Roland', 'Pruvost', 'roland.pruvost@example.com', '2021-01-28 16:45:12', '2021-01-28 16:45:12'),
(60, 2, 2, 'Alix', 'Jacques', 'alix.jacques@example.com', '2021-01-26 11:59:15', '2021-01-26 11:59:15'),
(61, 1, 1, 'Marcelle', 'Joseph', 'marcelle.joseph@example.com', '2021-01-29 02:19:52', '2021-01-29 02:19:52'),
(62, 10, 20, 'Éléonore', 'Peltier', 'eleonore.peltier@example.com', '2021-01-30 07:25:04', '2021-01-30 07:25:04'),
(63, 9, 19, 'Isaac', 'Jean', 'isaac.jean@example.com', '2021-01-29 05:09:48', '2021-01-29 05:09:48'),
(64, 8, 18, 'Dominique', 'Leleu', 'dominique.leleu@example.com', '2021-01-28 17:52:02', '2021-01-28 17:52:02'),
(65, 7, 17, 'Alexandrie', 'Perez', 'alexandrie.perez@example.com', '2021-01-26 23:50:30', '2021-01-26 23:50:30'),
(66, 6, 16, 'Margaux', 'Samson', 'margaux.samson@example.com', '2021-01-26 07:45:23', '2021-01-26 07:45:23'),
(67, 5, 15, 'Nathalie', 'Marie', 'nathalie.marie@example.com', '2021-01-27 00:51:57', '2021-01-27 00:51:57'),
(68, 4, 14, 'Alexandria', 'Roux', 'alexandria.roux@example.com', '2021-01-29 12:44:32', '2021-01-29 12:44:32'),
(69, 3, 13, 'Monique', 'De Sousa', 'monique.de-sousa@example.com', '2021-01-26 14:37:28', '2021-01-26 14:37:28'),
(70, 2, 12, 'Charlotte', 'Merle', 'charlotte.merle@example.com', '2021-01-27 17:04:21', '2021-01-27 17:04:21'),
(71, 1, 11, 'Richard', 'Bernier', 'richard.bernier@example.com', '2021-01-27 22:47:26', '2021-01-27 22:47:26'),
(72, 10, 10, 'Pénélope', 'Peron', 'penelope.peron@example.com', '2021-01-30 01:26:53', '2021-01-30 01:26:53'),
(73, 9, 9, 'Élise', 'Fontaine', 'elise.fontaine@example.com', '2021-01-30 03:28:12', '2021-01-30 03:28:12'),
(74, 8, 8, 'Guy', 'Auger', 'guy.auger@example.com', '2021-01-25 15:02:52', '2021-01-25 15:02:52'),
(75, 7, 7, 'Alphonse', 'Marques', 'alphonse.marques@example.com', '2021-01-28 04:07:26', '2021-01-28 04:07:26'),
(76, 6, 6, 'Claire', 'Pires', 'claire.pires@example.com', '2021-01-28 05:48:32', '2021-01-28 05:48:32'),
(77, 5, 5, 'Alfred', 'Regnier', 'alfred.regnier@example.com', '2021-01-27 07:35:49', '2021-01-27 07:35:49'),
(78, 4, 4, 'André', 'Alexandre', 'andre.alexandre@example.com', '2021-01-30 05:26:54', '2021-01-30 05:26:54'),
(79, 3, 3, 'Camille', 'Mace', 'camille.mace@example.com', '2021-01-30 03:34:51', '2021-01-30 03:34:51'),
(80, 2, 2, 'Margaud', 'Vincent', 'margaud.vincent@example.com', '2021-01-28 16:16:43', '2021-01-28 16:16:43'),
(81, 1, 1, 'Bernadette', 'Guyot', 'bernadette.guyot@example.com', '2021-01-25 10:42:18', '2021-01-25 10:42:18'),
(82, 10, 20, 'Michèle', 'Joseph', 'michele.joseph@example.com', '2021-01-28 10:54:55', '2021-01-28 10:54:55'),
(83, 9, 19, 'Antoine', 'Camus', 'antoine.camus@example.com', '2021-01-28 14:50:13', '2021-01-28 14:50:13'),
(84, 8, 18, 'Audrey', 'Hoareau', 'audrey.hoareau@example.com', '2021-01-27 22:44:47', '2021-01-27 22:44:47'),
(85, 7, 17, 'Franck', 'Fabre', 'franck.fabre@example.com', '2021-01-31 01:49:48', '2021-01-31 01:49:48'),
(86, 6, 16, 'Suzanne', 'Launay', 'suzanne.launay@example.com', '2021-01-29 04:28:02', '2021-01-29 04:28:02'),
(87, 5, 15, 'Océane', 'Tessier', 'oceane.tessier@example.com', '2021-01-25 01:36:26', '2021-01-25 01:36:26'),
(88, 4, 14, 'Antoine', 'Millet', 'antoine.millet@example.com', '2021-01-25 19:35:40', '2021-01-25 19:35:40'),
(89, 3, 13, 'Richard', 'Boulanger', 'richard.boulanger@example.com', '2021-01-26 14:38:00', '2021-01-26 14:38:00'),
(90, 2, 12, 'Robert', 'Alves', 'robert.alves@example.com', '2021-01-28 10:52:47', '2021-01-28 10:52:47'),
(91, 1, 11, 'Édith', 'Fernandez', 'edith.fernandez@example.com', '2021-01-25 14:14:27', '2021-01-25 14:14:27'),
(92, 10, 10, 'Célina', 'Parent', 'celina.parent@example.com', '2021-01-30 11:24:23', '2021-01-30 11:24:23'),
(93, 9, 9, 'Pierre', 'Marechal', 'pierre.marechal@example.com', '2021-01-30 19:42:50', '2021-01-30 19:42:50'),
(94, 8, 8, 'Jacqueline', 'Aubert', 'jacqueline.aubert@example.com', '2021-01-31 17:31:03', '2021-01-31 17:31:03'),
(95, 7, 7, 'Théophile', 'Roux', 'theophile.roux@example.com', '2021-01-27 05:28:32', '2021-01-27 05:28:32'),
(96, 6, 6, 'Victor', 'Bourdon', 'victor.bourdon@example.com', '2021-01-30 09:58:48', '2021-01-30 09:58:48'),
(97, 5, 5, 'Gilles', 'Guilbert', 'gilles.guilbert@example.com', '2021-01-28 19:43:01', '2021-01-28 19:43:01'),
(98, 4, 4, 'Marcelle', 'Levy', 'marcelle.levy@example.com', '2021-01-26 05:16:02', '2021-01-26 05:16:02'),
(99, 3, 3, 'Rémy', 'Legendre', 'remy.legendre@example.com', '2021-01-25 15:26:56', '2021-01-25 15:26:56'),
(100, 2, 2, 'Robert', 'Blanchet', 'robert.blanchet@example.com', '2021-01-25 20:12:49', '2021-01-25 20:12:49');

-- --------------------------------------------------------

--
-- Structure de la table `student_tag`
--

DROP TABLE IF EXISTS `student_tag`;
CREATE TABLE `student_tag` (
  `student_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `student_tag`
--

INSERT INTO `student_tag` (`student_id`, `tag_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(5, 2),
(5, 3);

-- --------------------------------------------------------

--
-- Structure de la table `tag`
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tag`
--

INSERT INTO `tag` (`id`, `name`, `description`) VALUES
(1, 'HTML', NULL),
(2, 'CSS', NULL),
(3, 'JavaScript', NULL),
(4, 'Python', NULL),
(5, 'PHP', NULL),
(6, 'SQL', NULL),
(7, 'React', NULL),
(8, 'Vue', NULL),
(9, 'Symfony', NULL),
(10, 'Bash', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `project_tag`
--
ALTER TABLE `project_tag`
  ADD PRIMARY KEY (`project_id`,`tag_id`),
  ADD KEY `IDX_91F26D60166D1F9C` (`project_id`),
  ADD KEY `IDX_91F26D60BAD26311` (`tag_id`);

--
-- Index pour la table `school_year`
--
ALTER TABLE `school_year`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B723AF33D2EECC3F` (`school_year_id`),
  ADD KEY `IDX_B723AF33166D1F9C` (`project_id`);

--
-- Index pour la table `student_tag`
--
ALTER TABLE `student_tag`
  ADD PRIMARY KEY (`student_id`,`tag_id`),
  ADD KEY `IDX_95F4B225CB944F1A` (`student_id`),
  ADD KEY `IDX_95F4B225BAD26311` (`tag_id`);

--
-- Index pour la table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `school_year`
--
ALTER TABLE `school_year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `project_tag`
--
ALTER TABLE `project_tag`
  ADD CONSTRAINT `FK_91F26D60166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_91F26D60BAD26311` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `FK_B723AF33166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`),
  ADD CONSTRAINT `FK_B723AF33D2EECC3F` FOREIGN KEY (`school_year_id`) REFERENCES `school_year` (`id`);

--
-- Contraintes pour la table `student_tag`
--
ALTER TABLE `student_tag`
  ADD CONSTRAINT `FK_95F4B225BAD26311` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_95F4B225CB944F1A` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
