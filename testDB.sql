-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 02 sep. 2021 à 01:42
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
-- Base de données : `test_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `address`
--

CREATE TABLE `address` (
  `idAddress` int(11) NOT NULL,
  `homeNumber` varchar(45) NOT NULL,
  `floor` varchar(45) NOT NULL,
  `street` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `Commune_idCommune` int(11) NOT NULL,
  `codeZip` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `address`
--

INSERT INTO `address` (`idAddress`, `homeNumber`, `floor`, `street`, `city`, `Commune_idCommune`, `codeZip`) VALUES
(14, '10-B5', '3', '120', 'barkaty Elbidh', 16, '01019'),
(19, '13-B2', '4', '90', 'Lizoul Erad', 57, '03010'),
(24, '13-B9', '11', '34', 'Sidi Ali', 61, '03046'),
(5, '14-B2', '19', '45', 'Oued sigh', 22, '02002'),
(16, '15-B3', '8', '23', '1001 loges', 155, '05041'),
(11, '2-B7', '6', '77', 'dali Ibra', 145, '02047'),
(17, '23-B6', '12', '102', '18 fivrier', 80, '04033'),
(10, '33-B9', '3', '55', 'Lakhdharia', 151, '05042'),
(20, '40-B19', '9', '17', 'Ouled Djamaa', 43, '02001'),
(6, '54-B13', '80', '125', '400 loges', 15, '03012'),
(21, '55-B10', '8', '137', 'Ain Ouelet', 123, '05042'),
(2, '61-B1', '74', '71', 'ain saleh', 55, '05002'),
(15, '63-B14', '5', '148', 'Lhasacen', 19, '01064'),
(4, '63-B8', '45', '02', 'bab ElOued', 41, '02015'),
(3, '64-B4', '77', '07', '05juillet1962', 12, '03012'),
(1, '65-B3', '73', '132', '8mai1945', 45, '01002'),
(9, '66-B11', '1', '75', 'Mielexir', 112, '05022'),
(12, '7-B5', '7', '154', 'Zuio', 160, '03012'),
(25, '70-B7', '17', '117', 'Nezlat ElAhad', 91, '04033'),
(18, '73-B11', '10', '13', 'Abdel Hamid', 73, '04013'),
(8, '78-B6', '2', '23', 'Nadhour', 82, '04006'),
(7, '8-B17', '103', '124', '300 loges', 103, '05014'),
(22, '89-B2', '18', '106', 'ElAmir AbdelKader', 16, '01018'),
(13, '9-B4', '1', '12', '19 mars', 2, '01052'),
(23, '90-B1', '04', '130', 'El Beiyadha', 43, '02025'),
(26, '96-B4', '13', '94', 'lesalles BenBoul3id', 146, '05004');

-- --------------------------------------------------------

--
-- Structure de la table `buyer`
--

CREATE TABLE `buyer` (
  `idBuyer` int(11) NOT NULL,
  `firstNameB` varchar(45) NOT NULL,
  `lastNameB` varchar(45) NOT NULL,
  `birthDayB` date NOT NULL,
  `Address_idAddress` int(11) NOT NULL,
  `emailBuyer` varchar(45) NOT NULL,
  `phoneBuyer` varchar(45) NOT NULL,
  `buyerStatus` enum('person','enterprise') NOT NULL,
  `registerCommercialNumberB` varchar(45) DEFAULT NULL,
  `taxIdentificationNumberB` varchar(45) DEFAULT NULL,
  `webSiteB` varchar(45) DEFAULT NULL,
  `articleBuyer` varchar(45) DEFAULT NULL,
  `enterpriseNameBuyer` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `buyer`
--

INSERT INTO `buyer` (`idBuyer`, `firstNameB`, `lastNameB`, `birthDayB`, `Address_idAddress`, `emailBuyer`, `phoneBuyer`, `buyerStatus`, `registerCommercialNumberB`, `taxIdentificationNumberB`, `webSiteB`, `articleBuyer`, `enterpriseNameBuyer`) VALUES
(3, 'Ahmed', 'aggab', '1992-05-08', 7, 'ahmed.aggab92@gmail.com', '213661003655', 'enterprise', 'Z98G8D55G83569101', '250W5D2Z5G568F58', NULL, NULL, NULL),
(4, 'farah', 'lachraf', '1989-06-13', 8, 'farah.lachraf06@yahoo.com', '213601254301', 'person', '5FCC0006335F6527', 'F65GD5F6Q3300F52C', NULL, NULL, NULL),
(2, 'Mohamed', 'Lekrad', '1990-01-12', 5, 'moh.lekrad@yahoo.fr', '213607954457', 'person', 'Q5D685GG585H52N02', '36S8DS5FG3FGG603', NULL, NULL, NULL),
(1, 'Sahar', 'aggab', '1995-05-11', 6, 'aggab.sahar1995@gmail.com', '213697935487', 'person', 'F5D5525S0265F01', '250W5D2Z5F1001E9', NULL, NULL, NULL),
(6, 'salah', 'Ahmadi', '1988-12-23', 10, 'ahmadi.salah1988@gmail.com', '213526635865', 'person', 'DG65GH63655G3V6F', '145DFR85G986F253F1A', NULL, NULL, NULL),
(5, 'salima', 'mimoune', '1985-11-09', 9, 'mimoune.salima09@hotmail.com', '213791995630', 'enterprise', 'F656D835F62V2G35', '366FGF5G658802608M', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `commune`
--

CREATE TABLE `commune` (
  `idCommune` int(11) NOT NULL,
  `communeName` varchar(45) NOT NULL,
  `Wilaya_idWilaya` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commune`
