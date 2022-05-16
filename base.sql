-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : Dim 10 oct. 2021 à 15:29
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `base`
--

-- --------------------------------------------------------

--
-- Structure de la table `bapteme`
--

DROP TABLE IF EXISTS `bapteme`;
CREATE TABLE IF NOT EXISTS `bapteme` (
  `idCarteBapt` int(10) NOT NULL AUTO_INCREMENT,
  `nomBapt` varchar(30) NOT NULL,
  `postBapt` varchar(30) DEFAULT NULL,
  `prenom` varchar(30) DEFAULT NULL,
  `lieudeBapt` varchar(30) DEFAULT NULL,
  `NumRegistre` varchar(20) NOT NULL,
  `dateBapt` date DEFAULT NULL,
  `idUser` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`idCarteBapt`),
  KEY `inscrire` (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `bapteme`
--

INSERT INTO `bapteme` (`idCarteBapt`, `nomBapt`, `postBapt`, `prenom`, `lieudeBapt`, `NumRegistre`, `dateBapt`, `idUser`) VALUES
(1, '', '', '', '', '', '2021-09-29', 1),
(2, 'Huna', 'Kanda', 'David', 'Kinshasa', 'HE37483', '2021-09-29', 1),
(3, 'Mwavita', 'Msafiri', 'emily', 'Kinshasa', 'SZEZEF', '2021-09-29', 1),
(4, 'Mwavita', 'Msafiri', 'emily', 'Kinshasa', 'SZEZEF', '2021-09-29', 1),
(5, 'Hangi', 'Muyisa', 'Divine', 'Kinshasa', 'EZZERE', '2021-09-29', 1),
(6, 'Hangi', 'Muyisa', 'Divine', 'Kinshasa', 'EZZERE', '2021-09-29', 1);

-- --------------------------------------------------------

--
-- Structure de la table `confirmation`
--

DROP TABLE IF EXISTS `confirmation`;
CREATE TABLE IF NOT EXISTS `confirmation` (
  `idCon` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nomCon` varchar(30) NOT NULL,
  `prenomCom` varchar(30) NOT NULL,
  `dateCon` date NOT NULL,
  `idUser` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`idCon`),
  KEY `introduire` (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

DROP TABLE IF EXISTS `session`;
CREATE TABLE IF NOT EXISTS `session` (
  `idSession` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dateSession` datetime NOT NULL,
  `duree` varchar(15) DEFAULT NULL,
  `idUser` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`idSession`),
  KEY `lancer` (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `session`
--

INSERT INTO `session` (`idSession`, `dateSession`, `duree`, `idUser`) VALUES
(1, '2021-09-29 07:48:27', NULL, 1),
(2, '2021-09-29 08:25:56', NULL, 1),
(3, '2021-09-29 08:27:38', NULL, 3),
(4, '2021-09-29 08:34:10', NULL, 1),
(5, '2021-09-29 09:20:42', NULL, 3),
(6, '2021-09-29 19:12:23', NULL, 1),
(7, '2021-09-29 19:21:57', NULL, 1),
(8, '2021-09-29 20:58:20', NULL, 1),
(9, '2021-09-29 22:48:48', NULL, 1),
(10, '2021-10-10 16:21:35', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `idUser` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nomUser` varchar(30) NOT NULL,
  `motPass` varchar(30) NOT NULL,
  `poste` varchar(30) DEFAULT NULL,
  `nvA` tinyint(3) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`idUser`, `nomUser`, `motPass`, `poste`, `nvA`) VALUES
(1, 'Herve', 'syaghalirwa', 'Administrateur BDD', 1),
(2, 'Patrick Kz', 'PatrickKZ', 'Technicien', 2),
(3, 'Maxim', 'Maximum', 'Inconnu', 3);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `bapteme`
--
ALTER TABLE `bapteme`
  ADD CONSTRAINT `inscrire` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`);

--
-- Contraintes pour la table `confirmation`
--
ALTER TABLE `confirmation`
  ADD CONSTRAINT `introduire` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`);

--
-- Contraintes pour la table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `lancer` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
