-- phpMyAdmin SQL Dump
-- version 3.3.5
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Ven 14 Avril 2023 à 10:19
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
  `id_voyage` int(99) NOT NULL AUTO_INCREMENT,
  `nom_voyage` varchar(99) COLLATE utf8_unicode_ci NOT NULL,
  `prix_voyage` decimal(65,0) NOT NULL,
  `image` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `description_voyage` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `stock` int(255) NOT NULL,
  `pays` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_voyage`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Contenu de la table `catalogue`
--

INSERT INTO `catalogue` (`id_voyage`, `nom_voyage`, `prix_voyage`, `image`, `description_voyage`, `stock`, `pays`) VALUES
(1, 'Egypte', 51, 'images/imgvoyage/egypte.jpg', 'L’Égypte, c’est le pays des pharaons et des pyramides, mais aussi le pays des plages. Privilégiez une visite entre octobre et mai, car l''été égyptien est très très chaud au bord du Nil. Sur les bord de la Mer Rouge, à vous les baignades toute l''année avec une eau à plus de 20 degrés ! Profitez de vos vacances en Égypte pour vous aventurer dans quelques-uns des plus beaux sites historiques du monde : les pyramides de Gizeh au Caire, le temple de Karnac à Louxor, Philae à Assouan ou les statues géantes du temple d’Abou Simbel sur les bords du lac Nasser.', 32, 'Egypte'),
(2, 'Brésil - Amazonie', 80, 'images/imgvoyage/amazonie.jpg', 'TravelScope vous invite à prendre part à un périple enchanteur qui vous mènera au cœur du « poumon » de notre Globe : l’Amazonie. Riche et diversifiée, cette région abrite une végétation luxuriante composée de plus de 50 000 espèces d’arbres et plantes dont l’heliconia, la fleur emblématique de la région. Vous aurez la chance d’admirer les nombreuses espèces animales telles que les paresseux, d’innombrables oiseaux, les singes hurleurs mais aussi de rencontrer les plus célèbres espèces aquatiques telles que les loutres géantes, les tortues et le boto, le célèbre dauphin rose.', 110, 'Brésil'),
(3, 'France - Paris', 60, 'images/imgvoyage/paris.jpg', 'Découvrez Paris, la capitale de la France, où gastronomie, culture, palais et monuments vous attendent. Planifiez votre voyage dès maintenant!', 72, 'France'),
(4, 'Chine - Pékin', 250, 'images/imgvoyage/pekin.jpg', 'Un voyage à Pekin, on ne pourrait s’en lasser, tant la ville évolue ! Pékin ou plutôt Beijing, est la capitale de la République populaire de Chine. Un voyage à Pékin vous permet de découvrir le centre politique, économique et culturel du pays. Pékin est une ville culturelle qui a une très longue histoire. Beijing est une ville touristique de réputation mondiale pour ses architectures anciennes, ses palais, ses jardins impériaux et ses temples.', 40, 'Chine'),
(5, 'Mongolie', 130, 'images/imgvoyage/mongolie.jpg', 'La Mongolie, à l’extrémité orientale des steppes d’Asie centrale, loin de toute mer, est un écrin de steppes et de forêts, de montagnes reculées et de plaines arides. On y voyage des jours entiers sans croiser âme qui vive. En parcourant à cheval ou en Jeep les distances immenses de ce plateau d’altitude, on peut voir des antilopes, des loups, des chevaux en liberté, des yacks, des chameaux, des lacs par centaines, des villages isolés, de chaleureux campements de yourtes, la taïga sibérienne et le désert de Gobi.', 20, 'Mongolie'),
(6, 'France - Sainte Ménéhould', 40, 'images/imgvoyage/stmenehoud.jpg', 'Goutez le fameux pied de cochon de la petite ville de Sainte-Ménéhould!', 105, 'France'),
(7, 'Italie - Rome', 150, 'images/imgvoyage/rome.jpg', 'Rendez-vous au cœur de la Rome antique, mais aussi romantique : à vous le berceau culturel de l''Europe et ses somptueux quartiers, le temps d''un week end ou d''un court séjour. Accessible en moins de deux heures depuis Paris, Lyon ou Nantes, Rome est une destination de tourisme idéale pour les amoureux de beaux paysages, d''histoire et d''immersion culturelle !', 28, 'Italie'),
(8, 'Royaume-Uni - Londres', 146, 'images/imgvoyage/londres.jpg', 'Séjours linguistiques à Londres pour tous les âges et tous les niveaux. Bien plus que du thé et des fish ´n´ chips. découvrez la culture britannique avec TravelScope.', 74, 'Royaume-Uni');

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
('adresseemai@orange.com', 'Prenom', 'Nom', 'f375f401ddc698af533f16f8ac1e91c1', '06 90 69 6', '36 rue du magreb', 'Paris', '12365', 'Autre', '2022-11-12', ''),
('MrTest@gmail.com', 'Mr', 'Test', 'd4f83b4ad89f05736f4e8bd50bad83ef', '0954613254', '21 rue Couscous', 'Nancy', '57000', 'Autre', '2014-06-07', ''),
('maximedervaux51@gmail.com', 'Dervaux', 'Maxime', 'd4f83b4ad89f05736f4e8bd50bad83ef', '0651182838', NULL, NULL, NULL, 'Homme', '2002-05-09', '');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE IF NOT EXISTS `commandes` (
  `id_commande` int(11) NOT NULL AUTO_INCREMENT,
  `id_clients` varchar(50) NOT NULL,
  `date` varchar(20) NOT NULL,
  `prixtot` int(11) NOT NULL,
  `adresselivraison` varchar(255) NOT NULL,
  PRIMARY KEY (`id_commande`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Contenu de la table `commandes`
--

INSERT INTO `commandes` (`id_commande`, `id_clients`, `date`, `prixtot`, `adresselivraison`) VALUES
(39, 'MrTest@gmail.com', '2023-04-04 10:12:49', 3551, '15 rue blabla'),
(38, 'MrTest@gmail.com', '2023-04-04 10:12:18', 3500, '15 rue blabla'),
(37, 'MrTest@gmail.com', '2023-03-31 11:24:22', 51, '21 rue jm'),
(35, 'MrTest@gmail.com', '2022-12-13 11:11:28', 1296, '20 rue oyuiiiii'),
(36, 'MrTest@gmail.com', '2022-12-14 11:32:26', 633, '20 rue oyuiiiii'),
(34, 'MrTest@gmail.com', '2022-12-12 17:26:52', 1791, '12 rue ouazrjoajotra'),
(33, 'MrTest@gmail.com', '2022-12-12 17:22:57', 2556, '21 rue Emile Bertin');

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
  `ID` int(100) NOT NULL,
  `Nom` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `jeux`
--


-- --------------------------------------------------------

--
-- Structure de la table `ligne_commande`
--

CREATE TABLE IF NOT EXISTS `ligne_commande` (
  `id_commande` int(255) NOT NULL,
  `id_produit` int(255) NOT NULL,
  `qte` int(255) NOT NULL,
  PRIMARY KEY (`id_commande`,`id_produit`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `ligne_commande`
--

INSERT INTO `ligne_commande` (`id_commande`, `id_produit`, `qte`) VALUES
(39, 2, 5),
(39, 8, 12);

-- --------------------------------------------------------

--
-- Structure de la table `partie`
--

CREATE TABLE IF NOT EXISTS `partie` (
  `ID` int(120) NOT NULL,
  `SCORE` longtext NOT NULL,
  `ID_Jeux` int(120) NOT NULL,
  `ID_clients` varchar(99) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `partie`
--

