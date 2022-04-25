-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 25 jan. 2022 à 01:44
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
(2, 'Minima in iure tenetur.', 'Architecto autem et ab dignissimos.', 'Arnaude Normand-Roy', '2021-04-29', '2021-05-29', '2021-06-30'),
(3, 'At dignissimos minus.', 'Reiciendis eius reiciendis et.', 'Josette Tanguy', '2021-04-28', '2021-05-31', '2021-06-28'),
(4, 'Et ducimus consectetur eos voluptatibus.', 'Voluptatem et sit repellendus corrupti nisi dolorum sunt.', 'Gabriel Lemoine-Leleu', '2021-05-01', '2021-05-26', '2021-06-27'),
(5, 'Ea nemo placeat.', 'Dolores sit molestias qui architecto.', 'Alphonse du Guillaume', '2021-04-29', '2021-05-27', '2021-07-02'),
(6, 'Dicta quia at qui.', 'Culpa non porro voluptatibus dicta debitis.', 'Thibaut Bertrand', '2021-04-30', '2021-05-27', '2021-06-29'),
(7, 'Placeat sit cumque nisi.', 'Libero quibusdam ipsum totam optio corrupti est corrupti a.', 'Josette-Marianne Courtois', '2021-05-01', '2021-05-27', '2021-06-27'),
(8, 'Amet alias sed.', 'Architecto temporibus facilis maxime rerum eligendi explicabo nostrum.', 'Sophie Leroy', '2021-04-28', '2021-05-30', '2021-06-26'),
(9, 'Ratione consequatur quas.', 'Eaque illo fugiat explicabo ipsa ipsum et quas.', 'Odette de Levy', '2021-04-28', '2021-05-28', '2021-06-27'),
(10, 'Non non aspernatur.', 'Voluptates et nihil est dolores et possimus voluptatem optio.', 'Alain Pereira', '2021-04-27', '2021-05-25', '2021-07-01'),
(11, 'Dolores autem at.', 'Omnis libero cumque quaerat vero repellendus quo laborum.', 'Alice Lamy', '2021-04-25', '2021-05-28', '2021-06-27'),
(12, 'Architecto architecto.', 'Quaerat voluptas unde qui sint vel.', 'Yves Lejeune', '2021-04-29', '2021-05-29', '2021-06-30'),
(13, 'Mollitia quos eveniet occaecati.', 'Eos et aut fugit rerum cupiditate.', 'Aurélie-Cécile Lecomte', '2021-05-01', '2021-05-29', '2021-06-25'),
(14, 'Et explicabo atque.', 'Atque sequi aut aperiam repudiandae et repudiandae.', 'Constance Berger-Leclercq', '2021-04-28', '2021-05-31', '2021-06-26'),
(15, 'Odit eveniet maxime commodi.', 'Quis iure libero rerum sed quia.', 'Alice Lopez', '2021-05-01', '2021-05-29', '2021-07-01'),
(16, 'Ut delectus explicabo.', 'Aut ipsam enim repudiandae culpa aut voluptatem incidunt.', 'Alphonse Dupuy', '2021-05-01', '2021-05-25', '2021-06-26'),
(17, 'Molestias quaerat et voluptas error.', 'Modi nam velit sint quia non.', 'Virginie Costa-Boucher', '2021-04-26', '2021-05-29', '2021-07-01'),
(18, 'Qui ipsam inventore repellendus.', 'Vel nobis totam nesciunt ut ducimus eum veniam.', 'Susan Normand', '2021-04-30', '2021-05-27', '2021-06-25'),
(19, 'Ipsam sed pariatur.', 'Nam fuga modi dolorum iure neque.', 'Maurice Auger', '2021-04-28', '2021-05-30', '2021-06-28'),
(20, 'Quidem qui.', 'Aperiam dolores dolor delectus adipisci in sit.', 'Christelle Francois-Lagarde', '2021-04-30', '2021-05-28', '2021-06-30');

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
(2, 4),
(2, 7),
(2, 9),
(3, 2),
(3, 3),
(3, 4),
(3, 7),
(4, 1),
(4, 3),
(5, 3),
(5, 10),
(6, 2),
(6, 5),
(6, 6),
(6, 9),
(7, 4),
(7, 8),
(7, 10),
(8, 2),
(8, 4),
(8, 9),
(9, 2),
(9, 4),
(9, 5),
(9, 8),
(10, 2),
(10, 6),
(11, 5),
(11, 6),
(12, 2),
(12, 4),
(12, 9),
(12, 10),
(13, 2),
(13, 3),
(13, 7),
(13, 9),
(14, 5),
(14, 9),
(15, 4),
(15, 8),
(16, 1),
(16, 6),
(16, 10),
(17, 1),
(17, 6),
(17, 9),
(17, 10),
(18, 2),
(18, 4),
(18, 9),
(19, 5),
(19, 6),
(20, 2),
(20, 6),
(20, 7);

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
(2, 'Qui enim maiores.', 'Dolore laboriosam omnis consequuntur placeat veniam.', '2021-01-29', '2021-07-25'),
(3, 'Provident vel.', 'Quia blanditiis placeat rerum nesciunt.', '2021-01-28', '2021-07-26'),
(4, 'Deserunt fugit.', 'Et dolores officiis in ab sint et et.', '2021-01-30', '2021-07-28'),
(5, 'Voluptatem aut perspiciatis.', 'Aspernatur maiores deserunt velit dignissimos.', '2021-01-28', '2021-07-28'),
(6, 'Consequuntur magni.', 'Optio repellendus et et voluptatum non voluptatem.', '2021-01-30', '2021-07-25'),
(7, 'Qui excepturi.', 'Ratione accusantium neque voluptas.', '2021-01-29', '2021-07-28'),
(8, 'Quisquam quasi magni.', 'Deserunt aut adipisci dolores voluptatem.', '2021-01-29', '2021-07-29'),
(9, 'Voluptas nostrum.', 'Ad velit aspernatur et nobis.', '2021-01-28', '2021-07-26'),
(10, 'Inventore nesciunt.', 'Laboriosam provident magni sit consectetur autem sed dolores.', '2021-01-28', '2021-07-28');

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
(6, 6, 16, 'René', 'Fouquet', 'rene.fouquet@club-internet.fr', '2021-01-30 02:22:28', '2021-01-30 02:22:28'),
(7, 5, 15, 'Adrienne', 'David', 'adrienne.david@hotmail.fr', '2021-01-29 03:32:28', '2021-01-29 03:32:28'),
(8, 4, 14, 'Éric', 'Peron', 'eric.peron@hotmail.fr', '2021-01-25 14:21:51', '2021-01-25 14:21:51'),
(9, 3, 13, 'Bernard', 'Marin', 'bernard.marin@live.com', '2021-01-31 19:04:29', '2021-01-31 19:04:29'),
(10, 2, 12, 'Philippine', 'Legrand', 'philippine.legrand@dbmail.com', '2021-01-29 00:44:20', '2021-01-29 00:44:20'),
(11, 1, 11, 'Patrick', 'Delaunay', 'patrick.delaunay@noos.fr', '2021-01-26 04:53:02', '2021-01-26 04:53:02'),
(12, 10, 10, 'Chantal', 'Fernandez', 'chantal.fernandez@tele2.fr', '2021-01-31 07:47:58', '2021-01-31 07:47:58'),
(13, 9, 9, 'Bernard', 'Besson', 'bernard.besson@gmail.com', '2021-01-28 02:16:55', '2021-01-28 02:16:55'),
(14, 8, 8, 'Gilles', 'Gros', 'gilles.gros@live.com', '2021-01-26 09:51:55', '2021-01-26 09:51:55'),
(15, 7, 7, 'Thierry', 'Paris', 'thierry.paris@live.com', '2021-01-31 07:04:13', '2021-01-31 07:04:13'),
(16, 6, 6, 'Arthur', 'Lacombe', 'arthur.lacombe@gmail.com', '2021-01-27 05:21:34', '2021-01-27 05:21:34'),
(17, 5, 5, 'Gabrielle', 'Perrot', 'gabrielle.perrot@live.com', '2021-01-25 19:48:31', '2021-01-25 19:48:31'),
(18, 4, 4, 'Thibault', 'Francois', 'thibault.francois@wanadoo.fr', '2021-01-29 16:58:55', '2021-01-29 16:58:55'),
(19, 3, 3, 'Benoît', 'Maillet', 'benoit.maillet@yahoo.fr', '2021-01-28 15:14:22', '2021-01-28 15:14:22'),
(20, 2, 2, 'Édouard', 'Bonnet', 'edouard.bonnet@noos.fr', '2021-01-30 19:24:03', '2021-01-30 19:24:03'),
(21, 1, NULL, 'Pierre', 'Marty', 'pierre.marty@wanadoo.fr', '2021-01-31 04:54:00', '2021-01-31 04:54:00'),
(22, 10, 20, 'Marcel', 'Laurent', 'marcel.laurent@tele2.fr', '2021-01-30 03:32:53', '2021-01-30 03:32:53'),
(23, 9, 19, 'Océane', 'Martel', 'oceane.martel@club-internet.fr', '2021-01-31 08:23:57', '2021-01-31 08:23:57'),
(24, 8, 18, 'Isaac', 'Boutin', 'isaac.boutin@gmail.com', '2021-01-31 21:50:36', '2021-01-31 21:50:36'),
(25, 7, 17, 'Noémi', 'Mallet', 'noemi.mallet@noos.fr', '2021-01-30 18:03:09', '2021-01-30 18:03:09'),
(26, 6, 16, 'Charlotte', 'Bigot', 'charlotte.bigot@gmail.com', '2021-01-28 09:36:40', '2021-01-28 09:36:40'),
(27, 5, 15, 'Marcel', 'Bodin', 'marcel.bodin@yahoo.fr', '2021-01-27 13:28:19', '2021-01-27 13:28:19'),
(28, 4, 14, 'Aimée', 'Gosselin', 'aimee.gosselin@orange.fr', '2021-01-27 07:06:38', '2021-01-27 07:06:38'),
(29, 3, 13, 'Richard', 'Turpin', 'richard.turpin@hotmail.fr', '2021-01-28 16:52:51', '2021-01-28 16:52:51'),
(30, 2, 12, 'François', 'Bigot', 'francois.bigot@yahoo.fr', '2021-01-26 03:38:26', '2021-01-26 03:38:26'),
(31, 1, 11, 'Nathalie', 'Dupont', 'nathalie.dupont@live.com', '2021-01-28 08:36:19', '2021-01-28 08:36:19'),
(32, 10, 10, 'Bernard', 'Marchal', 'bernard.marchal@tele2.fr', '2021-01-31 10:15:58', '2021-01-31 10:15:58'),
(33, 9, 9, 'Marianne', 'Pires', 'marianne.pires@free.fr', '2021-01-25 03:14:10', '2021-01-25 03:14:10'),
(34, 8, 8, 'Monique', 'Da Costa', 'monique.da-costa@yahoo.fr', '2021-01-30 22:09:27', '2021-01-30 22:09:27'),
(35, 7, 7, 'Julie', 'Tanguy', 'julie.tanguy@free.fr', '2021-01-26 06:39:57', '2021-01-26 06:39:57'),
(36, 6, 6, 'Claude', 'Perrier', 'claude.perrier@orange.fr', '2021-01-30 12:05:19', '2021-01-30 12:05:19'),
(37, 5, 5, 'Victor', 'Martineau', 'victor.martineau@club-internet.fr', '2021-01-26 23:53:16', '2021-01-26 23:53:16'),
(38, 4, 4, 'Olivier', 'Lecomte', 'olivier.lecomte@free.fr', '2021-01-26 23:37:36', '2021-01-26 23:37:36'),
(39, 3, 3, 'Georges', 'Charrier', 'georges.charrier@tele2.fr', '2021-01-25 16:04:41', '2021-01-25 16:04:41'),
(40, 2, 2, 'Agnès', 'Bertin', 'agnes.bertin@hotmail.fr', '2021-01-26 10:44:28', '2021-01-26 10:44:28'),
(41, 1, NULL, 'Suzanne', 'Benard', 'suzanne.benard@hotmail.fr', '2021-01-31 16:38:19', '2021-01-31 16:38:19'),
(42, 10, 20, 'Victor', 'Breton', 'victor.breton@hotmail.fr', '2021-01-25 13:34:34', '2021-01-25 13:34:34'),
(43, 9, 19, 'Laure', 'Blanchard', 'laure.blanchard@dbmail.com', '2021-01-28 08:11:22', '2021-01-28 08:11:22'),
(44, 8, 18, 'Auguste', 'Rolland', 'auguste.rolland@hotmail.fr', '2021-01-30 14:20:15', '2021-01-30 14:20:15'),
(45, 7, 17, 'Zacharie', 'Blanchet', 'zacharie.blanchet@wanadoo.fr', '2021-01-27 23:59:07', '2021-01-27 23:59:07'),
(46, 6, 16, 'David', 'Marques', 'david.marques@dbmail.com', '2021-01-27 07:54:27', '2021-01-27 07:54:27'),
(47, 5, 15, 'Gilbert', 'Besson', 'gilbert.besson@live.com', '2021-01-31 22:14:15', '2021-01-31 22:14:15'),
(48, 4, 14, 'Luce', 'Blin', 'luce.blin@yahoo.fr', '2021-01-27 19:06:25', '2021-01-27 19:06:25'),
(49, 3, 13, 'Christophe', 'Jean', 'christophe.jean@gmail.com', '2021-01-31 11:43:25', '2021-01-31 11:43:25'),
(50, 2, 12, 'Claudine', 'Labbe', 'claudine.labbe@live.com', '2021-01-28 19:41:32', '2021-01-28 19:41:32'),
(51, 1, 11, 'Marianne', 'Mendes', 'marianne.mendes@laposte.net', '2021-01-26 04:23:42', '2021-01-26 04:23:42'),
(52, 10, 10, 'Pierre', 'Hamon', 'pierre.hamon@hotmail.fr', '2021-01-29 04:18:09', '2021-01-29 04:18:09'),
(53, 9, 9, 'Anastasie', 'Renard', 'anastasie.renard@hotmail.fr', '2021-01-29 02:22:23', '2021-01-29 02:22:23'),
(54, 8, 8, 'Christiane', 'Gaillard', 'christiane.gaillard@gmail.com', '2021-01-29 21:16:21', '2021-01-29 21:16:21'),
(55, 7, 7, 'Claudine', 'Muller', 'claudine.muller@free.fr', '2021-01-30 00:56:16', '2021-01-30 00:56:16'),
(56, 6, 6, 'Léon', 'Chartier', 'leon.chartier@orange.fr', '2021-01-27 11:32:12', '2021-01-27 11:32:12'),
(57, 5, 5, 'Théodore', 'Perez', 'theodore.perez@hotmail.fr', '2021-01-30 11:39:45', '2021-01-30 11:39:45'),
(58, 4, 4, 'Hortense', 'Peron', 'hortense.peron@wanadoo.fr', '2021-01-26 08:42:26', '2021-01-26 08:42:26'),
(59, 3, 3, 'Christine', 'Dumas', 'christine.dumas@yahoo.fr', '2021-01-28 21:52:11', '2021-01-28 21:52:11'),
(60, 2, 2, 'Vincent', 'Martel', 'vincent.martel@club-internet.fr', '2021-01-31 22:02:34', '2021-01-31 22:02:34'),
(61, 1, NULL, 'Mathilde', 'Delannoy', 'mathilde.delannoy@wanadoo.fr', '2021-01-25 05:01:00', '2021-01-25 05:01:00'),
(62, 10, 20, 'Guy', 'Voisin', 'guy.voisin@hotmail.fr', '2021-01-31 18:48:12', '2021-01-31 18:48:12'),
(63, 9, 19, 'Colette', 'Lambert', 'colette.lambert@yahoo.fr', '2021-01-25 15:51:04', '2021-01-25 15:51:04'),
(64, 8, 18, 'Maryse', 'Marin', 'maryse.marin@gmail.com', '2021-01-30 14:33:54', '2021-01-30 14:33:54'),
(65, 7, 17, 'Monique', 'Samson', 'monique.samson@free.fr', '2021-01-27 09:32:52', '2021-01-27 09:32:52'),
(66, 6, 16, 'Joseph', 'Lesage', 'joseph.lesage@dbmail.com', '2021-01-30 08:44:24', '2021-01-30 08:44:24'),
(67, 5, 15, 'Georges', 'Adam', 'georges.adam@dbmail.com', '2021-01-27 05:43:54', '2021-01-27 05:43:54'),
(68, 4, 14, 'Gérard', 'Legrand', 'gerard.legrand@yahoo.fr', '2021-01-27 19:50:28', '2021-01-27 19:50:28'),
(69, 3, 13, 'Geneviève', 'Dubois', 'genevieve.dubois@laposte.net', '2021-01-30 13:01:47', '2021-01-30 13:01:47'),
(70, 2, 12, 'Christelle', 'Imbert', 'christelle.imbert@gmail.com', '2021-01-27 03:38:27', '2021-01-27 03:38:27'),
(71, 1, 11, 'Alphonse', 'Laporte', 'alphonse.laporte@orange.fr', '2021-01-27 15:59:26', '2021-01-27 15:59:26'),
(72, 10, 10, 'Agnès', 'Salmon', 'agnes.salmon@wanadoo.fr', '2021-01-27 19:32:02', '2021-01-27 19:32:02'),
(73, 9, 9, 'Christine', 'Deschamps', 'christine.deschamps@club-internet.fr', '2021-01-30 06:36:40', '2021-01-30 06:36:40'),
(74, 8, 8, 'Gilbert', 'Morvan', 'gilbert.morvan@sfr.fr', '2021-01-27 10:59:05', '2021-01-27 10:59:05'),
(75, 7, 7, 'Madeleine', 'Valette', 'madeleine.valette@gmail.com', '2021-01-26 05:02:54', '2021-01-26 05:02:54'),
(76, 6, 6, 'Timothée', 'Cousin', 'timothee.cousin@club-internet.fr', '2021-01-25 23:07:49', '2021-01-25 23:07:49'),
(77, 5, 5, 'Antoinette', 'Lucas', 'antoinette.lucas@laposte.net', '2021-01-30 16:55:05', '2021-01-30 16:55:05'),
(78, 4, 4, 'Bernadette', 'Jacques', 'bernadette.jacques@sfr.fr', '2021-01-30 08:59:00', '2021-01-30 08:59:00'),
(79, 3, 3, 'Célina', 'Aubry', 'celina.aubry@noos.fr', '2021-01-29 21:37:40', '2021-01-29 21:37:40'),
(80, 2, 2, 'Suzanne', 'Besnard', 'suzanne.besnard@tele2.fr', '2021-01-31 20:38:47', '2021-01-31 20:38:47'),
(81, 1, NULL, 'Nicolas', 'Mahe', 'nicolas.mahe@noos.fr', '2021-01-28 10:02:32', '2021-01-28 10:02:32'),
(82, 10, 20, 'Antoine', 'Charpentier', 'antoine.charpentier@live.com', '2021-01-28 14:30:23', '2021-01-28 14:30:23'),
(83, 9, 19, 'Michèle', 'Leroux', 'michele.leroux@noos.fr', '2021-01-31 16:52:33', '2021-01-31 16:52:33'),
(84, 8, 18, 'Alexandria', 'Dupont', 'alexandria.dupont@tele2.fr', '2021-01-31 23:06:21', '2021-01-31 23:06:21'),
(85, 7, 17, 'Marianne', 'Leveque', 'marianne.leveque@club-internet.fr', '2021-01-29 06:22:48', '2021-01-29 06:22:48'),
(86, 6, 16, 'Théophile', 'Gautier', 'theophile.gautier@hotmail.fr', '2021-01-25 21:54:31', '2021-01-25 21:54:31'),
(87, 5, 15, 'Tristan', 'Charles', 'tristan.charles@live.com', '2021-01-29 22:09:04', '2021-01-29 22:09:04'),
(88, 4, 14, 'Nathalie', 'Munoz', 'nathalie.munoz@hotmail.fr', '2021-01-27 04:54:03', '2021-01-27 04:54:03'),
(89, 3, 13, 'Claude', 'Renault', 'claude.renault@dbmail.com', '2021-01-30 06:48:24', '2021-01-30 06:48:24'),
(90, 2, 12, 'Étienne', 'Leger', 'etienne.leger@wanadoo.fr', '2021-01-26 19:13:06', '2021-01-26 19:13:06'),
(91, 1, 11, 'Xavier', 'Barbe', 'xavier.barbe@free.fr', '2021-01-26 05:32:56', '2021-01-26 05:32:56'),
(92, 10, 10, 'Alex', 'Raynaud', 'alex.raynaud@noos.fr', '2021-01-30 06:02:22', '2021-01-30 06:02:22'),
(93, 9, 9, 'Yves', 'Meyer', 'yves.meyer@club-internet.fr', '2021-01-26 14:23:58', '2021-01-26 14:23:58'),
(94, 8, 8, 'Joseph', 'Pires', 'joseph.pires@sfr.fr', '2021-01-31 04:23:27', '2021-01-31 04:23:27'),
(95, 7, 7, 'David', 'Roger', 'david.roger@hotmail.fr', '2021-01-31 21:43:01', '2021-01-31 21:43:01'),
(96, 6, 6, 'Nathalie', 'Petitjean', 'nathalie.petitjean@laposte.net', '2021-01-28 10:55:50', '2021-01-28 10:55:50'),
(97, 5, 5, 'Mathilde', 'Meyer', 'mathilde.meyer@dbmail.com', '2021-01-28 03:28:54', '2021-01-28 03:28:54'),
(98, 4, 4, 'Claude', 'Lamy', 'claude.lamy@club-internet.fr', '2021-01-27 03:46:38', '2021-01-27 03:46:38'),
(99, 3, 3, 'Odette', 'Thomas', 'odette.thomas@dbmail.com', '2021-01-30 08:59:36', '2021-01-30 08:59:36'),
(100, 2, 2, 'Zacharie', 'Evrard', 'zacharie.evrard@orange.fr', '2021-01-30 21:45:59', '2021-01-30 21:45:59');

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
(5, 3),
(6, 3),
(6, 5),
(6, 10),
(7, 5),
(7, 6),
(7, 7),
(7, 10),
(8, 1),
(8, 7),
(9, 4),
(9, 5),
(9, 10),
(10, 7),
(10, 8),
(11, 3),
(11, 4),
(12, 1),
(12, 2),
(12, 3),
(12, 5),
(13, 1),
(13, 4),
(14, 3),
(14, 9),
(15, 1),
(15, 4),
(15, 8),
(15, 10),
(16, 4),
(16, 5),
(16, 7),
(16, 9),
(17, 1),
(17, 4),
(17, 6),
(17, 8),
(18, 1),
(18, 4),
(19, 7),
(19, 8),
(19, 9),
(20, 3),
(20, 4),
(20, 9),
(20, 10),
(21, 1),
(21, 8),
(21, 9),
(22, 2),
(22, 5),
(22, 6),
(22, 10),
(23, 1),
(23, 2),
(23, 5),
(24, 2),
(24, 3),
(24, 7),
(24, 8),
(25, 3),
(25, 5),
(26, 9),
(26, 10),
(27, 1),
(27, 5),
(27, 6),
(27, 10),
(28, 1),
(28, 5),
(28, 8),
(29, 2),
(29, 10),
(30, 4),
(30, 5),
(30, 8),
(30, 9),
(31, 2),
(31, 4),
(31, 8),
(32, 4),
(32, 6),
(33, 1),
(33, 8),
(33, 9),
(34, 5),
(34, 6),
(34, 7),
(35, 1),
(35, 6),
(35, 9),
(35, 10),
(36, 1),
(36, 2),
(36, 3),
(37, 2),
(37, 3),
(37, 7),
(38, 4),
(38, 6),
(39, 7),
(39, 8),
(40, 6),
(40, 7),
(40, 8),
(40, 10),
(41, 1),
(41, 8),
(42, 2),
(42, 5),
(42, 9),
(43, 5),
(43, 8),
(43, 9),
(43, 10),
(44, 3),
(44, 4),
(44, 6),
(45, 3),
(45, 4),
(46, 2),
(46, 4),
(46, 5),
(46, 8),
(47, 2),
(47, 6),
(47, 7),
(48, 4),
(48, 5),
(48, 7),
(48, 8),
(49, 1),
(49, 6),
(50, 1),
(50, 10),
(51, 6),
(51, 7),
(52, 1),
(52, 3),
(52, 7),
(52, 9),
(53, 1),
(53, 7),
(53, 8),
(53, 10),
(54, 7),
(54, 10),
(55, 6),
(55, 8),
(56, 1),
(56, 4),
(56, 5),
(56, 6),
(57, 7),
(57, 10),
(58, 1),
(58, 6),
(58, 9),
(58, 10),
(59, 1),
(59, 4),
(59, 9),
(60, 3),
(60, 5),
(60, 6),
(60, 10),
(61, 6),
(61, 7),
(61, 8),
(62, 1),
(62, 4),
(63, 1),
(63, 2),
(64, 4),
(64, 5),
(65, 1),
(65, 8),
(65, 9),
(65, 10),
(66, 1),
(66, 5),
(66, 9),
(67, 6),
(67, 8),
(68, 2),
(68, 5),
(68, 10),
(69, 1),
(69, 5),
(70, 1),
(70, 9),
(71, 1),
(71, 5),
(72, 1),
(72, 5),
(72, 8),
(73, 2),
(73, 4),
(73, 9),
(73, 10),
(74, 3),
(74, 10),
(75, 5),
(75, 7),
(76, 3),
(76, 6),
(76, 7),
(77, 6),
(77, 10),
(78, 2),
(78, 4),
(78, 6),
(78, 8),
(79, 8),
(79, 10),
(80, 5),
(80, 6),
(81, 7),
(81, 10),
(82, 2),
(82, 5),
(83, 6),
(83, 7),
(83, 10),
(84, 4),
(84, 6),
(84, 7),
(84, 8),
(85, 4),
(85, 6),
(85, 9),
(86, 3),
(86, 8),
(87, 1),
(87, 4),
(87, 7),
(87, 8),
(88, 4),
(88, 8),
(88, 9),
(89, 6),
(89, 8),
(89, 9),
(89, 10),
(90, 3),
(90, 7),
(90, 10),
(91, 2),
(91, 4),
(91, 9),
(92, 6),
(92, 7),
(93, 9),
(93, 10),
(94, 5),
(94, 10),
(95, 2),
(95, 3),
(95, 9),
(96, 6),
(96, 7),
(96, 9),
(96, 10),
(97, 1),
(97, 6),
(97, 10),
(98, 2),
(98, 8),
(99, 4),
(99, 5),
(99, 7),
(99, 8),
(100, 2),
(100, 9),
(100, 10);

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
