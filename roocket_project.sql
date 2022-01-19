-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2022 at 08:45 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `roocket_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `parent`, `created_at`, `updated_at`) VALUES
(1, 'backend', 0, NULL, NULL),
(2, 'frontend', 0, NULL, NULL),
(3, 'html', 1, NULL, NULL),
(4, 'css', 1, NULL, NULL),
(5, 'php', 2, NULL, NULL),
(6, 'java', 9, NULL, NULL),
(7, 'swift', 10, NULL, NULL),
(8, 'flutter', 9, NULL, NULL),
(9, 'android', 0, NULL, NULL),
(10, 'ios', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`category_id`, `post_id`) VALUES
(1, 1),
(2, 7),
(2, 8),
(2, 12),
(2, 16),
(2, 18),
(2, 20),
(2, 26),
(2, 27),
(2, 29),
(3, 6),
(3, 11),
(3, 21),
(5, 10),
(5, 12),
(5, 15),
(5, 22),
(5, 25),
(6, 4),
(6, 13),
(6, 23),
(7, 14),
(7, 19),
(7, 24),
(7, 30),
(8, 5),
(9, 3),
(9, 9),
(10, 17),
(10, 28);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `approved`, `comment`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'Enim ab vel rerum harum necessitatibus quas voluptas.', 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(2, 1, 1, 0, 'Qui illo culpa aut omnis temporibus.', 1, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(3, 1, 1, 0, 'Vitae est ipsam cupiditate voluptatem eveniet ut qui optio.', 2, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(4, 1, 1, 0, 'Velit deserunt placeat et vel nisi.', 3, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(5, 1, 1, 0, 'Dolor repellat et expedita nulla.', 4, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(6, 1, 2, 0, 'Ipsam tempora qui sed temporibus.', 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(7, 1, 2, 0, 'Magni nulla rem atque fugit.', 1, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(8, 1, 2, 0, 'Incidunt exercitationem sit excepturi explicabo consequatur.', 2, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(9, 1, 3, 0, 'Beatae itaque ipsam omnis ea.', 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(10, 1, 3, 0, 'Consequuntur illo expedita ut.', 1, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(11, 1, 3, 1, 'Eos temporibus eaque aut.', 2, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(12, 1, 3, 0, 'Fuga sunt nostrum est voluptas quod.', 3, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(13, 1, 3, 1, 'Rem ipsum nobis provident enim id error.', 4, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(14, 1, 3, 0, 'Similique ut laudantium cupiditate quam quo recusandae asperiores cumque.', 5, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(15, 1, 3, 0, 'Ducimus nihil atque vero.', 6, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(16, 1, 3, 1, 'Quisquam voluptatem repudiandae a dolore est qui laudantium.', 7, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(17, 1, 4, 1, 'Mollitia autem quam harum et in facere.', 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(18, 1, 4, 0, 'Deleniti ratione recusandae consectetur excepturi consectetur.', 1, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(19, 1, 4, 1, 'Porro aliquid distinctio impedit ut dolorum quibusdam.', 2, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(20, 2, 5, 1, 'Aut qui qui quisquam accusantium harum maiores.', 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(21, 2, 5, 1, 'Repellendus ut temporibus facere et quas est.', 1, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(22, 2, 5, 0, 'Pariatur et maiores quia magni hic.', 2, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(23, 2, 5, 1, 'Animi ut ullam inventore aperiam omnis et cupiditate.', 3, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(24, 2, 5, 0, 'Consequatur recusandae harum eum et quibusdam explicabo magnam tempora.', 4, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(25, 2, 5, 1, 'Odio corrupti aliquam et consequatur adipisci.', 5, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(26, 2, 5, 0, 'Rem impedit minus suscipit ratione possimus molestias ipsum assumenda.', 6, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(27, 2, 5, 1, 'Et veniam ut nemo non voluptas pariatur.', 7, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(28, 2, 5, 0, 'Nostrum doloribus labore non odit sapiente.', 8, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(29, 2, 6, 0, 'Mollitia amet facere qui officia ea.', 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(30, 2, 6, 1, 'Voluptatem dolores voluptatem ipsam nulla qui qui eum.', 1, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(31, 2, 6, 0, 'Saepe rerum quos dolorum.', 2, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(32, 2, 6, 0, 'Quaerat animi voluptas qui ea voluptatibus.', 3, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(33, 2, 6, 0, 'Porro rem assumenda laudantium aut dolores veritatis ab.', 4, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(34, 2, 6, 1, 'Itaque commodi porro non architecto.', 5, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(35, 2, 6, 1, 'Illum non nobis corrupti non.', 6, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(36, 2, 6, 0, 'Explicabo sed quia quia corrupti.', 7, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(37, 2, 7, 1, 'Rerum sunt iusto nostrum iure cum aut optio.', 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(38, 2, 7, 0, 'Voluptates facilis labore et omnis esse ut.', 1, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(39, 2, 7, 0, 'Maxime nihil nihil eligendi natus qui.', 2, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(40, 2, 7, 0, 'Reiciendis eveniet dolor ea nihil.', 3, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(41, 2, 7, 0, 'Et dolor molestiae perspiciatis id harum praesentium optio.', 4, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(42, 2, 8, 1, 'Laboriosam ipsum ullam facere nisi et.', 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(43, 2, 8, 0, 'Repellendus tenetur aut fuga aut.', 1, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(44, 2, 8, 1, 'Odit laborum suscipit alias libero velit libero.', 2, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(45, 2, 8, 0, 'Voluptatem neque id omnis consequatur consequatur at adipisci.', 3, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(46, 2, 8, 0, 'Voluptates aut vitae qui reiciendis et.', 4, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(47, 2, 8, 1, 'Harum voluptas et dolor.', 5, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(48, 2, 8, 0, 'Et id et eaque officiis quia adipisci.', 6, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(49, 3, 9, 0, 'Quo iure sit nisi corporis.', 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(50, 3, 9, 0, 'Est ratione consequatur dolores et explicabo vero animi.', 1, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(51, 3, 9, 1, 'Velit omnis qui debitis totam vel.', 2, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(52, 3, 9, 1, 'Non ex mollitia enim placeat tempora velit.', 3, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(53, 3, 9, 1, 'Minima et minima nulla voluptas rerum.', 4, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(54, 3, 9, 0, 'Voluptas ea eligendi nisi fugiat.', 5, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(55, 3, 9, 0, 'Impedit voluptate voluptatem id omnis minima accusamus.', 6, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(56, 3, 9, 0, 'Autem accusantium asperiores tempora aut.', 7, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(57, 3, 9, 1, 'Necessitatibus fuga saepe sit ex libero ea.', 8, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(58, 3, 10, 1, 'Aspernatur ut rem sit beatae.', 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(59, 3, 10, 0, 'Sed doloribus officia aut voluptatem.', 1, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(60, 3, 10, 0, 'Placeat autem nihil quia molestias.', 2, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(61, 3, 10, 0, 'Nesciunt quam et fuga non maxime id quibusdam.', 3, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(62, 3, 10, 1, 'Quod voluptatibus ut ut fuga qui dolores.', 4, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(63, 3, 10, 1, 'Unde soluta nesciunt minima corrupti.', 5, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(64, 3, 11, 0, 'Cupiditate aut doloribus iste ea dolores id.', 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(65, 3, 11, 0, 'Placeat sequi reiciendis at et optio deserunt ut.', 1, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(66, 3, 11, 0, 'Quam magni ullam nam ut odit impedit sequi.', 2, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(67, 3, 11, 0, 'Laboriosam sit quia quod ex.', 3, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(68, 3, 11, 1, 'Et fuga amet modi soluta quae nemo.', 4, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(69, 3, 11, 1, 'Eligendi nihil quidem maiores nemo ducimus dolore cumque similique.', 5, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(70, 3, 11, 1, 'Perferendis omnis dolores vel quod et dolores.', 6, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(71, 3, 11, 0, 'Quisquam sit mollitia vel quaerat odit ullam cum.', 7, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(72, 3, 11, 0, 'Similique eaque repellat est qui illo eveniet.', 8, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(73, 3, 12, 1, 'Veniam voluptatibus sequi nesciunt voluptas debitis ut consequatur.', 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(74, 3, 12, 1, 'Non suscipit aut quae et odit.', 1, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(75, 3, 12, 0, 'Natus sunt iusto distinctio accusamus.', 2, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(76, 3, 12, 1, 'Reprehenderit quod quia sed atque voluptas ullam corrupti officiis.', 3, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(77, 3, 12, 1, 'Inventore eveniet consequatur est quam et autem.', 4, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(78, 3, 12, 0, 'Debitis incidunt sunt sed enim non dolorum.', 5, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(79, 3, 12, 0, 'Et ut assumenda voluptatem eos sit et ipsum quia.', 6, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(80, 3, 12, 1, 'Perspiciatis eligendi non harum ut reprehenderit quisquam distinctio.', 7, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(81, 3, 12, 1, 'Adipisci fugit omnis doloribus tempore.', 8, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(82, 4, 13, 1, 'Omnis asperiores aut minima.', 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(83, 4, 13, 0, 'Perspiciatis aspernatur ut et fugit temporibus.', 1, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(84, 4, 13, 1, 'Ut dolor velit doloremque distinctio itaque.', 2, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(85, 4, 13, 0, 'Et et eligendi repudiandae dolor unde.', 3, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(86, 4, 13, 0, 'Dolorem voluptatibus cum nemo.', 4, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(87, 4, 13, 1, 'Facere et ipsum laudantium esse libero.', 5, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(88, 4, 13, 0, 'Quo sed maxime repudiandae error itaque.', 6, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(89, 4, 14, 1, 'Aut dolor blanditiis vitae velit voluptas necessitatibus veniam.', 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(90, 4, 14, 1, 'Omnis dolorem repellendus asperiores et vitae vero non.', 1, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(91, 4, 14, 1, 'Inventore quam quos earum eum qui eos ea.', 2, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(92, 4, 14, 0, 'Placeat rem quas velit magnam culpa illum voluptatem.', 3, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(93, 4, 14, 0, 'Officiis aut et animi a est dolorum voluptatum.', 4, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(94, 4, 14, 1, 'Veniam non magnam vel est libero ut.', 5, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(95, 4, 14, 0, 'Eos in sequi inventore in qui.', 6, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(96, 4, 14, 1, 'Fugiat ducimus est qui maxime.', 7, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(97, 4, 14, 1, 'Possimus non ea mollitia quas qui delectus voluptas minus.', 8, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(98, 4, 14, 0, 'Est velit nihil illo tempore totam ullam.', 9, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(99, 5, 15, 1, 'Praesentium et quos qui.', 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(100, 5, 15, 1, 'Quasi eius quos est sed delectus sit aspernatur qui.', 1, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(101, 5, 15, 0, 'Totam quisquam odio ipsum ipsam assumenda dolore officia.', 2, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(102, 5, 15, 1, 'Sint consequatur est possimus ut porro.', 3, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(103, 5, 15, 1, 'Nemo aut aut facere consequatur.', 4, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(104, 5, 15, 1, 'Ut ut voluptatibus quos qui omnis totam.', 5, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(105, 5, 15, 0, 'Voluptatem tempore quis vel deleniti mollitia reprehenderit unde iure.', 6, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(106, 5, 15, 1, 'Quo sit quis ipsam eos.', 7, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(107, 5, 15, 0, 'Magnam itaque rerum neque quia.', 8, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(108, 5, 16, 1, 'Odio et unde quidem temporibus praesentium.', 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(109, 5, 16, 0, 'Atque molestiae esse deserunt et magnam neque aliquid.', 1, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(110, 5, 16, 0, 'Nobis consequatur velit debitis expedita.', 2, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(111, 5, 17, 1, 'Maxime ut quis doloremque quis.', 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(112, 5, 17, 0, 'Quis qui odit sunt officiis doloremque.', 1, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(113, 5, 17, 0, 'Non nisi rem ullam quam fuga fuga et sapiente.', 2, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(114, 5, 17, 0, 'Rem esse quis cumque.', 3, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(115, 5, 17, 0, 'Molestiae ab amet neque cumque consequuntur modi et adipisci.', 4, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(116, 5, 17, 1, 'Omnis velit et consequatur velit nobis praesentium.', 5, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(117, 5, 17, 1, 'Iure voluptas ipsum porro quaerat placeat alias qui.', 6, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(118, 5, 17, 1, 'Rem eum eaque error velit.', 7, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(119, 5, 17, 0, 'Perferendis est dolorem qui quis quam maiores.', 8, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(120, 6, 18, 1, 'Et voluptas mollitia itaque nihil.', 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(121, 6, 18, 1, 'Ut distinctio perspiciatis dicta officia cumque.', 1, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(122, 6, 18, 0, 'Placeat corrupti ut molestiae maxime.', 2, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(123, 6, 18, 1, 'Fuga rerum doloribus est ea rem.', 3, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(124, 6, 18, 0, 'Consequatur sed et dolor laudantium maiores quibusdam nemo.', 4, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(125, 6, 19, 1, 'Consectetur perspiciatis repudiandae ut non.', 0, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(126, 6, 19, 1, 'Mollitia blanditiis corrupti omnis non dolores minima dignissimos.', 1, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(127, 6, 19, 0, 'Aperiam nobis optio minima.', 2, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(128, 6, 19, 0, 'Velit vel voluptates voluptatem earum illo blanditiis provident.', 3, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(129, 6, 19, 1, 'Illo quis aut et velit quasi.', 4, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(130, 6, 19, 1, 'Dolorum eos sit aspernatur et eius repudiandae sequi ut.', 5, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(131, 6, 19, 0, 'Eaque nam asperiores pariatur repudiandae quae.', 6, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(132, 6, 20, 0, 'Rerum debitis commodi ullam alias repudiandae.', 0, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(133, 6, 20, 0, 'Sit ut neque culpa aspernatur.', 1, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(134, 6, 20, 0, 'Ad cumque nihil nostrum nihil quis.', 2, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(135, 6, 20, 1, 'Animi nesciunt voluptatem dolores rerum.', 3, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(136, 6, 20, 0, 'Eos et sint id sed ullam.', 4, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(137, 6, 20, 1, 'Quae ea occaecati atque error eos.', 5, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(138, 6, 20, 1, 'Laboriosam nemo mollitia et sequi.', 6, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(139, 6, 21, 1, 'Enim illum est doloremque dolorem.', 0, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(140, 6, 21, 1, 'Commodi cumque ea perspiciatis dolorum est et aut.', 1, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(141, 6, 21, 1, 'Laudantium et reiciendis et quia vel voluptatibus qui.', 2, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(142, 6, 21, 0, 'Et rem quod quaerat.', 3, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(143, 6, 21, 1, 'Eius eveniet qui maxime sit qui.', 4, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(144, 6, 21, 0, 'Molestiae velit dolorem iure nulla qui est.', 5, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(145, 6, 21, 1, 'Vel cupiditate nihil pariatur ut quam sequi.', 6, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(146, 6, 21, 0, 'Cumque iste rerum omnis et nemo.', 7, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(147, 6, 21, 1, 'Omnis blanditiis laboriosam officia molestiae deleniti.', 8, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(148, 6, 21, 0, 'Mollitia maiores et architecto voluptates.', 9, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(149, 7, 22, 0, 'Delectus doloremque earum quod ad similique omnis voluptatem vel.', 0, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(150, 7, 22, 1, 'Sed rem qui atque aliquid dolores nihil qui.', 1, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(151, 7, 22, 0, 'Quo quia delectus inventore voluptates aut accusamus.', 2, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(152, 7, 23, 1, 'Illum ipsum ad et dolorum.', 0, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(153, 7, 23, 0, 'At laboriosam dolor nobis reprehenderit qui.', 1, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(154, 7, 23, 1, 'Labore ipsum numquam quo et soluta excepturi.', 2, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(155, 7, 23, 1, 'Vel ab excepturi rerum eos.', 3, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(156, 8, 24, 1, 'Veniam beatae dolorem dolorem illum in sit.', 0, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(157, 8, 24, 0, 'Nihil ipsam blanditiis alias voluptatum porro.', 1, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(158, 8, 24, 0, 'Sit reiciendis sit ullam inventore hic sed.', 2, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(159, 8, 24, 1, 'Corrupti eius qui aut eveniet eius totam velit.', 3, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(160, 8, 24, 1, 'Atque eaque suscipit id.', 4, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(161, 8, 24, 1, 'Aliquid aut et eligendi facere odit laboriosam quas.', 5, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(162, 8, 24, 1, 'Tenetur quasi placeat labore sunt rem.', 6, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(163, 8, 25, 1, 'Eveniet adipisci dolorum dolor molestiae autem.', 0, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(164, 8, 25, 1, 'Qui ut reprehenderit itaque quibusdam optio.', 1, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(165, 8, 25, 1, 'Numquam optio tempora sit voluptate.', 2, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(166, 8, 25, 1, 'Illo velit sequi sunt voluptas ducimus.', 3, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(167, 8, 25, 1, 'Voluptas ea incidunt provident et enim ullam.', 4, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(168, 8, 25, 1, 'Odio rerum ut ut omnis ipsam.', 5, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(169, 9, 26, 1, 'Quis sint nihil hic ut.', 0, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(170, 9, 26, 1, 'Voluptatem voluptas eum sunt temporibus omnis dolore et quia.', 1, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(171, 9, 26, 0, 'Dolorem nostrum facilis dicta vitae.', 2, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(172, 9, 26, 0, 'Eum ullam iure nihil aut.', 3, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(173, 9, 26, 1, 'Dolor quam eius soluta perspiciatis hic esse.', 4, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(174, 9, 26, 0, 'Dolorem explicabo exercitationem similique sed quas.', 5, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(175, 9, 26, 0, 'Aut doloribus architecto sunt sit.', 6, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(176, 9, 26, 1, 'Consequatur laborum ut inventore.', 7, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(177, 10, 27, 1, 'Deserunt quia saepe consequatur ipsum atque.', 0, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(178, 10, 27, 1, 'Harum maxime quod hic veritatis provident ipsam id sequi.', 1, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(179, 10, 27, 0, 'Libero et doloremque non in quas.', 2, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(180, 10, 27, 1, 'Rerum ea excepturi ut non veniam.', 3, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(181, 10, 28, 0, 'Et sequi nam placeat molestias assumenda doloribus aut enim.', 0, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(182, 10, 28, 0, 'Excepturi dolore id at reprehenderit molestiae blanditiis.', 1, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(183, 10, 28, 0, 'Nesciunt quo harum perferendis ut ex temporibus.', 2, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(184, 10, 29, 0, 'Ad facilis ipsam qui non aut minima tenetur tenetur.', 0, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(185, 10, 29, 1, 'Eaque porro maiores odio iure minima minima perspiciatis.', 1, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(186, 10, 29, 0, 'Minus reprehenderit ut consequatur cum at suscipit.', 2, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(187, 10, 29, 1, 'Beatae modi esse sit omnis rem pariatur ipsam magni.', 3, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(188, 10, 29, 0, 'Quo consectetur dolor tempore aut consequatur consectetur.', 4, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(189, 10, 29, 1, 'Officia et ea dolor.', 5, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(190, 10, 29, 1, 'Minima ipsa quia explicabo numquam.', 6, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(191, 10, 29, 1, 'Neque ea ut odit quo.', 7, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(192, 10, 29, 0, 'Atque accusantium quia voluptas sed soluta ipsum.', 8, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(193, 10, 29, 0, 'Voluptatibus sint aut recusandae minus voluptatem.', 9, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(194, 10, 30, 1, 'Et ut voluptates aut deserunt vel.', 0, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(195, 10, 30, 0, 'Atque dolores deserunt corporis.', 1, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(196, 10, 30, 1, 'Ut illo eos molestiae nisi consequatur id.', 2, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(197, 10, 30, 1, 'Reiciendis ipsa beatae dolorem blanditiis ut.', 3, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(198, 10, 30, 0, 'Nostrum nobis aut ut vero molestiae ipsa iste.', 4, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(199, 10, 30, 0, 'Qui id soluta qui dignissimos inventore qui vel autem.', 5, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(200, 10, 30, 1, 'Magni dolores recusandae labore id quam aut.', 6, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(201, 10, 30, 0, 'Voluptatem accusamus aperiam odio dolore autem sed.', 7, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(202, 10, 30, 1, 'Quia doloremque fugit nulla eius ut.', 8, '2022-01-19 03:52:24', '2022-01-19 03:52:24');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(99, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(100, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(101, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(102, '2016_06_01_000004_create_oauth_clients_table', 1),
(103, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(137, '2014_10_12_000000_create_users_table', 2),
(138, '2014_10_12_100000_create_password_resets_table', 2),
(139, '2019_08_19_000000_create_failed_jobs_table', 2),
(140, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(141, '2022_01_17_071534_create_posts_table', 2),
(142, '2022_01_17_071617_create_comments_table', 2),
(143, '2022_01_17_071638_create_categories_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `like_count` int(11) NOT NULL DEFAULT 0,
  `comment_count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `image`, `like_count`, `comment_count`, `created_at`, `updated_at`) VALUES
