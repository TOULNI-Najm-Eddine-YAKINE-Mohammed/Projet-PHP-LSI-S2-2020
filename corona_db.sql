-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : Dim 05 juil. 2020 à 13:32
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `corona_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `docteurs`
--

CREATE TABLE `docteurs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `docteurs`
--

INSERT INTO `docteurs` (`id`, `nom`, `prenom`, `adresse`, `ville`, `telephone`, `email`, `password`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 'omar', 'omari', 'Hay al Omran rue 12', 'Tanger', '0611111111', 'omar.omari@gmail.com', '$2y$10$bfn5sJq6Ue8fC1L3ySkATeSE6I9A1vT4HVmMhvQwLaQrs1KrZpZ5W', 1, '2020-06-19 21:28:24', '2020-06-19 21:28:24'),
(2, 'idris', 'idrisi', 'hay El drissia rue 13', 'Tétouan', '0611112222', 'idris.idrisi@gmail.com', '$2y$10$LAU3QCqmJ/HJWnlnDo3YyuXWrYdj3EA2e.YqrBuLC8tLNofj8Q7Z.', 2, '2020-06-19 21:31:17', '2020-06-19 21:31:17'),
(3, 'aya', 'hakaoui', 'hay El wahda rue 11', 'Rabat', '0611113333', 'aya.hakaoui@gmail.com', '$2y$10$p5ep/B9eqDgQcP.Kiq9c2eeTO2TsDtHFjsZvzn6.4JzafWSjZvxAS', 3, '2020-06-19 21:32:49', '2020-06-19 21:32:49'),
(4, 'youssef', 'benani', 'hay El riad rue 11', 'Oujda', '0611114444', 'youssef.benani@hotmail.com', '$2y$10$VVPCcocQ1Z08ClmhgSzAVeyKnf8lPpuV7mfHRca0kBqDVWrv3j7L2', 4, '2020-06-19 21:34:56', '2020-06-19 21:34:56');

-- --------------------------------------------------------

--
-- Structure de la table `investigations`
--

