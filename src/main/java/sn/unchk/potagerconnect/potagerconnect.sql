-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : lun. 26 août 2024 à 15:13
-- Version du serveur : 8.0.35
-- Version de PHP : 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `potagerconnect`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id_categorie` int NOT NULL,
  `nom_categorie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_client` int NOT NULL,
  `prenom_client` varchar(50) NOT NULL,
  `nom_client` varchar(30) NOT NULL,
  `telephone_client` varchar(25) NOT NULL,
  `email_client` varchar(50) NOT NULL,
  `adresse_client` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id_commande` int NOT NULL,
  `quantité` int NOT NULL,
  `prix_total` float NOT NULL,
  `date` datetime NOT NULL,
  `client` int NOT NULL,
  `plante` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `plante`
--

CREATE TABLE `plante` (
  `id_plante` int NOT NULL,
  `nom_plante` varchar(255) NOT NULL,
  `age` int NOT NULL,
  `taile` float NOT NULL,
  `prix` float NOT NULL,
  `potager` int NOT NULL,
  `categorie` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `potager`
--

CREATE TABLE `potager` (
  `id_potager` int NOT NULL,
  `nom_potager` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `identifiant` varchar(255) DEFAULT NULL,
  `mot_de_passe` varchar(255) DEFAULT NULL,
  `prenom_proprietaire` varchar(255) DEFAULT NULL,
  `nom_proprietaire` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `potager`
--

INSERT INTO `potager` (`id_potager`, `nom_potager`, `telephone`, `ville`, `adresse`, `identifiant`, `mot_de_passe`, `prenom_proprietaire`, `nom_proprietaire`) VALUES
(1, 'Cayor Espace vert', '77 645 45 87', 'Thies ', '10eme riaom', 'bdiop@connect.com', 'Bdiop@24', 'Babacar', 'Diop'),
(2, 'Espace Vert', '76 876 68 65', 'Thies', 'Diakhao', 'ssarr@connect.com', 'Ssarr@24', 'Safietou', 'Sarr'),
(3, 'Green Space', '76 676 88 00', 'Thies', 'Fahu', 'mndiaye@connect.com', 'Mndiaye@24', 'Mansour', 'Ndiaye'),
(4, 'GreenLand', '77 868 99 66', 'Thies', 'Mbour 1', 'bwade@connect.com', 'Bwade@24', 'Babacar', 'Wade'),
(5, 'Potager du rond point', '78 867 87 76', 'Thies', 'Nord-Est', 'potager@connect.com', 'potager@24', 'Laurant', 'mendis'),
(6, 'Potager de la Colline', '78 867 87 76', 'Thies', 'Nord-Est', 'coline@connect.com', 'Coline@24', 'Laurant', 'mendis'),
(7, 'Keur Gui Vert', '77 876 90 08', 'Thies', 'Nguinth', NULL, NULL, 'Jules', 'Niang'),
(8, 'qrwtr', 'sfergh', 'dhrj', 'rytyui', NULL, NULL, 'fhfgjfk', 'hyjurti');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id_commande`),
  ADD KEY `FK_client` (`client`),
  ADD KEY `FK_plante_commande` (`plante`);

--
-- Index pour la table `plante`
--
ALTER TABLE `plante`
  ADD PRIMARY KEY (`id_plante`),
  ADD KEY `FK_plante` (`potager`),
  ADD KEY `FK_categorie` (`categorie`);

--
-- Index pour la table `potager`
--
ALTER TABLE `potager`
  ADD PRIMARY KEY (`id_potager`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id_categorie` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id_commande` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `plante`
--
ALTER TABLE `plante`
  MODIFY `id_plante` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `potager`
--
ALTER TABLE `potager`
  MODIFY `id_potager` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `FK_client` FOREIGN KEY (`client`) REFERENCES `client` (`id_client`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_plante_commande` FOREIGN KEY (`plante`) REFERENCES `plante` (`id_plante`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `plante`
--
ALTER TABLE `plante`
  ADD CONSTRAINT `FK_categorie` FOREIGN KEY (`categorie`) REFERENCES `categorie` (`id_categorie`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_plante` FOREIGN KEY (`potager`) REFERENCES `potager` (`id_potager`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