--

INSERT INTO `commune` (`idCommune`, `communeName`, `Wilaya_idWilaya`) VALUES
(1, 'Adrar', 1),
(2, 'Bouda', 1),
(3, 'Ouled Ahmed Timmi', 1),
(4, 'Akabli', 1),
(5, 'Aoulef', 1),
(6, 'Timokten', 1),
(7, 'Tit', 1),
(8, 'Fenoughil', 1),
(9, 'Reggane', 1),
(10, 'Sali', 1),
(11, 'Sebaa', 1),
(12, 'Tsabit', 1),
(13, 'Zaouiet Kounta', 1),
(14, 'In Zghmir', 1),
(15, 'Chlef', 2),
(16, 'Ténès', 2),
(17, 'Benairia', 2),
(18, 'El Karimia', 2),
(19, 'Tadjna', 2),
(20, 'Taougrit', 2),
(21, 'Beni Haoua', 2),
(22, 'Sobha', 2),
(23, 'Harchoun', 2),
(24, 'Ouled Fares', 2),
(25, 'Sidi Akkacha', 2),
(26, 'Boukadir', 2),
(27, 'Beni Rached', 2),
(28, 'Talassa', 2),
(29, 'Harenfa', 2),
(30, 'Oued Gousine', 2),
(31, 'Dahra', 2),
(32, 'Ouled Abbes', 2),
(33, 'Sendjas', 2),
(34, 'Zeboudja', 2),
(35, 'Oued Sly', 2),
(36, 'Abou El Hassen', 2),
(37, 'El Marsa', 2),
(38, 'Chettia', 2),
(39, 'Sidi Abderrahmane', 2),
(40, 'Moussadek', 2),
(41, 'El Hadjadj', 2),
(42, 'Labiod Medjadja', 2),
(43, 'Oued Fodda', 2),
(44, 'Ouled Ben Abdelkader', 2),
(45, 'Bouzghaia', 2),
(46, 'Ain Merane', 2),
(47, 'Oum Drou', 2),
(48, 'Breira', 2),
(49, 'Beni Bouateb', 2),
(50, 'Aflou', 3),
(51, 'Aïn Madhi', 3),
(52, 'Aïn Sidi Ali', 3),
(53, 'Beidha', 3),
(54, 'Brida', 3),
(55, 'El Assafia', 3),
(56, 'El Ghicha', 3),
(57, 'El Houaita', 3),
(58, 'Gueltat Sidi Saad', 3),
(59, 'Hadj Mechri', 3),
(60, 'Hassi Delaa', 3),
(61, 'Hassi R Mel', 3),
(62, 'Kheneg', 3),
(63, 'Ksar El Hirane', 3),
(64, 'Laghouat', 3),
(65, 'Mekhareg', 3),
(66, 'Oued Morra', 3),
(67, 'Oued M Zi', 3),
(68, 'Sebgag', 3),
(69, 'Sidi Bouzid', 3),
(70, 'Sidi Makhlouf', 3),
(71, 'Tadjemout', 3),
(72, 'Tadjrouna', 3),
(73, 'Taouila', 3),
(74, 'Aïn Babouche', 4),
(75, 'Aïn Beïda', 4),
(76, 'Aïn Diss', 4),
(77, 'Aïn Fakroun', 4),
(78, 'Aïn Kercha', 4),
(79, 'Aïn M lila', 4),
(80, 'Aïn Zitoun', 4),
(81, 'Behir Chergui', 4),
(82, 'Berriche', 4),
(83, 'Bir Chouhada', 4),
(84, 'D hala', 4),
(85, 'El Amiria', 4),
(86, 'El Belala', 4),
(87, 'El Djazia', 4),
(88, 'El Fedjouz Boughrara Saoudi', 4),
(89, 'El Harmilia', 4),
(90, 'Fkirina', 4),
(91, 'Hanchir Toumghani', 4),
(92, 'Ksar Sbahi', 4),
(93, 'Meskiana', 4),
(94, 'Oued Nini', 4),
(95, 'Ouled Gacem', 4),
(96, 'Ouled Hamla', 4),
(97, 'Ouled Zouaï', 4),
(98, 'Oum El Bouaghi', 4),
(99, 'Rahia', 4),
(100, 'Sigus', 4),
(101, 'Souk Naâmane', 4),
(102, 'Zorg', 4),
(103, 'Batna', 5),
(104, 'Ghassira', 5),
(105, 'Maafa', 5),
(106, 'Merouana', 5),
(107, 'Seriana', 5),
(108, 'Menaa', 5),
(109, 'El Madher', 5),
(110, 'Tazoult', 5),
(111, 'N Gaous', 5),
(112, 'Guigba', 5),
(113, 'Inoughissen', 5),
(114, 'Ouyoun El Assafir', 5),
(115, 'Djerma', 5),
(116, 'Bitam', 5),
(117, 'Abdelkader Azil', 5),
(118, 'Arris', 5),
(119, 'Kimmel', 5),
(120, 'Tilatou', 5),
(121, 'Aïn Djasser', 5),
(122, 'Ouled Sellam', 5),
(123, 'Tigherghar', 5),
(124, 'Aïn Yagout', 5),
(125, 'Sefiane', 5),
(126, 'Fesdis', 5),
(127, 'Rahbat', 5),
(128, 'Tighanimine', 5),
(129, 'Lemsane', 5),
(130, 'Ksar Bellezma', 5),
(131, 'Seggana', 5),
(132, 'Ichmoul', 5),
(133, 'Foum Toub', 5),
(134, 'Ben Foudhala El Hakania', 5),
(135, 'Oued El Ma', 5),
(136, 'Talkhamt', 5),
(137, 'Bouzina', 5),
(138, 'Chemora', 5),
(139, 'Oued Chaaba', 5),
(140, 'Taxlent', 5),
(141, 'Gosbat', 5),
(142, 'Ouled Aouf', 5),
(143, 'Boumagueur', 5),
(144, 'Barika', 5),
(145, 'Djezar', 5),
(146, 'T Kout', 5),
(147, 'Aïn Touta', 5),
(148, 'Hidoussa', 5),
(149, 'Teniet El Abed', 5),
(150, 'Oued Taga', 5),
(151, 'Ouled Fadel', 5),
(152, 'Timgad', 5),
(153, 'Ras El Aioun', 5),
(154, 'Chir', 5),
(155, 'Ouled Si Slimane', 5),
(156, 'Zanat El Beida', 5),
(157, 'M doukel', 5),
(158, 'Ouled Ammar', 5),
(159, 'El Hassi', 5),
(160, 'Lazrou', 5),
(161, 'Boumia', 5),
(162, 'Boulhilat', 5),
(163, 'Larbaâ', 5);

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `idContact` int(11) NOT NULL,
  `firstNameS` varchar(45) NOT NULL,
  `lastNameS` varchar(45) NOT NULL,
  `birthDayS` date NOT NULL,
  `Address_idAddress` int(11) NOT NULL,
  `emailSeller` varchar(45) NOT NULL,
  `phoneSeller` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`idContact`, `firstNameS`, `lastNameS`, `birthDayS`, `Address_idAddress`, `emailSeller`, `phoneSeller`) VALUES
