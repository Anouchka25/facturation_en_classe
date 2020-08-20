-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 20 août 2020 à 07:57
-- Version du serveur :  5.7.19
-- Version de PHP :  7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `facturation2`
--

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

DROP TABLE IF EXISTS `facture`;
CREATE TABLE IF NOT EXISTS `facture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(10) DEFAULT NULL,
  `numtva` varchar(20) NOT NULL,
  `client` text,
  `mailclient` varchar(20) NOT NULL,
  `datefacture` date DEFAULT NULL,
  `facturede` text,
  `designation` text,
  `quantite` int(11) DEFAULT NULL,
  `prixht` decimal(10,0) DEFAULT NULL,
  `taxe` decimal(10,0) NOT NULL,
  `conditions` text,
  `id_membre` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `num` (`num`),
  KEY `id_membre` (`id_membre`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `facture`
--

INSERT INTO `facture` (`id`, `num`, `numtva`, `client`, `mailclient`, `datefacture`, `facturede`, `designation`, `quantite`, `prixht`, `taxe`, `conditions`, `id_membre`) VALUES
(25, 'num1', 'numtva1', 'fffffffffffffffffffffffffffffsfxhbfdchbgcdfsxfbhf', 'example1@gmail.com', '2020-08-19', 'qsdfghjwxcfvghbjdfghdcfvbn', 'wxcvbndxcfvbn,sdcfvb', 12, '200', '20', 'dddddddddddddddddd', NULL),
(26, 'num2', 'numtva1', 'fffffffffffffffffffffffffffffsfxhbfdchbgcdfsxfbhf', 'example1@gmail.com', '2020-08-19', 'qsdfghjwxcfvghbjdfghdcfvbn', 'wxcvbndxcfvbn,sdcfvb', 12, '200', '20', 'dddddddddddddddddd', 1),
(27, 'num3', 'numtva1', 'fffffffffffffffffffffffffffffsfxhbfdchbgcdfsxfbhf', 'example1@gmail.com', '2020-08-19', 'qsdfghjwxcfvghbjdfghdcfvbn', 'wxcvbndxcfvbn,sdcfvb', 12, '200', '20', 'dddddddddddddddddd', 5),
(28, 'rrrrrrr', 'rrrrrrrr', 'rrrrrrrrrrrr', 'rrrrrrrr@gmail.com', '2020-08-20', 'ffffffffffffffff', 'gggggggggggg', 12, '200', '20', 'gggggggggggggg', 5);

-- --------------------------------------------------------

--
-- Structure de la table `membres`
--

DROP TABLE IF EXISTS `membres`;
CREATE TABLE IF NOT EXISTS `membres` (
  `id_membre` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(255) DEFAULT NULL,
  `pseudo` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id_membre`),
  UNIQUE KEY `pseudo` (`pseudo`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `membres`
--

INSERT INTO `membres` (`id_membre`, `Email`, `pseudo`, `password`) VALUES
(4, 'minkoueobamea@yahoo.fr', 'Anouchka@25', '$2y$10$hmuBxHOikhcFZFpRiMBsJ.NDoBwiGk369f3eQjxMvhkxq9m8O5yu2'),
(5, 'minkoueobamea2@yahoo.fr', 'Anouchka@2576', '$2y$10$zAUSSSGJPghqP9Um70QDCetoB/plQj4qYAfto0GmY65fqL25I9SEq'),
(6, 'Anouchka@2576.fr', 'root', '$2y$10$YdUcszSa7z99AhtZQm1kF.es95qtLu64p0aORbxbRI/nruLIJ40pW'),
(7, 'example@masociete.fr', 'lucien', '$2y$10$ng/WizCBGR.MntNkdfoAyudcIdZavUP26L/D4LlPd4HLs5lnUjHfy');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
