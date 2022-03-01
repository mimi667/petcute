-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 01 mars 2022 à 07:59
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cutpete`
--

-- --------------------------------------------------------

--
-- Structure de la table `code_promo`
--

CREATE TABLE `code_promo` (
  `id_codepromo` int(11) NOT NULL,
  `pourcentage` int(11) DEFAULT NULL,
  `nomBlogeuse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `code_promo`
--

INSERT INTO `code_promo` (`id_codepromo`, `pourcentage`, `nomBlogeuse`) VALUES
(0, 0, 'none'),
(502, 20, ''),
(503, 20, 'raya'),
(505, 20, 'raya'),
(506, 20, 'raya'),
(507, 20, 'raya'),
(508, 20, 'raya'),
(509, 8, 'raya'),
(510, 8, 'mimi'),
(511, 80, 'RAYA'),
(514, 80, 'RAYA'),
(516, 80, 'RAYA'),
(517, 80, 'RAYA'),
(518, 80, 'raya'),
(519, 21, 'Saida'),
(520, 20, 'zouba'),
(521, 70, 'noura'),
(523, 70, 'sab3in'),
(525, 80, 'mimi'),
(526, 80, 'mimi'),
(527, 80, 'mimi'),
(528, 5, 'mimi'),
(529, 40, 'zouba'),
(530, 5, 'mimi');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id_commande` int(11) NOT NULL,
  `id_panier` int(11) NOT NULL,
  `adresse_commande` text DEFAULT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `etat_commande` int(11) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id_commande`, `id_panier`, `adresse_commande`, `id_utilisateur`, `etat_commande`, `mail`) VALUES
(812, 1727, 'tunis', 7, 1, 'mariem.aljene@esprit.tn'),
(813, 1728, 'tunis', 7, 1, 'mariem.aljene@esprit.tn'),
(814, 1729, 'monastir', 7, 1, 'mariem.aljene@esprit.tn');

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