(1, 1, 'Odio repellendus qui fugit sint sunt qui quas.', 'Cupiditate error sit molestias ut consequatur debitis earum dolorem. Enim vero veritatis officia et. Minima sit autem quo laudantium quisquam ipsa. Pariatur velit consequatur libero.', 'https://via.placeholder.com/640x480.png/001111?text=quas', 184, 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(2, 1, 'Laboriosam est quaerat dolor soluta ullam aliquam porro.', 'Enim fuga veniam nobis minus. Dicta blanditiis velit et sunt nihil dolorem. Dolores ut et fugit sed assumenda. Nesciunt temporibus et pariatur excepturi voluptatibus harum commodi.', 'https://via.placeholder.com/640x480.png/000088?text=cum', 173, 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(3, 1, 'Est pariatur placeat doloremque omnis consequuntur.', 'Aut mollitia similique doloremque beatae qui. Et itaque amet placeat corrupti voluptas et. Voluptatum aliquam odit aperiam in. Minima dolorem odio quisquam quis eos. Odit laboriosam omnis impedit optio. Sit magnam id magnam ut unde nam perferendis.', 'https://via.placeholder.com/640x480.png/00eebb?text=pariatur', 124, 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(4, 1, 'Facere maxime molestias eos ullam voluptatum dolor rerum.', 'Quo autem eos voluptas. Et consequuntur nobis dolores sed. Officiis mollitia id fugit asperiores voluptatem architecto. Magni ut tempore dolor architecto. Harum labore nesciunt quaerat ipsam omnis dolore. Maxime sit facere consectetur accusantium dolorum odio dignissimos fugiat. Omnis repudiandae quisquam nobis nostrum praesentium sit.', 'https://via.placeholder.com/640x480.png/003311?text=quis', 187, 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(5, 2, 'Illum dolor debitis explicabo minima.', 'Aspernatur veritatis enim dolorem tenetur quia aut. Ut quia id ex et. Quia numquam odit aut minima explicabo. Omnis et ducimus odio aspernatur natus ut distinctio. Placeat sed qui itaque qui possimus. Provident corrupti et asperiores.', 'https://via.placeholder.com/640x480.png/0077bb?text=sequi', 20, 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(6, 2, 'Deleniti incidunt consequatur modi omnis fuga.', 'Sit quis repellat et dignissimos ex illum vel. Et perferendis nihil consectetur ut officiis iste. Sed et totam minus dolorem. Quia velit nobis perspiciatis officiis. Tempore expedita temporibus voluptatum sed quia et.', 'https://via.placeholder.com/640x480.png/005544?text=quis', 39, 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(7, 2, 'Cupiditate quisquam aut nobis tenetur.', 'Doloremque et enim atque fuga. Maxime quis eum ut sit veritatis. Vel eum nihil sit aut architecto quasi sed. Optio rem et amet tenetur enim.', 'https://via.placeholder.com/640x480.png/00bbdd?text=modi', 106, 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(8, 2, 'Ea animi est vel quas.', 'Optio veritatis quas est ut ea sequi qui nihil. Veniam numquam aut et molestiae ipsa. Sed quidem sit ut autem vel. Repellendus asperiores libero qui libero et repellendus. Quae similique eaque culpa laboriosam adipisci ut. Blanditiis et ut minus et eum error.', 'https://via.placeholder.com/640x480.png/00aaff?text=facilis', 90, 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(9, 3, 'Sit quidem ad et quibusdam delectus sed et.', 'Est a molestias ex quia ea magni. Placeat et quidem voluptas qui minus in amet perspiciatis. Assumenda molestiae tenetur eveniet iste cum maxime assumenda quod. Et et deleniti eos aliquam voluptatem. Illo expedita nesciunt dolorem repellendus id.', 'https://via.placeholder.com/640x480.png/002288?text=cum', 98, 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(10, 3, 'Necessitatibus quia voluptatibus itaque sit.', 'Assumenda aut dicta ea dicta impedit quam soluta. Distinctio nostrum ad ex architecto voluptatem. Perferendis ut molestias veritatis reiciendis rem fugiat voluptates. Quaerat totam tempore rerum ut consectetur beatae vero et. Eveniet sint et vel nulla unde dolorum quae harum. Quia eum suscipit ut dignissimos soluta tenetur.', 'https://via.placeholder.com/640x480.png/004466?text=fugiat', 190, 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(11, 3, 'Et numquam ea et consequatur.', 'Voluptas et ipsum dolore. Culpa dolorum delectus at aut molestiae dolorem. Dicta quaerat eum sit in. Excepturi voluptatum atque quam earum ea neque id voluptatum. Voluptatem rerum pariatur dolor qui. Quia aut commodi maxime. Consectetur aliquam iusto perspiciatis enim officiis a autem.', 'https://via.placeholder.com/640x480.png/0088ff?text=sunt', 89, 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(12, 3, 'Alias exercitationem est reprehenderit ut saepe qui.', 'Quasi nihil amet et suscipit assumenda eligendi sit. Reprehenderit quasi laborum dolorem iure excepturi aut a. Cumque voluptate asperiores ut possimus. Quis fugiat ad sed ipsum. Deserunt voluptates distinctio accusantium adipisci.', 'https://via.placeholder.com/640x480.png/00ffdd?text=qui', 178, 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(13, 4, 'Adipisci et dolores impedit porro minus hic ea commodi.', 'Cum perspiciatis natus ad facere aliquam porro. Pariatur vero eos blanditiis. Nostrum minus est magni aut aperiam qui illum. Sed quis consectetur qui eos reprehenderit fugit est. Pariatur eaque quae reiciendis. Velit ipsa similique sint expedita deleniti corrupti magni.', 'https://via.placeholder.com/640x480.png/007744?text=deleniti', 79, 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(14, 4, 'Ipsum dolores sit eaque ut qui accusamus nemo.', 'Quod sed assumenda quos nihil. Inventore culpa magnam atque debitis ducimus. Ut qui nihil qui repellat est molestiae. Qui ipsam aliquid fugit expedita voluptatem. Quaerat quo enim voluptas aut.', 'https://via.placeholder.com/640x480.png/00ddff?text=sunt', 69, 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(15, 5, 'Quibusdam velit reiciendis quibusdam.', 'Veritatis deleniti cupiditate voluptatibus nihil et dolorem voluptate. Quis itaque quam nam laborum. Labore expedita dolorum molestiae eos ea. Eligendi dolorum adipisci quis. Maxime harum eveniet officia possimus ab magni voluptas. Architecto omnis similique odio nostrum quia. Et eveniet quis et eius quaerat quo possimus.', 'https://via.placeholder.com/640x480.png/00cc99?text=architecto', 15, 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(16, 5, 'Qui commodi occaecati sit vitae sit velit.', 'Deserunt veritatis consequatur omnis. Nesciunt inventore dignissimos ea ab. Ipsum unde aliquid ut molestiae voluptas omnis sit. Tenetur aut qui explicabo eos. Cumque neque perferendis quis molestiae debitis. Quisquam itaque deserunt consequatur necessitatibus rerum dolorum. Doloribus recusandae minima doloribus quia repellendus.', 'https://via.placeholder.com/640x480.png/00dd77?text=aperiam', 76, 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(17, 5, 'Corrupti ea atque mollitia asperiores sit sit laboriosam.', 'Quis quam eaque error itaque est aliquam. In ut sunt quibusdam neque officiis et dolor neque. Vel ipsa ipsa et quibusdam qui debitis. In aut omnis dolorem magni distinctio qui qui. Illo dolore quo ducimus molestias assumenda sit sunt. Culpa neque animi provident architecto velit labore et. Ratione dolor corporis ad ut sed.', 'https://via.placeholder.com/640x480.png/00aa66?text=aspernatur', 50, 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(18, 6, 'Non a natus voluptates et.', 'Enim sequi non ducimus vel nisi nulla sunt. Deserunt quod maxime omnis iste sed quia. Labore quidem et provident vel laboriosam. Voluptate voluptatibus eum nulla dolores qui error.', 'https://via.placeholder.com/640x480.png/009999?text=sequi', 157, 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(19, 6, 'A sit non delectus accusantium qui ipsa.', 'Facilis cumque nihil ut blanditiis dolores tempora ipsa. Maiores et eligendi veritatis id. Ut fugit eum dolores dolorem doloribus tempora placeat. Repudiandae sed nisi magni ipsum voluptas voluptate soluta.', 'https://via.placeholder.com/640x480.png/009944?text=vel', 11, 0, '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(20, 6, 'Maiores id distinctio nulla quae cum voluptatibus ipsum.', 'In aut omnis recusandae dolore quis iusto. Quo animi eum et ducimus. Fugiat similique ea soluta amet. Molestias est nemo dolore quia.', 'https://via.placeholder.com/640x480.png/009977?text=aspernatur', 164, 0, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(21, 6, 'Ea sapiente mollitia dolor debitis nihil quia labore.', 'Eos iusto id sit voluptas quis. Inventore laudantium nesciunt ut qui velit. Tenetur voluptas minima ipsa dolorem velit aut. Atque qui facilis possimus qui necessitatibus aliquid non. Quisquam placeat nam rerum ea asperiores maiores voluptas hic. Modi dolor dolore explicabo vero. Omnis reiciendis magnam qui dolore.', 'https://via.placeholder.com/640x480.png/00bb22?text=quae', 117, 0, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(22, 7, 'Rem est laudantium magni ut id est ut.', 'Consequatur fugit vitae autem omnis maiores voluptates. Voluptatem quod quisquam nam error numquam. Rerum quod debitis dolore ratione omnis. Suscipit est numquam est dignissimos reiciendis occaecati. Veniam quo quis est optio.', 'https://via.placeholder.com/640x480.png/005511?text=est', 61, 0, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(23, 7, 'Fugiat numquam modi molestiae.', 'Illo ex fuga repudiandae quo. Accusantium a magni recusandae omnis id et. Numquam beatae culpa rerum quod architecto. Adipisci sed odit aut accusantium. Nemo corrupti odio ex aut et pariatur. Eos optio qui quae qui aut voluptas. Voluptas ut commodi commodi deleniti exercitationem corrupti.', 'https://via.placeholder.com/640x480.png/00dd44?text=ex', 157, 0, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(24, 8, 'Vel reprehenderit ullam eos molestiae et non consectetur.', 'Repellat ex illo porro dolores harum excepturi impedit modi. Cum incidunt impedit odio sit officiis corrupti quia. Nam eaque a consequatur quae quidem omnis. Placeat quia aperiam ratione fugit. Optio deserunt voluptate quaerat.', 'https://via.placeholder.com/640x480.png/004433?text=dolorem', 14, 0, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(25, 8, 'Alias ut fugit ut.', 'Tempora eveniet sequi odio est. Quia quia possimus maiores distinctio ipsa. Cumque doloribus cumque delectus sit. Magnam natus saepe sint esse dignissimos voluptatum officia voluptas. Voluptates fugit accusamus voluptatem dicta nemo.', 'https://via.placeholder.com/640x480.png/00ff44?text=accusantium', 72, 0, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(26, 9, 'Aut commodi nostrum ut tempore.', 'Aut quidem est mollitia expedita dolor quas qui. Vel totam occaecati aspernatur aut vel repellat at consequatur. Reprehenderit dolorum non sunt et. Consequatur soluta magnam nobis dolorem. Est voluptas minima atque.', 'https://via.placeholder.com/640x480.png/00bb88?text=blanditiis', 102, 0, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(27, 10, 'Id et eius necessitatibus animi architecto.', 'Repellendus quas voluptatem eos quod architecto et. Voluptatibus reiciendis fugiat qui voluptate illum sit earum. Aut nisi unde eveniet recusandae enim rerum. Magni quisquam quia in numquam rerum. Aut ad ad quia. Voluptatem minima non sint voluptatibus. Doloribus sequi non esse numquam.', 'https://via.placeholder.com/640x480.png/007755?text=non', 148, 0, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(28, 10, 'Ipsa et qui aut voluptatibus.', 'Molestiae aut blanditiis at aut. Commodi rerum minima deserunt nihil. Aut aut animi quaerat sit facilis quae provident dolorum. Voluptatem enim sunt perspiciatis impedit ea consequatur id. Explicabo aperiam totam ipsam in. Minima quia ex autem. Id harum omnis vitae optio dolorem esse.', 'https://via.placeholder.com/640x480.png/00ee22?text=aliquam', 121, 0, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(29, 10, 'Corporis voluptate velit ut ratione beatae pariatur voluptates.', 'Ullam laborum in distinctio fugiat. Consequatur reprehenderit animi debitis nesciunt ex. Deserunt quas pariatur quis consequuntur doloremque dolorem ullam. Vero incidunt expedita delectus commodi eum hic libero libero. Est ab adipisci qui id aliquam necessitatibus laboriosam. Consequatur ut optio beatae ullam cumque est perferendis. Qui qui reprehenderit illo quia.', 'https://via.placeholder.com/640x480.png/0000aa?text=sint', 67, 0, '2022-01-19 03:52:24', '2022-01-19 03:52:24'),
(30, 10, 'Asperiores aperiam quisquam omnis et.', 'Ducimus asperiores accusantium rerum hic nulla possimus id. Amet doloremque tempora iure beatae ut nemo eius. Est delectus iusto et nam. Pariatur aspernatur omnis veritatis dolor reiciendis et. Aperiam aut quasi culpa incidunt aut quos quae. Modi quasi debitis fuga iusto tenetur quod ipsa.', 'https://via.placeholder.com/640x480.png/000022?text=provident', 73, 0, '2022-01-19 03:52:24', '2022-01-19 03:52:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `is_admin`, `api_token`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Kelton Hettinger Sr.', 'xmertz@example.net', '2022-01-19 03:52:22', 0, '6Bkg9SJ6zzSQAJDD4cRYVWVmEFmiuXty26H1n3ziyGR3JW8pxbjTJv6nPAuQxQEtEioQTDif1tENzuMUwujZXHMtxZvlGTiOWFnyxFiRkAkI2UX6rPuDTdLi877Wk4Vsyoj8DknHjhzFVa8dwsgBgmYkLBJkWWzFIfG5UQW3lvjtWwZnrEMOrs1uuitfoAaOSU129Dke', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZxxVYoJVZa', '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(2, 'Mr. Ewald Jast PhD', 'godfrey54@example.net', '2022-01-19 03:52:22', 0, '929X4DLfc6on4HOBttdxb2fMncfdGq5HMLrYHJa7xyK5lLrGCYKIiH1Wyppm49iuH7uytwSOSQL5bBSHq0PeNCA3Yp2WpqVYmqu0t388ftjiXGWqqDdamfuskl6ms0Hu4LpbSaeUsDYVoA2ux9uCa6oOJL9trqFAw4hZ1349VbOIyzDYmXbB5B6LSXjUXoRh6UdtuJe9', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1jMP80JSlv', '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(3, 'Jesse Goyette', 'uwiza@example.com', '2022-01-19 03:52:22', 0, 'Nd42FkNU5Pj8efGW4lFLu370mEhLI00OVEIc8UXZ2C3ItJP7UpVoLowJDsinot50ueylFeDcqtuOXwJX6KApvK7D8LuNMbheGd18d1dEawqIPNf3SiMR2dsWeeol9jzmXqEMFVd4Pq9nVASzQVpPGAQHUTXmP5Ux6Kgs0vjwecJAQ7lKnTPGZvL9p2qopIQENXxD2LUf', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1R29f8N6iw', '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(4, 'Sedrick Wunsch', 'darrel25@example.net', '2022-01-19 03:52:22', 0, 'lvZ93ofLqcc5x76mb7IG8LhY7NZh9ysimo27UQTTc7BvE3AbDgdyCQbPvgh4biowdVs7NsEAY7fLd0LQ9zBREIcDbPNRUPOqVIUlwGireVjx3Za9lZp6lDBE0bQ4HddVw30h70FEt9ISnbvWr0BOVRkZb19YpFLyAqvF7EUHjofy4fi57zPYhy23h6u3xGJbM4kOra1C', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cwDhuJ502B', '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(5, 'Prof. Sterling Connelly Jr.', 'lhermann@example.org', '2022-01-19 03:52:22', 0, 'PfJ6C4blWwjkP5DuaSIeasi8YljG3zGAjbCWQN2thcBVppRhaCj7B9ahymzKxakI2rTXHmKxz0ialihTgVfi0MHQPhtJNSf78seMRNy8HNCRs0IXncAPSB9gOK1dqaJeOpNLDpUGvuH0uOhaP46cHdic70R0qlHOvw8rl20VqlXCeGIfE3QdlULy56ZmSUyEdwO1Ra2m', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IOYQQC6Zrq', '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(6, 'Jacinto Schaden MD', 'wisozk.kurt@example.com', '2022-01-19 03:52:23', 0, 'myBReLJ1S8D0QjyIxV2dlTFBgRDIvyZQbhRSFckduwaTJQL6G1DaVK2YP0HeEyWQVBt73NcIVLTjHcUbnTiXxM45I26U3Zf9fxBezo3RBCeeTP8GIJw8pWowUebKAY2sEtiJxBNukUowHJ1nFvCLDqkVtid9vTlYZCBVGjgREYXMZjlB1wRcWbi3BkIERlXbW3NxeAU9', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VcU1lSPY9h', '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(7, 'Ms. Elda Steuber', 'bhodkiewicz@example.org', '2022-01-19 03:52:23', 0, 'h9woorhQ2TYDFeMOGQaABYbfHgl7mvy1snnVzdhV7NdUj7vSJ3ZQrPHBs35k2QKUjWD6Romj8c5jCPyuOpne3bODbeGX2e43ho29um4w7Htq1SuSwirVLKJAA9ngqs1s9OFKNLGTthxqeuucMekGk1wcQEHoRqfIs26w9Yb0gEMxvXRMn2OPkckElkQDnyif8yua5A0P', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pV9x9CyFSU', '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(8, 'Ed Halvorson', 'frederick46@example.net', '2022-01-19 03:52:23', 0, 'wyV5CbKCP22aGoQf1SyjzFhB6RsrFs8ezMRs4WE7u7Qo6tWLbdYBuoslL3YnJjJb6aQeCK87550U72oRZyEhWWHNrYuBipPXic9qcHDNShyVFmd0NEa3iOUmk01LjTIClr6anDfbvGe3ipmZOPnZDoFE9S1vqFfk5Bfb24Yj0o5Y0RBjA5rMTT2qSQA0HQCcYPWujFjf', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'P3QypJFQPX', '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(9, 'Brannon Schinner', 'lenny73@example.net', '2022-01-19 03:52:23', 0, 'OtEMMKSnRtF5cv94p2q5Xrd7RUXmf0KR329dpcydiZTlakKrQwvfJQf7FATPM576WyckHXjaTet3LaNbA5zJ8YQx6NWXPkrMEeHvSa5YCADXxtrzxMt4rnPBGTfGc6I15YHbRbrHg4gSd0iBGtHPHayL5nvn5J8ffqMAur7b7xJW4568TIpDj68MiyFtG64JnVBiHZf2', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'S8odVWIifs', '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(10, 'Ora Osinski', 'uvandervort@example.com', '2022-01-19 03:52:23', 0, 'in6ES3G3mn9kA5ARPOvs8SPUbM24ztyemNXWhRt8VTmUQYrmyHZKx79jz9HYGddX1TqsSD81BzxHX1l0NrCbT2wUtVKgpORm5xaV0i2DP7yu3c9ZBF78ys588akaJK1tytWf9PXB75lKLb7c6q1Ype4ef36lLXXgZmIj2Z3xGfVQNe3J8bUAMH7Pv5IiMoQTUvalnimR', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MBcPz9OthQ', '2022-01-19 03:52:23', '2022-01-19 03:52:23'),
(11, 'admin', 'admin@gmail.com', NULL, 1, 'AROq0zAs9Xm6mQVS3HAQmWUTbDBkS379DMHASMuKtWedCCv32xdhk7pWGhX2ZL3ax7Y5WcrWLjiFxugRfGTnfUYCN3TAbmLTQ5jUSOHaAccaOLuER8t3TB8zrKpoCeHw5WT0cZQFmc5WNUZYIi4jTXUTajVV6yNvEWbG3WaMgIL2SPeCjVuVYRIpJzchLcRv5yGOGQjv', '$2y$10$RYnOrPpFZED9ZeHo4dELdu1g8g2bw7ONvTuEFSpAAIGslBhx.3oeu', NULL, '2022-01-19 04:00:08', '2022-01-19 04:00:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`category_id`,`post_id`),
  ADD KEY `category_post_post_id_foreign` (`post_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_post`
--
ALTER TABLE `category_post`
  ADD CONSTRAINT `category_post_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
