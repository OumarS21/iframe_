-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Jeu 08 Décembre 2022 à 10:20
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `Location de voiture`
--

-- --------------------------------------------------------

--
-- Structure de la table `client.s`
--

CREATE TABLE IF NOT EXISTS `client.s` (
  `code_client` varchar(20) NOT NULL,
  `nom_prenom` varchar(20) NOT NULL,
  `date_naissance` date NOT NULL,
  `profession` varchar(20) NOT NULL,
  `num_tel` int(11) NOT NULL,
  `adresse` varchar(20) NOT NULL,
  `code_postal` int(11) NOT NULL,
  `ville` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  PRIMARY KEY (`code_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `client.s`
--

INSERT INTO `client.s` (`code_client`, `nom_prenom`, `date_naissance`, `profession`, `num_tel`, `adresse`, `code_postal`, `ville`, `email`) VALUES
('a27', 'marco', '0000-00-00', 'policier', 178945612, '12 rue de paris', 75012, 'Paris', 'marcopolo@gmail.com'),
('l26', 'patrick', '0000-00-00', 'retraité', 712345678, '12 rue de pantin', 93000, 'Pantin', 'patochelatrik@gmail.');

-- --------------------------------------------------------

--
-- Structure de la table `location de voiture`
--

CREATE TABLE IF NOT EXISTS `location de voiture` (
  `ld_location` varchar(20) NOT NULL,
  `duree_location` int(11) NOT NULL,
  `date_location` date NOT NULL,
  `prix_location` int(11) NOT NULL,
  `code_client` varchar(20) NOT NULL,
  `Immatriculation` varchar(20) NOT NULL,
  `caution` int(11) NOT NULL,
  PRIMARY KEY (`ld_location`),
  KEY `code_client` (`code_client`,`Immatriculation`),
  KEY `Immatriculation` (`Immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `location de voiture`
--

INSERT INTO `location de voiture` (`ld_location`, `duree_location`, `date_location`, `prix_location`, `code_client`, `Immatriculation`, `caution`) VALUES
('clio 3', 3, '2022-12-27', 3900, 'l26', 'AB123-CD', 5000),
('Peugeot 2008', 1, '2022-12-10', 785, 'a27', 'EF-562-DU', 32000);

-- --------------------------------------------------------

--
-- Structure de la table `reparation`
--

CREATE TABLE IF NOT EXISTS `reparation` (
  `Num_reparation` int(11) NOT NULL,
  `date_reparation` varchar(100) NOT NULL,
  `duree_reparation` varchar(100) NOT NULL,
  `cout_reparation` varchar(255) NOT NULL,
  `responsable_rep` varchar(255) NOT NULL,
  `Immatriculation` varchar(255) NOT NULL,
  PRIMARY KEY (`Num_reparation`),
  KEY `Immatriculation` (`Immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `reparation`
--

INSERT INTO `reparation` (`Num_reparation`, `date_reparation`, `duree_reparation`, `cout_reparation`, `responsable_rep`, `Immatriculation`) VALUES
(730455069, '12/12-2022', '5', '500', 'Patrick', 'AB123-CD'),
(859632148, '20/12/2022', '10 jours', '900', 'Marco', 'EF-562-DU');

-- --------------------------------------------------------

--
-- Structure de la table `voitures`
--

CREATE TABLE IF NOT EXISTS `voitures` (
  `Immatriculation` varchar(20) NOT NULL,
  `marque` varchar(20) NOT NULL,
  `modele` varchar(20) NOT NULL,
  `kilometrage` int(11) NOT NULL,
  `carburant` varchar(20) NOT NULL,
  `couleur` varchar(20) NOT NULL,
  `nbr_place` int(11) NOT NULL,
  `nbr_porte` int(11) NOT NULL,
  `prix_achat` varchar(255) NOT NULL,
  `etat` varchar(20) NOT NULL,
  PRIMARY KEY (`Immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `voitures`
--

INSERT INTO `voitures` (`Immatriculation`, `marque`, `modele`, `kilometrage`, `carburant`, `couleur`, `nbr_place`, `nbr_porte`, `prix_achat`, `etat`) VALUES
('AB123-CD', 'peugot 3000', 'RENAULT', 15621, 'diesel', 'gris', 6, 1, '36000', 'bon etat'),
('EF-562-DU', 'clio', 'megane', 15014, 'essence', 'rouge', 5, 4, '5000', 'neuf');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `location de voiture`
--
ALTER TABLE `location de voiture`
  ADD CONSTRAINT `location@0020de@0020voiture_ibfk_2` FOREIGN KEY (`Immatriculation`) REFERENCES `voitures` (`Immatriculation`),
  ADD CONSTRAINT `location@0020de@0020voiture_ibfk_1` FOREIGN KEY (`code_client`) REFERENCES `client.s` (`code_client`);

--
-- Contraintes pour la table `reparation`
--
ALTER TABLE `reparation`
  ADD CONSTRAINT `reparation_ibfk_1` FOREIGN KEY (`Immatriculation`) REFERENCES `voitures` (`Immatriculation`);