CREATE TABLE `panier` (
  `id_panier` int(255) NOT NULL,
  `id_utulisateur` int(255) NOT NULL,
  `id_produit` int(11) DEFAULT NULL,
  `quantite_panier` int(11) DEFAULT NULL,
  `code_promo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `panier`
--

INSERT INTO `panier` (`id_panier`, `id_utulisateur`, `id_produit`, `quantite_panier`, `code_promo`) VALUES
(2, 1, 1094, 70, 528),
(9, 1, 1094, 90, 528),
(80, 1, 1097, 1, 528),
(1727, 1, 1095, 8, 528),
(1728, 7, 1098, 2, 528),
(1729, 7, 1093, 1, 528);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id_produit` int(255) NOT NULL,
  `libelle_produit` varchar(255) DEFAULT NULL,
  `categorie` varchar(255) DEFAULT NULL,
  `date_expiration` varchar(255) DEFAULT NULL,
  `prix` float DEFAULT NULL,
  `quantite` int(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `note` int(11) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id_produit`, `libelle_produit`, `categorie`, `date_expiration`, `prix`, `quantite`, `description`, `note`, `image`) VALUES
(1092, 'ty', 'pets', '11/02/2000', 12, 12, 'ha ha ha', 12, NULL),
(1093, 'Royal Canin CHIEN FRENCH', 'croquette chien', '21/07/2022', 45, 39, 'Croquette pour pour le chiot Bouledogue français jusqu\'à 12 mois', 4, 'C:\\Users\\zaine\\Desktop\\cutpete\\mekla.jpg'),
(1094, 'Accesoires ', 'Accesoires pour chien ', '', 6, 2000, 'Laisse en simple épaisseur et nylon , fonctionnelle en apportant tout confort.', 2, ''),
(1095, 'Croquette', 'Croquette chien', '01/01/2025', 30.5, 32, 'Aliment complet et équilibrée pour chiens adultes actifs de taille moyenne , répond a leurs besoins énergétiques élevée.', 7, 'C:\\Users\\zaine\\Desktop\\im.jpg'),
(1096, 'Croquette', 'Croquette chat', '12/02/2022', 20, 40, 'Croquettes pour chat adulte au Boeuf. Formule équilibrée en minéraux', 6, ''),
(1097, 'Accesoires ', 'Accesoires pour chien ', '', 6, 38, 'Laisse en simple épaisseur et nylon , fonctionnelle en apportant tout confort.', 2, ''),
(1098, 'Croquette', 'Croquette chien', '01/01/2025', 30.5, 38, 'Aliment complet et équilibrée pour chiens adultes actifs de taille moyenne , répond a leurs besoins énergétiques élevée.', 7, 'C:\\Users\\zaine\\Desktop\\im.jpg'),
(1099, 'Croquette', 'Croquette chat', '12/02/2022', 20, 40, 'Croquettes pour chat adulte au Boeuf. Formule équilibrée en minéraux', 6, ''),
(1100, 'Accesoires ', 'Accesoires pour chien ', '', 6, 40, 'Laisse en simple épaisseur et nylon , fonctionnelle en apportant tout confort.', 2, ''),
(1101, 'Croquette', 'Croquette chien', '01/01/2025', 30.5, 40, 'Aliment complet et équilibrée pour chiens adultes actifs de taille moyenne , répond a leurs besoins énergétiques élevée.', 7, 'C:\\Users\\zaine\\Desktop\\im.jpg'),
(1102, 'Croquette', 'Croquette chat', '12/02/2022', 20, 40, 'Croquettes pour chat adulte au Boeuf. Formule équilibrée en minéraux', 6, ''),
(200000, 'jk', 'n, ', 'gjbg', 2.5, 80, 'hgj', 2, 'jkh');

-- --------------------------------------------------------

--
-- Structure de la table `promotion`
--

CREATE TABLE `promotion` (
  `id_promotion` int(11) NOT NULL,
  `libelle_promotion` varchar(255) DEFAULT NULL,
  `pourcentage_promotion` float DEFAULT NULL,
  `date_debut_promotion` date DEFAULT NULL,
  `date_fin_pourcentage` date DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `stock`
--

CREATE TABLE `stock` (
  `id_produit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_utilisateur` int(11) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `nom` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `mail`, `nom`) VALUES
(1, 'karray.gargouri@esprit.tn', 'karray'),
(7, 'mariem.aljene@esprit.tn', 'mariem'),
(12, 'mariemaljene0@gmail.com\r\n', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `code_promo`
--
ALTER TABLE `code_promo`
  ADD PRIMARY KEY (`id_codepromo`) USING BTREE;

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id_commande`,`id_panier`) USING BTREE,
  ADD KEY `id_panier` (`id_panier`),
  ADD KEY `id_utilisateur` (`id_utilisateur`);

--
-- Index pour la table `panier`
--
ALTER TABLE `panier`
  ADD PRIMARY KEY (`id_panier`,`id_utulisateur`),
  ADD KEY `code_promo` (`code_promo`),
  ADD KEY `id_utulisateur` (`id_utulisateur`),
  ADD KEY `id_produit` (`id_produit`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id_produit`);

--
-- Index pour la table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id_promotion`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_utilisateur`,`mail`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `code_promo`
--
ALTER TABLE `code_promo`
  MODIFY `id_codepromo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=531;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id_commande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=815;

--
-- AUTO_INCREMENT pour la table `panier`
--
ALTER TABLE `panier`
  MODIFY `id_panier` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1731;

--
-- AUTO_INCREMENT pour la table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id_promotion` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`id_panier`) REFERENCES `panier` (`id_panier`),
  ADD CONSTRAINT `commande_ibfk_2` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`);

--
-- Contraintes pour la table `panier`
--
ALTER TABLE `panier`
  ADD CONSTRAINT `panier_ibfk_1` FOREIGN KEY (`code_promo`) REFERENCES `code_promo` (`id_codepromo`),
  ADD CONSTRAINT `panier_ibfk_3` FOREIGN KEY (`id_utulisateur`) REFERENCES `utilisateur` (`id_utilisateur`),
  ADD CONSTRAINT `panier_ibfk_4` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id_produit`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
