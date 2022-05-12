-- phpMyAdmin SQL Dump
-- version 3.3.5
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Lun 09 Mai 2022 à 16:59
-- Version du serveur: 5.1.49
-- Version de PHP: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `bdd_travelscope`
--

-- --------------------------------------------------------

--
-- Structure de la table `catalogue`
--

CREATE TABLE IF NOT EXISTS `catalogue` (
  `id_voyage` varchar(99) COLLATE utf8_unicode_ci NOT NULL,
  `nom_voyage` varchar(99) COLLATE utf8_unicode_ci NOT NULL,
  `prix_voyage` decimal(65,0) NOT NULL,
  `image` varchar(99) COLLATE utf8_unicode_ci NOT NULL,
  `description_voyage` varchar(99) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_voyage`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `catalogue`
--

INSERT INTO `catalogue` (`id_voyage`, `nom_voyage`, `prix_voyage`, `image`, `description_voyage`) VALUES
('1', 'Egypte', 51, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.les-voyageuses.net%2F2018%2F10%2Forganiser-so', 'Un voyage dans les sables chauds des pharaons.'),
('2', 'Amazonie', 80, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.wwf.fr%2Fespaces-prioritaires%2Famazonie&psig', 'Un voyage dans la plus grande forêt du monde.'),
('3', 'France-Paris', 60, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.francetvinfo.fr%2Ffrance%2File-de-france%2Fpa', 'Un voyage dans un pays où les produits du terroir sont très riches.'),
('4', 'Chine-Pékin', 250, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.larousse.fr%2Fencyclopedie%2Fville%2FP%25C3%2', 'Revivez les trois royaumes dans la capitale de la Chine!'),
('5', 'Mongolie', 130, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.okvoyage.com%2Fpost%2Fmongolie-terre-sauvage%', 'Suivez les plus grands des khans en allant dans les steppes mongoles.'),
('6', 'France-Sainte_Ménéhould', 40, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.petitescitesdecaractere.com%2Ffr%2Fnos-petite', 'Goutez le fameux pied de cochon de la petite ville de Sainte-Ménéhould!');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `mail` varchar(99) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nom` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prenom` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pass` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adresse` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ville` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cp` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sexe` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `naissance` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `mallette` varchar(10) CHARACTER SET armscii8 COLLATE armscii8_bin NOT NULL,
  PRIMARY KEY (`mail`),
  FULLTEXT KEY `adresse` (`adresse`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='pas genr&';

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`mail`, `nom`, `prenom`, `pass`, `tel`, `adresse`, `ville`, `cp`, `sexe`, `naissance`, `mallette`) VALUES
('MrTest@gmail.com', 'Test', 'Mac', 'admin', '0303030330', NULL, NULL, NULL, 'Homme', '1999-01-05', '');

-- --------------------------------------------------------

--
-- Structure de la table `date`
--

CREATE TABLE IF NOT EXISTS `date` (
  `date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `date`
--


-- --------------------------------------------------------

--
-- Structure de la table `jeux`
--

CREATE TABLE IF NOT EXISTS `jeux` (
  `nomJeux` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`nomJeux`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `jeux`
--


-- --------------------------------------------------------

--
-- Structure de la table `score`
--

CREATE TABLE IF NOT EXISTS `score` (
  `pointsScore` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `malette` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nomJeux` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`malette`,`nomJeux`,`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `score`
--