(2, 'Ahmed', 'Messsauie', '1990-01-12', 15, 'ahmed.messsauie85@gmail.com', '213598741203'),
(1, 'Mohamed', 'slimani', '1980-01-15', 14, 'moh.selimani@gmail.com', '213694578120'),
(3, 'Yacine', 'Zaghdi', '1990-10-08', 16, 'YC.zgh90@yahoo.fr', '213632140211');

-- --------------------------------------------------------

--
-- Structure de la table `delivery`
--

CREATE TABLE `delivery` (
  `idDelivery` int(11) NOT NULL,
  `deliveryNumber` varchar(45) NOT NULL,
  `Buyer_idBuyer` int(11) NOT NULL,
  `startDateDelivery` date NOT NULL,
  `Enterprise_idEnterprise` int(11) NOT NULL,
  `Order_idOrder` int(11) NOT NULL,
  `Address_idAddress` int(11) NOT NULL,
  `endDateDelivery` date NOT NULL,
  `deliveryEmail` varchar(45) NOT NULL,
  `deliveryPhone` varchar(45) NOT NULL,
  `deliveryStatus` enum('inProgress','waiting','delivered') NOT NULL,
  `deliveryType` enum('home','adaptedPoint','pointSeller') NOT NULL,
  `deliveryDuration` int(11) NOT NULL,
  `linkGPS` varchar(45) NOT NULL,
  `deliveryPoint` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `delivery`
--

INSERT INTO `delivery` (`idDelivery`, `deliveryNumber`, `Buyer_idBuyer`, `startDateDelivery`, `Enterprise_idEnterprise`, `Order_idOrder`, `Address_idAddress`, `endDateDelivery`, `deliveryEmail`, `deliveryPhone`, `deliveryStatus`, `deliveryType`, `deliveryDuration`, `linkGPS`, `deliveryPoint`) VALUES
(2, '5DRF5D58525', 2, '2021-07-11', 1, 4, 2, '2021-07-26', '', '', 'delivered', 'pointSeller', 11, 'https://linkGPS.com/Dlvr2', 'point 04'),
(4, '5DRF5D58525', 2, '2021-08-09', 2, 5, 5, '2021-08-24', '', '', 'waiting', 'home', 15, 'https://linkGPS.com/Dlvr4', 'point 05'),
(3, 'A74D8G45201', 1, '2021-09-10', 2, 2, 4, '2021-09-25', '', '', 'inProgress', 'pointSeller', 15, 'https://linkGPS.com/Dlvr3', 'point 02'),
(1, 'L5DS7F10SD201', 2, '2021-09-01', 1, 1, 11, '2021-09-12', '', '', 'waiting', 'adaptedPoint', 11, 'https://linkGPS.com/Dlvr1', 'point 01'),
(5, 'R701O8J12H01', 1, '2021-09-03', 3, 3, 13, '2021-09-08', '', '', 'inProgress', 'adaptedPoint', 5, 'https://linkGPS.com/Dlvr5', 'point 03');

-- --------------------------------------------------------

--
-- Structure de la table `deliverypoint`
--

CREATE TABLE `deliverypoint` (
  `Address_idAddress` int(11) NOT NULL,
  `Enterprise_idEnterprise` int(11) NOT NULL,
  `deliveryPointName` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `deliverypoint`
--

INSERT INTO `deliverypoint` (`Address_idAddress`, `Enterprise_idEnterprise`, `deliveryPointName`) VALUES
(11, 1, 'point 1'),
(12, 1, 'point 2'),
(1, 2, 'point 3'),
(22, 2, 'point 4'),
(23, 2, 'point 5'),
(24, 2, 'point 6'),
(13, 3, 'point 7'),
(25, 3, 'point 8'),
(26, 3, 'point 9');

-- --------------------------------------------------------

--
-- Structure de la table `enterprise`
--

CREATE TABLE `enterprise` (
  `idEnterprise` int(11) NOT NULL,
  `enterpriseName` varchar(45) NOT NULL,
  `town` varchar(45) NOT NULL,
  `Contact_idContact` int(11) NOT NULL,
  `Address_idAddress` int(11) NOT NULL,
  `webSite` varchar(45) NOT NULL,
  `taxIdentificationNumberS` varchar(45) NOT NULL,
  `registerCommercialNumberS` varchar(45) NOT NULL,
  `accountNumber` varchar(45) NOT NULL,
  `accountType` varchar(45) NOT NULL,
  `paymentMethod` set('dhahabia','cib','virement') NOT NULL,
  `publicPrivate` enum('Public','Private') NOT NULL,
  `logoImage` varchar(45) NOT NULL,
  `transportCosts` float NOT NULL,
  `deliveryTime` int(11) NOT NULL,
  `reservationTime` int(11) NOT NULL,
  `acceptationTime` int(11) NOT NULL DEFAULT 24,
  `validationTime` int(11) NOT NULL DEFAULT 20,
  `orderRecoveryTime` int(11) NOT NULL DEFAULT 3,
  `articleSeller` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `enterprise`
--

INSERT INTO `enterprise` (`idEnterprise`, `enterpriseName`, `town`, `Contact_idContact`, `Address_idAddress`, `webSite`, `taxIdentificationNumberS`, `registerCommercialNumberS`, `accountNumber`, `accountType`, `paymentMethod`, `publicPrivate`, `logoImage`, `transportCosts`, `deliveryTime`, `reservationTime`, `acceptationTime`, `validationTime`, `orderRecoveryTime`, `articleSeller`) VALUES
(3, 'In_Souf', 'DifOued', 1, 3, './website3/seller/A4d/index3.html', '8701I818F9830', 'G8D0F15D0036D', '1458031023D4', 'Baraka', 'dhahabia,cib,virement', 'Public', './image/base64/A9j/logo3.png', 1700, 9, 10, 24, 20, 3, 'ARTICLE3'),
(2, 'IT_Pro', 'Hanmour', 3, 4, './website2/seller/A4d/index2.html', '35F543B12520', '56ALK5D6FG36D', '145803270012', 'Khalidj', 'cib,virement', 'Public', './image/base64/A9j/logo2.png', 1800, 15, 7, 24, 20, 3, 'ARTICLE2'),
(1, 'IT_Techno', 'ElMansoura', 2, 2, './website1/seller/A4d/index1.html', '35S525452052', '16A58463553S4S', '124563270012', 'Badr', 'dhahabia,cib', 'Public', './image/base64/A9j/logo1.png', 1500, 11, 5, 24, 20, 3, 'ARTICLE1');

-- --------------------------------------------------------

--
-- Structure de la table `orderline`
--

CREATE TABLE `orderline` (
  `idOrderLine` int(11) NOT NULL,
  `Order_idOrder` int(11) NOT NULL,
  `Product_idProduct` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` float NOT NULL,
  `discount` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `orderline`
--

INSERT INTO `orderline` (`idOrderLine`, `Order_idOrder`, `Product_idProduct`, `quantity`, `total`, `discount`) VALUES
(1, 1, 1, 2, 800, 0),
(2, 1, 2, 7, 700, 0),
(3, 2, 1, 4, 1600, 0),
(4, 2, 4, 2, 500, 0),
(5, 3, 5, 2, 1900, 0),
(6, 4, 6, 2, 200, 0),
(8, 4, 8, 3, 1200, 0),
(7, 5, 7, 1, 1060, 0);

-- --------------------------------------------------------

--
-- Structure de la table `orderpay`
--

CREATE TABLE `orderpay` (
  `idOrder` int(11) NOT NULL,
  `orderNumber` varchar(45) NOT NULL,
  `dateOrder` date NOT NULL,
  `Enterprise_idEnterprise` int(11) NOT NULL,
  `Buyer_idBuyer` int(11) NOT NULL,
  `orderStatus` enum('reserved','cancel','waiting','paid','pending') NOT NULL,
  `orderTotal` float NOT NULL,
  `totalOutsideTax` float NOT NULL,
  `tva` float DEFAULT NULL,
  `cancellationReason` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `orderpay`
--

INSERT INTO `orderpay` (`idOrder`, `orderNumber`, `dateOrder`, `Enterprise_idEnterprise`, `Buyer_idBuyer`, `orderStatus`, `orderTotal`, `totalOutsideTax`, `tva`, `cancellationReason`) VALUES
(1, 'A584A65DS56D6', '2021-08-17', 1, 2, 'reserved', 1600, 1500, 100, NULL),
(4, 'A584A65DS56D6', '2021-06-15', 1, 2, 'paid', 3190, 3060, 130, NULL),
(2, 'G52D5F5D21F01', '2021-08-18', 2, 1, 'pending', 2250, 2100, 150, NULL),
(5, 'A584A65DS56D6', '2021-07-29', 2, 2, 'paid', 1200, 1200, 0, NULL),
(3, 'A584A65DS56D6', '2021-08-14', 3, 1, 'waiting', 2020, 1900, 120, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `idProduct` int(11) NOT NULL,
  `productRef` varchar(45) NOT NULL,
  `productName` varchar(45) NOT NULL,
  `Enterprise_idEnterprise` int(11) NOT NULL,
  `price` float NOT NULL,
  `unit` varchar(45) NOT NULL,
  `category` varchar(45) NOT NULL,
  `productImage` varchar(45) NOT NULL,
  `quantityStock` int(11) NOT NULL,
  `productDescription` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`idProduct`, `productRef`, `productName`, `Enterprise_idEnterprise`, `price`, `unit`, `category`, `productImage`, `quantityStock`, `productDescription`) VALUES
(5, '11D0GF5V00555', 'Regular medicines', 1, 950, '1 piece', 'CA2', 'image/product1/CA2/pro5.jpg', 215, 'good product5 .. bla bla bla bla'),
(7, '365DGF65FH9GF', 'Cameras', 1, 1060, '1 piece', 'CA9', 'image/product1/CA5/pro7.jpg', 189, 'ok product7 .. bla bla bla bla'),
(6, '36HF3VH355HF3', 'Computers', 2, 100, '1 oiece', 'CA1', 'image/product1/CA1/pro6.jpg', 365, 'good product6 .. bla bla bla bla'),
(3, '4S5F025R5G005', 'blue_dress', 2, 400, '1 piece', 'CA4', 'image/product1/CA4/pro3.jpg', 100, 'very goood product3 .. bla bla bla bla'),
(4, '5D2G521G02200', 'Flowers', 2, 250, '25 piece', 'CA5', 'image/product1/CA5/pro4.jpg', 136, 'good product4 .. bla bla bla bla'),
(2, 'A6565E5FD22T5', 'pc', 1, 100, '1 piece', 'CA9', 'image/product1/CA3/pro2.jpg', 150, 'goood product2 .. bla bla bla bla'),
(8, 'D54GGF584G520', 'milk', 2, 1200, '1 litre', 'CA8', 'image/product1/CA3/pro8.jpg', 320, 'moyen product8 .. bla bla bla bla'),
(1, 'G65F65F660G52', 'rice', 1, 400, '1 kg', 'CA3', 'image/product1/CA3/pro1.jpg', 165, 'goood product1 .. bla bla bla bla');

-- --------------------------------------------------------

--
-- Structure de la table `transaction`
--

CREATE TABLE `transaction` (
  `idTransaction` int(11) NOT NULL,
  `transactionNumber` varchar(45) NOT NULL,
  `transactionDate` date NOT NULL,
  `Order_idOrder` int(11) NOT NULL,
  `Buyer_idBuyer` int(11) NOT NULL,
  `Enterprise_idEnterprise` int(11) NOT NULL,
  `transactionStatus` enum('success','failed','cancel','waiting') NOT NULL,
  `paymentMethod` enum('dhahabia','cib','virement') NOT NULL,
  `failureDescription` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `transaction`
--

INSERT INTO `transaction` (`idTransaction`, `transactionNumber`, `transactionDate`, `Order_idOrder`, `Buyer_idBuyer`, `Enterprise_idEnterprise`, `transactionStatus`, `paymentMethod`, `failureDescription`) VALUES
(5, '45H6654G870G', '2021-07-29', 5, 5, 1, 'success', 'dhahabia', ''),
(1, '54GH0Y84G50K', '2021-08-17', 1, 1, 3, 'waiting', 'virement', ''),
(4, '654HD8453RT4', '2021-06-15', 4, 4, 1, 'success', 'cib', ''),
(2, 'K7U8V1G8X2J09', '2021-08-18', 2, 2, 1, 'waiting', 'virement', ''),
(3, 'U5P54J48220K2', '2021-08-14', 3, 3, 2, 'waiting', 'virement', '');

-- --------------------------------------------------------

--
-- Structure de la table `wilaya`
--

CREATE TABLE `wilaya` (
  `idWilaya` int(11) NOT NULL,
  `wilayaName` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `wilaya`
--

INSERT INTO `wilaya` (`idWilaya`, `wilayaName`) VALUES
(1, 'Adrar'),
(2, 'Chlef'),
(3, 'Laghouat'),
(4, 'Oum El Bouaghi'),
(5, 'Batna'),
(6, 'Béjaïa'),
(7, 'Biskra'),
(8, 'Béchar'),
(9, 'Blida'),
(10, 'Bouïra'),
(11, 'Tamanrasset'),
(12, 'Tébessa'),
(13, 'Tlemcen'),
(14, 'Tiaret'),
(15, 'Tizi Ouzou'),
(16, 'Alger'),
(17, 'Djelfa'),
(18, 'Jijel'),
(19, 'Sétif'),
(20, 'Saïda'),
(21, 'Skikda'),
(22, 'Sidi Bel Abbès'),
(23, 'Annaba'),
(24, 'Guelma'),
(25, 'Constantine'),
(26, 'Médéa'),
(27, 'Mostaganem'),
(28, 'M Sila'),
(29, 'Mascara'),
(30, 'Ouargla'),
(31, 'Oran'),
(32, 'El Bayadh'),
(33, 'Illizi'),
(34, 'Bordj Bou Arréridj'),
(35, 'Boumerdès'),
(36, 'El Tarf'),
(37, 'Tindouf'),
(38, 'Tissemsilt'),
(39, 'El Oued'),
(40, 'Khenchela'),
(41, 'Souk Ahras'),
(42, 'Tipaza'),
(43, 'Mila'),
(44, 'Aïn Defla'),
(45, 'Naâma'),
(46, 'Aïn Témouchent'),
(47, 'Ghardaïa'),
(48, 'Relizane'),
(49, 'El M ghair'),
(50, 'El Menia'),
(51, 'Ouled Djellal'),
(52, 'Bordj Baji Mokhtar'),
(53, 'Béni Abbès'),
(54, 'Timimoun'),
(55, 'Touggourt'),
(56, 'Djanet'),
(57, 'In Salah'),
(58, 'In Guezzam');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`homeNumber`,`floor`,`street`,`city`,`Commune_idCommune`) USING BTREE,
  ADD UNIQUE KEY `idAddress_UNIQUE` (`idAddress`),
  ADD KEY `fk_Address_Commune_idx` (`Commune_idCommune`);

--
-- Index pour la table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`firstNameB`,`lastNameB`,`birthDayB`),
  ADD UNIQUE KEY `idBuyer_UNIQUE` (`idBuyer`),
  ADD KEY `fk_Buyer_Address_idx` (`Address_idAddress`) USING BTREE;

--
-- Index pour la table `commune`
--
ALTER TABLE `commune`
  ADD PRIMARY KEY (`communeName`,`Wilaya_idWilaya`) USING BTREE,
  ADD UNIQUE KEY `idCommune_UNIQUE` (`idCommune`) USING BTREE,
  ADD KEY `fk_Commune_Wilaya_idx` (`Wilaya_idWilaya`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`firstNameS`,`lastNameS`,`birthDayS`),
  ADD UNIQUE KEY `idContact_UNIQUE` (`idContact`) USING BTREE,
  ADD KEY `fk_Contact_Address_idx` (`Address_idAddress`);

--
-- Index pour la table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`deliveryNumber`,`startDateDelivery`,`Enterprise_idEnterprise`) USING BTREE,
  ADD UNIQUE KEY `idDelivery_UNIQUE` (`idDelivery`),
  ADD KEY `fk_Delivery_Order_idx` (`Order_idOrder`),
  ADD KEY `fk_Delivery_Enterprise_idx` (`Enterprise_idEnterprise`),
  ADD KEY `fk_Delivery_Address_idx` (`Address_idAddress`),
  ADD KEY `fk_Delivery_Buyer_idx` (`Buyer_idBuyer`) USING BTREE;

--
-- Index pour la table `deliverypoint`
--
ALTER TABLE `deliverypoint`
  ADD PRIMARY KEY (`Enterprise_idEnterprise`,`Address_idAddress`),
  ADD KEY `fk_DeliveryPoint_Address_idx` (`Address_idAddress`),
  ADD KEY `fk_DeliveryPoint_Enterprise_idx` (`Enterprise_idEnterprise`);

--
-- Index pour la table `enterprise`
--
ALTER TABLE `enterprise`
  ADD PRIMARY KEY (`enterpriseName`,`town`),
  ADD UNIQUE KEY `idEnterprise_UNIQUE` (`idEnterprise`),
  ADD UNIQUE KEY `enterpriseName_UNIQUE` (`enterpriseName`) USING BTREE,
  ADD KEY `fk_Enterprise_Contact_idx` (`Contact_idContact`),
  ADD KEY `fk_Enterprise_Address_idx` (`Address_idAddress`);

--
-- Index pour la table `orderline`
--
ALTER TABLE `orderline`
  ADD PRIMARY KEY (`Order_idOrder`,`Product_idProduct`),
  ADD UNIQUE KEY `idOrderLine_UNIQUE` (`idOrderLine`),
  ADD KEY `fk_OrderLine_Order_idx` (`Order_idOrder`),
  ADD KEY `fk_OrderLine_Product_idx` (`Product_idProduct`) USING BTREE;

--
-- Index pour la table `orderpay`
--
ALTER TABLE `orderpay`
  ADD PRIMARY KEY (`Enterprise_idEnterprise`,`idOrder`) USING BTREE,
  ADD UNIQUE KEY `idOrder_UNIQUE` (`idOrder`),
  ADD KEY `fk_Order_Enterprise_idx` (`Enterprise_idEnterprise`),
  ADD KEY `fk_Order_Buyer_idx` (`Buyer_idBuyer`) USING BTREE;

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productRef`,`productName`,`Enterprise_idEnterprise`) USING BTREE,
  ADD UNIQUE KEY `idProduct_UNIQUE` (`idProduct`),
  ADD KEY `fk_Product_Enterprise_idx` (`Enterprise_idEnterprise`);

--
-- Index pour la table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transactionNumber`,`transactionDate`,`Order_idOrder`),
  ADD UNIQUE KEY `idTransaction_UNIQUE` (`idTransaction`),
  ADD KEY `fk_Transaction_Order_idx` (`Order_idOrder`),
  ADD KEY `fk_Transaction_Buyer` (`Buyer_idBuyer`),
  ADD KEY `fk_Transaction_Enterprise` (`Enterprise_idEnterprise`);

--
-- Index pour la table `wilaya`
--
ALTER TABLE `wilaya`
  ADD PRIMARY KEY (`wilayaName`),
  ADD UNIQUE KEY `idWilaya_UNIQUE` (`idWilaya`),
  ADD UNIQUE KEY `wilayaName_UNIQUE` (`wilayaName`) USING BTREE;

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `address`
--
ALTER TABLE `address`
  MODIFY `idAddress` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `idBuyer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `commune`
--
ALTER TABLE `commune`
  MODIFY `idCommune` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `idContact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `idDelivery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `enterprise`
--
ALTER TABLE `enterprise`
  MODIFY `idEnterprise` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `orderline`
--
ALTER TABLE `orderline`
  MODIFY `idOrderLine` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `orderpay`
--
ALTER TABLE `orderpay`
  MODIFY `idOrder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `idProduct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `idTransaction` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `wilaya`
--
ALTER TABLE `wilaya`
  MODIFY `idWilaya` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `fk_Address_Commune` FOREIGN KEY (`Commune_idCommune`) REFERENCES `commune` (`idCommune`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `buyer`
--
ALTER TABLE `buyer`
  ADD CONSTRAINT `fk_Buyer_Address` FOREIGN KEY (`Address_idAddress`) REFERENCES `address` (`idAddress`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `commune`
--
ALTER TABLE `commune`
  ADD CONSTRAINT `fk_Commune_Wilaya` FOREIGN KEY (`Wilaya_idWilaya`) REFERENCES `wilaya` (`idWilaya`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `fk_Contact_Address` FOREIGN KEY (`Address_idAddress`) REFERENCES `address` (`idAddress`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `fk_Delivery_Address` FOREIGN KEY (`Address_idAddress`) REFERENCES `address` (`idAddress`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Delivery_Buyer` FOREIGN KEY (`Buyer_idBuyer`) REFERENCES `buyer` (`idBuyer`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Delivery_Enterprise` FOREIGN KEY (`Enterprise_idEnterprise`) REFERENCES `enterprise` (`idEnterprise`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Delivery_Order` FOREIGN KEY (`Order_idOrder`) REFERENCES `orderpay` (`idOrder`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `deliverypoint`
--
ALTER TABLE `deliverypoint`
  ADD CONSTRAINT `fk_DeliveryPoint_Address` FOREIGN KEY (`Address_idAddress`) REFERENCES `address` (`idAddress`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_DeliveryPoint_Enterprise` FOREIGN KEY (`Enterprise_idEnterprise`) REFERENCES `enterprise` (`idEnterprise`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `enterprise`
--
ALTER TABLE `enterprise`
  ADD CONSTRAINT `fk_Enterprise_Address` FOREIGN KEY (`Address_idAddress`) REFERENCES `address` (`idAddress`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Enterprise_Contact` FOREIGN KEY (`Contact_idContact`) REFERENCES `contact` (`idContact`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `orderline`
--
ALTER TABLE `orderline`
  ADD CONSTRAINT `fk_OrderLine_Order` FOREIGN KEY (`Order_idOrder`) REFERENCES `orderpay` (`idOrder`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_OrderLine_Product` FOREIGN KEY (`Product_idProduct`) REFERENCES `product` (`idProduct`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `orderpay`
--
ALTER TABLE `orderpay`
  ADD CONSTRAINT `fk_Order_Buyer` FOREIGN KEY (`Buyer_idBuyer`) REFERENCES `buyer` (`idBuyer`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Order_Enterprise` FOREIGN KEY (`Enterprise_idEnterprise`) REFERENCES `enterprise` (`idEnterprise`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_Product_Enterprise` FOREIGN KEY (`Enterprise_idEnterprise`) REFERENCES `enterprise` (`idEnterprise`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `fk_Transaction_Buyer` FOREIGN KEY (`Buyer_idBuyer`) REFERENCES `buyer` (`idBuyer`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Transaction_Enterprise` FOREIGN KEY (`Enterprise_idEnterprise`) REFERENCES `enterprise` (`idEnterprise`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Transaction_Order` FOREIGN KEY (`Order_idOrder`) REFERENCES `orderpay` (`idOrder`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