CREATE TABLE `investigations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `traite` tinyint(1) NOT NULL DEFAULT 0,
  `id_patient` bigint(20) UNSIGNED NOT NULL,
  `id_docteur` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `investigations`
--

INSERT INTO `investigations` (`id`, `question1`, `question2`, `question3`, `question4`, `question5`, `traite`, `id_patient`, `id_docteur`, `created_at`, `updated_at`) VALUES
(1, 'Oui. et le résultat du test est positif', 'Je suis en isolement médical parce que j\'ai rencontré une personne contaminée', 'Cas précédent de crise cardiaque', 'Maux d\'estomac', '12 jours', 1, 1, 3, '2020-06-28 23:10:30', '2020-06-28 23:10:30'),
(2, 'Oui. et le résultat du test est positif', 'Je suis en isolement médical parce que j ai des symptômes', 'Diabète', 'Fatigue ou faiblesse importante', '11 jours', 1, 2, 3, '2020-07-02 18:14:10', '2020-07-02 18:14:10'),
(3, 'Oui. et en attente du résultat du test', 'Je suis en isolement médical parce que j\'ai rencontré une personne contaminée', 'Hypertension artérielle', 'Difficulté à respirer', NULL, 1, 3, 3, '2020-07-02 22:15:03', '2020-07-02 22:15:03'),
(4, 'Oui. et le résultat du test est positif', 'Je suis en isolement médical parce que j ai des symptômes', NULL, 'Douleurs musculaires', NULL, 1, 4, 4, '2020-07-02 09:19:42', '2020-07-02 09:19:42'),
(5, 'Oui. et le résultat du test est positif', 'Je suis en isolement médical parce que j ai des symptômes', NULL, NULL, '3 jours', 1, 5, 4, '2020-07-05 15:21:57', '2020-07-05 15:21:57'),
(6, 'Oui. et le résultat du test est positif', 'Je suis en isolement médical parce que j ai des symptômes', NULL, 'Douleurs musculaires', NULL, 1, 6, 2, '2020-07-06 08:22:49', '2020-07-06 08:22:49'),
(7, 'Oui. et le résultat du test est positif', 'Je suis en isolement médical parce que j\'ai rencontré une personne contaminée', NULL, 'Fatigue ou faiblesse importante', NULL, 1, 7, 1, '2020-07-06 12:23:35', '2020-07-06 12:23:35'),
(8, 'Oui. et le résultat du test est positif', 'Je suis en isolement médical parce que j ai des symptômes', NULL, 'Difficulté à respirer', NULL, 1, 8, 2, '2020-07-06 08:24:33', '2020-07-06 08:24:33'),
(9, 'Non effectué', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 9, 1, '2020-07-01 11:25:22', '2020-07-01 11:25:22'),
(10, 'Oui. et le résultat du test est négatif', 'Je ne suis pas en isolement médical mais j étais proche de quelqu un en isolement médical', NULL, 'Fièvre supérieure à 38 degrés', NULL, 0, 10, NULL, '2020-07-07 07:26:08', '2020-07-07 07:26:08'),
(11, 'Oui. et le résultat du test est négatif', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 11, 3, '2020-06-29 13:28:47', '2020-06-29 13:28:47'),
(12, 'Oui. et en attente du résultat du test', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 12, 1, '2020-06-30 16:29:40', '2020-06-30 16:29:40'),
(13, 'Oui. et en attente du résultat du test', 'Je suis en isolement médical parce que j ai des symptômes', 'Diabète', 'Douleurs musculaires', '5 jours', 1, 13, 4, '2020-07-04 19:31:09', '2020-07-04 19:31:09'),
(14, 'Oui. et le résultat du test est positif', 'Je suis en isolement médical parce que j\'ai rencontré une personne contaminée', 'Diabète', 'Toux Avec mucus', NULL, 1, 14, 2, '2020-07-04 11:33:15', '2020-07-04 11:33:15'),
(15, 'Non effectué', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 15, 2, '2020-07-01 22:35:31', '2020-07-01 22:35:31'),
(16, 'Non effectué', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 16, 4, '2020-07-02 13:37:01', '2020-07-02 13:37:01'),
(17, 'Non effectué', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 17, 2, '2020-07-02 16:40:29', '2020-07-02 16:40:29'),
(18, 'Non effectué', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 18, 3, '2020-07-02 21:41:37', '2020-07-02 21:41:37'),
(19, 'Oui. et en attente du résultat du test', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 19, NULL, '2020-07-07 08:46:03', '2020-07-07 08:46:03'),
(20, 'Non effectué', 'Je suis en isolement médical parce que j ai des symptômes', NULL, 'Douleurs musculaires', NULL, 0, 20, NULL, '2020-07-07 09:46:52', '2020-07-07 09:46:52'),
(21, 'Oui. et le résultat du test est positif', 'Je suis en isolement médical parce que j ai des symptômes', 'Diabète', 'Douleurs musculaires', NULL, 0, 21, NULL, '2020-07-07 05:47:49', '2020-07-07 05:47:49'),
(22, 'Oui. et le résultat du test est négatif', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 22, 3, '2020-06-28 12:51:37', '2020-06-28 12:51:37'),
(23, 'Oui. et en attente du résultat du test', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 23, 2, '2020-06-30 12:52:43', '2020-06-30 12:52:43'),
(24, 'Oui. et en attente du résultat du test', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 24, 4, '2020-06-30 08:53:31', '2020-06-30 08:53:31'),
(25, 'Oui. et le résultat du test est positif', 'Je suis en isolement médical parce que j\'ai rencontré une personne contaminée', 'Hypertension artérielle', 'Douleurs musculaires', '7 jours', 1, 25, 4, '2020-07-06 12:54:15', '2020-07-06 12:54:15'),
(26, 'Oui. et le résultat du test est négatif', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 26, 4, '2020-07-04 21:56:08', '2020-07-04 21:56:08'),
(27, 'Non effectué', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 27, 1, '2020-07-05 18:56:45', '2020-07-05 18:56:45'),
(28, 'Oui. et le résultat du test est positif', 'Je suis en isolement médical parce que j ai des symptômes', 'Hypertension artérielle', NULL, NULL, 1, 28, 4, '2020-07-07 01:57:33', '2020-07-07 01:57:33'),
(29, 'Oui. et en attente du résultat du test', 'Je suis en isolement médical parce que j\'ai rencontré une personne contaminée', 'Diabète', 'Difficulté à respirer', NULL, 1, 29, 3, '2020-07-07 04:58:37', '2020-07-07 04:58:37'),
(30, 'Oui. et le résultat du test est négatif', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 30, 2, '2020-07-04 23:59:33', '2020-07-04 23:59:33'),
(31, 'Oui. et le résultat du test est négatif', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 31, 1, '2020-07-06 00:01:48', '2020-07-06 00:01:48'),
(32, 'Oui. et le résultat du test est négatif', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 32, 1, '2020-07-07 00:02:27', '2020-07-07 00:02:27'),
(33, 'Non effectué', 'Je suis en isolement médical parce que j ai des symptômes', 'Diabète', 'Douleurs musculaires', NULL, 0, 33, NULL, '2020-07-07 08:03:10', '2020-07-07 08:03:10'),
(34, 'Non effectué', 'Je suis en isolement médical parce que j ai des symptômes', 'Diabète', 'Douleurs musculaires', NULL, 0, 34, NULL, '2020-07-07 09:04:17', '2020-07-07 09:04:17'),
(35, 'Non effectué', 'Je suis en isolement médical parce que j\'ai rencontré une personne contaminée', 'Hypertension artérielle', 'Douleurs musculaires', NULL, 0, 35, NULL, '2020-07-07 08:06:55', '2020-07-07 08:06:55'),
(36, 'Oui. et en attente du résultat du test', 'Je suis en isolement médical parce que j ai des symptômes', 'Maladie rénale chronique', 'Douleurs musculaires', NULL, 1, 36, 2, '2020-07-01 16:07:36', '2020-07-01 16:07:36'),
(37, 'Oui. et le résultat du test est positif', 'Je suis en isolement médical parce que j\'ai rencontré une personne contaminée', 'Maladie rénale chronique', 'Difficulté à respirer', '10 jours', 1, 37, 2, '2020-07-01 17:08:17', '2020-07-01 17:08:17'),
(38, 'Oui. et le résultat du test est positif', 'Je suis en isolement médical parce que j ai des symptômes', NULL, 'Douleurs musculaires', NULL, 1, 38, 3, '2020-07-07 00:08:56', '2020-07-07 00:08:56'),
(39, 'Oui. et le résultat du test est positif', 'Je suis en isolement médical parce que j\'ai rencontré une personne contaminée', 'Cas précédent de crise cardiaque', NULL, NULL, 1, 39, 2, '2020-07-07 03:09:43', '2020-07-07 03:09:43'),
(40, 'Oui. et en attente du résultat du test', 'Je suis en isolement médical parce que j ai des symptômes', 'Diabète', 'Toux sèche', NULL, 1, 40, 1, '2020-07-07 00:11:04', '2020-07-07 00:11:04'),
(41, 'Oui. et le résultat du test est négatif', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 41, 2, '2020-07-05 10:11:54', '2020-07-05 10:11:54'),
(42, 'Oui. et en attente du résultat du test', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 42, 1, '2020-07-02 20:12:37', '2020-07-02 20:12:37'),
(43, 'Oui. et en attente du résultat du test', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 43, 3, '2020-07-02 10:13:16', '2020-07-02 10:13:16'),
(44, 'Oui. et le résultat du test est négatif', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 44, 2, '2020-07-04 20:14:13', '2020-07-04 20:14:13'),
(45, 'Non effectué', 'Je suis en isolement médical parce que j ai des symptômes', NULL, 'Difficulté à respirer', NULL, 0, 46, NULL, '2020-07-07 05:15:43', '2020-07-07 05:15:43'),
(46, 'Non effectué', 'Je ne suis pas en isolement médical', NULL, 'Douleurs musculaires', '7 jours', 0, 47, NULL, '2020-07-07 06:16:29', '2020-07-07 06:16:29'),
(47, 'Oui. et le résultat du test est négatif', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 49, 1, '2020-06-29 11:17:47', '2020-06-29 11:17:47'),
(48, 'Non effectué', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 50, 4, '2020-06-28 16:18:45', '2020-06-28 16:18:45'),
(49, 'Oui. et en attente du résultat du test', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 51, 2, '2020-06-29 10:21:42', '2020-06-29 10:21:42'),
(50, 'Non effectué', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 52, 3, '2020-07-01 11:22:47', '2020-07-01 11:22:47'),
(51, 'Oui. et en attente du résultat du test', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 53, 2, '2020-07-03 10:23:39', '2020-07-03 10:23:39'),
(52, 'Oui. et le résultat du test est négatif', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 54, 2, '2020-07-03 11:26:32', '2020-07-03 11:26:32'),
(53, 'Oui. et en attente du résultat du test', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 55, 2, '2020-07-07 00:28:49', '2020-07-07 00:28:49'),
(54, 'Oui. et le résultat du test est négatif', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 56, 4, '2020-07-07 01:29:45', '2020-07-07 01:29:45'),
(55, 'Oui. et en attente du résultat du test', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 57, 2, '2020-07-07 00:37:10', '2020-07-07 00:37:10'),
(56, 'Oui. et le résultat du test est négatif', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 58, 1, '2020-07-07 04:38:11', '2020-07-07 04:38:11'),
(57, 'Oui. et en attente du résultat du test', 'Je suis en isolement médical parce que j ai des symptômes', NULL, 'Fatigue ou faiblesse importante', NULL, 0, 59, NULL, '2020-07-07 07:38:57', '2020-07-07 07:38:57'),
(58, 'Oui. et le résultat du test est positif', 'Je ne suis pas en isolement médical mais j étais proche de quelqu un en isolement médical', 'Cas précédent de crise cardiaque', NULL, NULL, 0, 60, NULL, '2020-07-07 07:39:35', '2020-07-07 07:39:35'),
(59, 'Oui. et le résultat du test est positif', 'Je suis en isolement médical parce que j\'ai rencontré une personne contaminée', NULL, 'Fièvre supérieure à 38 degrés', NULL, 0, 61, 2, '2020-07-02 10:40:36', '2020-07-02 10:40:36'),
(60, 'Oui. et le résultat du test est positif', 'Je suis en isolement médical parce que j ai des symptômes', NULL, 'Maux d\'estomac', NULL, 1, 62, 1, '2020-07-03 13:41:28', '2020-07-03 13:41:28'),
(61, 'Non effectué', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 63, 2, '2020-06-30 07:42:24', '2020-06-30 07:42:24'),
(62, 'Oui. et le résultat du test est négatif', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 64, 3, '2020-07-06 06:43:10', '2020-07-06 06:43:10'),
(63, 'Oui. et en attente du résultat du test', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 65, 2, '2020-06-28 10:44:16', '2020-06-28 10:44:16'),
(64, 'Non effectué', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 66, 2, '2020-06-28 12:44:56', '2020-06-28 12:44:56'),
(65, 'Oui. et en attente du résultat du test', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 67, 3, '2020-06-28 15:45:36', '2020-06-28 15:45:36'),
(66, 'Oui. et le résultat du test est négatif', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 68, 2, '2020-07-03 13:46:09', '2020-07-03 13:46:09'),
(67, 'Non effectué', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 70, 1, '2020-07-07 03:47:20', '2020-07-07 03:47:20'),
(68, 'Oui. et le résultat du test est négatif', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 45, 4, '2020-07-05 12:50:47', '2020-07-05 12:50:47'),
(69, 'Oui. et en attente du résultat du test', 'Je suis en isolement médical parce que j ai des symptômes', 'Le cancer', 'Maux d\'estomac', NULL, 1, 48, 4, '2020-07-01 09:51:35', '2020-07-01 09:51:35'),
(70, 'Oui. et le résultat du test est négatif', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 69, 2, '2020-07-04 00:52:28', '2020-07-04 00:52:28'),
(71, 'Oui. et le résultat du test est négatif', 'Je suis en isolement médical parce que j ai des symptômes', 'Diabète', NULL, NULL, 0, 71, NULL, '2020-07-07 08:25:18', '2020-07-07 08:25:18'),
(72, 'Oui. et le résultat du test est négatif', 'Je ne suis pas en isolement médical mais j étais proche de quelqu un en isolement médical', NULL, 'Difficulté à respirer', NULL, 0, 72, NULL, '2020-07-07 08:59:05', '2020-07-07 08:59:05'),
(73, 'Non effectué', 'Je ne suis pas en isolement médical mais j étais proche de quelqu un en isolement médical', NULL, 'Maux d\'estomac', NULL, 0, 75, NULL, '2020-07-07 08:00:29', '2020-07-07 08:00:29'),
(74, 'Oui. et le résultat du test est négatif', 'Je suis en isolement médical parce que j\'ai rencontré une personne contaminée', NULL, 'Douleurs musculaires', NULL, 0, 82, NULL, '2020-07-07 09:01:36', '2020-07-07 09:01:36'),
(75, 'Non effectué', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 87, 2, '2020-07-06 12:06:32', '2020-07-06 12:06:32'),
(76, 'Oui. et le résultat du test est négatif', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 88, 3, '2020-07-06 13:07:22', '2020-07-06 13:07:22'),
(77, 'Oui. et le résultat du test est négatif', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 89, 1, '2020-07-06 14:08:06', '2020-07-06 14:08:06'),
(78, 'Non effectué', 'Je ne suis pas en isolement médical', NULL, NULL, NULL, 0, 90, 4, '2020-07-07 04:08:42', '2020-07-07 04:08:42');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2020_06_16_173653_create_docteurs_table', 1),
(3, '2020_06_16_201041_create_patients_table', 1),
(4, '2020_06_16_201255_create_investigations_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `patients`
--

CREATE TABLE `patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `sexe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `patients`
--

INSERT INTO `patients` (`id`, `nom`, `prenom`, `age`, `sexe`, `adresse`, `ville`, `telephone`, `email`, `password`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 'hicham', 'elhachimi', 22, 'Homme', 'hay El dakhela rue 10', 'Tanger', '0611115555', 'hicham.elhachimi@gmail.com', '$2y$10$.rlT/mUWBPwhG8RG9NKuO.AqrUQJZ7oxD/PIy624eUVOekK0av8cu', 5, '2020-06-19 21:37:26', '2020-06-19 21:37:26'),
(2, 'siham', 'raissouni', 18, 'Femme', 'hay El majd rue 10', 'Tanger', '0611116666', 'siham.raissouni@gmail.com', '$2y$10$qMaWoechJ3fKIIbqLcAMBen1L3fiiz5QNByT1i1JVIkUzgCYWzX/u', 6, '2020-06-19 21:38:49', '2020-06-19 21:38:49'),
(3, 'saad', 'saadaoui', 17, 'Homme', 'hay El haddad rue 9', 'Tanger', '0611116669', 'saad.saadaoui@gmail.com', '$2y$10$oQPN22bWFXVPCMGwDsZl.uqK7NalI0MptJ7LsqM5YchxnmRzsH4cW', 7, '2020-06-19 21:39:44', '2020-06-19 21:39:44'),
(4, 'ayoub', 'saadaoui', 23, 'Homme', 'hay El haddad rue 9', 'Tanger', '0611119999', 'ayoub.saadaoui@gmail.com', '$2y$10$sg.6d.qI4ous.PDUvZcLw.PwwGqmYx0FdBefrfE9qqMcM8lUbdczy', 8, '2020-06-19 21:40:20', '2020-06-19 21:40:20'),
(5, 'jamila', 'hilali', 21, 'Femme', 'hay El jomaa rue 8', 'Tanger', '0611117777', 'jamila.hilali@gmail.com', '$2y$10$qCew4cML3Z2RocOCdhAfl.CHPc2E51Jcl2OJXu/9EPEkX8JhGL67a', 9, '2020-06-19 21:41:29', '2020-06-19 21:41:29'),
(6, 'soulaiman', 'salimani', 21, 'Homme', 'hay El khamis rue 7', 'Tanger', '0611118888', 'soulaiman.salimani@gmail.com', '$2y$10$ahF9eeuLzlWs6jr.NNoFIeJf1nGOcm/9q2eC.7/xw8yjSv.Dt4lFe', 10, '2020-06-19 21:42:55', '2020-06-19 21:42:55'),
(7, 'ilyas', 'kamari', 36, 'Homme', 'hay El komra rue 7', 'Tanger', '0611118877', 'ilyas.kamari@gmail.com', '$2y$10$KBbboxJCVkpNz5ufPe1g5.7KTr3siz6sZM3poCivqVg/ZB0OsYzKu', 11, '2020-06-19 21:44:27', '2020-06-19 21:44:27'),
(8, 'hind', 'hindawi', 41, 'Femme', 'hay El hidawi rue 7', 'Tanger', '0611118866', 'hind.hindawi@gmail.com', '$2y$10$smLQ/BtcaF.TUB6.Jt6oSuAtYmixtvlx5W5MPbIf1Ga8hr0QFXfOe', 12, '2020-06-19 21:45:47', '2020-06-19 21:45:47'),
(9, 'ammar', 'tanjawi', 17, 'Homme', 'hay bani makada rue 3', 'Tanger', '0611118855', 'ammar.tanjawi@gmail.com', '$2y$10$2Q1H33hhXdVyl/TG7ORb7OlkdGXIhW5HxC1xBUJwbhbpcfVcCn9qS', 13, '2020-06-19 21:47:18', '2020-06-19 21:47:18'),
(10, 'tamer', 'tamraoui', 13, 'Homme', 'hay bani wahda rue 2', 'Tanger', '0611118333', 'tamer.tamraoui@gmail.com', '$2y$10$oF3CgaoLCplVzwzfUQ0yFecUA3rlyzvG755Z6WqAQVhlQMuZi.ne2', 14, '2020-06-19 21:48:31', '2020-06-19 21:48:31'),
(11, 'laila', 'filali', 19, 'Femme', 'hay jomla rue 2', 'Tétouan', '0611118322', 'laila.filali@gmail.com', '$2y$10$xT9O1L3/5lVfB.KbXcHoZ.JsT0lyGKkqqr8XYzb3DP6yoUgQYG4/.', 15, '2020-06-19 21:51:20', '2020-06-19 21:51:20'),
(12, 'kamar', 'hilali', 23, 'Femme', 'hay hilaliyin rue 2', 'Tétouan', '0611118311', 'kamar.hilali@gmail.com', '$2y$10$duIxWp8e/xhWmsDVQJVyK.EXaYzZmQJI06rDBeaD0GCIt1np3R5Y6', 16, '2020-06-19 21:52:20', '2020-06-19 21:52:20'),
(13, 'karim', 'akrami', 29, 'Homme', 'hay alarbain rue 1', 'Tétouan', '0611118344', 'karim.akrami@gmail.com', '$2y$10$J/SVRpKuM5PXMAVPpwEPH.Y0vrMKoj4MF7EswZbunO6QFW9Iic.P6', 17, '2020-06-19 21:53:20', '2020-06-19 21:53:20'),
(14, 'mohammed', 'benani', 41, 'Homme', 'hay salam rue 9', 'Tétouan', '0611118355', 'mohammed.benani@hotmail.com', '$2y$10$2klCv189CV220RBmXJpK9.8mIoJoRlt0Mpixr/BQOSQlqCBEoAQzy', 18, '2020-06-19 21:55:09', '2020-06-19 21:55:09'),
(15, 'mohammed', 'jilali', 32, 'Homme', 'hay layla rue 9', 'Tétouan', '0611118366', 'mohammed.jilali@hotmail.com', '$2y$10$M52FVEYd8mXDgLw1IEPIBeppPF6Y696Z2rUaeFEF9ZNVqx0BIsBYa', 19, '2020-06-19 21:56:00', '2020-06-19 21:56:00'),
(16, 'jalal', 'jilali', 37, 'Homme', 'hay layla rue 7', 'Tétouan', '0611118377', 'jalal.jilali@hotmail.com', '$2y$10$kKwo85QQF5TOs01XslcRzeMD30C9PbH9OxKaxFRSxG6QOKpY7btr.', 20, '2020-06-19 21:59:28', '2020-06-19 21:59:28'),
(17, 'iman', 'kadouri', 22, 'Femme', 'hay khribga rue 7', 'Tétouan', '0611118388', 'iman.kadouri@gmail.com', '$2y$10$8YzQLSPaGMumIYycGgu8SeQrDT8/yTUGBpamlM..T3eiKYNVCx50q', 21, '2020-06-19 22:00:58', '2020-06-19 22:00:58'),
(18, 'souad', 'saadaoui', 39, 'Femme', 'hay saada rue 8', 'Tétouan', '0611118399', 'souad.saadaoui@gmail.com', '$2y$10$YP.Uy6irDQkSPFuZ5pHV0.zFWgwJaQkq2TI2qOtRduDve9.586QiS', 22, '2020-06-19 22:03:08', '2020-06-19 22:03:08'),
(19, 'salma', 'moussaoui', 17, 'Femme', 'hay chifae rue 7', 'Tétouan', '0611118401', 'salma.moussaoui@gmail.com', '$2y$10$/0my3cjmTBK32FERSJuh/.QBKB7QKlYKBfuBXGOU5K4E0gwuXBcwG', 23, '2020-06-19 22:04:26', '2020-06-19 22:04:26'),
(20, 'karima', 'moussaoui', 24, 'Femme', 'hay karam rue 3', 'Tétouan', '0611118402', 'karima.moussaoui@gmail.com', '$2y$10$wAGkcQPL3kvhJOgYV6e3pu1/gmsdvgfgrCMvKSbTYS6O1QcLd.qWu', 24, '2020-06-19 22:06:11', '2020-06-19 22:06:11'),
(21, 'karim', 'abbassi', 21, 'Homme', 'hay abbasiyin rue 3', 'Tétouan', '0611118403', 'karim.abbassi@gmail.com', '$2y$10$4dU1A.G3c5.ttJzNnzGDH.B7pHYqSqwGJUmjYeXONj0m5pIfSuZIa', 25, '2020-06-19 22:07:31', '2020-06-19 22:07:31'),
(22, 'mohammed', 'tamsamani', 26, 'Homme', 'hay rif rue 6', 'Al Houceima', '0611118404', 'mohammed.tamsamani@gmail.com', '$2y$10$YMbOwbUgChSVuv.rSWCcpe2A/a9Gp5uAshlEx5TxoqKG4W5tYC/vq', 26, '2020-06-19 22:11:21', '2020-06-19 22:11:21'),
(23, 'imad', 'hadari', 22, 'Homme', 'hay hadarin rue 6', 'Al Houceima', '0611118405', 'imad.hadari@gmail.com', '$2y$10$Cl9EZOPf2db/6YSWKvHReOtt1VIVxLWJMCtsRwGyoHh2Tguc8wgYu', 27, '2020-06-19 22:12:36', '2020-06-19 22:12:36'),
(24, 'fatima', 'jilali', 22, 'Femme', 'hay amazigh rue 4', 'Al Houceima', '0611118406', 'fatima.jilali@gmail.com', '$2y$10$7.wzCwBb78p/a4o.uV5Go.oCWhzwzX33vUGl1Gkf3b.sC3BjQcXUG', 28, '2020-06-19 22:13:36', '2020-06-19 22:13:36'),
(25, 'khaoula', 'charkaoui', 33, 'Femme', 'hay amazigh rue 13', 'Al Houceima', '0611118407', 'khaoula.charkaoui@gmail.com', '$2y$10$9p0L5R6vAwz0XQmWEPFVduHE7LwnO67gop8f7p4joH2UfzwFfhRGS', 29, '2020-06-19 22:15:03', '2020-06-19 22:15:03'),
(26, 'issa', 'bakali', 22, 'Homme', 'hay warda rue 12', 'Al Houceima', '0611118408', 'issa.bakali@gmail.com', '$2y$10$wAQNm8g1IN02IpJmI/CfxOfsM/8Mdz925RK4LVi8e077TtWaPqvAW', 30, '2020-06-19 22:16:03', '2020-06-19 22:16:03'),
(27, 'oumaima', 'bakali', 23, 'Femme', 'hay ouiam rue 11', 'Al Houceima', '0611118409', 'oumaima.bakali@gmail.com', '$2y$10$qeNj0RyoR9YEHiPO0rVJsuHlkOC16YR9htgVt6ClMqMReHYVEmv9m', 31, '2020-06-19 22:20:52', '2020-06-19 22:20:52'),
(28, 'samiha', 'issaoui', 23, 'Femme', 'hay genawa rue 10', 'Al Houceima', '0611118411', 'samiha.issaoui@gmail.com', '$2y$10$moc5IcZqR665FmUJgsUXDe0Z2JH4bpqCAAsdCD58UrPpwEZuM6Vom', 32, '2020-06-19 22:22:04', '2020-06-19 22:22:04'),
(29, 'hicham', 'omari', 28, 'Homme', 'hay jirari rue 10', 'Al Houceima', '0611118412', 'hicham.omari@gmail.com', '$2y$10$nLDdTmxcpWmfL0XHsGG/9OgEqN6W2s0HH.OcrUq7ohB.DDJ2vE1hW', 33, '2020-06-19 22:23:04', '2020-06-19 22:23:04'),
(30, 'soufian', 'wahabi', 21, 'Homme', 'hay wahabi rue 11', 'Al Houceima', '0611118413', 'soufian.wahabi@gmail.com', '$2y$10$qSpc6DI./ze4JCE4HyimUuS.RzQshmFHh/FvhumU8nSM1N2FDKTV6', 34, '2020-06-19 22:24:35', '2020-06-19 22:24:35'),
(31, 'soufian', 'fassi', 24, 'Homme', 'hay fassi rue 11', 'Al Houceima', '0611118414', 'soufian.fassi@gmail.com', '$2y$10$MLg9AfWWWAiorijQippo0OFBb58F5.88VpPFnNjAbXyUxmWO8kaJ6', 35, '2020-06-19 22:25:42', '2020-06-19 22:25:42'),
(32, 'ayoub', 'moussaoui', 27, 'Homme', 'hay wahda rue 17', 'Al Houceima', '0611118415', 'ayoub.moussaoui@gmail.com', '$2y$10$YeUOlkE2swbYVZ67FOzvKupAEK0fSScBMb6KkL5V6RecdKfKVJfgm', 36, '2020-06-19 22:26:49', '2020-06-19 22:26:49'),
(33, 'mohammed', 'fannan', 26, 'Homme', 'hay fannanin rue 13', 'Al Houceima', '0611118416', 'mohammed.fannan@gmail.com', '$2y$10$tEa6/R/FrPaufUpec/zzAePv7UC6TEupIxvuYudz30gJTikxM3s..', 37, '2020-06-19 22:28:22', '2020-06-19 22:28:22'),
(34, 'mohammed', 'issaoui', 23, 'Homme', 'hay mekabar rue 13', 'Al Houceima', '0611118417', 'mohammed.issaoui@gmail.com', '$2y$10$KWc7EESdRxcYh7HKRC2cFeFNO5z50DG0rg7o/OHLFrSXzsYhh6uAq', 38, '2020-06-19 22:30:01', '2020-06-19 22:30:01'),
(35, 'youssef', 'saoudi', 41, 'Homme', 'hay tefah rue 14', 'Al Houceima', '0611118419', 'youssef.saoudi@gmail.com', '$2y$10$NNVl3FxW8qC7v1GfIG8xK.V2x8JFFbQnwauZkYGaDddmIKblb0.jm', 39, '2020-06-19 22:31:23', '2020-06-19 22:31:23'),
(36, 'youssef', 'hilali', 32, 'Homme', 'hay jebel rue 19', 'Chefchaouen', '0611118418', 'youssef.hilali@gmail.com', '$2y$10$KaQ9WqYA9Ey0rTgCMb8nne00LUlKjOjeFVNky1HTPGCFRMetPMMX2', 40, '2020-06-19 22:33:26', '2020-06-19 22:33:26'),
(37, 'issam', 'chouali', 45, 'Homme', 'hay dradeb rue 19', 'Chefchaouen', '0611118421', 'issam.chouali@gmail.com', '$2y$10$VyHgrWPWzgxv4jTk7CZRN.nnFaihP1qFBGkcRm90vd1RASUZ8vzIS', 41, '2020-06-19 22:35:09', '2020-06-19 22:35:09'),
(38, 'issam', 'delahi', 32, 'Homme', 'hay delaha rue 12', 'Chefchaouen', '0611118422', 'issam.delahi@gmail.com', '$2y$10$ejZWHBiJHgquEkXAlA/CRuN/ar3fsxDmzscIvjqEZvUmU9igdxUUm', 42, '2020-06-19 22:35:48', '2020-06-19 22:35:48'),
(39, 'mohammed', 'filali', 35, 'Homme', 'hay filali rue 11', 'Chefchaouen', '0611118423', 'mohammed.filali@gmail.com', '$2y$10$xlsCfs9oBliMp9K7jO0E4eULYv6x37ZsY8TptGsylyBG5e5B/LHSW', 43, '2020-06-19 22:36:38', '2020-06-19 22:36:38'),
(40, 'mohammed', 'jebli', 35, 'Homme', 'hay rouida rue 11', 'Chefchaouen', '0611118424', 'mohammed.jebli@gmail.com', '$2y$10$hwia.l4ANdO/H3E88D.yWuVj8xXFT8ns/BOXNhIkU6686LhM15Eca', 44, '2020-06-19 22:37:19', '2020-06-19 22:37:19'),
(41, 'hicham', 'kadouri', 23, 'Homme', 'hay rouida rue 12', 'Chefchaouen', '0611118425', 'hicham.kadouri@gmail.com', '$2y$10$cUq.0.T8IpC6/8NP9l2tReGh3lG4vOKLNwl8X7djBPo/QO.bt9hb6', 45, '2020-06-19 22:38:37', '2020-06-19 22:38:37'),
(42, 'youness', 'kadouri', 22, 'Homme', 'hay rouida rue 12', 'Chefchaouen', '0611118426', 'youness.kadouri@gmail.com', '$2y$10$A.NUPoD/0K.CS6oCryrCtOWk4tk2xxUgeem7fT1YFtu9CSknGX8z.', 46, '2020-06-19 22:39:06', '2020-06-19 22:39:06'),
(43, 'ferdaous', 'ammari', 29, 'Femme', 'hay farida rue 12', 'Chefchaouen', '0611118427', 'ferdaous.ammari@gmail.com', '$2y$10$sQu5/bj86f2YQ7MP5BiZUOUXzb9FYJ8azdQxPVj3Z4Z7XfwwV5M5e', 47, '2020-06-19 22:40:07', '2020-06-19 22:40:07'),
(44, 'laila', 'kharchoufi', 27, 'Femme', 'hay farida rue 18', 'Chefchaouen', '0611118428', 'laila.kharchoufi@gmail.com', '$2y$10$x4ClLDYVYLaIYQqNLqcVAeGYFqxM//2x98rRmpDc05TNb9zJd3bO2', 48, '2020-06-19 22:40:52', '2020-06-19 22:40:52'),
(45, 'jamila', 'romani', 18, 'Femme', 'hay kadous rue 18', 'Chefchaouen', '0611118429', 'jamila.romani@gmail.com', '$2y$10$53kvHAjNz6robTvBCxpUuOUE.thCk6juHNilrm8fGl57sqdpwoBcu', 49, '2020-06-19 22:41:54', '2020-06-19 22:41:54'),
(46, 'chafik', 'benani', 19, 'Homme', 'hay sania rue 16', 'Chefchaouen', '0611118431', 'chafik.benani@gmail.com', '$2y$10$n.INv.Tgi8gLS4CSQz64VOBaBpXvJE7lpLT6YusxeBNSmXqgXUfRu', 50, '2020-06-19 22:43:00', '2020-06-19 22:43:00'),
(47, 'imad', 'benani', 23, 'Homme', 'hay sania rue 18', 'Chefchaouen', '0611118432', 'imad.benani@gmail.com', '$2y$10$IFOOLOTnRsKoTMHnXFiwFO8k96QaCcOc0Rcx2mefqs2IjS0jokjvO', 51, '2020-06-19 22:43:31', '2020-06-19 22:43:31'),
(48, 'imad', 'laaroussi', 24, 'Homme', 'hay marsa rue 18', 'Larache', '0611118433', 'imad.laaroussi@gmail.com', '$2y$10$0pAdCC3NByjFn2a8/7dYhOE2ex05n9I.MnJnel4MWiBRzd5MwMkQ.', 52, '2020-06-19 22:45:17', '2020-06-19 22:45:17'),
(49, 'youssef', 'laaroussi', 28, 'Homme', 'hay marsa rue 11', 'Larache', '0611118434', 'youssef.laaroussi@gmail.com', '$2y$10$zDiMlLchlMIDTVk5eAPJdeRh57Ua56AeVHBJo/OdgNCEKwcylrT5C', 53, '2020-06-19 22:45:41', '2020-06-19 22:45:41'),
(50, 'smail', 'fichaoui', 22, 'Homme', 'hay marsa rue 12', 'Larache', '0611118435', 'smail.fichaoui@gmail.com', '$2y$10$9k90n1gaHNyv0fks76p4gukpPte0gTPFYC4AtiCLGajpNPPsgMqYC', 54, '2020-06-19 22:46:25', '2020-06-19 22:46:25'),
(51, 'kamar', 'fichaoui', 27, 'Femme', 'hay diwana rue 9', 'Larache', '0611118436', 'kamar.fichaoui@gmail.com', '$2y$10$nYuW9VikUQZu/BaHOcQwv.YBzkJ7d8Pd8Yy/P.mCewG/QwDqEAXva', 55, '2020-06-19 22:47:05', '2020-06-19 22:47:05'),
(52, 'salma', 'salmaoui', 45, 'Femme', 'hay diwana rue 1', 'Larache', '0611118436', 'salma.salmaoui@gmail.com', '$2y$10$0qexvAwaI2AT1TB7CNSZcumEY0zgrsh5P/SIRQIfLyi8O2kbrvdaS', 56, '2020-06-19 22:47:45', '2020-06-19 22:47:45'),
(53, 'iman', 'salmaoui', 32, 'Femme', 'hay diwana rue 4', 'Larache', '0611118437', 'iman.salmaoui@gmail.com', '$2y$10$GoXtV7qKEwVSQEF/t1aXvOpEjy10UwrSF9.sTI.Zl44t/YZcpqGju', 57, '2020-06-19 22:48:11', '2020-06-19 22:48:11'),
(54, 'hind', 'khokhi', 32, 'Femme', 'hay medina rue 4', 'Larache', '0611118438', 'hind.khokhi@gmail.com', '$2y$10$Ywc8LzDMsES6DPPssBv.ouZQ9Wz2cexfF53wAg1QjVonoGTalFMvG', 58, '2020-06-19 22:48:56', '2020-06-19 22:48:56'),
(55, 'salim', 'aayadi', 32, 'Homme', 'hay medina rue 1', 'Larache', '0611118439', 'salim.aayadi@gmail.com', '$2y$10$rNF86vQQNuXcCyj2eKvE7u410805PIiWyAaNOB9dfDlk8Y43WHP0i', 59, '2020-06-19 22:49:37', '2020-06-19 22:49:37'),
(56, 'safouan', 'aayadi', 19, 'Homme', 'hay dakhla rue 1', 'Larache', '0611118441', 'safouan.aayadi@gmail.com', '$2y$10$rNRlTI48sPLYoj55Xdfq4uX8lUma4.NSI1afEoh8GxvjeRZ8ENG2C', 60, '2020-06-19 22:50:17', '2020-06-19 22:50:17'),
(57, 'soulaiman', 'filali', 23, 'Homme', 'hay kharja rue 3', 'Larache', '0611118442', 'soulaiman.filali@gmail.com', '$2y$10$4wm1d.byg/4iH8sn8W1ld.XWPvFzKsGeOWd7ZVxbcbdeJdzgVATgq', 61, '2020-06-19 22:51:02', '2020-06-19 22:51:02'),
(58, 'imad', 'dahmani', 23, 'Homme', 'hay kharja rue 2', 'Larache', '0611118443', 'imad.dahmani@gmail.com', '$2y$10$bFwgsJPmVgmspBsDNs.keuqMT3PpZUuAnqOLYN9iRDmQ4XRHcb0Xi', 62, '2020-06-19 22:51:38', '2020-06-19 22:51:38'),
(59, 'ayoub', 'dahmani', 25, 'Homme', 'hay laila rue 2', 'Larache', '0611118444', 'ayoub.dahmani@gmail.com', '$2y$10$b4ULmZaoYcYSMkCOxlPzLeicvKuSHXfYrFGTqNHoVY1jzgDCP51su', 63, '2020-06-19 22:52:09', '2020-06-19 22:52:09'),
(60, 'hamza', 'hamzaoui', 29, 'Homme', 'hay hind rue 2', 'Larache', '0611118445', 'hamza.hamzaoui@gmail.com', '$2y$10$YUdxeiaKCUBjL/ickwg4K.WI2GGWeAzm8VKQe0ZZJv70JyjG9QjgO', 64, '2020-06-19 22:52:59', '2020-06-19 22:52:59'),
(61, 'hamza', 'zaylachi', 26, 'Homme', 'hay lhajra rue 2', 'Asilah', '0611118446', 'hamza.zaylachi@gmail.com', '$2y$10$7nhPIYUWi7aa9b4Or91k1.N1hx8Tr8vVPwrmrfM1Qva1MjTohhRza', 65, '2020-06-19 22:54:38', '2020-06-19 22:54:38'),
(62, 'iman', 'zaylachi', 32, 'Femme', 'hay lhajra rue 2', 'Asilah', '0611118447', 'iman.zaylachi@gmail.com', '$2y$10$BuCaTfAOhQIvTaivqYt5Pugbv6KERq3E0qakmoh6WmSM/azG0LR/O', 66, '2020-06-19 22:55:07', '2020-06-19 22:55:07'),
(63, 'laila', 'samaoui', 22, 'Femme', 'hay lhajra rue 9', 'Asilah', '0611118448', 'laila.samaoui@gmail.com', '$2y$10$dsosS9NtrOY9X7h2/e/svOYFBujzfADnqb18K3r/CfHBQj12p.jfK', 67, '2020-06-19 22:55:48', '2020-06-19 22:55:48'),
(64, 'siham', 'derwich', 29, 'Femme', 'hay rewida rue 9', 'Asilah', '0611118449', 'siham.derwich@gmail.com', '$2y$10$ramOPj/DODBkwpuatn6J0.9DNR/x3c.tAmOTLeIVrRnhRtZ/1aPpe', 68, '2020-06-19 22:56:33', '2020-06-19 22:56:33'),
(65, 'mohammed', 'zili', 45, 'Homme', 'hay diwana rue 9', 'Asilah', '0611118451', 'mohammed.zili@gmail.com', '$2y$10$Q/RQbQI53ZpYGov5tKLBAuNqZCnQbVd88..zAcxXOecFvwT8rfyGS', 69, '2020-06-19 22:57:48', '2020-06-19 22:57:48'),
(66, 'adnan', 'jebli', 35, 'Homme', 'hay diwana rue 8', 'Asilah', '0611118452', 'adnan.jebli@gmail.com', '$2y$10$XJM4m.9b8Eg4U9SiDK8nKuR3zneFQXzUOGjv7LBdb5rsPYTOkZC2G', 70, '2020-06-19 22:58:28', '2020-06-19 22:58:28'),
(67, 'adnan', 'haouari', 25, 'Homme', 'hay banana rue 8', 'Asilah', '0611118453', 'adnan.haouari@gmail.com', '$2y$10$orJgNmVEJFlQcJwQe1qWX.2nUh5oTmGaLPJWs/vHEZLkFitcOi6ju', 71, '2020-06-19 22:59:13', '2020-06-19 22:59:13'),
(68, 'jamal', 'jilali', 28, 'Homme', 'hay banana rue 7', 'Asilah', '0611118454', 'jamal.jilali@gmail.com', '$2y$10$y.AalQKQ8nTg/tGIxJBc5.OTF/aktimf4qpCPnomUfdlfeUgxgwzO', 72, '2020-06-19 23:00:18', '2020-06-19 23:00:18'),
(69, 'ayoub', 'jilali', 29, 'Homme', 'hay banana rue 7', 'Asilah', '0611118455', 'ayoub.jilali@gmail.com', '$2y$10$l44M2zl7T4rz97LCTqUcfuurEGg/HwWZPuvIrHT9BCE94z.IdKfMO', 73, '2020-06-19 23:00:42', '2020-06-19 23:00:42'),
(70, 'bilal', 'rahmouni', 27, 'Homme', 'hay tefaha rue 7', 'Asilah', '0611118456', 'bilal.rahmouni@gmail.com', '$2y$10$DtnaCUUN4nSbXu2bGBgNpeQZ5EqbtqDoCBvVKKwo7ZGYZDIrD6aOG', 74, '2020-06-19 23:02:07', '2020-06-19 23:02:07'),
(71, 'bilal', 'kamraoui', 34, 'Homme', 'hay tefaha rue 2', 'Asilah', '0611118457', 'bilal.kamraoui@gmail.com', '$2y$10$13PhKFgYhm/M0vOLd.WUFOTvJNsNYfu.azQVrq1j/e/W61FKQG34e', 75, '2020-06-19 23:03:04', '2020-06-19 23:03:04'),
(72, 'mohammed', 'bakkali', 22, 'Homme', 'hay haddad rue 1', 'Tanger', '0613311111', 'mohammed.bakkali@gmail.com', '$2y$10$JsduXkTEUYCwBMLIVI36tORF1U3MvfBOv9I4xEMrvTbTVyFAaJN/6', 76, '2020-06-20 08:32:29', '2020-06-20 08:32:29'),
(73, 'yassin', 'bakkali', 27, 'Homme', 'hay kabir rue 1', 'Tanger', '0614411111', 'yassin.bakkali@gmail.com', '$2y$10$44dM7hnimUetgvA7k4esdO3VPeGD4hVckEeHlFKybpvBBc8ACWvba', 77, '2020-06-20 08:33:10', '2020-06-20 08:33:10'),
(74, 'hicham', 'dilala', 29, 'Homme', 'hay saghir rue 1', 'Tanger', '0615511111', 'hicham.dilala@gmail.com', '$2y$10$Ah6hbyQwpdoUX0TTcqnTLeAsNKAx1S0pp7VtHEVcmLpigyPRadQyi', 78, '2020-06-20 08:34:08', '2020-06-20 08:34:08'),
(75, 'ayoub', 'haouari', 29, 'Homme', 'hay tawil rue 1', 'Tétouan', '0616611111', 'ayoub.haouari@gmail.com', '$2y$10$8wfpnlsmz.ftsNfBo6zlvedO4ZsAVIM4pujoycrJ6xXTJ7lZQ5yqe', 79, '2020-06-20 08:35:34', '2020-06-20 08:35:34'),
(76, 'farid', 'abbassi', 24, 'Homme', 'hay kasir rue 12', 'Tétouan', '0617711111', 'farid.abbassi@gmail.com', '$2y$10$ntQpXLDkEOIor11rwI.zGOOwydBdO1RtjwuFvxfmg.R3j8zsT2SLy', 80, '2020-06-20 08:36:40', '2020-06-20 08:36:40'),
(77, 'adnan', 'firari', 29, 'Homme', 'hay rahrah rue 17', 'Al Houceima', '0618811111', 'adnan.firari@gmail.com', '$2y$10$/O9FzKSUROJmoZF4RKmeDe3KzlzRXkfNlVLqs/O2YbLOO9AzDStwe', 81, '2020-06-20 08:38:29', '2020-06-20 08:38:29'),
(78, 'ahmed', 'rifi', 22, 'Homme', 'hay rif rue 17', 'Al Houceima', '0619911111', 'ahmed.rifi@gmail.com', '$2y$10$f3gfE1OphUhuF9MWAcGrhe5bOfVCi.QueUGitjBqEDXy5l4YCuRoe', 82, '2020-06-20 08:39:15', '2020-06-20 08:39:15'),
(79, 'hamid', 'delahi', 22, 'Homme', 'hay wahda rue 17', 'Chefchaouen', '0621111111', 'hamid.delahi@gmail.com', '$2y$10$5FodO55zDnHEoykhvKuJ2.EOgr1v6HGyGIKtB8zZEiCY0LvrnfQKG', 83, '2020-06-20 08:40:42', '2020-06-20 08:40:42'),
(80, 'karim', 'delahi', 21, 'Homme', 'hay wahda rue 17', 'Chefchaouen', '0622211111', 'karim.delahi@gmail.com', '$2y$10$qlw3MbK/WI9YfZjAX7sitODZhsmoU7AEbIUB1CSwFbCgC052QjwpS', 84, '2020-06-20 08:41:25', '2020-06-20 08:41:25'),
(81, 'samir', 'bennani', 19, 'Homme', 'hay jadida rue 17', 'Chefchaouen', '0623311111', 'samir.bennani@gmail.com', '$2y$10$Sfq8/Z/nOVcmmEAqsqOQue/670Q0iqPH72DuocSDo8CaNzUcN3c6m', 85, '2020-06-20 08:42:14', '2020-06-20 08:42:14'),
(82, 'haitam', 'mesbahi', 37, 'Homme', 'hay warzazat rue 13', 'Larache', '0624411111', 'haitam.mesbahi@gmail.com', '$2y$10$3YWdvZHjAIu5I5aVq.zEXeEkochXItV/fwpDnFjFVPyv0.Sg8PI.m', 86, '2020-06-20 08:43:33', '2020-06-20 08:43:33'),
(83, 'imad', 'mesbahi', 27, 'Homme', 'hay warzazat rue 13', 'Larache', '0625511111', 'imad.mesbahi@gmail.com', '$2y$10$wekgw/0bcpWuQOeU65xSFOxB./5aKoJDn9KRRPbY2Yx2lakbzU2YG', 87, '2020-06-20 08:44:06', '2020-06-20 08:44:06'),
(84, 'ayoub', 'tamsamani', 17, 'Homme', 'hay rachidia rue 13', 'Larache', '0626611111', 'ayoub.tamsamani@gmail.com', '$2y$10$As4.gMFqEAzAfGSkWzPU3uLpA8VgmLht4Iwz7cmwOj/KA9Y8fB1aK', 88, '2020-06-20 08:44:55', '2020-06-20 08:44:55'),
(85, 'hassan', 'hassani', 27, 'Homme', 'hay hassania rue 13', 'Asilah', '0627711111', 'hassan.hassani@gmail.com', '$2y$10$Fm8IikBNiy3iuPts7pFhTudqBjS1iNflo.7kFo8/ZD5ts.eJ3pP6q', 89, '2020-06-20 08:46:04', '2020-06-20 08:46:04'),
(86, 'bilal', 'bilali', 37, 'Homme', 'hay bilalia rue 13', 'Asilah', '0628811111', 'bilal.bilali@gmail.com', '$2y$10$imoLiD1UL/QY0t79gv1TR.hGUVBgjauPSf171Mmj7OUn5VYIqEDlu', 90, '2020-06-20 08:47:07', '2020-06-20 08:47:07'),
(87, 'mohammed', 'kamal', 22, 'Homme', 'hay warda rue 4', 'Tanger', '0622112211', 'mohammed.kamal@gmail.com', '$2y$10$0.7Uge0ixroZyRQM8e37TO7lu3avJvLGDXItOuRXwHXB4vQQUtePq', 91, '2020-06-20 11:55:36', '2020-06-20 11:55:36'),
(88, 'zayd', 'filal', 29, 'Homme', 'hay zahara rue 4', 'Tétouan', '0622113311', 'zayd.filal@gmail.com', '$2y$10$/pBajcgmr0efgnDv7eyWTeZreZogKHI6r.QY.Cy32Ntei5w3pwi.O', 92, '2020-06-20 11:59:16', '2020-06-20 11:59:16'),
(89, 'zayd', 'wahabi', 28, 'Homme', 'hay khandak rue 4', 'Asilah', '0622114411', 'zayd.wahabi@gmail.com', '$2y$10$t7kX/bbfw5yS4H/izjcZl.DcY8KV4K.mO3skQgPBTyMztkXtG9CdS', 94, '2020-06-20 12:00:21', '2020-06-20 12:00:21'),
(90, 'morad', 'delahi', 28, 'Homme', 'hay souk rue 4', 'Chefchaouen', '0622115511', 'morad.delahi@gmail.com', '$2y$10$HFF8nHz5Qqo0TYe0qHr.ROiww6kNrC30EYhsld.Rwi7mDEQ7LU5ti', 95, '2020-06-20 12:01:41', '2020-06-20 12:01:41');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `type`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'docteur', 'omar.omari@gmail.com', '$2y$10$qmYxfmLhjihSZ.aLfNsmZOvfJdpLh5zXGG9KFcceqDH2so5coFXiG', '2020-06-19 21:28:23', '2020-06-19 21:28:23'),
(2, 'docteur', 'idris.idrisi@gmail.com', '$2y$10$AfCYTPlN80I9X4ZaPyggEea8XxPodL7Wuh91SVFXyxnyWuLQiELUe', '2020-06-19 21:31:17', '2020-06-19 21:31:17'),
(3, 'docteur', 'aya.hakaoui@gmail.com', '$2y$10$RNAVU4Xlc/ILjC6bHtIAOO2QWHFcUVG/XKiPcAzxhOkIhFfy8DXBi', '2020-06-19 21:32:49', '2020-06-19 21:32:49'),
(4, 'docteur', 'youssef.benani@hotmail.com', '$2y$10$35zNECJayHv425hNTu.sk.ONl4qs14g4dxFxSRjR.oqs3vY7Ah1uG', '2020-06-19 21:34:56', '2020-06-19 21:34:56'),
(5, 'patient', 'hicham.elhachimi@gmail.com', '$2y$10$rVTsN7LO7eaB7hAX4jElHO4oMOVXVtIy.JdM6Rjut7e5cf/vLpNS.', '2020-06-19 21:37:25', '2020-06-19 21:37:25'),
(6, 'patient', 'siham.raissouni@gmail.com', '$2y$10$Ov/ngIvBMXQ8bEkwaH5Sg.ss6spG3L2ZdNo9g7ebt77xYEjoo/c1W', '2020-06-19 21:38:49', '2020-06-19 21:38:49'),
(7, 'patient', 'saad.saadaoui@gmail.com', '$2y$10$uAXWLUbyVI71u2SnWNaXtu.5BCMx8K4c/N94FJnKDVBt.ucZu3tLO', '2020-06-19 21:39:43', '2020-06-19 21:39:43'),
(8, 'patient', 'ayoub.saadaoui@gmail.com', '$2y$10$pLDRfKVNfokIfDr9Any3H.a3V9LFkMMrkPHxkgg/hm6/3ySUCMddO', '2020-06-19 21:40:20', '2020-06-19 21:40:20'),
(9, 'patient', 'jamila.hilali@gmail.com', '$2y$10$0coxlw0u0L2iX5PnXqmUMeQcUoGEEjVBMvgDDRnGfPC2By1Q6KjUC', '2020-06-19 21:41:29', '2020-06-19 21:41:29'),
(10, 'patient', 'soulaiman.salimani@gmail.com', '$2y$10$hDT60W2/DilPSkke798ePOF2q6jc7tFFbSStC6P0FJlHHk0x/454q', '2020-06-19 21:42:55', '2020-06-19 21:42:55'),
(11, 'patient', 'ilyas.kamari@gmail.com', '$2y$10$NzNlJgU0PX02ZHSoQn8HNuyKfjsqgVpQeldEZIH0zIv8TdeS6HsgK', '2020-06-19 21:44:27', '2020-06-19 21:44:27'),
(12, 'patient', 'hind.hindawi@gmail.com', '$2y$10$CyTNGkhSXSO3M9BVfJWvReQP4kUcbrykRacUvABXbmU29FAcxLXly', '2020-06-19 21:45:46', '2020-06-19 21:45:46'),
(13, 'patient', 'ammar.tanjawi@gmail.com', '$2y$10$MZQ1T1ZXtZrINWJAXO9S/u7Kh4xAeHxyI9HsTeKVH1ai7w67DyGq6', '2020-06-19 21:47:17', '2020-06-19 21:47:17'),
(14, 'patient', 'tamer.tamraoui@gmail.com', '$2y$10$6WK4mP5/.lggtHSUytUYl.fCZU0btgorITjQTkv/ITQ9JUKe8zuo2', '2020-06-19 21:48:31', '2020-06-19 21:48:31'),
(15, 'patient', 'laila.filali@gmail.com', '$2y$10$ItgPo.MPcJiYCLo1gpCFxOTETrHIJoOMHSE7NiTTYlKRYlxi84CDu', '2020-06-19 21:51:20', '2020-06-19 21:51:20'),
(16, 'patient', 'kamar.hilali@gmail.com', '$2y$10$BDncJYE6yiOaHA7r3dOa.eLbmBb6FQeeejF3XlBZ9LXD8WyYO8adC', '2020-06-19 21:52:20', '2020-06-19 21:52:20'),
(17, 'patient', 'karim.akrami@gmail.com', '$2y$10$H7bYFtlO8ULiWRyQ0ZVuUO14nLWMazV.VRusRpa7Kh1Juktoawtfy', '2020-06-19 21:53:20', '2020-06-19 21:53:20'),
(18, 'patient', 'mohammed.benani@hotmail.com', '$2y$10$SrT3JY9omQdq8rYAGjmPduB1qRbqSpx9QlIKf.WN8n9cxlxFn1/r2', '2020-06-19 21:55:09', '2020-06-19 21:55:09'),
(19, 'patient', 'mohammed.jilali@hotmail.com', '$2y$10$V4D1cuFnkFpDkH15h6mSheikI7uzpvjjt.GGv4qZsyogDx3z79J.6', '2020-06-19 21:56:00', '2020-06-19 21:56:00'),
(20, 'patient', 'jalal.jilali@hotmail.com', '$2y$10$J.c/Im8D3WAS0hecWaicUO7H12UNvtRpEmwVvI3L2m8PAsYUH2hiS', '2020-06-19 21:59:28', '2020-06-19 21:59:28'),
(21, 'patient', 'iman.kadouri@gmail.com', '$2y$10$ve8WWVbFsoQWc9Ut34vQeeB4OtcOVcla7kXVR9rEHrY1zyGgPeS8.', '2020-06-19 22:00:58', '2020-06-19 22:00:58'),
(22, 'patient', 'souad.saadaoui@gmail.com', '$2y$10$YFjv8Z0LVX400XgqkAjwouSZrCczxAOaX.sEcCueX8dwW1QIi8/MW', '2020-06-19 22:03:07', '2020-06-19 22:03:07'),
(23, 'patient', 'salma.moussaoui@gmail.com', '$2y$10$iAaMifIvyhWSy3RsnGRDDeJ6t9q0rAn2QJss73UdXHv4qpQocqDB6', '2020-06-19 22:04:25', '2020-06-19 22:04:25'),
(24, 'patient', 'karima.moussaoui@gmail.com', '$2y$10$0bAaP50wGatHcWeQdAaO1ee6E32/crTRZQn8COzFHFTkIYmmfE1VS', '2020-06-19 22:06:10', '2020-06-19 22:06:10'),
(25, 'patient', 'karim.abbassi@gmail.com', '$2y$10$XzOt/MOLpVVq4OKTJ7YHy.CJOrj2Mu3X1VcO3lvj49a7jueQcVGF.', '2020-06-19 22:07:31', '2020-06-19 22:07:31'),
(26, 'patient', 'mohammed.tamsamani@gmail.com', '$2y$10$7NW38/V63Eqd.Wqu7NSm3e5CcXqlVBeAS.Dt7SCIg1SgLGIRXcJE2', '2020-06-19 22:11:21', '2020-06-19 22:11:21'),
(27, 'patient', 'imad.hadari@gmail.com', '$2y$10$4lgKbDH4zJfYCxPGKL9iGOjCfTH8G4fA2K.Oyx15BY0TurnRhlF4u', '2020-06-19 22:12:35', '2020-06-19 22:12:35'),
(28, 'patient', 'fatima.jilali@gmail.com', '$2y$10$UlvAsajlvF7Yxpmwq.8BR.9XRSFhC.8teGgll24LWmbiqfB2X6bGe', '2020-06-19 22:13:35', '2020-06-19 22:13:35'),
(29, 'patient', 'khaoula.charkaoui@gmail.com', '$2y$10$MrHBBBBcgS95aDn0XBaT1Oe69cTMFBHQ94qTq86Wa12XeJVjx/c22', '2020-06-19 22:15:03', '2020-06-19 22:15:03'),
(30, 'patient', 'issa.bakali@gmail.com', '$2y$10$qC1L5X.Ez5o24OgXk.paG.3yU3/eJKN0CpJ0dXtOvgGX7LzHFs986', '2020-06-19 22:16:03', '2020-06-19 22:16:03'),
(31, 'patient', 'oumaima.bakali@gmail.com', '$2y$10$g8L/YEtKQKCJtKbFl1kA9OeVSMROMdiWzl5.32oiIW.S7O10l.AZu', '2020-06-19 22:20:52', '2020-06-19 22:20:52'),
(32, 'patient', 'samiha.issaoui@gmail.com', '$2y$10$FJ//3163aCC1doe.DyUe4eBEFBpf0yEHPsc0WZVVYtVLSdPPIcQEq', '2020-06-19 22:22:03', '2020-06-19 22:22:03'),
(33, 'patient', 'hicham.omari@gmail.com', '$2y$10$gtDxhdyxm5J1fvN2uU89dO373bqWyPdxZiqvx.p9qgpwYukZejjsC', '2020-06-19 22:23:03', '2020-06-19 22:23:03'),
(34, 'patient', 'soufian.wahabi@gmail.com', '$2y$10$C0wNRhV7BXkbIsV8qcCwf.oIOBw6uENGE/f/m9zLNjLy0jR8LSZSu', '2020-06-19 22:24:35', '2020-06-19 22:24:35'),
(35, 'patient', 'soufian.fassi@gmail.com', '$2y$10$WQXleoo3OSNAHekT0izUGOvhJdmGynPWdYlXiILsXIXFYp.E9zMLu', '2020-06-19 22:25:42', '2020-06-19 22:25:42'),
(36, 'patient', 'ayoub.moussaoui@gmail.com', '$2y$10$IlSikrWrUPBdNc5nkDC8GuUe6ccW3VDlHPpnCBJCJ89PvZE0sM/qG', '2020-06-19 22:26:48', '2020-06-19 22:26:48'),
(37, 'patient', 'mohammed.fannan@gmail.com', '$2y$10$Ea/PqPSn0SB.2V/q9x/CA.jz51l6CG.e8aDKqJ6/eOIVCMehEGF3W', '2020-06-19 22:28:22', '2020-06-19 22:28:22'),
(38, 'patient', 'mohammed.issaoui@gmail.com', '$2y$10$4y7lRR2wtw53mOYEFdKH2O8/Yf/uj9lHO.pCe4lPrEmK.kK4VwHXm', '2020-06-19 22:30:01', '2020-06-19 22:30:01'),
(39, 'patient', 'youssef.saoudi@gmail.com', '$2y$10$sWkSOhTYMui8YH9aVm4nqOhhrbT7ntT2/gzQ8t8i3feMFaJ1LfNVC', '2020-06-19 22:31:23', '2020-06-19 22:31:23'),
(40, 'patient', 'youssef.hilali@gmail.com', '$2y$10$uinM3D.LNaBXHEVcEOZJNeuRCp4PHOELfWlQD4UsYbMRhpmQYAPq.', '2020-06-19 22:33:26', '2020-06-19 22:33:26'),
(41, 'patient', 'issam.chouali@gmail.com', '$2y$10$/VQaMnUhaJEUNdqvVQo3..e6DydTGVEA7qnd2ybySV7oh9afKFCkm', '2020-06-19 22:35:08', '2020-06-19 22:35:08'),
(42, 'patient', 'issam.delahi@gmail.com', '$2y$10$P7Gw2VzAw7Rnm0L.epOqGu9gp46S52dkmU4338daXH78pcPIq8awy', '2020-06-19 22:35:48', '2020-06-19 22:35:48'),
(43, 'patient', 'mohammed.filali@gmail.com', '$2y$10$23UnOOr5WDqwxCZE5i51wuxpNN9TJHTSnV7WmxuwMHDRZ3QL.gQu2', '2020-06-19 22:36:38', '2020-06-19 22:36:38'),
(44, 'patient', 'mohammed.jebli@gmail.com', '$2y$10$zrwk39qjhgcoscaQyZSaRujNAlkSK2dDMVbNQ/cw6BIKB4PBnimy6', '2020-06-19 22:37:18', '2020-06-19 22:37:18'),
(45, 'patient', 'hicham.kadouri@gmail.com', '$2y$10$KHUTc5ENqR5w9BB341Dvge9F5DSks4pCZnmyhqslZrOfZ8a.rCPAi', '2020-06-19 22:38:36', '2020-06-19 22:38:36'),
(46, 'patient', 'youness.kadouri@gmail.com', '$2y$10$5U5trtYPt9X1rx/rHftxcuZ1Wq1m2A3LS/bVEpavqP1wZuJQoLDT.', '2020-06-19 22:39:05', '2020-06-19 22:39:05'),
(47, 'patient', 'ferdaous.ammari@gmail.com', '$2y$10$/B8aO6hpiFf4Z0gkfe/.z.kU8pebcuW2Ty3wTQ3j9jaAzXSEVSjK6', '2020-06-19 22:40:07', '2020-06-19 22:40:07'),
(48, 'patient', 'laila.kharchoufi@gmail.com', '$2y$10$teg7nDQEN3RQUsjO2q1MROHrNF1cuNBAhFdGQ5loebUDdyXD8eN.q', '2020-06-19 22:40:52', '2020-06-19 22:40:52'),
(49, 'patient', 'jamila.romani@gmail.com', '$2y$10$ntOIyV9kEGLK7bSdr8WGouG0zQD35Gh8JcOoLir2yZ018sbNFhLiK', '2020-06-19 22:41:53', '2020-06-19 22:41:53'),
(50, 'patient', 'chafik.benani@gmail.com', '$2y$10$Naq0YA.SaG7p48Xnjry0PO/gRDDmi5UoQ2KaQnRqhyD7VzcDY/Sly', '2020-06-19 22:43:00', '2020-06-19 22:43:00'),
(51, 'patient', 'imad.benani@gmail.com', '$2y$10$MXX8pnPylZnw/EBU1Z.znO9ZnxpIdXOeY6IoyiRxilx4pXDnSmFKK', '2020-06-19 22:43:30', '2020-06-19 22:43:30'),
(52, 'patient', 'imad.laaroussi@gmail.com', '$2y$10$um/bGD2TV6nRFe28dvkTfeCkaAxbNrt.CaQqL/6YvNhixkxrE8vZG', '2020-06-19 22:45:17', '2020-06-19 22:45:17'),
(53, 'patient', 'youssef.laaroussi@gmail.com', '$2y$10$MHZC9SxRhZrpNK2.LItvgu9N0.btCakB1qeEbC7qbOilWpiqGJABe', '2020-06-19 22:45:41', '2020-06-19 22:45:41'),
(54, 'patient', 'smail.fichaoui@gmail.com', '$2y$10$xWz5DzA4M0C7Xyzydj3E3.dDZ.jdf1i9cGrE1LkHuC1UeYst234Tm', '2020-06-19 22:46:25', '2020-06-19 22:46:25'),
(55, 'patient', 'kamar.fichaoui@gmail.com', '$2y$10$0Es/OT7kDenjzMflxmGFB.HknT7QMoPqOo8T8AHh.xvhxAIwimn2C', '2020-06-19 22:47:05', '2020-06-19 22:47:05'),
(56, 'patient', 'salma.salmaoui@gmail.com', '$2y$10$3mFpJS6VJMsf4L7NWkWgPeF4kHRUJNd8I0dE07rYvFEY4XPjpskua', '2020-06-19 22:47:44', '2020-06-19 22:47:44'),
(57, 'patient', 'iman.salmaoui@gmail.com', '$2y$10$0rli0wRnpHSBWbtMN0qTcO37JYUwcq3Et67ryNCJEyEjdgaOONO4W', '2020-06-19 22:48:11', '2020-06-19 22:48:11'),
(58, 'patient', 'hind.khokhi@gmail.com', '$2y$10$hQbFfSr51/9gS1JD.kqr1up.QHKKoZoc1Td11lGEUD03oATUSZrXe', '2020-06-19 22:48:56', '2020-06-19 22:48:56'),
(59, 'patient', 'salim.aayadi@gmail.com', '$2y$10$q7mQwM8A42lmIa0nefBJNO010iFmJ0eB7PwtadnAQxjZqjhAZt/26', '2020-06-19 22:49:37', '2020-06-19 22:49:37'),
(60, 'patient', 'safouan.aayadi@gmail.com', '$2y$10$k2oOFvmEYJciEzCGWkStk.eeBZAwbIahDl.XtMrROfPNfs0IJ9AMm', '2020-06-19 22:50:17', '2020-06-19 22:50:17'),
(61, 'patient', 'oulaiman.filali@gmail.com', '$2y$10$9RU.2l/KTif7AcDemSl7heYbajESFwIQjH8Pfth023SXcw3umw2ci', '2020-06-19 22:51:02', '2020-06-19 22:51:02'),
(62, 'patient', 'imad.dahmani@gmail.com', '$2y$10$i/bcO2XICS9jKfIiJcIe1.XEuKblHgpzxCYx2DJ0WKFLDnfgUXvNy', '2020-06-19 22:51:38', '2020-06-19 22:51:38'),
(63, 'patient', 'ayoub.dahmani@gmail.com', '$2y$10$jCmivhG5ki22KXSa7Sou7.sEgNmJvJS0/kvKKYAWxkcQH/1.CPVQG', '2020-06-19 22:52:09', '2020-06-19 22:52:09'),
(64, 'patient', 'hamza.hamzaoui@gmail.com', '$2y$10$NznYNUegs69rSlO46wjEl.L/Wi0eyAHMaJG88UrI9DoffyyT2k83e', '2020-06-19 22:52:59', '2020-06-19 22:52:59'),
(65, 'patient', 'hamza.zaylachi@gmail.com', '$2y$10$sb86CnK/TEtot/l/r6oL2uXAYN/uJyZ2MoR.3D0F1Z7Vz36q2wojO', '2020-06-19 22:54:37', '2020-06-19 22:54:37'),
(66, 'patient', 'iman.zaylachi@gmail.com', '$2y$10$gJJOsGo46fxuqAFIjO1QtemCPefmQFhcyvNHhOF4wcQMXzm0Rokz.', '2020-06-19 22:55:07', '2020-06-19 22:55:07'),
(67, 'patient', 'laila.samaoui@gmail.com', '$2y$10$sq5Img0iL/87uADN7rxaa.VedCt9KgUIQY.UH6sUshHq4IGb7Sb2G', '2020-06-19 22:55:47', '2020-06-19 22:55:47'),
(68, 'patient', 'siham.derwich@gmail.com', '$2y$10$iiZlE97wU9eO3aaYDPTg1Onmp3psZtKACkIg6Osja7yY7bLyWTKC2', '2020-06-19 22:56:33', '2020-06-19 22:56:33'),
(69, 'patient', 'mohammed.zili@gmail.com', '$2y$10$qd1BVk.YVPRL.8wtoNIqg.ejU5..eEZJEtg/NonpvyX5dggIojJBe', '2020-06-19 22:57:47', '2020-06-19 22:57:47'),
(70, 'patient', 'adnan.jebli@gmail.com', '$2y$10$Ty1Z/hDnbjjBe7Foiu9ubulO6KVOU1IykoXZova50jfpkKEitKJsa', '2020-06-19 22:58:28', '2020-06-19 22:58:28'),
(71, 'patient', 'adnan.haouari@gmail.com', '$2y$10$sy.4JZDRlZB2/dtzgHZQMORN0XMbMvXS7Z6DTr1v1KaaFHrCB9G3i', '2020-06-19 22:59:12', '2020-06-19 22:59:12'),
(72, 'patient', 'jamal.jilali@gmail.com', '$2y$10$r7p6H2pAc2C7bWzH1f2As.tUy086iIFU5U0tFAVl4JkqQWlv/fVGC', '2020-06-19 23:00:18', '2020-06-19 23:00:18'),
(73, 'patient', 'ayoub.jilali@gmail.com', '$2y$10$fcWddGtmf.guKR/Dt9RlqOANvemilEynB6P8Ui817gUaCMVQmzEyW', '2020-06-19 23:00:42', '2020-06-19 23:00:42'),
(74, 'patient', 'bilal.rahmouni@gmail.com', '$2y$10$AmzH31nlvPmnlv25iorkc.u6..KaYRpVZEUX/gN1MqDne9sn71yGm', '2020-06-19 23:02:07', '2020-06-19 23:02:07'),
(75, 'patient', 'bilal.kamraoui@gmail.com', '$2y$10$s3s6qC4UzXX7exZoGqZVf.mIWhstfAm970xsUDI6yhpWXflhzsJyW', '2020-06-19 23:03:04', '2020-06-19 23:03:04'),
(76, 'patient', 'mohammed.bakkali@gmail.com', '$2y$10$ca5S3vevgTuzKg/YqwZFD.r7J2wchI3dMVPTVMxcL.v.lLgbGUB9m', '2020-06-20 08:32:28', '2020-06-20 08:32:28'),
(77, 'patient', 'yassin.bakkali@gmail.com', '$2y$10$BvzJJJT9gqo8w/iDCatueebIiHm.3lzc65IvMnPb6bu9bbYxhy2bC', '2020-06-20 08:33:10', '2020-06-20 08:33:10'),
(78, 'patient', 'hicham.dilala@gmail.com', '$2y$10$fHww1tpQQJCTwSI5cdp0O.H5VMZWQN3/dCUMrjvuYdv0I9svAApo6', '2020-06-20 08:34:08', '2020-06-20 08:34:08'),
(79, 'patient', 'ayoub.haouari@gmail.com', '$2y$10$YB/QsDOS9p6o7f3L/zwpeellil87lOIjewObnddItbjU2kUMoeCiO', '2020-06-20 08:35:33', '2020-06-20 08:35:33'),
(80, 'patient', 'farid.abbassi@gmail.com', '$2y$10$Wh7zMbd9hkFk5UJnAZJSz.wWpaFDdLfHZA5T0BIByrvgAcXK4IgnC', '2020-06-20 08:36:40', '2020-06-20 08:36:40'),
(81, 'patient', 'adnan.firari@gmail.com', '$2y$10$ITAAJHu.lioh8Ss9qZRzResbkYSmpNoYYEvqf6cA/HLq4f3o3dNgC', '2020-06-20 08:38:29', '2020-06-20 08:38:29'),
(82, 'patient', 'ahmed.rifi@gmail.com', '$2y$10$4TC6JlQN2L9yE40ykeki5.xbeqFP73quBbC6BUm4GpLlzbtHuE6Zm', '2020-06-20 08:39:15', '2020-06-20 08:39:15'),
(83, 'patient', 'hamid.delahi@gmail.com', '$2y$10$HWF2TBo.7.RlRsQm3D1RAeFXWLGw2f0nAIPJduN7k6ffEll6LIlxq', '2020-06-20 08:40:42', '2020-06-20 08:40:42'),
(84, 'patient', 'karim.delahi@gmail.com', '$2y$10$PfA3oZs6iOP2h6eA/dDbJek0a3BNLPp8s.E17oS5396Dn7c4kHEX2', '2020-06-20 08:41:25', '2020-06-20 08:41:25'),
(85, 'patient', 'samir.bennani@gmail.com', '$2y$10$gyxYsSAgGgWvhOGRVjBiGuBOOTh14aeJI43U1Dvw1r/P5pCpP9ISW', '2020-06-20 08:42:14', '2020-06-20 08:42:14'),
(86, 'patient', 'haitam.mesbahi@gmail.com', '$2y$10$fron3x1Rrbxg2y.y4XM/MeLXhhRIOgzRMEmDto9/rTiJMiO/nfg9i', '2020-06-20 08:43:32', '2020-06-20 08:43:32'),
(87, 'patient', 'imad.mesbahi@gmail.com', '$2y$10$RlAYO2V5LlrxYt2EqtiKDODmxXbzbMVA6Lm1msVUU0aS67IH7S6Ee', '2020-06-20 08:44:06', '2020-06-20 08:44:06'),
(88, 'patient', 'ayoub.tamsamani@gmail.com', '$2y$10$x/tHb7f4zgNJZicRFfCtu.Anw051QVGYKdjrbYZtnELGOXBk3nZ72', '2020-06-20 08:44:55', '2020-06-20 08:44:55'),
(89, 'patient', 'hassan.hassani@gmail.com', '$2y$10$73znFKZsSIVdn11GDwjpXOb4TExOXptSgW3oq/RHZiW../m0R2DLi', '2020-06-20 08:46:03', '2020-06-20 08:46:03'),
(90, 'patient', 'bilal.bilali@gmail.com', '$2y$10$VV5WM74CwKuzSYhpkz.Xh.lq1RmAkaHMD9AW.qwMtgtV6Hl5CZsSa', '2020-06-20 08:47:07', '2020-06-20 08:47:07'),
(91, 'patient', 'mohammed.kamal@gmail.com', '$2y$10$pGpfasDQ3VqdRQfjKoqhtO/dBkoGGQouv9s4vPNgJ57wmEGkYa6h.', '2020-06-20 11:55:36', '2020-06-20 11:55:36'),
(92, 'patient', 'zayd.filal@gmail.com', '$2y$10$Yk1iMGChYqQJ/EL/1Syei.7x6wNQoFnrhMOmkxJSvH3pw6pXHwYUO', '2020-06-20 11:59:16', '2020-06-20 11:59:16'),
(94, 'patient', 'zayd.wahabi@gmail.com', '$2y$10$IF5OGIdwYRoaReGN6xy6t./6B1T0E9gx//RFN647KHado17mBuf.i', '2020-06-20 12:00:21', '2020-06-20 12:00:21'),
(95, 'patient', 'morad.delahi@gmail.com', '$2y$10$PPgHtseyASVWtztfEnO4gusINUwMylPAK5skNysNJYHaIJVMYOrEu', '2020-06-20 12:01:41', '2020-06-20 12:01:41');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `docteurs`
--
ALTER TABLE `docteurs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `docteurs_email_unique` (`email`),
  ADD KEY `docteurs_id_user_foreign` (`id_user`);

--
-- Index pour la table `investigations`
--
ALTER TABLE `investigations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `investigations_id_patient_foreign` (`id_patient`),
  ADD KEY `investigations_id_docteur_foreign` (`id_docteur`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `patients_email_unique` (`email`),
  ADD KEY `patients_id_user_foreign` (`id_user`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `docteurs`
--
ALTER TABLE `docteurs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `investigations`
--
ALTER TABLE `investigations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `docteurs`
--
ALTER TABLE `docteurs`
  ADD CONSTRAINT `docteurs_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `investigations`
--
ALTER TABLE `investigations`
  ADD CONSTRAINT `investigations_id_docteur_foreign` FOREIGN KEY (`id_docteur`) REFERENCES `docteurs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `investigations_id_patient_foreign` FOREIGN KEY (`id_patient`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `patients`
--
ALTER TABLE `patients`
  ADD CONSTRAINT `patients_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
