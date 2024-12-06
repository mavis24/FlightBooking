-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 23 avr. 2024 à 22:31
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bookaflight`
--

-- --------------------------------------------------------

--
-- Structure de la table `flights`
--

CREATE TABLE `flights` (
  `flight_id` int(11) NOT NULL,
  `flight_number` varchar(10) DEFAULT NULL,
  `origin` varchar(50) DEFAULT NULL,
  `destination` varchar(50) DEFAULT NULL,
  `depart_day` date DEFAULT NULL,
  `depart` time DEFAULT NULL,
  `arrival_day` date DEFAULT NULL,
  `arrival` time DEFAULT NULL,
  `length` varchar(50) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `seats_available` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `flights`
--

INSERT INTO `flights` (`flight_id`, `flight_number`, `origin`, `destination`, `depart_day`, `depart`, `arrival_day`, `arrival`, `length`, `price`, `seats_available`) VALUES
(1, 'BG101', 'HSI', 'SAI', '2024-06-04', '12:00:00', '2024-06-04', '13:25:00', '2h25m', 2000, 8),
(2, 'BG102', 'HSI', 'OIA', '2024-06-04', '19:30:00', '2024-06-04', '20:55:00', '2h25m', 1800, 8),
(3, 'BG103', 'HSI', 'CBA', '2024-06-04', '08:45:00', '2024-04-20', '12:45:00', '15h00m', 2500, 9),
(4, 'BG104', 'HSI', 'SMA', '2024-06-04', '10:30:00', '2024-04-20', '14:30:00', '15h00m', 1900, 9),
(5, 'BG105', 'SAI', 'HSI', '2024-06-04', '10:00:00', '2024-06-04', '11:15:00', '4h15m', 2000, 4),
(6, 'BG106', 'SAI', 'OIA', '2024-06-04', '19:45:00', '2024-06-04', '21:00:00', '4h15m', 2100, 6),
(7, 'BG107', 'SAI', 'CBA', '2024-06-04', '08:30:00', '2024-06-04', '11:35:00', '2h05m', 1850, 6),
(8, 'BG108', 'SAI', 'SMA', '2024-06-04', '15:30:00', '2024-06-04', '18:35:00', '2h05m', 2500, 4),
(9, 'BG109', 'OIA', 'HSI', '2024-06-04', '14:00:00', '2024-04-20', '18:10:00', '14h10m', 2250, 7),
(10, 'BG110', 'OIA', 'SAI', '2024-06-04', '16:30:00', '2024-04-20', '19:50:00', '13h20m', 2150, 9),
(11, 'BG111', 'OIA', 'CBA', '2024-06-04', '06:00:00', '2024-06-04', '06:35:00', '2h35m', 2050, 4),
(12, 'BG112', 'OIA', 'SMA', '2024-06-04', '14:30:00', '2024-06-04', '15:05:00', '2h35m', 2300, 10),
(13, 'BG113', 'CBA', 'HSI', '2024-06-04', '14:00:00', '2024-06-04', '14:40:00', '13h40m', 2350, 6),
(14, 'BG114', 'CBA', 'SAI', '2024-06-04', '09:00:00', '2024-06-04', '07:55:00', '12h55m', 1950, 10),
(15, 'BG115', 'CBA', 'OIA', '2024-06-04', '16:00:00', '2024-06-04', '15:20:00', '12h20m', 2450, 4),
(16, 'BG116', 'CBA', 'SMA', '2024-06-04', '18:00:00', '2024-06-04', '15:50:00', '11h50m', 1800, 1),
(17, 'BG117', 'SMA', 'HSI', '2024-06-04', '07:30:00', '2024-06-04', '14:05:00', '3h35m', 2100, 8),
(18, 'BG118', 'SMA', 'SAI', '2024-06-04', '16:00:00', '2024-06-04', '22:35:00', '3h35m', 1850, 6),
(19, 'BG119', 'SMA', 'OIA', '2024-06-04', '11:30:00', '2024-06-04', '14:50:00', '2h20m', 2150, 2),
(20, 'BG120', 'SMA', 'CBA', '2024-06-04', '20:00:00', '2024-06-04', '23:20:00', '2h20m', 2400, 3),
(21, 'BG101', 'HSI', 'SAI', '2024-06-05', '12:00:00', '2024-06-05', '13:25:00', '2h25m', 1950, 10),
(22, 'BG113', 'CBA', 'HSI', '2024-06-05', '19:30:00', '2024-06-05', '20:55:00', '2h25m', 1900, 6),
(23, 'BG106', 'SAI', 'OIA', '2024-06-05', '08:45:00', '2024-04-23', '12:45:00', '15h00m', 2300, 4),
(24, 'BG115', 'CBA', 'OIA', '2024-06-05', '10:30:00', '2024-04-23', '14:30:00', '15h00m', 2250, 6),
(25, 'BG111', 'OIA', 'CBA', '2024-06-05', '10:00:00', '2024-06-05', '11:15:00', '4h15m', 1800, 8),
(26, 'BG124', 'SAI', 'OIA', '2024-05-28', '10:30:00', '2024-05-29', '01:30:00', '15h00', 2400, 10),
(27, 'BG125', 'OIA', 'SAI', '2024-06-08', '08:30:00', '2024-06-08', '23:30:00', '15h00', 2350, 12);

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `memberSeq` int(11) NOT NULL,
  `totalCost` float DEFAULT NULL,
  `tripType` varchar(50) DEFAULT NULL,
  `depart_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `passengers` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`id`, `memberSeq`, `totalCost`, `tripType`, `depart_id`, `return_id`, `passengers`) VALUES
(4, 0, 2000, 'ONE', 5, 0, 1),
(5, 0, 2000, 'ONE', 5, 0, 1),
(6, 0, 2250, 'ONE', 9, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'essya', 'essyadoghri04@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(2, 'hanine', 'hanine.benfarhat@etudiant-isi.utm.tn', '4a7d1ed414474e4033ac29ccb8653d9b'),
(3, 'wiem', 'wiemabbasssi@gmail.com', 'b59c67bf196a4758191e42f76670ceba');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`flight_id`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `flights`
--
ALTER TABLE `flights`
  MODIFY `flight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
